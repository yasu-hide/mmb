// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import com.samsung.sec.mtv.utility.MtvPreferences;
import com.samsung.sec.mtv.utility.MtvUtilSetReservationAlarm;
import java.util.HashMap;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            IMtvProgramManager, MtvReservation

public class MtvReservationManager
    implements BaseColumns, IMtvProgramManager
{

    private MtvReservationManager()
    {
    }

    public static void UpdateStatus(Context context, MtvReservation mtvreservation, int i)
    {
        if(mtvreservation == null || i < 0 || i > 12)
        {
            MtvUtilDebug.High("MtvReservationManager", "invalid newStatuspassed or Reservation null value passed !");
        } else
        {
            int j = mtvreservation.mUriId;
            MtvPreferences mtvpreferences = new MtvPreferences(context);
            mtvreservation.mPgmStatus = i;
            mtvreservation.mUriId = -1;
            updateOrInsert(context, mtvreservation);
            if(i == 6)
            {
                MtvUtilDebug.Low("MtvReservationManager", "UpdateStatus():: reservation started");
                mtvpreferences.setReservationAlertID(j);
                mtvpreferences.setIsReservationProgram(true);
                return;
            }
            if(i == 1)
            {
                MtvUtilDebug.Low("MtvReservationManager", "UpdateStatus():: reservation success");
                MtvUtilSetReservationAlarm.setReservationAlarm(context, mtvreservation.mTimeStart, false, false);
                mtvpreferences.setReservationAlertID(-1);
                mtvpreferences.setIsReservationProgram(false);
                return;
            }
            if(i == 0)
            {
                MtvUtilDebug.Low("MtvReservationManager", "UpdateStatus : STATUS_NONE");
                return;
            }
            MtvUtilDebug.Low("MtvReservationManager", "UpdateStatus():: reservation failure");
            if(i != 7)
                MtvUtilDebug.Low("MtvReservationManager", "newStatus != STATUS_CANCELLED");
            MtvUtilSetReservationAlarm.setReservationAlarm(context, mtvreservation.mTimeStart, false, false);
            MtvUtilDebug.Low("MtvReservationManager", (new StringBuilder()).append("UpdateStatus():: pref.getReservationAlertID() : ").append(mtvpreferences.getReservationAlertID()).append(" reserve_id: ").append(j).toString());
            if(mtvpreferences.getReservationAlertID() == j)
            {
                mtvpreferences.setReservationAlertID(-1);
                mtvpreferences.setIsReservationProgram(false);
                return;
            }
        }
    }

    public static MtvReservation builder(Cursor cursor)
    {
        return new MtvReservation(cursor.getInt(1), cursor.getInt(2), cursor.getInt(3), cursor.getLong(4), cursor.getLong(5), cursor.getString(6), cursor.getString(7), cursor.getInt(8), cursor.getInt(9), cursor.getInt(10), cursor.getInt(0));
    }

    public static boolean contains(Context context, long l)
    {
        Uri uri = Uri.withAppendedPath(CONTENT_URI, "count");
        String s = (new StringBuilder()).append("epg_stime=").append(l).toString();
        int i = 0;
        boolean flag = false;
        context = context.getContentResolver().query(uri, null, s, null, null);
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
        return i > 0;
    }

    public static void delete(Context context, long l)
    {
        Uri uri = ContentUris.withAppendedId(CONTENT_URI, l);
        context.getContentResolver().delete(uri, null, null);
    }

    public static void delete(Context context, long l, Uri uri)
    {
        uri = (new StringBuilder()).append("epg_stime=").append(l).toString();
        context.getContentResolver().delete(CONTENT_URI, uri, null);
    }

    public static void delete(Context context, Uri uri)
    {
        Uri uri1 = uri;
        if(uri == null)
            uri1 = CONTENT_URI;
        context.getContentResolver().delete(uri1, null, null);
    }

    public static MtvReservation find(Context context, int i)
    {
        if(i < 0)
            return null;
        Object obj2 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("_id=").append(i).toString();
        Object obj1 = null;
        Object obj = null;
        obj2 = context.getContentResolver().query(((Uri) (obj2)), as, s, null, null);
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

    public static transient MtvReservation find(Context context, long l, boolean aflag[])
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        Object obj;
        Object obj1;
        if(aflag != null && aflag.length > 0 && aflag[0])
            aflag = (new StringBuilder()).append("epg_etime=").append(l).toString();
        else
            aflag = (new StringBuilder()).append("epg_stime=").append(l).toString();
        obj1 = null;
        obj = null;
        aflag = context.getContentResolver().query(uri, as, aflag, null, null);
        context = obj1;
        if(aflag != null)
        {
            context = obj;
            if(aflag.getCount() > 0)
            {
                aflag.moveToFirst();
                context = builder(aflag);
            }
            aflag.close();
        }
        return context;
    }

    public static MtvReservation find(Context context, Uri uri)
    {
        String as[] = PROJECTION;
        Object obj1 = null;
        Object obj = null;
        uri = context.getContentResolver().query(uri, as, null, null, null);
        context = obj1;
        if(uri != null)
        {
            context = obj;
            if(uri.getCount() > 0)
            {
                uri.moveToFirst();
                context = builder(uri);
            }
            uri.close();
        }
        return context;
    }

    public static MtvReservation find(Context context, String s)
    {
        String as[] = PROJECTION;
        Uri uri = CONTENT_URI;
        Object obj1 = null;
        Object obj = null;
        s = (new StringBuilder()).append("epg_name=").append(s).toString();
        s = context.getContentResolver().query(uri, as, s, null, null);
        context = obj1;
        if(s != null)
        {
            context = obj;
            if(s.getCount() > 0)
            {
                s.moveToFirst();
                context = builder(s);
            }
            s.close();
        }
        return context;
    }

    public static MtvReservation[] findAll(Context context, int i)
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
                MtvReservation amtvreservation[] = new MtvReservation[i];
                ((Cursor) (obj2)).moveToFirst();
                i = 0;
                do
                {
                    context = amtvreservation;
                    if(i >= ((Cursor) (obj2)).getCount())
                        break;
                    amtvreservation[i] = builder(((Cursor) (obj2)));
                    i++;
                } while(true);
            }
            ((Cursor) (obj2)).close();
        }
        return context;
    }

    public static MtvReservation[] getAllReserves(Context context)
    {
        Cursor cursor = context.getContentResolver().query(CONTENT_URI, null, null, null, null);
        context = null;
        if(cursor != null)
        {
            context = new MtvReservation[cursor.getCount()];
            cursor.moveToFirst();
            for(int i = 0; i < cursor.getCount(); i++)
            {
                context[i] = builder(cursor);
                cursor.moveToNext();
            }

            cursor.close();
        }
        return context;
    }

    protected static ContentValues getContentValues(MtvReservation mtvreservation)
    {
        ContentValues contentvalues = new ContentValues();
        if(mtvreservation == null)
        {
            MtvUtilDebug.Low("MtvReservationManager", "getContentValues : MtvArea is NULL");
        } else
        {
            if(mtvreservation.mPch != -1)
                contentvalues.put("epg_pch", Integer.valueOf(mtvreservation.mPch));
            if(mtvreservation.mVch != -1)
                contentvalues.put("epg_vch", Integer.valueOf(mtvreservation.mVch));
            if(mtvreservation.mLock != -1)
                contentvalues.put("epg_plock", Integer.valueOf(mtvreservation.mLock));
            if(mtvreservation.mTimeStart != -1L)
                contentvalues.put("epg_stime", Long.valueOf(mtvreservation.mTimeStart));
            if(mtvreservation.mTimeEnd != -1L)
                contentvalues.put("epg_etime", Long.valueOf(mtvreservation.mTimeEnd));
            if(mtvreservation.mPgmName != null)
                contentvalues.put("epg_name", mtvreservation.mPgmName);
            if(mtvreservation.mPgmDetail != null)
                contentvalues.put("epg_detail", mtvreservation.mPgmDetail);
            if(mtvreservation.mPgmType != -1)
                contentvalues.put("egp_type", Integer.valueOf(mtvreservation.mPgmType));
            if(mtvreservation.mPgmStatus != -1)
                contentvalues.put("egp_status", Integer.valueOf(mtvreservation.mPgmStatus));
            if(mtvreservation.mPgmServiceID != -1)
            {
                contentvalues.put("egp_serviceid", Integer.valueOf(mtvreservation.mPgmServiceID));
                return contentvalues;
            }
        }
        return contentvalues;
    }

    public static int getCount(Context context)
    {
        return getCount(context, null, null);
    }

    public static int getCount(Context context, String s, String as[])
    {
        Uri uri = Uri.withAppendedPath(CONTENT_URI, "count");
        int i = 0;
        boolean flag = false;
        context = context.getContentResolver().query(uri, null, s, as, null);
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

    public static MtvReservation getCurrentReservation(Context context, int i, long l)
    {
        if(i < 0)
            return null;
        Object obj1 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("epg_pch=").append(i).toString();
        s = (new StringBuilder()).append(s).append(" AND epg_stime<=").append(l).toString();
        String s1 = (new StringBuilder()).append(s).append(" AND epg_etime>").append(l).toString();
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

    public static MtvReservation[] getCurrentReservations(Context context, long l)
    {
        if(l < 0L)
            return null;
        Object obj = (new StringBuilder()).append("epg_stime<").append(l).toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" AND epg_etime>").append(l).toString();
        obj = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), null, null);
        context = null;
        if(obj != null)
        {
            context = new MtvReservation[((Cursor) (obj)).getCount()];
            ((Cursor) (obj)).moveToFirst();
            for(int i = 0; i < ((Cursor) (obj)).getCount(); i++)
            {
                context[i] = builder(((Cursor) (obj)));
                ((Cursor) (obj)).moveToNext();
            }

            ((Cursor) (obj)).close();
        }
        return context;
    }

    public static MtvReservation getImmediateReservation(Context context, long l)
    {
        Object obj1;
label0:
        {
            Object obj = null;
            obj1 = (new StringBuilder()).append("epg_stime>=").append(l).toString();
            obj1 = (new StringBuilder()).append(((String) (obj1))).append(" AND epg_stime<").append(10000L + l).toString();
            obj1 = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj1)), null, null);
            context = obj;
            if(obj1 != null)
            {
                if(((Cursor) (obj1)).getCount() <= 0)
                    break label0;
                ((Cursor) (obj1)).moveToFirst();
                context = builder(((Cursor) (obj1)));
                MtvUtilDebug.Low("MtvReservationManager", context.toString());
                ((Cursor) (obj1)).close();
            }
            return context;
        }
        ((Cursor) (obj1)).close();
        return null;
    }

    public static Uri getUri(int i)
    {
        if(i != -1)
            return ContentUris.withAppendedId(CONTENT_URI, i);
        else
            return null;
    }

    public static boolean isImmediateReservation(Context context, long l)
    {
        String s = (new StringBuilder()).append("epg_stime>=").append(l).toString();
        s = (new StringBuilder()).append(s).append(" AND epg_stime<").append(10000L + l).toString();
        context = context.getContentResolver().query(CONTENT_URI, null, s, null, null);
        if(context != null)
        {
            if(context.getCount() > 0)
            {
                MtvReservation amtvreservation[] = new MtvReservation[context.getCount()];
                context.moveToFirst();
                for(int i = 0; i < context.getCount(); i++)
                {
                    amtvreservation[i] = builder(context);
                    MtvUtilDebug.Low("MtvReservationManager", amtvreservation[i].toString());
                    context.moveToNext();
                }

                context.close();
                return true;
            }
            context.close();
        }
        return false;
    }

    public static void update(Context context, MtvReservation mtvreservation, int i)
    {
        Object obj = null;
        MtvReservation mtvreservation1 = find(context, i);
        Uri uri = obj;
        if(mtvreservation1 != null)
        {
            uri = obj;
            if(getUri(mtvreservation1.mUriId) != null)
                uri = getUri(mtvreservation1.mUriId);
        }
        if(!MtvUtilDebug.isReleaseMode() && uri != null)
            MtvUtilDebug.Low("MtvReservationManager", (new StringBuilder()).append("update: update reserve uri=").append(uri.toString()).toString());
        mtvreservation = getContentValues(mtvreservation);
        context.getContentResolver().update(uri, mtvreservation, null, null);
    }

    public static void updateOrInsert(Context context, MtvReservation mtvreservation)
    {
        Uri uri1 = getUri(mtvreservation.mUriId);
        Uri uri = uri1;
        if(uri1 == null)
        {
            MtvReservation mtvreservation1 = find(context, mtvreservation.mTimeStart, new boolean[0]);
            uri = uri1;
            if(mtvreservation1 != null)
                uri = getUri(mtvreservation1.mUriId);
        }
        if(uri == null)
        {
            MtvUtilDebug.Low("MtvReservationManager", "update: insert reserve");
            mtvreservation = getContentValues(mtvreservation);
            context.getContentResolver().insert(CONTENT_URI, mtvreservation);
            return;
        }
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvReservationManager", (new StringBuilder()).append("update: update reserve uri=").append(uri.toString()).toString());
        mtvreservation = getContentValues(mtvreservation);
        context.getContentResolver().update(uri, mtvreservation, null, null);
    }

    public static final String CONTENT_ITEM_TYPE = "vnd.android.curosr.item/vnd.android.mtv.reservation";
    public static final String CONTENT_TYPE = "vnd.android.cursor.dir/vnd.android.mtv.reservation";
    public static final Uri CONTENT_URI = Uri.parse("content://com.samsung.sec.mtv/reservations");
    private static final int IMMIDEATE_RESERVATION_CHECK_TIME = 10000;
    public static final String PROJECTION[] = {
        "_id", "epg_pch", "epg_vch", "epg_plock", "epg_stime", "epg_etime", "epg_name", "epg_detail", "egp_type", "egp_status", 
        "egp_serviceid"
    };
    protected static HashMap PROJECTION_MAP;
    protected static final String TABLE = "reservations";
    private static final String TAG = "MtvReservationManager";

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
        PROJECTION_MAP.put("egp_type", "egp_type");
        PROJECTION_MAP.put("egp_status", "egp_status");
        PROJECTION_MAP.put("egp_serviceid", "egp_serviceid");
    }
}
