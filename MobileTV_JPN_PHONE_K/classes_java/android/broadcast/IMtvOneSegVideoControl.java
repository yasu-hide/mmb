// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast;

import android.view.SurfaceView;

public interface IMtvOneSegVideoControl
{

    public abstract boolean disableVideo();

    public abstract boolean enableVideo();

    public abstract boolean registerSubSurface(SurfaceView surfaceview);

    public abstract boolean registerSurface(SurfaceView surfaceview);

    public abstract boolean setFrameRateChange(int i);

    public abstract boolean setRendererCreate(int i);

    public abstract void unregisterSurface(SurfaceView surfaceview);

    public static final int FRAMERATE_RESET = 0;
    public static final int FRAMERATE_SET = 1;
    public static final int ORIENTATION_CHANGED = 1;
    public static final int ORIENTATION_UNCHANGED = 0;
    public static final int SURFACE_TYPE = 0;
}
