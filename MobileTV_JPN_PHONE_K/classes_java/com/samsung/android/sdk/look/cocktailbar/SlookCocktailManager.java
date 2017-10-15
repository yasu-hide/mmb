// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.cocktailbar;

import android.content.*;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.samsung.android.cocktailbar.CocktailBarManager;
import com.samsung.android.sdk.look.Slook;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class SlookCocktailManager
{
    private class CocktailCallbackWrapper
        implements com.samsung.android.cocktailbar.CocktailBarManager.ICocktailCallback
    {

        public void onCreate()
        {
            mCallback.onCreate();
        }

        public void onDestroy()
        {
            mCallbackWrapper = null;
            mCallback.onDestroy();
        }

        public void responseCocktailCallback(Bundle bundle)
        {
            mCallback.responseCocktailCallback(bundle);
        }

        private ISlookCocktailCallback mCallback;
        final SlookCocktailManager this$0;

        public CocktailCallbackWrapper(ISlookCocktailCallback islookcocktailcallback)
        {
            this$0 = SlookCocktailManager.this;
            super();
            mCallback = islookcocktailcallback;
        }
    }

    public static class CocktailInfo
    {

        private int mCategory;
        private Bundle mContentInfo;
        private RemoteViews mContentView;
        private int mDisplayPolicy;





        private CocktailInfo(int i, int j, int k, RemoteViews remoteviews, RemoteViews remoteviews1, Bundle bundle)
        {
            mDisplayPolicy = 1;
            mCategory = 1;
            mDisplayPolicy = i;
            mCategory = j;
            mContentView = remoteviews;
            mContentInfo = bundle;
        }

    }

    public static final class CocktailInfo.Builder
    {

        public CocktailInfo build()
        {
            return new CocktailInfo(mDisplayPolicy, mCategory, mIcon, mContentView, mFooterView, mContentInfo);
        }

        public CocktailInfo.Builder setCategory(int i)
        {
            mCategory = i;
            return this;
        }

        public CocktailInfo.Builder setDisplayPolicy(int i)
        {
            mDisplayPolicy = i;
            return this;
        }

        private int mCategory;
        private Bundle mContentInfo;
        private RemoteViews mContentView;
        private int mDisplayPolicy;
        private RemoteViews mFooterView;
        private int mIcon;

        public CocktailInfo.Builder(Bundle bundle)
        {
            mDisplayPolicy = 1;
            mCategory = 1;
            mIcon = 0;
            mContentInfo = bundle;
        }

        public CocktailInfo.Builder(RemoteViews remoteviews)
        {
            mDisplayPolicy = 1;
            mCategory = 1;
            mIcon = 0;
            mContentView = remoteviews;
        }
    }

    public static interface ISlookCocktailCallback
    {

        public abstract void onCreate();

        public abstract void onDestroy();

        public abstract void responseCocktailCallback(Bundle bundle);
    }


    private SlookCocktailManager(Context context)
    {
        mSlook = new Slook();
        if(mSlook.isFeatureEnabled(6))
            mCocktailBarManager = CocktailBarManager.getInstance(context);
    }

    public static SlookCocktailManager getInstance(Context context)
    {
        WeakHashMap weakhashmap = sManagerCache;
        weakhashmap;
        JVM INSTR monitorenter ;
        if(context != null)
            break MISSING_BLOCK_LABEL_25;
        throw new IllegalArgumentException("context is null.");
        context;
        weakhashmap;
        JVM INSTR monitorexit ;
        throw context;
        Object obj;
        if((context instanceof ContextWrapper) && ((ContextWrapper)context).getBaseContext() == null)
            throw new IllegalArgumentException("Base context is null.");
        obj = (WeakReference)sManagerCache.get(context);
        SlookCocktailManager slookcocktailmanager;
        slookcocktailmanager = null;
        if(obj == null)
            break MISSING_BLOCK_LABEL_77;
        slookcocktailmanager = (SlookCocktailManager)((WeakReference) (obj)).get();
        obj = slookcocktailmanager;
        if(slookcocktailmanager != null)
            break MISSING_BLOCK_LABEL_108;
        obj = new SlookCocktailManager(context);
        sManagerCache.put(context, new WeakReference(obj));
        weakhashmap;
        JVM INSTR monitorexit ;
        return ((SlookCocktailManager) (obj));
    }

    public void closeCocktail(int i, int j)
    {
        if(mSlook.isFeatureEnabled(6))
            mCocktailBarManager.closeCocktail(i, j);
    }

    public int[] getCocktailIds(ComponentName componentname)
    {
        if(mSlook.isFeatureEnabled(6))
            return mCocktailBarManager.getCocktailIds(componentname);
        else
            return new int[0];
    }

    public boolean isAllowed(String s)
    {
        if(mSlook.isFeatureEnabled(6))
            return mCocktailBarManager.isAllowed(s);
        else
            return false;
    }

    public void notifyCocktailViewDataChanged(int i, int j)
    {
        if(mSlook.isFeatureEnabled(6))
            mCocktailBarManager.notifyCocktailViewDataChanged(i, j);
    }

    public void partiallyUpdateCocktail(int i, RemoteViews remoteviews)
    {
        if(!mSlook.isFeatureEnabled(6) || remoteviews == null)
        {
            return;
        } else
        {
            mCocktailBarManager.partiallyUpdateCocktail(i, remoteviews);
            return;
        }
    }

    public boolean registerCocktailCallback(String s, ISlookCocktailCallback islookcocktailcallback)
    {
        if(mSlook.isFeatureEnabled(6) && mCallbackWrapper == null)
        {
            mCallbackWrapper = new CocktailCallbackWrapper(islookcocktailcallback);
            mCocktailBarManager.registerCocktailCallback(s, mCallbackWrapper);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean removeCocktailItem(Bundle bundle)
    {
        if(mSlook.isFeatureEnabled(6) && mCallbackWrapper != null)
            return mCocktailBarManager.removeCocktailItem(bundle);
        else
            return false;
    }

    public void showCocktail(int i)
    {
        if(mSlook.isFeatureEnabled(6))
            mCocktailBarManager.showCocktail(i);
    }

    public boolean unregisterCocktailCallback(String s)
    {
        if(mSlook.isFeatureEnabled(6) && mCallbackWrapper != null)
        {
            mCocktailBarManager.unregisterCocktailCallback(s);
            mCallbackWrapper.onDestroy();
            mCallbackWrapper = null;
            return true;
        } else
        {
            return false;
        }
    }

    public void updateCocktail(int i, CocktailInfo cocktailinfo)
    {
        if(!mSlook.isFeatureEnabled(6) || cocktailinfo == null)
        {
            return;
        } else
        {
            mCocktailBarManager.updateCocktail(i, cocktailinfo.mDisplayPolicy, cocktailinfo.mCategory, cocktailinfo.mContentView, cocktailinfo.mContentInfo);
            return;
        }
    }

    public boolean updateCocktailItem(Bundle bundle)
    {
        if(mSlook.isFeatureEnabled(6) && mCallbackWrapper != null)
            return mCocktailBarManager.updateCocktailItem(bundle);
        else
            return false;
    }

    public static final int COCKTAIL_CATEGORY_CONTEXTUAL = 0x10000;
    public static final int COCKTAIL_CATEGORY_CONTEXTUAL_CALLING = 0x10002;
    public static final int COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET = 0x10005;
    public static final int COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL = 0x10001;
    public static final int COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION = 0x10004;
    public static final int COCKTAIL_CATEGORY_CONTEXTUAL_SPEN = 0x10006;
    public static final int COCKTAIL_CATEGORY_CONTEXTUAL_TICKER = 0x10003;
    public static final int COCKTAIL_CATEGORY_GLOBAL = 1;
    public static final int COCKTAIL_DISPLAY_POLICY_ALL = 159;
    public static final int COCKTAIL_DISPLAY_POLICY_GENERAL = 1;
    public static final int COCKTAIL_DISPLAY_POLICY_LOCKSCREEN = 2;
    public static final int COCKTAIL_DISPLAY_POLICY_SCOVER = 4;
    public static final int COCKTAIL_DISPLAY_POLICY_TABLE_MODE = 8;
    public static final int COCKTAIL_VISIBILITY_HIDE = 2;
    public static final int COCKTAIL_VISIBILITY_SHOW = 1;
    private static final String TAG = "SlookCocktailManager";
    static WeakHashMap sManagerCache = new WeakHashMap();
    private CocktailCallbackWrapper mCallbackWrapper;
    private CocktailBarManager mCocktailBarManager;
    private Slook mSlook;



/*
    static CocktailCallbackWrapper access$502(SlookCocktailManager slookcocktailmanager, CocktailCallbackWrapper cocktailcallbackwrapper)
    {
        slookcocktailmanager.mCallbackWrapper = cocktailcallbackwrapper;
        return cocktailcallbackwrapper;
    }

*/
}
