// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.BaseColumns;
import com.samsung.sec.mtv.utility.*;
import java.util.Arrays;
import java.util.HashMap;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            MtvChannel, MtvArea, MtvAreaManager

public class MtvChannelManager
    implements BaseColumns
{

    private MtvChannelManager()
    {
    }

    public static MtvChannel builder(Cursor cursor)
    {
        return new MtvChannel(cursor.getInt(1), cursor.getInt(2), cursor.getInt(3), cursor.getInt(4), cursor.getString(5), cursor.getInt(6), cursor.getInt(0), cursor.getInt(7), cursor.getInt(8), cursor.getInt(9), cursor.getInt(10), cursor.getString(11));
    }

    public static void deleteDB(Context context, Uri uri)
    {
        Uri uri1 = uri;
        if(uri == null)
            uri1 = CONTENT_URI;
        uri = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        context.getContentResolver().delete(uri1, uri, null);
    }

    public static void deletePChannelServices(Context context, int i)
    {
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("deletePChannelServices:: nPCh  ").append(i).toString());
        String s = (new StringBuilder()).append("ch_pch=").append(i).toString();
        s = (new StringBuilder()).append(s).append(" and ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        context.getContentResolver().delete(CONTENT_URI, s, null);
    }

    public static void deletePChannelServicesByVch(Context context, int i)
    {
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("deletePChannelServices:: nVCh  ").append(i).toString());
        String s = (new StringBuilder()).append("ch_vch=").append(i).toString();
        s = (new StringBuilder()).append(s).append(" and ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        context.getContentResolver().delete(CONTENT_URI, s, null);
    }

    public static void deleteVChannelInfo(Context context, int i, int j, int k)
    {
        String s = (new StringBuilder()).append("ch_vch=").append(i).toString();
        s = (new StringBuilder()).append(s).append(" and ch_pch=").append(j).toString();
        s = (new StringBuilder()).append(s).append(" and ch_avlb=").append(k).toString();
        s = (new StringBuilder()).append(s).append(" and ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        context.getContentResolver().delete(CONTENT_URI, s, null);
    }

    public static void deleteVChannelInfoBasedOnPhysical(Context context, int i, int j)
    {
        String s = (new StringBuilder()).append("ch_vch=").append(i).toString();
        s = (new StringBuilder()).append(s).append(" and ch_pch=").append(j).toString();
        s = (new StringBuilder()).append(s).append(" and ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        context.getContentResolver().delete(CONTENT_URI, s, null);
    }

    public static MtvChannel findAirByPChannel(Context context, int i)
    {
        Object obj1 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("ch_avlb=1 AND ch_pch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj = null;
        obj1 = context.getContentResolver().query(((Uri) (obj1)), as, s, null, "ch_vch ASC");
        if(obj1 != null)
        {
            context = obj;
            if(((Cursor) (obj1)).getCount() > 0)
            {
                MtvUtilDebug.Low("MtvChannelManager", "findAirByPChannel cursor is not null");
                ((Cursor) (obj1)).moveToFirst();
                context = builder(((Cursor) (obj1)));
            }
            ((Cursor) (obj1)).close();
            return context;
        } else
        {
            MtvUtilDebug.Low("MtvChannelManager", "findAirByPChannel cursor null");
            return null;
        }
    }

    public static MtvChannel findByName(Context context, String s)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s1 = (new StringBuilder()).append("ch_name=? and ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj1 = null;
        Object obj = null;
        s = context.getContentResolver().query(uri, as, s1, new String[] {
            s
        }, null);
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

    public static MtvChannel findByNamePCh(Context context, String s, int i)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s1 = (new StringBuilder()).append("ch_name=? and ch_pch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj1 = null;
        Object obj = null;
        s = context.getContentResolver().query(uri, as, s1, new String[] {
            s
        }, null);
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

    public static MtvChannel findByPChannel(Context context, int i)
    {
        Object obj1 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj = null;
        obj1 = context.getContentResolver().query(((Uri) (obj1)), as, s, null, "ch_vch ASC");
        if(obj1 != null)
        {
            context = obj;
            if(((Cursor) (obj1)).getCount() > 0)
            {
                MtvUtilDebug.Low("MtvChannelManager", "findByPChannel cursor is not null");
                ((Cursor) (obj1)).moveToFirst();
                context = builder(((Cursor) (obj1)));
            }
            ((Cursor) (obj1)).close();
            return context;
        } else
        {
            MtvUtilDebug.Low("MtvChannelManager", "findByPChannel cursor null");
            return null;
        }
    }

    public static MtvChannel findByPChannel(Context context, int i, int j)
    {
        Object obj2 = CONTENT_URI;
        String as[] = PROJECTION;
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("physicalChannel:: ").append(i).append(" serviceId:: ").append(j).toString());
        String s = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).append(" and ").append("srv_svcid1").append("=").append(j).toString();
        Object obj1 = null;
        Object obj = null;
        obj2 = context.getContentResolver().query(((Uri) (obj2)), as, s, null, "ch_vch ASC");
        if(obj2 != null)
        {
            context = obj;
            if(((Cursor) (obj2)).getCount() > 0)
            {
                MtvUtilDebug.Low("MtvChannelManager", "findByPChannel cursor is not null");
                ((Cursor) (obj2)).moveToFirst();
                context = builder(((Cursor) (obj2)));
            }
            ((Cursor) (obj2)).close();
        } else
        {
            MtvUtilDebug.Low("MtvChannelManager", "findByPChannel cursor null");
            context = obj1;
        }
        if(context != null)
            MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("channel:: ").append(context.toString()).toString());
        return context;
    }

    public static MtvChannel findByServiceId(Context context, int i)
    {
        Object obj2 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("ch_svcid1<=").append(i).append(" and ").append("ch_svcid2").append(">=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
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

    public static MtvChannel findByVChannel(Context context, int i)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s = null;
        if(context != null)
            s = (new StringBuilder()).append("ch_vch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj1 = null;
        Object obj = null;
        Object obj2 = null;
        Cursor cursor = obj2;
        if(context != null)
        {
            cursor = obj2;
            if(context.getContentResolver() != null)
                cursor = context.getContentResolver().query(uri, as, s, null, null);
        }
        context = obj1;
        if(cursor != null)
        {
            context = obj;
            if(cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                context = builder(cursor);
            }
            cursor.close();
        }
        return context;
    }

    public static MtvChannel findByVChannel(Context context, int i, int j)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s = null;
        if(context != null)
            s = (new StringBuilder()).append("ch_vch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).append(" and ").append("srv_svcid1").append("=").append(j).toString();
        Object obj1 = null;
        Object obj = null;
        Object obj2 = null;
        Cursor cursor = obj2;
        if(context != null)
        {
            cursor = obj2;
            if(context.getContentResolver() != null)
                cursor = context.getContentResolver().query(uri, as, s, null, null);
        }
        context = obj1;
        if(cursor != null)
        {
            context = obj;
            if(cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                context = builder(cursor);
            }
            cursor.close();
        }
        return context;
    }

    public static MtvChannel findByVChannelBasedOnMultiChannel(Context context, int i, int j)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s = null;
        if(context != null)
            s = (new StringBuilder()).append("ch_vch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).append(" and ").append("srv_multichannel").append("=").append(j).toString();
        Object obj1 = null;
        Object obj = null;
        Object obj2 = null;
        Cursor cursor = obj2;
        if(context != null)
        {
            cursor = obj2;
            if(context.getContentResolver() != null)
                cursor = context.getContentResolver().query(uri, as, s, null, null);
        }
        context = obj1;
        if(cursor != null)
        {
            context = obj;
            if(cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                context = builder(cursor);
            }
            cursor.close();
        }
        return context;
    }

    public static int findMultiChannelNoByServiceId(Context context, int i, int j)
    {
        boolean flag1 = false;
        boolean flag = false;
        int k = (new MtvPreferences(context)).getCurrentSlot();
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("srv_svcid1").append("=").append(j).append(" and ").append("ch_slot").append("=").append(k).toString();
        context = context.getContentResolver().query(uri, as, s, null, "ch_vch ASC");
        i = ((flag1) ? 1 : 0);
        if(context != null)
        {
            i = ((flag) ? 1 : 0);
            if(context.getCount() > 0)
            {
                context.moveToFirst();
                i = builder(context).mMultiChannelNo;
            }
            context.close();
        }
        return i;
    }

    public static MtvChannel findPChannelByMultiChannelNum(Context context, int i, int j)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        Object obj = null;
        if(context != null)
            obj = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        String s = (new StringBuilder()).append(((String) (obj))).append(" and srv_multichannel=").append(j).toString();
        Object obj2 = null;
        Object obj1 = null;
        Object obj3 = null;
        obj = obj3;
        if(context != null)
        {
            obj = obj3;
            if(context.getContentResolver() != null)
                obj = context.getContentResolver().query(uri, as, s, null, null);
        }
        context = obj2;
        if(obj != null)
        {
            context = obj1;
            if(((Cursor) (obj)).getCount() > 0)
            {
                ((Cursor) (obj)).moveToFirst();
                context = builder(((Cursor) (obj)));
            }
            ((Cursor) (obj)).close();
        }
        return context;
    }

    public static MtvChannel findPChannelByServiceId(Context context, int i)
    {
        Object obj2 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("srv_svcid1 = ").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
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

    public static MtvChannel[] findVChannelArray(Context context, int i)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s = null;
        if(context != null)
            s = (new StringBuilder()).append("ch_vch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj = null;
        Cursor cursor = obj;
        if(context != null)
        {
            cursor = obj;
            if(context.getContentResolver() != null)
                cursor = context.getContentResolver().query(uri, as, s, null, null);
        }
        context = null;
        if(cursor != null)
            context = new MtvChannel[cursor.getCount()];
        if(cursor != null)
        {
            for(i = 0; i < cursor.getCount(); i++)
            {
                cursor.moveToNext();
                context[i] = builder(cursor);
            }

            cursor.close();
        }
        return context;
    }

    public static MtvChannel findVChannelByMultiChannelNum(Context context, int i, int j)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        Object obj = null;
        if(context != null)
            obj = (new StringBuilder()).append("ch_vch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        String s = (new StringBuilder()).append(((String) (obj))).append(" and srv_multichannel=").append(j).toString();
        Object obj2 = null;
        Object obj1 = null;
        Object obj3 = null;
        obj = obj3;
        if(context != null)
        {
            obj = obj3;
            if(context.getContentResolver() != null)
                obj = context.getContentResolver().query(uri, as, s, null, null);
        }
        context = obj2;
        if(obj != null)
        {
            context = obj1;
            if(((Cursor) (obj)).getCount() > 0)
            {
                ((Cursor) (obj)).moveToFirst();
                context = builder(((Cursor) (obj)));
            }
            ((Cursor) (obj)).close();
        }
        return context;
    }

    public static MtvChannel[] getAllAvailableChannels(Context context)
    {
        Object obj = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_pch<>-1").toString();
        obj = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), null, null);
        context = null;
        if(obj != null)
            context = new MtvChannel[((Cursor) (obj)).getCount()];
        if(obj != null)
        {
            for(int i = 0; i < ((Cursor) (obj)).getCount(); i++)
            {
                ((Cursor) (obj)).moveToNext();
                context[i] = builder(((Cursor) (obj)));
            }

            ((Cursor) (obj)).close();
        }
        return context;
    }

    public static MtvChannel[] getAllChannels(Context context)
    {
        int i = 0;
        Object obj = new MtvPreferences(context);
        if(obj != null)
            i = ((MtvPreferences) (obj)).getCurrentSlot();
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("servicetype1 ").append(1).append(" servicetype2 ").append(0).append(" Slot : ").append(i).toString());
        obj = (new StringBuilder()).append("(ch_slot=").append(i).append(")").toString();
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("getAllChannels ").append(((String) (obj))).toString());
        obj = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), null, "ch_vch ASC ");
        context = null;
        if(obj != null)
            context = new MtvChannel[((Cursor) (obj)).getCount()];
        if(obj != null)
        {
            for(int j = 0; j < ((Cursor) (obj)).getCount(); j++)
            {
                ((Cursor) (obj)).moveToNext();
                context[j] = builder(((Cursor) (obj)));
            }

            ((Cursor) (obj)).close();
        }
        return context;
    }

    public static MtvChannel[] getAvailableServices(Context context, int i)
    {
        MtvUtilDebug.Error("MtvChannelManager", "getAllServices enter");
        Object obj1 = CONTENT_URI;
        String as[] = PROJECTION;
        String s = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        String s1 = (new StringBuilder()).append(s).append(" and ch_pch=").append(i).toString();
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("Where ").append(s1).toString());
        Object obj = null;
        s = null;
        obj1 = context.getContentResolver().query(((Uri) (obj1)), as, s1, null, null);
        context = obj;
        if(obj1 != null)
        {
            i = ((Cursor) (obj1)).getCount();
            context = s;
            if(i > 0)
            {
                MtvChannel amtvchannel[] = new MtvChannel[i];
                ((Cursor) (obj1)).moveToFirst();
                i = 0;
                do
                {
                    context = amtvchannel;
                    if(i >= ((Cursor) (obj1)).getCount())
                        break;
                    amtvchannel[i] = builder(((Cursor) (obj1)));
                    ((Cursor) (obj1)).moveToNext();
                    i++;
                } while(true);
            }
            ((Cursor) (obj1)).close();
        }
        MtvUtilDebug.Error("MtvChannelManager", "getAllServices exit");
        return context;
    }

    public static MtvChannel getChannelByName(Context context, String s)
    {
        Object obj = (new StringBuilder()).append("ch_name=? and ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_pch<>-1").toString();
        obj = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), new String[] {
            s
        }, null);
        context = null;
        s = null;
        if(obj != null)
        {
            context = s;
            if(((Cursor) (obj)).getCount() > 0)
            {
                ((Cursor) (obj)).moveToFirst();
                context = builder(((Cursor) (obj)));
            }
            ((Cursor) (obj)).close();
        }
        return context;
    }

    protected static ContentValues getContentValues(MtvChannel mtvchannel)
    {
        ContentValues contentvalues = new ContentValues();
        if(mtvchannel.mVirtualNum != -1)
            contentvalues.put("ch_vch", Integer.valueOf(mtvchannel.mVirtualNum));
        if(mtvchannel.mPhysicalNum != -1)
            contentvalues.put("ch_pch", Integer.valueOf(mtvchannel.mPhysicalNum));
        if(mtvchannel.mFavorite != -1)
            contentvalues.put("ch_fav", Integer.valueOf(mtvchannel.mFavorite));
        if(mtvchannel.mAvailable != -1)
            contentvalues.put("ch_avlb", Integer.valueOf(mtvchannel.mAvailable));
        if(mtvchannel.mChannelName != null)
            contentvalues.put("ch_name", mtvchannel.mChannelName);
        if(mtvchannel.mSlot != -1)
            contentvalues.put("ch_slot", Integer.valueOf(mtvchannel.mSlot));
        if(mtvchannel.mServiceID1 != -1)
            contentvalues.put("ch_svcid1", Integer.valueOf(mtvchannel.mServiceID1));
        if(mtvchannel.mServiceID2 != -1)
            contentvalues.put("ch_svcid2", Integer.valueOf(mtvchannel.mServiceID2));
        if(mtvchannel.mServiceID != -1)
            contentvalues.put("srv_svcid1", Integer.valueOf(mtvchannel.mServiceID));
        if(mtvchannel.mMultiChannelNo != -1)
            contentvalues.put("srv_multichannel", Integer.valueOf(mtvchannel.mMultiChannelNo));
        if(mtvchannel.mServiceName != null)
            contentvalues.put("srv_svcname1", mtvchannel.mServiceName);
        return contentvalues;
    }

    public static int getCount(Context context)
    {
        return getCount(context, null, null);
    }

    private static int getCount(Context context, String s, String as[])
    {
        Uri uri = Uri.withAppendedPath(CONTENT_URI, "count");
        int i = 0;
        boolean flag = false;
        if(s == null)
            s = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        else
            s = (new StringBuilder()).append(s).append(" and ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        s = (new StringBuilder()).append(s).append(" and ch_pch<>-1").toString();
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
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("getCount sql: ").append(s).append(" result=").append(i).toString());
        return i;
    }

    public static int getCountOfPChannel(Context context, int i)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s = null;
        boolean flag = false;
        if(context != null)
            s = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj = null;
        Cursor cursor = obj;
        if(context != null)
        {
            cursor = obj;
            if(context.getContentResolver() != null)
                cursor = context.getContentResolver().query(uri, as, s, null, null);
        }
        i = ((flag) ? 1 : 0);
        if(cursor != null)
        {
            i = cursor.getCount();
            if(cursor.getCount() > 0)
                cursor.moveToFirst();
            cursor.close();
        }
        return i;
    }

    public static int getCountOfVChannel(Context context, int i)
    {
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        String s = null;
        boolean flag = false;
        if(context != null)
            s = (new StringBuilder()).append("ch_vch=").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        Object obj = null;
        Cursor cursor = obj;
        if(context != null)
        {
            cursor = obj;
            if(context.getContentResolver() != null)
                cursor = context.getContentResolver().query(uri, as, s, null, null);
        }
        i = ((flag) ? 1 : 0);
        if(cursor != null)
        {
            i = cursor.getCount();
            if(cursor.getCount() > 0)
                cursor.moveToFirst();
            cursor.close();
        }
        return i;
    }

    public static int getCountOnAir(Context context)
    {
        return getCount(context, "ch_avlb=1", null);
    }

    public static int getCurrentMultiChannelNo(Context context, int i)
    {
        boolean flag1 = false;
        boolean flag = false;
        int k = (new MtvPreferences(context)).getCurrentSlot();
        int j;
        Uri uri;
        String as[];
        String s;
        if(i == (new MtvPreferences(context)).getLatestPChannel())
            j = (new MtvPreferences(context)).getLatestServiceID();
        else
            j = getFirstServiceID(context, i);
        uri = CONTENT_URI;
        as = PROJECTION;
        s = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("srv_svcid1").append("=").append(j).append(" and ").append("ch_slot").append("=").append(k).toString();
        context = context.getContentResolver().query(uri, as, s, null, "ch_vch ASC");
        i = ((flag1) ? 1 : 0);
        if(context != null)
        {
            i = ((flag) ? 1 : 0);
            if(context.getCount() > 0)
            {
                context.moveToFirst();
                i = builder(context).mMultiChannelNo;
            }
            context.close();
        }
        return i;
    }

    public static MtvChannel getFirst(Context context)
    {
        String s = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        s = (new StringBuilder()).append(s).append(" and ch_pch<>-1").toString();
        Cursor cursor = context.getContentResolver().query(CONTENT_URI, null, s, null, "ch_vch ASC");
        context = null;
        s = null;
        if(cursor != null)
        {
            context = s;
            if(cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                context = builder(cursor);
            }
            cursor.close();
        }
        return context;
    }

    public static MtvChannel getFirstChannelByMode(Context context, int i, int j)
    {
        Object obj1 = null;
        Object obj = null;
        i = (new MtvPreferences(context)).getCurrentSlot();
        Object obj2 = (new StringBuilder()).append("ch_pch=").append(j).append(" and ").append("ch_slot").append("=").append(i).toString();
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        obj2 = context.getContentResolver().query(uri, as, ((String) (obj2)), null, null);
        context = obj1;
        if(obj2 != null)
        {
            context = obj;
            if(((Cursor) (obj2)).getCount() > 0)
            {
                MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("cursor.getCount() ").append(((Cursor) (obj2)).getCount()).toString());
                ((Cursor) (obj2)).moveToFirst();
                context = builder(((Cursor) (obj2)));
            }
            ((Cursor) (obj2)).close();
        }
        return context;
    }

    public static MtvChannel getFirstOnAir(Context context)
    {
        Object obj = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_pch<>-1").toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_avlb=1").toString();
        Cursor cursor = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), null, "ch_vch ASC");
        obj = null;
        MtvChannel mtvchannel = null;
        if(cursor != null)
        {
            obj = mtvchannel;
            if(cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                obj = builder(cursor);
            }
            cursor.close();
        }
        mtvchannel = ((MtvChannel) (obj));
        if(obj == null)
            mtvchannel = getFirst(context);
        return mtvchannel;
    }

    public static int getFirstServiceID(Context context, int i)
    {
        boolean flag1 = false;
        boolean flag = false;
        int j = (new MtvPreferences(context)).getCurrentSlot();
        int k = (new MtvPreferences(context)).getLatestVChannel();
        String s = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("ch_vch").append("=").append(k).append(" and ").append("ch_slot").append("=").append(j).toString();
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        context = context.getContentResolver().query(uri, as, s, null, null);
        i = ((flag1) ? 1 : 0);
        if(context != null)
        {
            i = ((flag) ? 1 : 0);
            if(context.getCount() > 0)
            {
                context.moveToFirst();
                i = builder(context).mServiceID;
            }
            context.close();
        }
        return i;
    }

    public static MtvChannel getFirstVChannelByMode(Context context, int i, int j)
    {
        Object obj1 = null;
        Object obj = null;
        i = (new MtvPreferences(context)).getCurrentSlot();
        Object obj2 = (new StringBuilder()).append("ch_vch=").append(j).append(" and ").append("ch_slot").append("=").append(i).toString();
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        obj2 = context.getContentResolver().query(uri, as, ((String) (obj2)), null, null);
        context = obj1;
        if(obj2 != null)
        {
            context = obj;
            if(((Cursor) (obj2)).getCount() > 0)
            {
                MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("cursor.getCount() ").append(((Cursor) (obj2)).getCount()).toString());
                ((Cursor) (obj2)).moveToFirst();
                context = builder(((Cursor) (obj2)));
            }
            ((Cursor) (obj2)).close();
        }
        return context;
    }

    public static MtvChannel getLast(Context context)
    {
        String s = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        s = (new StringBuilder()).append(s).append(" and ch_pch<>-1").toString();
        Cursor cursor = context.getContentResolver().query(CONTENT_URI, null, s, null, "ch_vch ASC");
        context = null;
        s = null;
        if(cursor != null)
        {
            context = s;
            if(cursor.getCount() > 0)
            {
                cursor.moveToLast();
                context = builder(cursor);
            }
            cursor.close();
        }
        return context;
    }

    public static MtvChannel getLastOnAir(Context context)
    {
        Object obj = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_pch<>-1").toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_avlb=1").toString();
        Cursor cursor = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), null, "ch_vch ASC");
        obj = null;
        MtvChannel mtvchannel = null;
        if(cursor != null)
        {
            obj = mtvchannel;
            if(cursor.getCount() > 0)
            {
                cursor.moveToLast();
                obj = builder(cursor);
            }
            cursor.close();
        }
        mtvchannel = ((MtvChannel) (obj));
        if(obj == null)
            mtvchannel = getLast(context);
        return mtvchannel;
    }

    public static MtvChannel getNext(Context context, int i)
    {
        Object obj;
        Object obj1;
        Cursor cursor;
        obj = (new StringBuilder()).append("ch_vch>").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_pch<>-1").toString();
        cursor = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), null, null);
        obj = null;
        obj1 = null;
        if(cursor == null) goto _L2; else goto _L1
