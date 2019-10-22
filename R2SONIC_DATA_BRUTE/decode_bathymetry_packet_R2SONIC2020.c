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
            - u16   =   unsigned short OU char[2] SUIVANT LA DONNEE
            - s16   =   short
            - u8    =   char                                                */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int N ;

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

void printShortArray(char *name, unsigned short *array, int it)
{
    int i;
    for(i=0; i<it; i++)
    {
        printf("%s[%i] = %u\n", name, i, array[i]);
    }
}

void printFloatArray(char *name, float *array, int it)
{
    int i;
    for(i=0; i<it; i++)
    {
        printf("%s[%i] = %f\n", name, i, array[i]);
    }
}

#define SWAP(x) SwapBytes(&x, sizeof(x));


typedef struct bathymetry {
    // *** BEGIN PACKET: BATHY DATA FORMAT 0 ***
    char PacketName[4]; // u32 : 'BTH0'
    unsigned int PacketSize;// u32 : [bytes] size of this entire packet 
    unsigned int DataStreamID;// u32 : reserved for future use

    //Section H0: header
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
    float H0_TxPower;// f32: [dB re 1 uPa at 1 meter]
    float H0_TxPulseWidth;// f32 [seconds]
    float H0_TxBeamwidthVert;// f32 [radians]
    float H0_TxBeamwidthHoriz;// f32 [radians]
    float H0_TxSteeringVert;// f32 [radians] = angle de dépointage ?
    float H0_TxSteeringHoriz;// f32 [radians]
    unsigned short H0_TxMiscInfo; // u16 reserved for future use
    short H0_VTXplusOffset; //s16 [hundredths of a dB] transmit voltage offset at time of ping (divide value by 100 to get dB)
    float H0_RxBandwidth;// f32 [hertz]
    float H0_RxSampleRate;// f32 [hertz] sample rate of data acquisition and signal processing
    float H0_RxRange;// f32 [meters] sonar range setting
    float H0_RxGain;// f32 [multiply by two for relative dB]
    float H0_RxSpreading;// f32 [dB (times log range in meters)]
    float H0_RxAbsorption;// f32 [dB per kilometer]
    float H0_RxMountTilt;// f32 [radians]
    unsigned int H0_RxMiscInfo;// u32 reserved for future use
    unsigned short H0_reserved;// u16 reserved for future use (uncorrected pressure sensor reading in meters)
    unsigned short H0_Points;// u16 number of bathy points

    //Section R0: 16-bit bathy point ranges
    char R0_SectionName[2];// 'R0'
    unsigned short R0_SectionSize;// [bytes] size of this entire section
    float R0_ScalingFactor;
    //u16 --> 2**16 = 65536
    //unsigned short R0_Range[65536];//[seconds two-way] = R0_Range * R0_ScalingFactor
    unsigned short* R0_Range;//[seconds two-way] = R0_Range * R0_ScalingFactor
    
    //Section A0: bathy point angles, equally-spaced (present only during "equi-angle" spacing mode)
    //Section A2: 16-bit bathy point angles, arbitrarily-spaced (present only during "equi-distant" spacing mode)
    char Ax_SectionName[2]; // 'A0' ou 'A2' selon le mode utilisé
    unsigned short Ax_SectionSize;// [bytes] size of this entire section
    float Ax_AngleFirst;// f32 [radians] angle of first (port side) bathy point, relative to array centerline, AngleFirst < AngleLast
    //Propre à la section A0
    float A0_AngleLast;// f32 [radians] angle of last (starboard side) bathy point
    //Propre à la section A2
    float A2_ScalingFactor;
    float Ax_MoreInfo[6];// f32 reserved for future use
    unsigned short *A2_AngleStep;//[radians] angle[n] = A2_AngleFirst + (32-bit sum of A2_AngleStep[0] through A2_AngleStep[n])* A2_ScalingFactor
    
    //Section I1: 16-bit bathy intensity (present only if enabled)
    char I1_SectionName[2];// 'I1'
    unsigned short I1_SectionSize;// u16 [bytes] size of this entire section
    float I1_ScalingFactor;// f32
    unsigned short* I1_Intensity; // u16 [micropascals] intensity[n]* I1_ScalingFactor = I1_Intensity[n]
    
    //Section G0: simple straight-line depth gates
    char G0_SectionName[2];// 'G0'
    unsigned short G0_SectionSize;// u16 [bytes] size of this entire section
    float G0_DepthGateMin;// f32 [seconds two-way]
    float G0_DepthGateMax;// f32 [seconds two-way]
    float G0_DepthGateSlope;// f32 [radians]
    
    //Section G1: 8-bit gate positions, arbitrary paths (present only during "verbose" gate description mode)
    char G1_SectionName[2];// 'G1'
    
}Bath;


