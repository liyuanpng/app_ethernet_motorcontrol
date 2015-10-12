# 1 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
# 6 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
# 1 "print.h" 1 3
# 34 "print.h" 3
int printchar(char value);
# 40 "print.h" 3
int printcharln(char value);
# 46 "print.h" 3
int printint(int value);
# 52 "print.h" 3
int printintln(int value);
# 58 "print.h" 3
int printuint(unsigned value);
# 64 "print.h" 3
int printuintln(unsigned value);
# 70 "print.h" 3
int printllong(long long value);
# 76 "print.h" 3
int printllongln(long long value);
# 82 "print.h" 3
int printullong(unsigned long long value);
# 88 "print.h" 3
int printullongln(unsigned long long value);
# 95 "print.h" 3
int printhex(unsigned value);
# 102 "print.h" 3
int printhexln(unsigned value);
# 109 "print.h" 3
int printllonghex(unsigned long long value);
# 116 "print.h" 3
int printllonghexln(unsigned long long value);
# 123 "print.h" 3
int printstr(const char (& alias s)[]);
# 133 "print.h" 3
int printstrln(const char (& alias s)[]);
# 7 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc" 2

void passFrameToHub(chanend c, const unsigned char buffer[], int nbytes)
{
    if(nbytes < 0){
        return;
    }

    master
	{
		int nwords;
		c <: nbytes;
		nwords = (nbytes >> 2) + 1;
# 19 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
#pragma unsafe arrays
		for (int i = 0; i < nwords; i++)
		{
			c <: (buffer, unsigned[])[i];
		}
	}
}

void fetchFrameFromHub(chanend c, unsigned buffer[], int &nbytes)
{
	slave
	{
		int nwords;
		c :> nbytes;
		nwords = (nbytes >> 2) + 1;
# 34 "/home/hstroetgen/Dokumente/programming/app_ethernet_led/module_ethernet_hub/src/frame_channel.xc"
#pragma unsafe arrays
		for (int i = 0; i < nwords; i++)
		{
			c :> (buffer, unsigned[])[i];
		}
	}
}