_L1:
        if(cursor.getCount() <= 0) goto _L4; else goto _L3
_L3:
        obj = obj1;
        if(cursor.moveToFirst())
            obj = builder(cursor);
_L6:
        cursor.close();
_L2:
        return ((MtvChannel) (obj));
_L4:
        obj = obj1;
        if(getCount(context) > 1)
            obj = getFirst(context);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static MtvChannel getPrevious(Context context, int i)
    {
        Object obj;
        Object obj1;
        Cursor cursor;
        obj = (new StringBuilder()).append("ch_vch<").append(i).append(" and ").append("ch_slot").append("=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
        obj = (new StringBuilder()).append(((String) (obj))).append(" and ch_pch<>-1").toString();
        cursor = context.getContentResolver().query(CONTENT_URI, null, ((String) (obj)), null, null);
        obj = null;
        obj1 = null;
        if(cursor == null) goto _L2; else goto _L1
_L1:
        if(cursor.getCount() <= 0) goto _L4; else goto _L3
_L3:
        obj = obj1;
        if(cursor.moveToLast())
            obj = builder(cursor);
_L6:
        cursor.close();
_L2:
        return ((MtvChannel) (obj));
_L4:
        obj = obj1;
        if(getCount(context) > 1)
            obj = getLast(context);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static int getServiceIDByMultiCh(Context context, int i, int j)
    {
        boolean flag = false;
        int k = (new MtvPreferences(context)).getCurrentSlot();
        int l = (new MtvPreferences(context)).getLatestVChannel();
        String s = (new StringBuilder()).append("ch_pch=").append(i).append(" and ").append("ch_vch").append("=").append(l).append(" and ").append("ch_slot").append("=").append(k).append(" and ").append("srv_multichannel").append("=").append(j).toString();
        Uri uri = CONTENT_URI;
        String as[] = PROJECTION;
        context = context.getContentResolver().query(uri, as, s, null, null);
        if(context != null)
        {
            i = ((flag) ? 1 : 0);
            if(context.getCount() > 0)
            {
                context.moveToFirst();
                i = builder(context).mServiceID;
            }
            context.close();
            return i;
        } else
        {
            return -1;
        }
    }

    public static Uri getUri(int i)
    {
        if(i != -1)
            return ContentUris.withAppendedId(CONTENT_URI, i);
        else
            return null;
    }

    public static void rearrangeDefaultDBValues(Context context)
    {
        int i;
        MtvUtilDebug.Error("MtvChannelManager", "replaceDefaultDBValues");
        i = 13;
_L3:
        MtvChannel amtvchannel[];
        if(i > 24)
            break; /* Loop/switch isn't completed */
        amtvchannel = findVChannelArray(context, i);
          goto _L1
_L5:
        i++;
        if(true) goto _L3; else goto _L2
_L1:
        if(amtvchannel.length <= 0 || amtvchannel[0] == null || amtvchannel[0].mPhysicalNum == -1) goto _L5; else goto _L4
_L4:
        int j;
        int l;
        l = amtvchannel[0].mPhysicalNum;
        j = 1;
_L8:
        if(j > 12) goto _L5; else goto _L6
_L6:
        MtvChannel mtvchannel = findByVChannel(context, j);
          goto _L7
_L10:
        j++;
          goto _L8
_L7:
        if(mtvchannel == null || mtvchannel.mPhysicalNum == -1 || mtvchannel.mAvailable == 1 || mtvchannel.mServiceID != amtvchannel[0].mServiceID) goto _L10; else goto _L9
_L9:
        int i1 = amtvchannel[0].mUriId;
        MtvChannel mtvchannel1 = new MtvChannel(mtvchannel.mVirtualNum, amtvchannel[0].mPhysicalNum, amtvchannel[0].mFavorite, amtvchannel[0].mAvailable, amtvchannel[0].mChannelName, amtvchannel[0].mSlot, amtvchannel[0].mUriId, amtvchannel[0].mServiceID1, amtvchannel[0].mServiceID2, amtvchannel[0].mServiceID, mtvchannel.mVirtualNum * 10 + 600 + amtvchannel[0].mMultiChannelNo % 10, amtvchannel[0].mServiceName);
        if(mtvchannel1 != null)
            MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("updated_Channel::  ").append(mtvchannel1.toString()).toString());
        context.getContentResolver().update(getUri(mtvchannel.mUriId), getContentValues(mtvchannel1), null, null);
        if(amtvchannel.length > 1)
        {
            for(int k = 1; k < amtvchannel.length; k++)
            {
                MtvChannel mtvchannel2 = new MtvChannel(mtvchannel.mVirtualNum, amtvchannel[k].mPhysicalNum, amtvchannel[k].mFavorite, amtvchannel[k].mAvailable, amtvchannel[k].mChannelName, amtvchannel[k].mSlot, amtvchannel[k].mUriId, amtvchannel[k].mServiceID1, amtvchannel[k].mServiceID2, amtvchannel[k].mServiceID, mtvchannel.mVirtualNum * 10 + 600 + amtvchannel[k].mMultiChannelNo % 10, amtvchannel[k].mServiceName);
                if(mtvchannel2 != null)
                    MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("updated_Channel multiple service ").append(k).append("::  ").append(mtvchannel2.toString()).toString());
                context.getContentResolver().insert(CONTENT_URI, getContentValues(mtvchannel2));
            }

        }
        update2Default(context, getUri(i1));
        deleteVChannelInfoBasedOnPhysical(context.getApplicationContext(), i, l);
          goto _L5
_L2:
    }

    public static void setDefaultAreaNChannel(Context context, int i, int j, String s)
    {
        int k;
        Object obj1;
        String as1[][];
        Object obj2;
        SQLiteDatabase sqlitedatabase;
        int ai[];
        String as[][];
        int ai1[];
        if(i == -1)
            i = (new MtvPreferences(context)).getCurrentSlot();
        else
            (new MtvPreferences(context)).setCurrentSlot(i);
        if(j != -1 && s != null)
        {
            Object obj = new MtvArea(j, s);
            s = MtvAreaManager.getContentValues(((MtvArea) (obj)));
            obj = (new StringBuilder()).append("area_id=").append(((MtvArea) (obj)).mAreaId).toString();
            context.getContentResolver().update(MtvAreaManager.CONTENT_URI, s, ((String) (obj)), null);
        }
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvChannelManager", (new StringBuilder()).append("localId=").append(j).toString());
        if(j < 0) goto _L2; else goto _L1
_L1:
        as = (String[][])null;
        s = (String[][])null;
        ai = null;
        if(j <= 64)
        {
            s = MtvAreaStationInfoGGuide.AREA_STATION_GGUIDE;
            as = MtvAreaStationInfo.AREA_STATION;
        }
        obj2 = s;
        as1 = as;
        k = j;
        if(j >= 65)
        {
            obj2 = s;
            as1 = as;
            k = j;
            if(j <= 129)
            {
                k = j - MtvAreaStationInfo.AREA_STATION.length;
                obj2 = MtvAreaStationInfoGGuide.AREA_STATION_GGUIDE_1;
                as1 = MtvAreaStationInfo2.AREA_STATION_1;
            }
        }
        obj1 = null;
        s = null;
        sqlitedatabase = MtvProvider.DatabaseHelper.getInstance(context).getWritableDatabase();
        if(as1 == null) goto _L4; else goto _L3
_L3:
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("areaGGuideDb.length =").append(obj2.length).toString());
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        if(obj2[k - 1].length <= 0) goto _L6; else goto _L5
_L5:
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("areaGGuideDb[localId -1].length =").append(obj2[k - 1].length).toString());
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        ai1 = new int[obj2[k - 1].length / 4];
        j = 0;
