// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.airbutton;

import android.content.*;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.samsung.android.sdk.look.Slook;
import com.samsung.android.sdk.look.SlookResourceManager;
import java.util.ArrayList;

// Referenced classes of package com.samsung.android.sdk.look.airbutton:
//            SlookAirButtonAdapter

public final class SlookAirButtonRecentMediaAdapter extends SlookAirButtonAdapter
{

    public SlookAirButtonRecentMediaAdapter(View view, Bundle bundle)
    {
        mMaxCount = 15;
        mData = new ArrayList();
        mSlook = new Slook();
        DEBUG = false;
        mIsShowing = false;
        mNeedUpdate = true;
        mCount = 0;
        if(view == null && bundle == null)
            throw new IllegalArgumentException("You should set the View and Bundle in Param");
        if(isSupport(1))
        {
            mFilter = getFilter(bundle);
            if(view != null)
            {
                mContext = view.getContext();
                DEBUG = true;
                mMaxCount = SlookResourceManager.getInt(3);
                setEmptyText(SlookResourceManager.getText(mContext, 1));
                return;
            }
        }
    }

    private Drawable getAudioDrawable(String s)
    {
        s = Bitmap.createBitmap(200, 200, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(s);
        int i = SlookResourceManager.getDrawableId(2);
        Drawable drawable = mContext.getResources().getDrawable(i);
        drawable.setBounds(new Rect(0, 0, 200, 200));
        canvas.drawColor(0xffdddddd, android.graphics.PorterDuff.Mode.SRC);
        drawable.draw(canvas);
        return new BitmapDrawable(mContext.getResources(), s);
    }

    private String getFilter(Bundle bundle)
    {
        boolean flag1;
        Object obj;
label0:
        {
            boolean flag = false;
            obj = new StringBuilder();
            if(bundle == null || bundle.getBoolean("image"))
            {
                ((StringBuilder) (obj)).append("media_type = ");
                ((StringBuilder) (obj)).append(1);
                flag = true;
            }
            if(bundle != null)
            {
                flag1 = flag;
                if(!bundle.getBoolean("video"))
                    break label0;
            }
            if(flag)
                ((StringBuilder) (obj)).append(" or ");
            ((StringBuilder) (obj)).append("media_type = ");
            ((StringBuilder) (obj)).append(3);
            flag1 = true;
        }
label1:
        {
            if(bundle == null || bundle.getBoolean("audio"))
            {
                if(flag1)
                    ((StringBuilder) (obj)).append(" or ");
                ((StringBuilder) (obj)).append("media_type = ");
                ((StringBuilder) (obj)).append(2);
            }
            obj = ((StringBuilder) (obj)).toString();
            if(obj != null)
            {
                bundle = ((Bundle) (obj));
                if(((String) (obj)).length() > 0)
                    break label1;
            }
            bundle = null;
        }
        return bundle;
    }

    private Drawable getThumbNail(int i, int j, String s, int k)
    {
        Object obj = null;
        switch(j)
        {
        default:
            return null;

        case 1: // '\001'
            s = new android.graphics.BitmapFactory.Options();
            s.inSampleSize = 2;
            Bitmap bitmap = android.provider.MediaStore.Images.Thumbnails.getThumbnail(mContext.getContentResolver(), i, 1, s);
            s = obj;
            if(bitmap != null)
                if(k == 90 || k == 180 || k == 270)
                {
                    s = new Matrix();
                    s.postRotate(k);
                    s = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), s, true);
                    s = new BitmapDrawable(mContext.getResources(), s);
                } else
                {
                    s = new BitmapDrawable(mContext.getResources(), bitmap);
                }
            return s;

        case 3: // '\003'
            s = android.provider.MediaStore.Video.Thumbnails.getThumbnail(mContext.getContentResolver(), i, 3, null);
            return new BitmapDrawable(mContext.getResources(), s);

        case 2: // '\002'
            return getAudioDrawable(s);
        }
    }

    private Uri getUri(int i, int j)
    {
        switch(j)
        {
        default:
            return null;

        case 1: // '\001'
            return ContentUris.withAppendedId(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, i);

        case 3: // '\003'
            return ContentUris.withAppendedId(android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI, i);

        case 2: // '\002'
            return ContentUris.withAppendedId(android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, i);
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
        mNeedUpdate = false;
        mData.clear();
        Object obj;
        Object obj1;
        obj1 = null;
        obj = obj1;
        Object obj2 = mContext.getContentResolver();
        obj = obj1;
        Uri uri = android.provider.MediaStore.Files.getContentUri("external");
        obj = obj1;
        String s = mFilter;
        obj = obj1;
        String s1 = (new StringBuilder()).append("date_modified DESC LIMIT ").append(mMaxCount).toString();
        obj = obj1;
        obj1 = ((ContentResolver) (obj2)).query(uri, new String[] {
            "_id", "media_type", "title", "orientation"
        }, s, null, s1);
        if(obj1 != null)
            break MISSING_BLOCK_LABEL_153;
        if(obj1 == null) goto _L2; else goto _L4
_L4:
        ((Cursor) (obj1)).close();
          goto _L2
        obj;
        throw obj;
_L6:
        obj = obj1;
        if(!((Cursor) (obj1)).moveToNext())
            break; /* Loop/switch isn't completed */
        obj = obj1;
        obj2 = new Bundle();
        obj = obj1;
        ((Bundle) (obj2)).putInt("id", ((Cursor) (obj1)).getInt(0));
        obj = obj1;
        ((Bundle) (obj2)).putInt("mime_type", ((Cursor) (obj1)).getInt(1));
        obj = obj1;
        ((Bundle) (obj2)).putInt("orientation", ((Cursor) (obj1)).getInt(3));
        obj = obj1;
        mData.add(obj2);
        if(true) goto _L6; else goto _L5
        obj1;
        if(obj == null)
            break MISSING_BLOCK_LABEL_249;
        ((Cursor) (obj)).close();
        throw obj1;
_L5:
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_261;
        ((Cursor) (obj1)).close();
        mCount = mData.size();
          goto _L2
    }

    public int getCount()
    {
        return mCount;
    }

    public SlookAirButtonAdapter.AirButtonItem getItem(int i)
    {
        Bundle bundle = (Bundle)mData.get(i);
        i = bundle.getInt("id");
        int j = bundle.getInt("mime_type");
        return new SlookAirButtonAdapter.AirButtonItem(getThumbNail(i, j, bundle.getString("title"), bundle.getInt("orientation")), null, getUri(i, j));
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

    public static final String AUDIO_TYPE = "audio";
    private static final String ID = "id";
    public static final String IMAGE_TYPE = "image";
    private static final String MIME_TYPE = "mime_type";
    private static final String ORIENTATION = "orientation";
    private static final String TAG = "AirButtonRecentMediaAdapter";
    private static final String TITLE = "title";
    public static final String VIDEO_TYPE = "video";
    private static final String VOLUME = "external";
    private boolean DEBUG;
    private Context mContext;
    private int mCount;
    private ArrayList mData;
    private String mFilter;
    private boolean mIsShowing;
    private int mMaxCount;
    private boolean mNeedUpdate;
    private Slook mSlook;
}
