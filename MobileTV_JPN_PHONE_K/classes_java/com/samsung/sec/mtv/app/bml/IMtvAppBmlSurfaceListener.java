// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.bml;


public interface IMtvAppBmlSurfaceListener
{

    public abstract boolean IsBMLCaptionView();

    public abstract boolean IsBMLFullView();

    public abstract boolean IsBMLTvView();

    public abstract void bmlControlTypeChanged();

    public abstract void setBMLCaptionView();

    public abstract void setBMLFullView(boolean flag);

    public abstract void setBMLTvView();

    public abstract void startTvLinkTab();

    public abstract void updateBMLSurfaceView();
}
