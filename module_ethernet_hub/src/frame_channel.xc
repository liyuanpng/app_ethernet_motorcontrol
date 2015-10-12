// Copyright (c) 2011, XMOS Ltd, All rights reserved
// This software is freely distributable under a derivative of the
// University of Illinois/NCSA Open Source License posted in
// LICENSE.txt and at <http://github.xcore.com/>

#include <print.h>

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
#pragma unsafe arrays
		for (int i = 0; i < nwords; i++)
		{
			c :> (buffer, unsigned[])[i];
		}
	}
}

