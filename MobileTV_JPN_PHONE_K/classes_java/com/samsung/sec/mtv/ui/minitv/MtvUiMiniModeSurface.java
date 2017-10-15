// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.minitv;

import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.util.AttributeSet;
import com.samsung.sec.mtv.ui.common.MtvSurfaceView;

public class MtvUiMiniModeSurface extends MtvSurfaceView
{

    public MtvUiMiniModeSurface(Context context)
    {
        super(context);
        mVideoWidth = 0;
        mVideoHeight = 0;
    }

    public MtvUiMiniModeSurface(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mVideoWidth = 0;
        mVideoHeight = 0;
    }

    public MtvUiMiniModeSurface(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mVideoWidth = 0;
        mVideoHeight = 0;
    }

    protected void onMeasure(int i, int j)
    {
        int k1 = mVideoWidth;
        int l1 = mVideoHeight;
        int i1 = resolveAdjustedSize(k1, i);
        int j1 = resolveAdjustedSize(l1, j);
        int l = j1;
        int k = i1;
        if(k1 > 0)
        {
            l = j1;
            k = i1;
            if(l1 > 0)
            {
                k = getDefaultSize(mVideoWidth, i);
                l = getDefaultSize(mVideoHeight, j);
            }
        }
        MtvUtilDebug.Low("MtvUiMiniModeSurface", (new StringBuilder()).append("setting size: ").append(k).append('x').append(l).toString());
        super.setMeasuredDimension(k, l);
    }

    public int resolveAdjustedSize(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(j);
        j = android.view.View.MeasureSpec.getSize(j);
        switch(k)
        {
        default:
            return i;

        case 0: // '\0'
            return i;

        case -2147483648: 
            return Math.min(i, j);

        case 1073741824: 
            return j;
        }
    }

    private static final String TAG = "MtvUiMiniModeSurface";
    private int mVideoHeight;
    private int mVideoWidth;
}
