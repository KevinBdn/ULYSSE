import numpy as np
import matplotlib.pyplot as plt
import pandas

reg_file = 'Trav_3_3_2020-16H25m58s.txt'
reg_file = 'Reg_3_3_2020-16H24m11s.txt'
reg_file = 'Reg_3_3_2020-16H22m29s.txt'
reg_file = 'Reg_3_3_2020-16H21m3s.txt'
ligne = pandas.read_csv(reg_file, delim_whitespace=True, names=['p', 'b', 'x', 'y', 'z', 'status'])
outliers =  ligne.loc[ligne.status==1]
ligne_clean = ligne.loc[ligne.status==0]

print(len(outliers['z']),"/",len(ligne['z']))
print(len(outliers['z'])/len(ligne['z']),'%')


n_bins = 100

plt.figure()
plt.hist([ligne['z'],ligne_clean['z']],bins=n_bins)
#plt.hist(ligne_clean['z'], bins=n_bins)

#plt.gca().set_aspect("equal",adjustable="box")
plt.show()
