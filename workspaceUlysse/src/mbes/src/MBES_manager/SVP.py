import numpy as np

def calculateXYsvp(svp, scaleFactor, p1, r0, p3, p4):
    i = 0
    sumDelt = 0
    v = p1[37]

    X = []
    Y = []
    #f = open("data.txt", "w")
    
    #f.write("Time_two-way[seconds];Angle[radians];x[m];y[m]\n")
    if (p3[1] == '2'):
        for time in r0:
            sumDelt += p4[i]
            angle = p3[3]+sumDelt*p3[4]
            t = time*scaleFactor

            d = v * t/2
            x = d * np.cos((3*np.pi/2)+angle)
            y = d * np.sin((3*np.pi/2)+angle)
            X.append(x)
            Y.append(y)
            #f.write(str(t) + ";" + str(angle) + ";" + str(x) + ";" + str(y) + ";" + "\n")
            i += 1
    #f.close()

    return X,Y


def cleanSVP(svpArray):
    #Redefinition du SVP
    #Couches de 1m !!! Gestion des couches inexistantes
    indices = []
    means = []
    sum  = svpArray[0][1]
    ind_prec = int(svpArray[0][0])
    nb = 1
    indices.append(ind_prec)
    
    for i in range(len(svpArray)):

        ind = int(svpArray[i][0])
        print(len(svpArray),ind)

        if (ind != ind_prec):
            sum += svpArray[i][1]
            nb += 1
            ecart = (ind - ind_prec)
            print(ecart)
            #print(ecart)
            if (ecart != 1):
                #print("!!!" + str(ind))
                for v in range(ecart-1):
                    indices.append(ind_prec+(v+1))
                    print(ind)
                    print(means)
                    means.append((means[ind-3]+(sum/nb))/2)
            means.append(sum/nb)
            indices.append(ind)
            nb = 1
            sum = svpArray[i][1]

        if (ind == ind_prec):
            sum += svpArray[i][1]
            nb += 1
        ind_prec = ind
    #Derniere iteration a prendre en compte
    means.append(sum/nb)

    #print(indices)
    #print(means)
    svpMean = np.vstack((np.array(indices), np.array(means))).T
    #print(svpMean)

    return svpMean



