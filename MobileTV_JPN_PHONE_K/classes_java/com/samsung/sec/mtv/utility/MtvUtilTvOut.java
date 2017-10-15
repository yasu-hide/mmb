// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.app.Presentation;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.media.MediaRouter;
import android.view.Window;

public class MtvUtilTvOut
{

    public MtvUtilTvOut()
    {
    }

    public static void updatePresentation(Context context, MediaRouter mediarouter)
    {
        route = mediarouter.getSelectedRoute(2);
        MtvUtilDebug.High("MtvUtilTvOut", (new StringBuilder()).append("updatePresentation :: route =").append(route).append(" route.getName() =").append(route.getName()).toString());
        mediarouter = null;
        if(route != null)
        {
            mediarouter = route.getPresentationDisplay();
            MtvUtilDebug.High("MtvUtilTvOut", (new StringBuilder()).append("updatePresentation :: presentationDisplay =").append(mediarouter).append(" mPresentation =").append(mPresentation).toString());
        }
        if(mPresentation != null && mPresentation.getDisplay() != mediarouter)
        {
            MtvUtilDebug.High("MtvUtilTvOut", "updatePresentation :: setting mPresentation as null");
            mPresentation.dismiss();
            mPresentation = null;
            isHDMIPlugged = false;
        }
        if(mPresentation != null || mediarouter == null)
            break MISSING_BLOCK_LABEL_205;
        mPresentation = new Presentation(context, mediarouter);
        mPresentation.getWindow().setType(2003);
        mPresentation.setContentView(0x7f030000);
        MtvUtilDebug.High("MtvUtilTvOut", "updatePresentation :: doing mPresentation.show()");
        mPresentation.show();
        isHDMIPlugged = true;
        appContext = context;
_L1:
        return;
        context;
        mPresentation = null;
        return;
        if(mPresentation != null && mediarouter != null && isHDMIPlugged)
        {
            MtvUtilDebug.High("MtvUtilTvOut", "updatePresentation :: unhiding : doing mPresentation.show()");
            try
            {
                mPresentation.show();
                return;
            }
            // Misplaced declaration of an exception variable
            catch(Context context)
            {
                mPresentation = null;
            }
            return;
        }
          goto _L1
    }

    private static final String TAG = "MtvUtilTvOut";
    private static Context appContext = null;
    public static boolean isHDMIPlugged = false;
    public static Presentation mPresentation;
    private static android.media.MediaRouter.RouteInfo route = null;

}
