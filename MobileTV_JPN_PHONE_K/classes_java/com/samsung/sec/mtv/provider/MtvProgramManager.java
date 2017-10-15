// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegProgram;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import java.util.HashMap;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            IMtvProgramManager, MtvProgram

public class MtvProgramManager
    implements BaseColumns, IMtvProgramManager
{

    private MtvProgramManager()
    {
    }

    private static MtvProgram builder(Cursor cursor)
    {
        return new MtvProgram(cursor.getInt(1), cursor.getInt(2), cursor.getInt(3), cursor.getLong(4), cursor.getLong(5), cursor.getString(6), cursor.getString(7), cursor.getInt(0));
    }

    public static void delete(Context context, long l)
    {
        Uri uri = ContentUris.withAppendedId(CONTENT_URI, l);
        context.getContentResolver().delete(uri, null, null);
    }

    public static void delete(Context context, Uri uri)
    {
        Uri uri1 = uri;
        if(uri == null)
            uri1 = CONTENT_URI;
        context.getContentResolver().delete(uri1, null, null);
    }

    public static boolean deleteByStreamTime(Context context, long l)
    {
        boolean flag = false;
        int i = getCount(context, null, null);
        String s = (new StringBuilder()).append("epg_etime<=").append(l).toString();
        context.getContentResolver().delete(CONTENT_URI, s, null);
        if(i != getCount(context, null, null))
            flag = true;
        return flag;
    }

    public static void deletePChannelPrograms(Context context, int i)
    {
        String s = (new StringBuilder()).append("epg_pch=").append(i).toString();
        context.getContentResolver().delete(CONTENT_URI, s, null);
    }

    public static MtvProgram findByPChannel(Context context, long l, int i)
    {
        Object obj1 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("epg_stime=").append(l).toString();
        String s1 = (new StringBuilder()).append(s).append(" AND epg_pch=").append(i).toString();
        Object obj = null;
        s = null;
        obj1 = context.getContentResolver().query(((Uri) (obj1)), as, s1, null, null);
        context = obj;
        if(obj1 != null)
        {
            context = s;
            if(((Cursor) (obj1)).getCount() > 0)
            {
                ((Cursor) (obj1)).moveToFirst();
                context = builder(((Cursor) (obj1)));
            }
            ((Cursor) (obj1)).close();
        }
        return context;
    }

    public static MtvProgram[] findProgramsByPChannel(Context context, int i)
    {
        Object obj2 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("epg_pch=").append(i).toString();
        Object obj1 = null;
        Object obj = null;
        obj2 = context.getContentResolver().query(((Uri) (obj2)), as, s, null, null);
        context = obj1;
        if(obj2 != null)
        {
            i = ((Cursor) (obj2)).getCount();
            context = obj;
            if(i > 0)
            {
                MtvProgram amtvprogram[] = new MtvProgram[i];
                ((Cursor) (obj2)).moveToFirst();
                i = 0;
                do
                {
                    context = amtvprogram;
                    if(i >= ((Cursor) (obj2)).getCount())
                        break;
                    amtvprogram[i] = builder(((Cursor) (obj2)));
                    ((Cursor) (obj2)).moveToNext();
                    i++;
                } while(true);
            }
            ((Cursor) (obj2)).close();
        }
        return context;
    }

    public static MtvProgram[] findProgramsByPChannel(Context context, int i, int j)
    {
        return null;
    }

    protected static ContentValues getContentValues(MtvProgram mtvprogram)
    {
        ContentValues contentvalues = new ContentValues();
        if(mtvprogram == null)
        {
            MtvUtilDebug.Low("MtvProgramManager", "getContentValues : MtvArea is NULL");
        } else
        {
            if(mtvprogram.mPch != -1)
                contentvalues.put("epg_pch", Integer.valueOf(mtvprogram.mPch));
            if(mtvprogram.mVch != -1)
                contentvalues.put("epg_vch", Integer.valueOf(mtvprogram.mVch));
            if(mtvprogram.mLock != -1)
                contentvalues.put("epg_plock", Integer.valueOf(mtvprogram.mLock));
            if(mtvprogram.mTimeStart != -1L)
                contentvalues.put("epg_stime", Long.valueOf(mtvprogram.mTimeStart));
            if(mtvprogram.mTimeEnd != -1L)
                contentvalues.put("epg_etime", Long.valueOf(mtvprogram.mTimeEnd));
            if(mtvprogram.mPgmName != null)
                contentvalues.put("epg_name", mtvprogram.mPgmName);
            if(mtvprogram.mPgmDetail != null)
            {
                contentvalues.put("epg_detail", mtvprogram.mPgmDetail);
                return contentvalues;
            }
        }
        return contentvalues;
    }

    public static int getCount(Context context, int i)
    {
        return getCount(context, (new StringBuilder()).append("epg_pch = ").append(i).toString(), null);
    }

    private static int getCount(Context context, String s, String as[])
    {
        Uri uri = Uri.withAppendedPath(CONTENT_URI, "count");
        int i = 0;
        context = context.getContentResolver().query(uri, null, s, as, null);
        if(context != null)
        {
            context.moveToFirst();
            i = context.getInt(0);
            context.close();
        }
        return i;
    }

    public static MtvProgram getCurrentProgramByPhCh(Context context, int i, long l)
    {
        String s = (new StringBuilder()).append("epg_pch=").append(i).toString();
        Object obj1 = (new StringBuilder()).append(s).append(" AND epg_stime<=").append(l).toString();
        Object obj = null;
        s = null;
        obj1 = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj1)), null, null);
        context = obj;
        if(obj1 != null)
        {
            context = s;
            if(((Cursor) (obj1)).getCount() > 0)
            {
                ((Cursor) (obj1)).moveToLast();
                context = builder(((Cursor) (obj1)));
            }
            ((Cursor) (obj1)).close();
        }
        return context;
    }

    public static Uri getUri(int i)
    {
        if(i != -1)
            return ContentUris.withAppendedId(CONTENT_URI, i);
        else
            return null;
    }

    public static void updateOrInsert(Context context, MtvProgram mtvprogram)
    {
        Uri uri1 = getUri(mtvprogram.mUriId);
        Uri uri = uri1;
        if(uri1 == null)
        {
            MtvProgram mtvprogram1 = findByPChannel(context, mtvprogram.mTimeStart, mtvprogram.mPch);
            uri = uri1;
            if(mtvprogram1 != null)
                uri = getUri(mtvprogram1.mUriId);
        }
        if(uri == null)
        {
            MtvUtilDebug.Low("MtvProgramManager", "update: insert channel");
            mtvprogram = getContentValues(mtvprogram);
            context.getContentResolver().insert(CONTENT_URI, mtvprogram);
            return;
        }
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvProgramManager", (new StringBuilder()).append("update: update channel uri=").append(uri.toString()).toString());
        mtvprogram = getContentValues(mtvprogram);
        context.getContentResolver().update(uri, mtvprogram, null, null);
    }

    public static boolean updateProgramsByVch(Context context, MtvOneSegProgram amtvonesegprogram[], int i, boolean flag)
    {
        if(context == null || amtvonesegprogram == null)
        {
            MtvUtilDebug.Low("MtvProgramManager", "updateProgramsByVch: programsList or Context may be NULL!");
            return false;
        }
        MtvUtilDebug.Low("MtvProgramManager", (new StringBuilder()).append("updateProgramsByVch: vch : [").append(i).append("] isForceUpdate : [").append(flag).append("]").toString());
        if(flag)
            delete(context, ((Uri) (null)));
        int j = 0;
        while(j < amtvonesegprogram.length && amtvonesegprogram[j] != null) 
        {
            MtvProgram mtvprogram = new MtvProgram(amtvonesegprogram[j], i);
            MtvUtilDebug.Low("MtvProgramManager", (new StringBuilder()).append("updateProgramsByVch: [#").append(j).append("] : ").append(mtvprogram.toString()).toString());
            if(mtvprogram.mPgmName == null || mtvprogram.mPgmName.equalsIgnoreCase("No program name"))
                MtvUtilDebug.Low("MtvProgramManager", "updateProgramsByVch: Program Name null");
            else
                updateOrInsert(context, mtvprogram);
            j++;
        }
        return true;
    }

    public static final String CONTENT_ITEM_TYPE = "vnd.android.curosr.item/vnd.android.mtv.program";
    public static final String CONTENT_TYPE = "vnd.android.cursor.dir/vnd.android.mtv.program";
    public static final Uri CONTENT_URI = Uri.parse("content://com.samsung.sec.mtv/programs");
    public static final String PROJECTION[] = {
        "_id", "epg_pch", "epg_vch", "epg_plock", "epg_stime", "epg_etime", "epg_name", "epg_detail"
    };
    protected static HashMap PROJECTION_MAP;
    protected static final String TABLE = "programs";
    private static final String TAG = "MtvProgramManager";

    static 
    {
        PROJECTION_MAP = new HashMap();
        PROJECTION_MAP.put("_id", "_id");
        PROJECTION_MAP.put("epg_pch", "epg_pch");
        PROJECTION_MAP.put("epg_vch", "epg_vch");
        PROJECTION_MAP.put("epg_plock", "epg_plock");
        PROJECTION_MAP.put("epg_stime", "epg_stime");
        PROJECTION_MAP.put("epg_etime", "epg_etime");
        PROJECTION_MAP.put("epg_name", "epg_name");
        PROJECTION_MAP.put("epg_detail", "epg_detail");
    }
}
