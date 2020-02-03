#-*- coding:utf-8 -*-

import socket
from time import *

def date():
    t=localtime()
    m=t[1]
    j=t[2]
    a=t[0]
    hh=t[3]
    mm=t[4]
    ss=t[5]
    date=str(j)+"_"+str(m)+"_"+str(a)+"-"+str(hh)+"H"+str(mm)+"m"+str(ss)+"s"
    return(date)

UDP_PORT = 1089
PATH='../LOGS/IMU/'
BUFFER_SIZE=65535 #Taille maximale d'un message UDP

name=PATH+"trames_NAV_"+date()+".raw"
fichier = open(name, "wb")
sock = socket.socket(family = socket.AF_INET, type = socket.SOCK_DGRAM)
sock.bind(('', UDP_PORT))


print("Serveur lancé - "+name)
i=1
while True :
        addr = sock.recvfrom(BUFFER_SIZE)
        message = addr[0]
        address = addr[1]
        print("Trame reçue : ", i)
        #Ecriture des trames dans le fichier
        fichier.write(message)
        i+=1

sock.close()

