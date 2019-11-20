#!/usr/bin/python3
#-*- coding: utf-8 -*-

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
	import os.path
	import sys

	filename = sys.argv[1]
	basename = os.path.basename(filename)
	dirname = os.path.dirname(filename)
	if '.' in basename:
		basename = basename.split('.')[0] + '.waypoints'
	#
	wpts = readL84Waypoints(filename)
	writeMMWaypoints(os.path.join(dirname,basename),wpts)

