import struct
 
f = open("trames_10_10_2019-15H5m59s_1er_patch_test.raw", "rb")
f = open("Wireshark/test.raw", "rb")
try:
    # > Big endian et < Little endian
    s = struct.Struct(">ccccIIccHccccccccccccccccccccccccIIIfffffffffHhfffffffIHHccHf")
    record = f.read(s.size)
    p1=s.unpack(record)
    print p1


    N=s.unpack(record)[56]#Nbr de points
    N=(N+(N&1))

    str1="H"*(N)
    s2=struct.Struct(">"+str1)
    record2 = f.read(s2.size)
    p2=s2.unpack(record2)
    print p2

    #A0 ou A2 section
    s3=struct.Struct(">ccHffffffff")
    record3 = f.read(s3.size)
    p3=s3.unpack(record3)
    print p3

    if p3[1]=='2':#Si section A2
        str1="H"*N
        s4=struct.Struct(">"+str1)
        record4 = f.read(s4.size)
        p4=s4.unpack(record4)
        print p4

    #Section I1 et G0
    s5=struct.Struct(">ccHf")
    record5 = f.read(s5.size)
    p5=s5.unpack(record5)
    print p5
    if p5[0]=="I":#Si section I1
        s6=struct.Struct(">"+str1)
        record6 = f.read(s6.size)
        p6=s6.unpack(record6)
        print(p6)
        s7=struct.Struct(">ccHfff")
        record7 = f.read(s7.size)
        p7=s7.unpack(record7)
    else: #section G0
        s7=struct.Struct(">ff")
        record7 = f.read(s7.size)
        p7=s7.unpack(record7)
    print(p7)
    
    

 
except IOError:
        # Your error handling here
        # Nothing for this example
        pass
finally:
    f.close()
