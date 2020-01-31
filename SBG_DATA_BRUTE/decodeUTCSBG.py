import struct

end_data=False
n_packet=0
f = open("../ros_ulysse/LOGS/IMU/trames_UTC_17_1_2020-16H47m7s.raw", "rb")

# > Big endian et < Little endian

#HEADER (p.15) , END
header="<ccccH"#SYNC1(1)|SYNC2(1)|MSG(1)|CLASS(1)|LEN(2)
end="hc"#CRC(2)|ETX(1)

#DATA (p.64)
#TIME_STAMP|CLOCK_STATUS|YEAR|MONTH|DAY|HOUR|MIN|SEC|NANOSEC|GPS_TOW
data="IHHBBBBBII"


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


