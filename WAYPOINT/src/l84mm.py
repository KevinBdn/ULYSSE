#!/usr/bin/python3
#-*- coding: utf-8 -*-

from tkinter.filedialog import * # pour les gestions de fichiers
from tkinter import simpledialog

def readL84Waypoints(filename):
	l84 = open(filename,'rt')
	n = -1
	nPts = -1
	wpts = []
	pts = []
	for line in l84:
		line = line.strip()
		lst = line.split()
		#
		if line.startswith('LNS'):
			n = int(lst[1])
		elif line.startswith('LIN'):
			nPts = int(lst[1])
		elif line.startswith('PTS'):
			pts.append((float(lst[1]),float(lst[2])))
		elif line.startswith('LNN'):
			name = int(lst[1])
		elif line.startswith('EOL'):
			for p in pts:
				wpts.append(p + (name,))
			pts = []
	return wpts

def writeMMWaypoints(filename,wpts):
	with open(filename,'wt') as f:
		#f.write('QGC\tWPL\t110\r\n')
		f.write('QGC WPL 110\r\n')
		for k,w in enumerate(wpts):
			f.write('%d\t0\t0\t16\t0\t0\t0\t0\t%.9f\t%.9f\t1.0\t1\r\n' % (k,w[0],w[1]))

if __name__ == '__main__':
	initialdir_qinsy = "../sources/l84_qinsy/"
	initialdir_waypoints = "../sources/waypoints/"

	TK = Tk()
	file_name_in = askopenfilename(initialdir = initialdir_qinsy, title = "Choix du fichier l84 à convertir", filetypes = [ ('l84 files','.l84'),('all files','.*') ])
	file_name_out = asksaveasfilename(initialdir = initialdir_waypoints, title = "Choisissez un nom de fichier waypoints pour l'enregistrement", filetypes = [('waypoints files','.waypoints'),('all files','.*')])
	TK.destroy()

	wpts = readL84Waypoints(file_name_in)
	writeMMWaypoints(file_name_out,wpts)
