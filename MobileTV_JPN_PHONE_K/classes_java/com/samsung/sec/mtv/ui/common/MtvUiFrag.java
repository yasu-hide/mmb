// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.Fragment;

public abstract class MtvUiFrag extends Fragment
{
    public static interface IMtvFragEventListener
    {

        public abstract void onFragEvent(int i, Object obj);
    }


    public MtvUiFrag()
    {
    }

    public void onUpdate(int i, Object obj)
    {
    }

    public void redraw()
    {
    }
}
