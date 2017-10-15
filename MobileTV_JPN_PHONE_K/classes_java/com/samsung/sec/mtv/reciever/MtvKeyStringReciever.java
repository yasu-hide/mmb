// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.reciever;

import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.net.Uri;
import com.samsung.sec.mtv.ui.TestMode.MtvUiTestMode;

public class MtvKeyStringReciever extends BroadcastReceiver
{

    public MtvKeyStringReciever()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if(intent.getAction().equals("android.provider.Telephony.SECRET_CODE"))
        {
            intent = intent.getData().getHost();
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvKeyStringReciever", (new StringBuilder()).append("host is ").append(intent).toString());
            if("4732".equals(intent))
            {
                intent = new Intent();
                intent.setClass(context, com/samsung/sec/mtv/ui/TestMode/MtvUiTestMode);
                intent.setFlags(0x10000000);
                MtvUtilDebug.Low("MtvKeyStringReciever", "Start Activity");
                context.startActivity(intent);
            }
        }
    }

    private static final String TAG = "MtvKeyStringReciever";
}
