// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.*;

// Referenced classes of package com.access.bml:
//            BMLNativeCallbacks

public class BMLNativeView extends SurfaceView
{

    public BMLNativeView(Context context)
    {
        super(context);
        screenWidth = 1080;
        screenHeight = 1280;
        lastX = 0.0F;
        lastY = 0.0F;
        m_engine = null;
    }

    public BMLNativeView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        screenWidth = 1080;
        screenHeight = 1280;
        lastX = 0.0F;
        lastY = 0.0F;
        m_engine = null;
    }

    public BMLNativeView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        screenWidth = 1080;
        screenHeight = 1280;
        lastX = 0.0F;
        lastY = 0.0F;
        m_engine = null;
    }

    public boolean checkCanvasValid()
    {
        Canvas canvas = getHolder().lockCanvas();
        if(canvas != null)
        {
            getHolder().unlockCanvasAndPost(canvas);
            return true;
        } else
        {
            return false;
        }
    }

    public int getLastMouseX()
    {
        return (int)lastX;
    }

    public int getLastMouseY()
    {
        return (int)lastY;
    }

    public int get_scr_height()
    {
        return screenHeight;
    }

    public int get_scr_width()
    {
        return screenWidth;
    }

    public void initEngine(BMLNativeCallbacks bmlnativecallbacks)
    {
        m_engine = bmlnativecallbacks;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 34
    //                   1 68
    //                   2 63;
           goto _L1 _L2 _L3 _L4
_L3:
        break MISSING_BLOCK_LABEL_68;
_L1:
        return true;
_L2:
        int i = 0;
_L5:
        if(m_engine != null)
        {
            m_engine.Browser_processMouseEvent((int)motionevent.getX(), (int)motionevent.getY(), i);
            return true;
        }
        if(true) goto _L1; else goto _L4
_L4:
        i = 1;
          goto _L5
        i = 2;
          goto _L5
    }

    public void setBrowserHeight(int i)
    {
        screenHeight = i;
    }

    public void setBrowserWidth(int i)
    {
        screenWidth = i;
    }

    public void updateCanvasColor(int i)
    {
        Canvas canvas = getHolder().lockCanvas();
        if(canvas != null)
        {
            canvas.drawColor(i);
            if(m_engine != null)
                m_engine.Browser_UpdateCanvasColor(i);
            getHolder().unlockCanvasAndPost(canvas);
        }
    }

    public float lastX;
    public float lastY;
    public BMLNativeCallbacks m_engine;
    public int screenHeight;
    public int screenWidth;
}
