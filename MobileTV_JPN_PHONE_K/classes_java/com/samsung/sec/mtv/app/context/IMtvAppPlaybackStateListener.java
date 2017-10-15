// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.context;


public interface IMtvAppPlaybackStateListener
{

    public abstract void onPlayerNotification(int i, int j, int k);

    public abstract void onStateChanged(MtvAppPlaybackState.State state, MtvAppPlaybackState.State state1);
}
