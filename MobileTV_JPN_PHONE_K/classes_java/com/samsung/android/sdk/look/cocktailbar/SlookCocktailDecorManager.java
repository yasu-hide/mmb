// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.cocktailbar;

import android.content.Context;
import android.graphics.Bitmap;
import com.samsung.android.cocktailbar.CocktailBarDecorManager;
import com.samsung.android.sdk.look.Slook;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class SlookCocktailDecorManager
{

    private SlookCocktailDecorManager(Context context)
    {
        mSlook = new Slook();
        if(mSlook.isFeatureEnabled(6))
        {
            mContext = context;
            mCocktailBarDecorManager = CocktailBarDecorManager.getInstance(mContext);
        }
    }

    public static SlookCocktailDecorManager getInstance(Context context)
    {
        WeakHashMap weakhashmap = sManagerCache;
        weakhashmap;
        JVM INSTR monitorenter ;
        Object obj = (WeakReference)sManagerCache.get(context);
        SlookCocktailDecorManager slookcocktaildecormanager;
        slookcocktaildecormanager = null;
        if(obj == null)
            break MISSING_BLOCK_LABEL_31;
        slookcocktaildecormanager = (SlookCocktailDecorManager)((WeakReference) (obj)).get();
        obj = slookcocktaildecormanager;
        if(slookcocktaildecormanager != null)
            break MISSING_BLOCK_LABEL_62;
        obj = new SlookCocktailDecorManager(context);
        sManagerCache.put(context, new WeakReference(obj));
        weakhashmap;
        JVM INSTR monitorexit ;
        return ((SlookCocktailDecorManager) (obj));
        context;
        weakhashmap;
        JVM INSTR monitorexit ;
        throw context;
    }

    public int getDesiredHeight()
    {
        if(mSlook.isFeatureEnabled(6))
            return mCocktailBarDecorManager.getDesiredHeight();
        else
            return -1;
    }

    public int getDesiredWidth()
    {
        if(mSlook.isFeatureEnabled(6))
            return mCocktailBarDecorManager.getDesiredWidth();
        else
            return -1;
    }

    public void setBitmap(Bitmap bitmap)
        throws IOException
    {
        if(mSlook.isFeatureEnabled(6))
            mCocktailBarDecorManager.setBitmap(bitmap);
    }

    public void setResource(int i)
        throws IOException
    {
        if(mSlook.isFeatureEnabled(6))
            mCocktailBarDecorManager.setResource(i);
    }

    public void setStream(InputStream inputstream)
        throws IOException
    {
        if(mSlook.isFeatureEnabled(6))
            mCocktailBarDecorManager.setStream(inputstream);
    }

    private static final String TAG = "SlookCocktailDecorManager";
    private static WeakHashMap sManagerCache = new WeakHashMap();
    private CocktailBarDecorManager mCocktailBarDecorManager;
    private Context mContext;
    private Slook mSlook;

}
