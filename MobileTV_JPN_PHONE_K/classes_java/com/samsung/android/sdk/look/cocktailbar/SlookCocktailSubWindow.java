// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.cocktailbar;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.samsung.android.sdk.look.Slook;

public final class SlookCocktailSubWindow
{

    public SlookCocktailSubWindow()
    {
    }

    public static Window getSubWindow(Activity activity)
    {
        if(mSlook.isFeatureEnabled(6))
        {
            if(activity == null)
                throw new IllegalArgumentException("activity is null.");
            else
                return activity.getSubWindow();
        } else
        {
            return null;
        }
    }

    public static void setSubContentView(Activity activity, int i)
    {
        if(mSlook.isFeatureEnabled(6))
        {
            if(activity == null)
                throw new IllegalArgumentException("activity is null.");
            activity.setSubContentView(i);
        }
    }

    public static void setSubContentView(Activity activity, View view)
    {
        if(mSlook.isFeatureEnabled(6))
        {
            if(activity == null)
                throw new IllegalArgumentException("activity is null.");
            activity.setSubContentView(view);
        }
    }

    private static Slook mSlook = new Slook();

}
