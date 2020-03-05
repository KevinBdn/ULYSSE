import os
import pandas
import numpy as np
import matplotlib.pyplot as plt

from scipy.ndimage import generic_filter
from scipy import ndimage
from mpl_toolkits.mplot3d import Axes3D
#import time


def least_square(x, y, z, ind, alpha, data):
    """
        Calcul des moindres carres au premier ordre
    """
    miss = np.isnan(x)

    #Reshape des colonnes en vecteurs
    vx = x[~miss].reshape(-1, 1)
    vy = y[~miss].reshape(-1, 1)
    vz = z[~miss].reshape(-1, 1)
    vi = ind[~miss].reshape(-1, 1)
    
    #Modele lineaire : ax + by + c = z
    A = np.hstack((vx, vy, np.ones(vx.shape)))
    X = np.linalg.lstsq(A, vz, rcond=-1)[0]
    # Residus
    res = np.dot(A,X) - vz
    s_res = np.std(res)
    m_res = np.average(res)
    
    #Indices des valeurs rejetees dans le vecteur de residus
    ind_reject = np.where(np.abs(res - m_res) > alpha * s_res)
    #Indices des valeurs rejetees dans le DataFrame
    ind_data = vi[ind_reject]
    #Mise a jour de la colonne process dans data
    update = pandas.DataFrame(np.full(ind_data.shape, 1),index=ind_data, columns=['process'])
    data.update(update)  # Attention : update passe le type a float



def outliers_filter(file_line_name_in, file_line_name_out, pq_size, alpha, ratiolevel):
    """
        Traitement de la ligne
        0 : sonde validee
        1 : sonde invalidee
    """
    pack = 0

    data = pandas.read_csv(file_line_name_in, delim_whitespace=True, names=[ 'p', 'b', 'x', 'y', 'z', '_'])

    data = data[data['z']>0]

    
    # Ajout d'une colonne pour le traitement automatique
    #Pour l'instant, aucune sonde n'est traitee : elles sont toutes valides
    data['process'] = 0
   
    #print("Nombre de points a traiter : ", len(data_ini))

    #Nombre de donnees
    nb_beam_max = data.b.max() - data.b.min() + 1
    nb_ping_max = data.p.max() - data.p.min() + 1

    #Creation des matrices vides pour les differentes variables
    x_glob = np.full([nb_ping_max, nb_beam_max], np.nan)
    y_glob = np.full([nb_ping_max, nb_beam_max], np.nan)
    z_glob = np.full([nb_ping_max, nb_beam_max], np.nan)
    i_glob = np.full([nb_ping_max, nb_beam_max], -1)
    


    #Remplissage des matrices
    x_glob[data.p - data.p.min(), data.b - data.b.min()] = data.x
    y_glob[data.p - data.p.min(), data.b - data.b.min()] = data.y
    z_glob[data.p - data.p.min(), data.b - data.b.min()] = data.z
    i_glob[data.p - data.p.min(), data.b - data.b.min()] = data.index
    
    #Nombre de paquets par dimension
    nb_pqt_max_line = int(np.floor(nb_ping_max / pq_size))
    nb_pqt_max_col = int(np.floor(nb_beam_max / pq_size))

    #Creation des bornes pour chaque zone
    bounds_line = np.linspace(data.p.min(), data.p.max(),
                              nb_pqt_max_line).astype(int) - data.p.min()
    bounds_col = np.linspace(data.b.min(), data.b.max(),
                             nb_pqt_max_col).astype(int) - data.b.min()
#    t0_1 = time.time()

    #Application de l'algorithme des moindres carres
    for i in range(len(bounds_line) - 1):
        for k in range(len(bounds_col) - 1):
            #Intervalles correspondant a la zone (i,k)
            index = slice(bounds_line[i], bounds_line[i+1]), \
                    slice(bounds_col[k], bounds_col[k+1])
            
            least_square(x_glob[index], y_glob[index], z_glob[index],i_glob[index], alpha, data)
            
#    tf_1 = time.time()
#    print("Temps ecoule : " + str(round(tf_1-t0_1,3)) + " s")
#    
    #print("\nNombre de sondes validees : ", len(data.loc[data.process == 0]))
    #print("Nombre de sondes invalidees : ", len(data.loc[data.process == 1]))


    pack += 1

    #Affiche_sondes(data)
    
    
    #Calcul du ratio nb sondes invalides/nb sondes
    ratio = round(float(len(data.loc[data.process == 1]))/float(len(data)), 10)

    warning = (ratio >= ratiolevel)

    
    #Ecriture des resultats dans le fichier ttraite
    # Conversion de la colonne "process" en int
    data = data.astype({'process': int})
    data.to_csv(file_line_name_out+warning*"_outlier_invalid"+".txt", sep=' ', header=None, columns=['p', 'b', 'x', 'y', 'z', 'process'], index=False)

    return warning, ratio




if __name__ == '__main__':

    packet_size = 30
    alpha = 2
    ratiolevel = 0.04
    
    DIRNAME = '../../LOGS/XYZ_lines/'
    FILENAME = 'Reg_19_2_2020-17H38m37s.txt'
    file_line_name_in = os.path.join(DIRNAME, FILENAME)
    
    file_line_name_out = 'processed_line'
    
    print(outliers_filter(file_line_name_in, file_line_name_out, packet_size, alpha, ratiolevel))