_L7:
        ai = ai1;
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        if(j >= obj2[k - 1].length / 4)
            break; /* Loop/switch isn't completed */
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        ai1[j] = Integer.parseInt(obj2[k - 1][j * 4 + 2]);
        j++;
        if(true) goto _L7; else goto _L6
_L6:
        j = 0;
_L14:
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        if(j >= as1[k - 1].length / 5) goto _L4; else goto _L8
_L8:
        int l;
        l = -1;
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        if(obj2[k - 1].length <= 0)
            break MISSING_BLOCK_LABEL_467;
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        l = Arrays.binarySearch(ai, j + 1);
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        MtvUtilDebug.High("MtvChannelManager", (new StringBuilder()).append("isItAlsoInGGuideDB =").append(l).append(" i+1 =").append(j + 1).toString());
        if(l < 0) goto _L10; else goto _L9
_L9:
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        MtvChannel mtvchannel = new MtvChannel(j + 1, Integer.parseInt(obj2[k - 1][l * 4 + 1]), 0, 0, obj2[k - 1][l * 4], i);
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        mtvchannel.mServiceID = Integer.parseInt(obj2[k - 1][l * 4 + 3]);
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        sqlitedatabase.insert("channels", null, getContentValues(mtvchannel));
          goto _L11
_L10:
        s = sqlitedatabase;
        obj1 = sqlitedatabase;
        sqlitedatabase.insert("channels", null, getContentValues(new MtvChannel(j + 1, -1, 0, 0, MtvAreaStationInfo.getStringByResourceName(context, "DTV_CHANNEL_NAME_004"), i)));
          goto _L11
        context;
        obj1 = s;
        context.printStackTrace();
        if(s != null)
            s.close();
