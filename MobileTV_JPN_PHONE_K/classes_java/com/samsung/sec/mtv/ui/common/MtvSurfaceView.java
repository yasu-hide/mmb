// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.samsung.sec.mtv.app.context.*;

public class MtvSurfaceView extends SurfaceView
    implements android.view.SurfaceHolder.Callback
{

    public MtvSurfaceView(Context context)
    {
        super(context);
        mtvSurfaceHolder = null;
        mtvSurfaceHolder = getHolder();
        mtvSurfaceHolder.addCallback(this);
    }

    public MtvSurfaceView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mtvSurfaceHolder = null;
        mtvSurfaceHolder = getHolder();
        mtvSurfaceHolder.addCallback(this);
    }

    public MtvSurfaceView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mtvSurfaceHolder = null;
        mtvSurfaceHolder = getHolder();
        mtvSurfaceHolder.addCallback(this);
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        MtvUtilDebug.Low("MtvSurfaceView", "surfaceChanged");
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        MtvUtilDebug.Low("MtvSurfaceView", "surfaceCreated");
        surfaceholder = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(surfaceholder != null)
        {
            surfaceholder.getComponents().getVideo().enable();
            surfaceholder = surfaceholder.getComponents().getVideo().getControlInterface();
            if(surfaceholder != null)
                surfaceholder.registerSurface(this);
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        MtvUtilDebug.Low("MtvSurfaceView", "surfaceDestroyed");
        surfaceholder = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(surfaceholder != null)
        {
            surfaceholder.getComponents().getVideo().enable();
            surfaceholder = surfaceholder.getComponents().getVideo().getControlInterface();
            if(surfaceholder != null)
                surfaceholder.unregisterSurface(this);
        }
    }

    private static final String TAG = "MtvSurfaceView";
    private SurfaceHolder mtvSurfaceHolder;
}
