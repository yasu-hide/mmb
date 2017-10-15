// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper.types;


public class MtvOneSegSignal
{

    public MtvOneSegSignal()
    {
        CN = 0;
        RSSI = 0;
        BER = 0;
        sigQty = 0;
    }

    public int getBER()
    {
        return BER;
    }

    public int getCN()
    {
        return CN;
    }

    public int getRSSI()
    {
        return RSSI;
    }

    public int getSignalQuality()
    {
        return sigQty;
    }

    public void setBER(int i)
    {
        BER = i;
    }

    public void setCN(int i)
    {
        CN = i;
    }

    public void setRSSI(int i)
    {
        RSSI = i;
    }

    public void setsigQty(int i)
    {
        sigQty = i;
    }

    private int BER;
    private int CN;
    private int RSSI;
    private int sigQty;
}