void swapBath(Bath* bath)//Little Endian to Big Endian
{
    int i;
    SWAP(bath->PacketSize);
    SWAP(bath->DataStreamID);

    SWAP(bath->H0_SectionSize);
    SWAP(bath->H0_TimeSeconds);
    SWAP(bath->H0_TimeNanoseconds);
    SWAP(bath->H0_PingNumber);
    SWAP(bath->H0_PingPeriod);
    SWAP(bath->H0_SoundSpeed);
    SWAP(bath->H0_Frequency);
    SWAP(bath->H0_TxPower);
    SWAP(bath->H0_TxPulseWidth);
    SWAP(bath->H0_TxBeamwidthVert);
    SWAP(bath->H0_TxBeamwidthHoriz);
    SWAP(bath->H0_TxSteeringVert);
    SWAP(bath->H0_TxSteeringHoriz);
    SWAP(bath->H0_TxMiscInfo);
    SWAP(bath->H0_VTXplusOffset);
    SWAP(bath->H0_RxBandwidth);
    SWAP(bath->H0_RxSampleRate);
    SWAP(bath->H0_RxRange);
    SWAP(bath->H0_RxGain);
    SWAP(bath->H0_RxSpreading);
    SWAP(bath->H0_RxAbsorption);
    SWAP(bath->H0_RxMountTilt);
    SWAP(bath->H0_RxMiscInfo);
    SWAP(bath->H0_reserved);

    SWAP(bath->R0_SectionSize);
    SWAP(bath->R0_ScalingFactor);
    for(i=0; i<N; i++)
    {
        SWAP(bath->R0_Range[i]);
    }
    
    SWAP(bath->Ax_SectionSize);
    SWAP(bath->Ax_AngleFirst);
    if(bath->Ax_SectionName[1]=='0')
    {
        SWAP(bath->A0_AngleLast);
    }
    if(bath->Ax_SectionName[1]=='2')
    {
        SWAP(bath->A2_ScalingFactor);
    }
    for(i=0; i<6; i++)
    {
        SWAP(bath->Ax_MoreInfo[i]);
    }
    if(bath->Ax_SectionName[1]=='2')
    {
        for(i=0; i<N; i++)
        {
            SWAP(bath->A2_AngleStep[i]);
        }
    }
//    SWAP(bath->I1_SectionName);
//    SWAP(bath->I1_SectionSize);
/*    SWAP(bath->I1_ScalingFactor);*/
/*    for(i=0; i<N; i++)*/
/*    {*/
/*        SWAP(bath->I1_Intensity[i]);*/
/*    }*/
/*    */
/*    SWAP(bath->G0_SectionSize);*/
/*    SWAP(bath->G0_DepthGateMin);*/
/*    SWAP(bath->G0_DepthGateMax);*/
/*    SWAP(bath->G0_DepthGateSlope);*/
    
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
    printf("H0_TxPower:%f\n",bath->H0_TxPower);
    printf("H0_TxPulseWidth:%f\n",bath->H0_TxPulseWidth);
    printf("H0_TxBeamwidthVert:%f\n",bath->H0_TxBeamwidthVert);
    printf("H0_TxBeamwidthHoriz:%f\n",bath->H0_TxBeamwidthHoriz);
    printf("H0_TxSteeringVert:%f\n",bath->H0_TxSteeringVert);
    printf("H0_TxSteeringHoriz:%f\n",bath->H0_TxSteeringHoriz);
    printf("H0_TxMiscInfo:%u\n",bath->H0_TxMiscInfo);
    printf("H0_VTX+Offset:%d\n",bath->H0_VTXplusOffset);
    printf("H0_RxBandwidth:%f\n",bath->H0_RxBandwidth);
    printf("H0_RxSampleRate:%f\n",bath->H0_RxSampleRate);
    printf("H0_RxRange:%f\n",bath->H0_RxRange);
    printf("H0_RxGain:%f\n",bath->H0_RxGain);
    printf("H0_RxSpreading:%f\n",bath->H0_RxSpreading);
    printf("H0_RxAbsorption:%f\n",bath->H0_RxAbsorption);
    printf("H0_RxMountTilt:%f\n",bath->H0_RxMountTilt);
    printf("H0_RxMiscInfo:%u\n",bath->H0_RxMiscInfo);
    printf("H0_reserved:%u\n",bath->H0_reserved);
    printf("H0_Points:%u\n",bath->H0_Points);
    
    printf("R0_SectionName:%.2s\n",bath->R0_SectionName);
    printf("R0_SectionSize:%u\n",bath->R0_SectionSize);
    printf("R0_ScalingFactor:%f\n",bath->R0_ScalingFactor);
    //printShortArray("R0_Range", bath->R0_Range, N);

    printf("Ax_SectionName:%.2s\n",bath->Ax_SectionName);
    printf("Ax_SectionSize:%u\n",bath->Ax_SectionSize);
    printf("Ax_AngleFirst:%f\n",bath->Ax_AngleFirst);
    if(bath->Ax_SectionName[1]=='0')
    {
        printf("A0_AngleLast:%f\n",bath->A0_AngleLast);
    }
    if(bath->Ax_SectionName[1]=='2')
    {
        printf("A2_ScalingFactor:%f\n",bath->A2_ScalingFactor);
    }
    printFloatArray("Ax_MoreInfo", bath->Ax_MoreInfo, 6);
    if(bath->Ax_SectionName[1]=='2')
    {
       //printShortArray("A2_AngleStep", bath->A2_AngleStep, N);
    }
    printf("I1_SectionName:%.2s\n",bath->I1_SectionName);
//    printf("I1_SectionName:%c\n",((char)(bath->I1_SectionName)|65280));
//    printf("I1_SectionName:%c\n",((char)(bath->I1_SectionName)|255));
//    printf("I1_SectionSize:%u\n",bath->I1_SectionSize);
/*    printf("I1_ScalingFactor:%f\n",bath->I1_ScalingFactor);*/
/*    printShortArray("I1_Intensity", bath->I1_Intensity, N);*/
/*    */
/*    printf("G0_SectionName:%.2s\n",bath->G0_SectionName);*/
/*    printf("G0_SectionSize:%u\n",bath->G0_SectionSize);*/
/*    printf("G0_DepthGateMin:%f\n",bath->G0_DepthGateMin);*/
/*    printf("G0_DepthGateMax:%f\n",bath->G0_DepthGateMax);*/
/*    printf("G0_DepthGateSlope:%f\n",bath->G0_DepthGateSlope);*/
/*    */
/*    printf("G1_SectionName:%.2s\n",bath->G1_SectionName);*/

}



