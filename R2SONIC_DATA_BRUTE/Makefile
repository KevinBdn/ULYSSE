all: bathy

bathy: decode_bathymetry_packet_R2SONIC2020.o
	gcc -o BATHY_PACKET decode_bathymetry_packet_R2SONIC2020.o

decode_bathymetry_packet_R2SONIC2020.o: decode_bathymetry_packet_R2SONIC2020.c
	gcc -g -o decode_bathymetry_packet_R2SONIC2020.o -c decode_bathymetry_packet_R2SONIC2020.c

clean:
	rm -rf *.o BATHY_PACKET

mrproper: clean
	rm -rf BATHY_PACKET

