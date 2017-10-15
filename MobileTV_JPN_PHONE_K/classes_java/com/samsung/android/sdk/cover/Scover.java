// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.cover;

import android.content.Context;
import com.samsung.android.sdk.*;

// Referenced classes of package com.samsung.android.sdk.cover:
//            ScoverManager

public final class Scover
    implements SsdkInterface
{

    public Scover()
    {
    }

    public int getVersionCode()
    {
        return 0x1000000;
    }

    public String getVersionName()
    {
        return String.format("%d.%d.%d", new Object[] {
            Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0)
        });
    }

    public void initialize(Context context)
        throws SsdkUnsupportedException, IllegalArgumentException
    {
        mContext = context;
        if(context == null)
            throw new IllegalArgumentException("context may not be null!!");
        if(!SsdkVendorCheck.isSamsungDevice())
            throw new SsdkUnsupportedException("This is not Samsung device!!!", 0);
        context = new ScoverManager(mContext);
        if(context == null || !context.isSupportCover())
            throw new SsdkUnsupportedException("This device is not supported Scover!!!", 1);
        else
            return;
    }

    public boolean isFeatureEnabled(int i)
    {
        ScoverManager scovermanager = new ScoverManager(mContext);
        if(scovermanager != null)
            return scovermanager.isSupportTypeOfCover(i);
        else
            return false;
    }

    private Context mContext;
}