int readBath(Bath*  bath,FILE* data)
{

    fread(&bath->PacketName,sizeof(char),4,data);
    fread(&bath->PacketSize,sizeof(unsigned int),1,data);
    fread(&bath->DataStreamID,sizeof(unsigned int),1,data);
    fread(&bath->H0_SectionName,sizeof(char),2,data);
    fread(&bath->H0_SectionSize,sizeof(unsigned short),1,data);
    fread(&bath->H0_ModelNumber,sizeof(char),12,data);
    fread(&bath->H0_SerialNumber,sizeof(char),12,data);
    fread(&bath->H0_TimeSeconds,sizeof(unsigned int),1,data);
    fread(&bath->H0_TimeNanoseconds,sizeof(unsigned int),1,data);
    fread(&bath->H0_PingNumber,sizeof(unsigned int),1,data);
    fread(&bath->H0_PingPeriod,sizeof(float),1,data);
    fread(&bath->H0_SoundSpeed,sizeof(float),1,data);
    fread(&bath->H0_Frequency,sizeof(float),1,data);
    fread(&bath->H0_TxPower,sizeof(float),1,data);
    fread(&bath->H0_TxPulseWidth,sizeof(float),1,data);
    fread(&bath->H0_TxBeamwidthVert,sizeof(float),1,data);
    fread(&bath->H0_TxBeamwidthHoriz,sizeof(float),1,data);
    fread(&bath->H0_TxSteeringVert,sizeof(float),1,data);
    fread(&bath->H0_TxSteeringHoriz,sizeof(float),1,data);
    fread(&bath->H0_TxMiscInfo,sizeof(unsigned short),1,data);
    fread(&bath->H0_VTXplusOffset,sizeof(short),1,data);
    fread(&bath->H0_RxBandwidth,sizeof(float),1,data);
    fread(&bath->H0_RxSampleRate,sizeof(float),1,data);
    fread(&bath->H0_RxRange,sizeof(float),1,data);
    fread(&bath->H0_RxGain,sizeof(float),1,data);
    fread(&bath->H0_RxSpreading,sizeof(float),1,data);
    fread(&bath->H0_RxAbsorption,sizeof(float),1,data);
    fread(&bath->H0_RxMountTilt,sizeof(float),1,data);
    fread(&bath->H0_RxMiscInfo,sizeof(int),1,data);
    fread(&bath->H0_reserved,sizeof(short),1,data);
    fread(&bath->H0_Points,sizeof(short),1,data);
    SWAP(bath->H0_Points);
    
    fread(&bath->R0_SectionName,sizeof(char),2,data);
    fread(&bath->R0_SectionSize,sizeof(unsigned short),1,data);
    fread(&bath->R0_ScalingFactor,sizeof(float),1,data);

    N = (bath->H0_Points) + (bath->H0_Points & 1); //Permet d'avoir un nombre pair meme si nombre de points impair. Obligatoire pour eviter decalage dans la lecture de la trame (on lit forcément par paquets pairs car octets u16, u32...)
    bath->R0_Range = calloc(N,sizeof(unsigned short));
    fread(bath->R0_Range,sizeof(unsigned short),N,data);

    fread(&bath->Ax_SectionName,sizeof(char),2,data);
    fread(&bath->Ax_SectionSize,sizeof(unsigned short),1,data);
    fread(&bath->Ax_AngleFirst,sizeof(float),1,data);
    if(bath->Ax_SectionName[1]=='0')
    {
        fread(&bath->A0_AngleLast,sizeof(float),1,data);
    }
    if(bath->Ax_SectionName[1]=='2')
    {
        fread(&bath->A2_ScalingFactor,sizeof(float),1,data);
    }
    fread(&bath->Ax_MoreInfo,sizeof(float),6,data);
    if(bath->Ax_SectionName[1]=='2')
    {
        bath->A2_AngleStep = calloc(N,sizeof(unsigned short));
        fread(bath->A2_AngleStep,sizeof(unsigned short),N,data);
    }

    
    fread(&bath->I1_SectionName,2*sizeof(char),1,data);
/*    fread(&bath->I1_SectionSize,sizeof(unsigned short),1,data);*/
/*    fread(&bath->I1_ScalingFactor,sizeof(float),1,data);*/
/*    bath->I1_Intensity = calloc(N,sizeof(unsigned short));*/
/*    for(i=0; i<N; i++)*/
/*    {*/
/*        fread(&(bath->I1_Intensity[i]),sizeof(unsigned short),1,data);*/
/*    }*/
/*    */
/*    fread(&bath->G0_SectionName,2*sizeof(char),1,data);*/
/*    fread(&bath->G0_SectionSize,sizeof(unsigned short),1,data);*/
/*    fread(&bath->G0_DepthGateMin,sizeof(float),1,data);*/
/*    fread(&bath->G0_DepthGateMax,sizeof(float),1,data);*/
/*    fread(&bath->G0_DepthGateSlope,sizeof(float),1,data);*/
/*    */
/*    fread(&bath->G1_SectionName,2*sizeof(char),1,data);*/

    return(1);
}

int main(void)
{

    Bath*  bath=malloc(sizeof(Bath));
    FILE *data;

//    data = fopen("trames_10_10_2019-14H1m53s.raw","rb");
 //   data = fopen("trames_10_10_2019-15H5m59s_1er_patch_test.raw","rb");
    data = fopen("Wireshark/test.raw","rb");
    readBath(bath,data);
    swapBath(bath);
    printBath(bath);
    return 0;
}