_L2:
        return;
_L4:
        if(sqlitedatabase == null) goto _L2; else goto _L12
_L12:
        sqlitedatabase.close();
        return;
        context;
        if(obj1 != null)
            ((SQLiteDatabase) (obj1)).close();
        throw context;
_L11:
        j++;
        if(true) goto _L14; else goto _L13
_L13:
    }

    public static void update2Default(Context context, Uri uri)
    {
        if(uri == null)
        {
            return;
        } else
        {
            String s = (new StringBuilder()).append("ch_slot=").append((new MtvPreferences(context)).getCurrentSlot()).toString();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("ch_pch", "-1");
            contentvalues.put("ch_fav", "0");
            contentvalues.put("ch_avlb", "0");
            contentvalues.put("ch_name", context.getResources().getString(0x7f0700ff));
            contentvalues.put("srv_multichannel", "0");
            contentvalues.put("srv_svcid1", Integer.valueOf(0));
            context.getContentResolver().update(uri, contentvalues, s, null);
            return;
        }
    }

    public static void update2DefaultByArea(Context context, int i)
    {
        String s = (new StringBuilder()).append("ch_slot=").append(i).toString();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("ch_pch", "-1");
        contentvalues.put("ch_fav", "0");
        contentvalues.put("ch_avlb", "0");
        contentvalues.put("ch_name", (new StringBuilder()).append("<").append(context.getResources().getString(0x7f0700ff)).append(">").toString());
        context.getContentResolver().update(CONTENT_URI, contentvalues, s, null);
    }

    public static void updateOrInsert(Context context, MtvChannel mtvchannel)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("Update or insert CHANNEL ").append(mtvchannel.toString()).toString());
        MtvChannel mtvchannel1 = findByVChannel(context, mtvchannel.mVirtualNum);
        if(mtvchannel1 == null)
        {
            MtvUtilDebug.Low("MtvChannelManager", "Update or insert CHANNEL : not present ");
            context.getContentResolver().insert(CONTENT_URI, getContentValues(mtvchannel));
            return;
        }
        if(mtvchannel1.mPhysicalNum == -1)
        {
            context.getContentResolver().update(getUri(mtvchannel1.mUriId), getContentValues(mtvchannel), null, null);
            return;
        }
        if(mtvchannel1.mPhysicalNum == mtvchannel.mPhysicalNum && mtvchannel1.mChannelName.trim().equals(mtvchannel.mChannelName.trim()) && mtvchannel1.mMultiChannelNo != mtvchannel.mMultiChannelNo)
        {
            MtvUtilDebug.Low("MtvChannelManager", "Update or insert CHANNEL : same present but multi channel is diff ");
            context.getContentResolver().insert(CONTENT_URI, getContentValues(mtvchannel));
            return;
        }
        if(mtvchannel1.mPhysicalNum == mtvchannel.mPhysicalNum && mtvchannel1.mChannelName.trim().equals(mtvchannel.mChannelName.trim()) && mtvchannel1.mMultiChannelNo == mtvchannel.mMultiChannelNo)
        {
            MtvUtilDebug.Low("MtvChannelManager", "Update or insert CHANNEL : same present ");
            return;
        }
        MtvChannel mtvchannel2 = findByNamePCh(context, mtvchannel.mChannelName, mtvchannel.mPhysicalNum);
        mtvchannel1 = null;
        if(mtvchannel2 == null)
        {
            int i = 13;
            do
            {
label0:
                {
                    if(i <= 24)
                    {
                        mtvchannel1 = findByVChannel(context, i);
                        if(mtvchannel1 == null || mtvchannel1.mPhysicalNum != -1)
                            break label0;
                    }
                    if(mtvchannel1 != null && mtvchannel1.mPhysicalNum == -1)
                    {
                        MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("channel.mMultiChannelNo::  ").append(mtvchannel.mMultiChannelNo).append(" channel.mVirtualNum:: ").append(mtvchannel.mVirtualNum).append(" emptyChannel.mVirtualNum:: ").append(mtvchannel1.mVirtualNum).toString());
                        mtvchannel = new MtvChannel(mtvchannel1.mVirtualNum, mtvchannel.mPhysicalNum, mtvchannel.mFavorite, mtvchannel.mAvailable, mtvchannel.mChannelName, mtvchannel.mSlot, mtvchannel.mUriId, mtvchannel.mServiceID1, mtvchannel.mServiceID2, mtvchannel.mServiceID, mtvchannel1.mVirtualNum * 10 + 600 + mtvchannel.mMultiChannelNo % 10, mtvchannel.mServiceName);
                        if(mtvchannel != null)
                            MtvUtilDebug.Low("MtvChannelManager", (new StringBuilder()).append("emptyChannel::  ").append(mtvchannel.toString()).toString());
                        context.getContentResolver().update(getUri(mtvchannel1.mUriId), getContentValues(mtvchannel), null, null);
                        return;
                    } else
                    {
                        MtvUtilDebug.Low("MtvChannelManager", "if empty channel does not exist do nothing. drop the channel.  ");
                        return;
                    }
                }
                i++;
            } while(true);
        } else
        {
            MtvUtilDebug.Low("MtvChannelManager", "Update or insert CHANNEL : same present but multi channel is diff");
            mtvchannel = new MtvChannel(mtvchannel2.mVirtualNum, mtvchannel.mPhysicalNum, mtvchannel.mFavorite, mtvchannel.mAvailable, mtvchannel.mChannelName, mtvchannel.mSlot, mtvchannel.mUriId, mtvchannel.mServiceID1, mtvchannel.mServiceID2, mtvchannel.mServiceID, mtvchannel2.mVirtualNum * 10 + 600 + mtvchannel.mMultiChannelNo % 10, mtvchannel2.mServiceName);
            context.getContentResolver().insert(CONTENT_URI, getContentValues(mtvchannel));
            return;
        }
    }

    public static final String CH_AVLB = "ch_avlb";
    public static final String CH_FAV = "ch_fav";
    public static final String CH_NAME = "ch_name";
    public static final String CH_PCH = "ch_pch";
    public static final String CH_SERVICE_ID1 = "ch_svcid1";
    public static final String CH_SERVICE_ID2 = "ch_svcid2";
    public static final String CH_SLOT = "ch_slot";
    public static final String CH_VCH = "ch_vch";
    public static final int COLUMN_AVLB = 4;
    public static final int COLUMN_FAV = 3;
    public static final int COLUMN_ID = 0;
    public static final int COLUMN_MULTICH = 10;
    public static final int COLUMN_NAME = 5;
    public static final int COLUMN_PNUM = 2;
    public static final int COLUMN_SERVICEID = 9;
    public static final int COLUMN_SERVICENAME = 11;
    public static final int COLUMN_SERVICE_ID1 = 7;
    public static final int COLUMN_SERVICE_ID2 = 8;
    public static final int COLUMN_SLOT = 6;
    public static final int COLUMN_VNUM = 1;
    public static final String CONTENT_ITEM_TYPE = "vnd.android.curosr.item/vnd.android.mtv.channel";
    public static final String CONTENT_TYPE = "vnd.android.cursor.dir/vnd.android.mtv.channel";
    public static final Uri CONTENT_URI = Uri.parse("content://com.samsung.sec.mtv/channels");
    public static final String DEFAULT_SORT_ORDER = "ch_vch ASC";
    public static final String PROJECTION[] = {
        "_id", "ch_vch", "ch_pch", "ch_fav", "ch_avlb", "ch_name", "ch_slot", "ch_svcid1", "ch_svcid2", "srv_svcid1", 
        "srv_multichannel", "srv_svcname1"
    };
    protected static HashMap PROJECTION_MAP;
    public static final String SRV_MULTI_CHANNEL = "srv_multichannel";
    public static final String SRV_SERVICE_ID = "srv_svcid1";
    public static final String SRV_SERVICE_NAME = "srv_svcname1";
    protected static final String TABLE = "channels";
    private static final String TAG = "MtvChannelManager";

    static 
    {
        PROJECTION_MAP = new HashMap();
        PROJECTION_MAP.put("_id", "_id");
        PROJECTION_MAP.put("ch_vch", "ch_vch");
        PROJECTION_MAP.put("ch_pch", "ch_pch");
        PROJECTION_MAP.put("ch_fav", "ch_fav");
        PROJECTION_MAP.put("ch_avlb", "ch_avlb");
        PROJECTION_MAP.put("ch_name", "ch_name");
        PROJECTION_MAP.put("ch_slot", "ch_slot");
        PROJECTION_MAP.put("ch_svcid1", "ch_svcid1");
        PROJECTION_MAP.put("ch_svcid2", "ch_svcid2");
        PROJECTION_MAP.put("srv_svcid1", "srv_svcid1");
        PROJECTION_MAP.put("srv_multichannel", "srv_multichannel");
        PROJECTION_MAP.put("srv_svcname1", "srv_svcname1");
    }
}
