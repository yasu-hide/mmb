// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import java.util.HashMap;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            MtvArea

public class MtvAreaManager
    implements BaseColumns
{

    private MtvAreaManager()
    {
    }

    private static MtvArea builder(Cursor cursor)
    {
        return new MtvArea(cursor.getInt(1), cursor.getString(2), cursor.getInt(0));
    }

    public static MtvArea find(Context context, int i)
    {
        Object obj2 = CONTENT_URI;
        String s = (new StringBuilder()).append("_id=").append(i + 1).toString();
        Object obj1 = null;
        Object obj = null;
        obj2 = context.getContentResolver().query(((Uri) (obj2)), null, s, null, null);
        context = obj1;
        if(obj2 != null)
        {
            context = obj;
            if(((Cursor) (obj2)).getCount() > 0)
            {
                ((Cursor) (obj2)).moveToFirst();
                context = builder(((Cursor) (obj2)));
            }
            ((Cursor) (obj2)).close();
        }
        return context;
    }

    public static MtvArea[] getAllAreas(Context context)
    {
        context = context.getContentResolver().query(CONTENT_URI, null, null, null, null);
        MtvArea amtvarea[] = new MtvArea[10];
        if(context != null)
        {
            for(int i = 0; i < context.getCount(); i++)
            {
                context.moveToNext();
                amtvarea[i] = builder(context);
            }

            context.close();
        }
        return amtvarea;
    }

    protected static ContentValues getContentValues(MtvArea mtvarea)
    {
        ContentValues contentvalues = new ContentValues();
        if(mtvarea == null)
        {
            MtvUtilDebug.Low("MtvAreaManager", "getContentValues : MtvArea is NULL");
        } else
        {
            contentvalues.put("area_id", Integer.valueOf(mtvarea.mAreaId));
            if(mtvarea.mAreaName != null)
            {
                contentvalues.put("area_name", mtvarea.mAreaName);
                return contentvalues;
            }
        }
        return contentvalues;
    }

    public static int getCount(Context context)
    {
        Uri uri = Uri.withAppendedPath(CONTENT_URI, "count");
        int i = 0;
        boolean flag = false;
        context = context.getContentResolver().query(uri, null, "area_id<>-1", null, null);
        if(context != null)
        {
            i = ((flag) ? 1 : 0);
            if(context.getCount() > 0)
            {
                context.moveToFirst();
                i = context.getInt(0);
            }
            context.close();
        }
        return i;
    }

    public static void update(Context context, int i, MtvArea mtvarea)
    {
        context.getContentResolver().update(CONTENT_URI, getContentValues(mtvarea), (new StringBuilder()).append("_id=").append(i + 1).toString(), null);
    }

    public static void update2Default(Context context, int i)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("area_id", "-1");
        contentvalues.put("area_name", "Empty");
        context.getContentResolver().update(CONTENT_URI, contentvalues, (new StringBuilder()).append("_id=").append(i + 1).toString(), null);
    }

    public Uri getUri(int i)
    {
        if(i != -1)
            return ContentUris.withAppendedId(CONTENT_URI, i);
        else
            return null;
    }

    public static final String AREA_ID = "area_id";
    public static final String AREA_NAME = "area_name";
    public static final int COLUMN_AREAID = 1;
    public static final int COLUMN_ID = 0;
    public static final int COLUMN_NAME = 2;
    public static final String CONTENT_ITEM_TYPE = "vnd.android.curosr.item/vnd.android.mtv.area";
    public static final String CONTENT_TYPE = "vnd.android.cursor.dir/vnd.android.mtv.area";
    public static final Uri CONTENT_URI = Uri.parse("content://com.samsung.sec.mtv/areas");
    public static final String DEFAULT_SORT_ORDER = "_id ASC";
    public static final String PROJECTION[] = {
        "_id", "area_id", "area_name"
    };
    protected static HashMap PROJECTION_MAP;
    protected static final String TABLE = "areas";
    private static final String TAG = "MtvAreaManager";

    static 
    {
        PROJECTION_MAP = new HashMap();
        PROJECTION_MAP.put("_id", "_id");
        PROJECTION_MAP.put("area_id", "area_id");
        PROJECTION_MAP.put("area_name", "area_name");
    }
}
