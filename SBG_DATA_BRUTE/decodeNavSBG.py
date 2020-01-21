import struct

end_data=False
n_packet=0
f = open("../ros_ulysse/LOGS/IMU/trames_NAV_17_1_2020-14H40m23s.raw", "rb")

# > Big endian et < Little endian

#HEADER (p.15) , END
header="<ccccH"#SYNC1(1)|SYNC2(1)|MSG(1)|CLASS(1)|LEN(2)
end="hc"#CRC(2)|ETX(1)

#DATA (p.71)
#TIME_STAMP|VELOCITY_N|VELOCITY_E|VELOCITY_D|VELOCITY_N_ACC|VELOCITY_E_ACC|VELOCITY_D_ACC|LATITUDE|LONGITUDE|ALTITUDE|UNDULATION|LATITUDE_ACC|LONGITUDE_ACC|ALTITUDE_ACC|SOLUTION_STATUS
data="IffffffdddffffI"


#Struct
s = struct.Struct(header+data+end)

print("\n\n##### Packet "+str(n_packet)+" #####\n")
record = f.read(s.size)
p1=s.unpack(record)
print(s.size,p1)
n_packet+=1
print("\n\n##### Packet "+str(n_packet)+" #####\n")
record = f.read(s.size)
p1=s.unpack(record)
print(s.size,p1)
n_packet+=1

f.close()


