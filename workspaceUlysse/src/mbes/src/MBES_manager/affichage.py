import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

def draw(x,z, m, n):

    y=[]
    for i in range(len(x)):
        y_i=[]
        for j in range(len(x[0])):
            y_i.append(i)
        y.append(y_i)

    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    sc = ax.scatter(x[m:n],y[m:n],z[m:n], c = np.array(z[m:n]).flatten())
    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    plt.title('Affichage des sondes')
    cbar = plt.colorbar(sc)
    cbar.set_label("Depth [m]")
    plt.show()
