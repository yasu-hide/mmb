// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.oneseg;

import android.broadcast.*;
import android.broadcast.bml.MtvOneSegBmlViewControlImpl;
import android.broadcast.sdtv.SDtvCompControlImpl;

// Referenced classes of package android.broadcast.oneseg:
//            MtvOneSegService

public class MtvOneSegFactory
{

    public MtvOneSegFactory()
    {
    }

    public static IMtvOneSegAudioControl getAudioControl()
    {
        return SDtvCompControlImpl.getCompControl();
    }

    public static IMtvOneSegBmlViewControl getBMLViewControl()
    {
        return MtvOneSegBmlViewControlImpl.getInstance();
    }

    public static IMtvOneSegCaptionControl getCaptionControl()
    {
        return SDtvCompControlImpl.getCompControl();
    }

    public static IMtvOneSegFileControl getFileControl()
    {
        return SDtvCompControlImpl.getCompControl();
    }

    public static MtvOneSegService getService()
    {
        return MtvOneSegService.getService();
    }

    public static IMtvOneSegVideoControl getVideoControl()
    {
        return SDtvCompControlImpl.getCompControl();
    }
}
