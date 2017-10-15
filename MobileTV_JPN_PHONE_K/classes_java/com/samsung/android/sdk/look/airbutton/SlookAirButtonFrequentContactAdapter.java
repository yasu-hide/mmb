// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.airbutton;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.samsung.android.sdk.look.Slook;
import com.samsung.android.sdk.look.SlookResourceManager;
import java.util.ArrayList;

// Referenced classes of package com.samsung.android.sdk.look.airbutton:
//            SlookAirButtonAdapter

public final class SlookAirButtonFrequentContactAdapter extends SlookAirButtonAdapter
{

    public SlookAirButtonFrequentContactAdapter(View view, Bundle bundle)
    {
        mData = new ArrayList();
        mSlook = new Slook();
        mMaxCount = 15;
        DEBUG = false;
        mIsShowing = false;
        mNeedUpdate = true;
        mCount = 0;
        if(view == null && bundle == null)
            throw new IllegalArgumentException("You should set the View and Bundle in Param");
        if(isSupport(1))
        {
            if(bundle != null)
            {
                String s = bundle.getString("MIME_TYPE");
                mSelectionSb = new StringBuilder();
                boolean flag = false;
                if(s != null)
                {
                    mSelectionSb.append("view_data.");
                    mSelectionSb.append("mimetype");
                    mSelectionSb.append("='");
                    mSelectionSb.append(s);
                    mSelectionSb.append("'");
                    flag = true;
                }
                boolean flag1 = bundle.getBoolean("PRIVATE", false);
                if(!flag1)
                {
                    if(flag)
                        mSelectionSb.append(" and ");
                    mSelectionSb.append("is_private=0");
                }
                bundle = bundle.getString("extra_condition");
                if(bundle != null)
                {
                    if(flag || !flag1)
                        mSelectionSb.append(" and ");
                    mSelectionSb.append(bundle);
                }
            }
            mMaxCount = SlookResourceManager.getInt(2);
            DEBUG = true;
            if(view != null)
            {
                mContext = view.getContext();
                setEmptyText(SlookResourceManager.getText(mContext, 0));
                return;
            }
        }
    }

    private boolean isSupport(int i)
    {
        return mSlook.isFeatureEnabled(1);
    }

    private void updateData()
    {
        this;
        JVM INSTR monitorenter ;
        if(!mNeedUpdate) goto _L2; else goto _L1
_L1:
        boolean flag = mIsShowing;
        if(!flag) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        Object obj;
        Object obj1;
        ContentResolver contentresolver;
        mNeedUpdate = false;
        mData.clear();
        obj1 = Uri.parse("content://com.android.contacts/contacts/frequent_data");
        contentresolver = mContext.getContentResolver();
        if(mSelectionSb == null)
            break MISSING_BLOCK_LABEL_309;
        obj = mSelectionSb.toString();
_L5:
        String s = (new StringBuilder()).append("_id LIMIT ").append(mMaxCount).toString();
        obj = contentresolver.query(((Uri) (obj1)), new String[] {
            "_id", "display_name", "photo_uri", "data15", "lookup", "mimetype", "data1", "is_private"
        }, ((String) (obj)), null, s);
        if(obj == null) goto _L2; else goto _L4
_L4:
        if(!((Cursor) (obj)).moveToNext())
            break MISSING_BLOCK_LABEL_319;
        obj1 = new Bundle();
        ((Bundle) (obj1)).putInt("id", ((Cursor) (obj)).getInt(0));
        ((Bundle) (obj1)).putString("display_name", ((Cursor) (obj)).getString(1));
        ((Bundle) (obj1)).putString("photo_uri", ((Cursor) (obj)).getString(2));
        ((Bundle) (obj1)).putByteArray("photo", ((Cursor) (obj)).getBlob(3));
        ((Bundle) (obj1)).putString("lookup_key", ((Cursor) (obj)).getString(4));
        ((Bundle) (obj1)).putString("MIME_TYPE", ((Cursor) (obj)).getString(5));
        ((Bundle) (obj1)).putString("data", ((Cursor) (obj)).getString(6));
        Exception exception;
        if(((Cursor) (obj)).getInt(7) == 1)
            flag = true;
        else
            flag = false;
        ((Bundle) (obj1)).putBoolean("is_private", flag);
        mData.add(obj1);
          goto _L4
        exception;
        if(obj == null)
            break MISSING_BLOCK_LABEL_302;
        ((Cursor) (obj)).close();
        throw exception;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj = null;
          goto _L5
        if(obj == null)
            break MISSING_BLOCK_LABEL_329;
        ((Cursor) (obj)).close();
        mCount = mData.size();
          goto _L2
        NoSuchMethodError nosuchmethoderror;
        nosuchmethoderror;
        nosuchmethoderror.printStackTrace();
          goto _L2
    }

    public int getCount()
    {
        return mCount;
    }

    public SlookAirButtonAdapter.AirButtonItem getItem(int i)
    {
        Bundle bundle = (Bundle)mData.get(i);
        String s = bundle.getString("display_name");
        String s1 = bundle.getString("data");
        Object obj = bundle.getByteArray("photo");
        if(obj == null)
        {
            i = SlookResourceManager.getDrawableId(1);
            obj = mContext.getResources().getDrawable(i);
        } else
        {
            obj = new BitmapDrawable(mContext.getResources(), BitmapFactory.decodeByteArray(((byte []) (obj)), 0, obj.length));
        }
        return new SlookAirButtonAdapter.AirButtonItem(((android.graphics.drawable.Drawable) (obj)), s, s1, bundle);
    }

    public void onDismiss(View view)
    {
        mIsShowing = false;
        mNeedUpdate = true;
        mData.clear();
        super.onDismiss(view);
    }

    public void onHide(View view)
    {
        mIsShowing = false;
        mNeedUpdate = true;
        mData.clear();
        super.onHide(view);
    }

    public void onShow(View view)
    {
        updateData();
        mIsShowing = true;
        super.onShow(view);
    }

    public static final String DATA = "data";
    public static final String DISPLAY_NAME = "display_name";
    private static final String EMAIL = "vnd.android.cursor.item/email_v2";
    private static final String FREQUENT_URI = "content://com.android.contacts/contacts/frequent_data";
    public static final String ID = "id";
    public static final String LOOKUP_KEY = "lookup_key";
    private static final String MIME_TYPE = "MIME_TYPE";
    private static final String PHONE = "vnd.android.cursor.item/phone_v2";
    public static final String PHOTO = "photo";
    public static final String PHOTO_URI = "photo_uri";
    private static final String TAG = "AirButtonFrequentContactAdapter";
    private boolean DEBUG;
    private final String EXTRA_CONDITION = "extra_condition";
    private final String IS_PRIVATE = "is_private";
    private Context mContext;
    private int mCount;
    private ArrayList mData;
    private boolean mIsShowing;
    private int mMaxCount;
    private boolean mNeedUpdate;
    private StringBuilder mSelectionSb;
    private Slook mSlook;
}
