/*  ## LECTURE DONNEES BATHYMETRIQUE BRUTES DU R2SONIC2020 ##

    DATE: 10/2019
    VERSION: 1.0.1
    AUTHORS: Kevin BEDIN, Ombeline LE GALL

    * INFO:

        * LES DONNES TRANSMISES EN UDP SONT ECRITES EN LITTLE ENDIAN 
          I.E. POIDS FAIBLE AU DEBUT ET POIDS FORT EN FIN
          EN C LES DONNEES SONT LUES EN BIG ENDIAN.

        * EN C VOICI LES TAILLES DES TYPES:
            - char:     1 OCTET     - 8 BITS
            - short:    2 OCTETS    - 16 BITS (SIGNE OU NON AVEC 'unsigned')
            - float:    4 OCTETS    - 32 BITS
            - int:      4 OCTETS    - 32 BITS (SIGNE OU NON AVEC 'unsigned')
            - long:     8 OCTETS    - 64 BITS (SIGNE OU NON AVEC 'unsigned')
            - double:   8 OCTETS    - 64 BITS

        * CONVERSION DES TYPES DU R2SONIC2020:
            - f32   =   float
            - u32   =   unsigned int OU char[4] SUIVANT LA DONNEE
            - u16   =   unsigned short
            - u8    =   char                                                */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void SwapBytes(void *pv,int n) //Big endian to Little endian
{
    char *p = pv;
    size_t lo, hi;
    for(lo=0, hi=n-1; hi>lo; lo++, hi--)
    {
        char tmp=p[lo];
        p[lo] = p[hi];
        p[hi] = tmp;
    }
}

#define SWAP(x) SwapBytes(&x, sizeof(x));

typedef struct bathymetry {
    char PacketName[4]; // u32 : 'BTH0'
    unsigned int PacketSize;// u32 : [bytes] size of this entire packet 
    unsigned int DataStreamID;// u32 : reserved for future use
   // section H0: header
    char H0_SectionName[2];// u16 : 'H0'
    unsigned short H0_SectionSize;// u16 : [bytes] size of this entire section 
    char H0_ModelNumber[12];// .u8 [12] : example "2024", unused chars are nulls
    char H0_SerialNumber[12];//. u8.[12] : example "100017", unused chars are nulls
    unsigned int H0_TimeSeconds;// u32:.[seconds] ping time relative to 0000 hours 1-Jan-1970, integer part
    unsigned int H0_TimeNanoseconds;// u32: [nanoseconds] ping time relative to 0000 hours 1-Jan-1970, fraction part
    unsigned int H0_PingNumber;// u32: pings since power-up or reboot
    float  H0_PingPeriod;// f32: [seconds] time between most recent two pings
    float  H0_SoundSpeed;// f32: [meters per second] 
    float  H0_Frequency;// f32: [hertz] sonar center frequency
} Bath;


void swapBath(Bath* bath)//Little Endian to Big Endian
{
    SWAP(bath->PacketSize);
    SWAP(bath->DataStreamID);
    SWAP(bath->H0_SectionSize);
    SWAP(bath->H0_TimeSeconds);
    SWAP(bath->H0_TimeNanoseconds);
    SWAP(bath->H0_PingNumber);
    SWAP(bath->H0_PingPeriod);
    SWAP(bath->H0_SoundSpeed);
    SWAP(bath->H0_Frequency);
}

void printBath(Bath* bath)
{
    printf("PacketName:%.4s\n",bath->PacketName);//Absence de '\0' a la fin de chaine
    printf("PacketSize:%u\n",bath->PacketSize);
    printf("DataStreamID:%u\n",bath->DataStreamID);
    printf("H0_SectionName:%.2s\n",bath->H0_SectionName);
    printf("H0_SectionSize:%u\n",bath->H0_SectionSize);
    printf("H0_ModelNumber:%.12s\n",bath->H0_ModelNumber);
    printf("H0_SerialNumber:%.12s\n",bath->H0_SerialNumber);
    printf("H0_TimeSeconds:%u\n",bath->H0_TimeSeconds);
    printf("H0_TimeNanoseconds:%u\n",bath->H0_TimeNanoseconds);
    printf("H0_PingNumber:%u\n",bath->H0_PingNumber);
    printf("H0_PingPeriod:%f\n",bath->H0_PingPeriod);
    printf("H0_SoundSpeed:%f\n",bath->H0_SoundSpeed);
    printf("H0_Frequency:%f\n",bath->H0_Frequency);
}

int main(void)
{
    Bath*  bath=malloc(sizeof(Bath));
    char name[4];
    FILE *data;
    data = fopen("trames_10_10_2019-15H5m59s_1er_patch_test.raw","rb");
    fread(bath,sizeof(Bath),1,data);
    swapBath(bath);
    printBath(bath);
    return 0;
}
