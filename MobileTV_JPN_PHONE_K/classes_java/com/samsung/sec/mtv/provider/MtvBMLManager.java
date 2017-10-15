// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.MtvUtilDebug;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.io.*;
import java.util.Date;
import java.util.Vector;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            MtvCProBMInfo

public class MtvBMLManager
{

    public MtvBMLManager()
    {
    }

    public static void deleteCProBMInfo(int i)
        throws SQLiteException
    {
        MtvUtilDebug.Low("MtvBMLManager", (new StringBuilder()).append("deleteCProBMInfo() : called. listIndex = ").append(i).toString());
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        mDb.execSQL((new StringBuilder()).append("DELETE FROM dtvcprobminfo WHERE  ID== ").append(i).toString());
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
_L2:
        return;
        Object obj;
        obj;
        MtvUtilDebug.Error("MtvBMLManager", "deleteCProBMInfo() : CProBMInfo    data open failed");
        ((SQLiteException) (obj)).printStackTrace();
        if(mDb == null) goto _L2; else goto _L1
_L1:
        mDb.close();
        mDb = null;
        return;
        obj;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw obj;
    }

    public static void deleteCProBMInfoAll()
        throws SQLiteException
    {
        MtvUtilDebug.Low("MtvBMLManager", "deleteCProBMInfoAll() : called.");
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        mDb.execSQL("DELETE FROM dtvcprobminfo");
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
_L2:
        return;
        Object obj;
        obj;
        MtvUtilDebug.Error("MtvBMLManager", "deleteCProBMInfoAll() : CProBMInfo     data open failed");
        ((SQLiteException) (obj)).printStackTrace();
        if(mDb == null) goto _L2; else goto _L1
_L1:
        mDb.close();
        mDb = null;
        return;
        obj;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw obj;
    }

    public static void deleteStationData_DeleteAffiliation(int i)
        throws SQLiteException
    {
        MtvUtilDebug.Low("MtvBMLManager", (new StringBuilder()).append("deleteStationData_DeleteAffiliation() : called. affiliation_id = ").append(i).toString());
        Object obj;
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        obj = mDb.rawQuery("select count(*) from dtvaffiliationblock where affiliationID=?", new String[] {
            (new StringBuilder()).append(i).append("").toString()
        });
        if(!((Cursor) (obj)).moveToFirst()) goto _L2; else goto _L1
_L1:
        if(((Cursor) (obj)).getCount() <= 0) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("deleteStationData_DeleteAffiliation() : ").append(((Cursor) (obj)).getInt(0)).toString());
        mDb.execSQL((new StringBuilder()).append("DELETE FROM dtvaffiliationblockWHERE  AFFILIATIONID==").append(i).toString());
_L2:
        ((Cursor) (obj)).close();
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        obj = mDb.rawQuery("select count(*) from dtvaffiliationbroadcaster where affiliationID=?", new String[] {
            (new StringBuilder()).append(i).append("").toString()
        });
        if(!((Cursor) (obj)).moveToFirst()) goto _L6; else goto _L5
_L5:
        if(((Cursor) (obj)).getCount() <= 0) goto _L8; else goto _L7
_L7:
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("deleteStationData_DeleteAffiliation() :count ").append(((Cursor) (obj)).getInt(0)).toString());
        mDb.execSQL((new StringBuilder()).append("DELETE FROM dtvaffiliationbroadcasterWHERE AFFILIATIONID== ").append(i).toString());
_L6:
        ((Cursor) (obj)).close();
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
_L10:
        return;
_L4:
        MtvUtilDebug.Error("MtvBMLManager", (new StringBuilder()).append("deleteStationData_DeleteAffiliation() : mCursor.getCount() = ").append(((Cursor) (obj)).getCount()).toString());
          goto _L2
        obj;
        ((SQLiteException) (obj)).printStackTrace();
        if(mDb == null) goto _L10; else goto _L9
_L9:
        mDb.close();
        mDb = null;
        return;
_L8:
        MtvUtilDebug.Error("MtvBMLManager", (new StringBuilder()).append("deleteStationData_DeleteAffiliation() : mCursor.getCount() = ").append(((Cursor) (obj)).getCount()).toString());
          goto _L6
        Exception exception;
        exception;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw exception;
          goto _L2
    }

    public static void deleteStationData_DeleteAllAffiliation()
        throws SQLiteException
    {
        MtvUtilDebug.Low("MtvBMLManager", "deleteStationData_DeleteAllAffiliation() : called.");
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        mDb.execSQL("DELETE FROM dtvaffiliationblock");
        mDb.execSQL("DELETE FROM dtvaffiliationbroadcaster");
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
_L2:
        return;
        Object obj;
        obj;
        ((SQLiteException) (obj)).printStackTrace();
        if(mDb == null) goto _L2; else goto _L1
_L1:
        mDb.close();
        mDb = null;
        return;
        obj;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw obj;
    }

    public static void deleteStationData_DeleteNetwork(int i, int j)
        throws SQLiteException
    {
        byte byte0;
        byte0 = -1;
        MtvUtilDebug.Low("MtvBMLManager", "deleteStationData_DeleteNetwork() : called.");
        Object obj;
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        obj = mDb.rawQuery((new StringBuilder()).append("select originalNetworkID from dtvaffiliationbroadcaster where affiliationID=? order by originalNetworkID limit ").append(j).append(",1").toString(), new String[] {
            (new StringBuilder()).append(i).append("").toString()
        });
        j = byte0;
        if(((Cursor) (obj)).moveToFirst())
            j = ((Cursor) (obj)).getInt(0);
        ((Cursor) (obj)).close();
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        if(j >= 0) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("deleteStationData_DeleteNetwork() : Error in retrieving originalNetworkID.").append(j).toString());
_L7:
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
_L4:
        return;
_L2:
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        obj = mDb.rawQuery("select count(*) from dtvaffiliationblock where affiliationID=? and originalNetworkID=?", new String[] {
            (new StringBuilder()).append(i).append("").toString(), (new StringBuilder()).append(j).append("").toString()
        });
        if(((Cursor) (obj)).moveToFirst())
        {
            if(((Cursor) (obj)).getCount() <= 0)
                break MISSING_BLOCK_LABEL_416;
            mDb.execSQL("delete from dtvaffiliationblock where affiliationID=? and originalNetworkID=?", new String[] {
                (new StringBuilder()).append(i).append("").toString(), (new StringBuilder()).append(j).append("").toString()
            });
        }
_L5:
        ((Cursor) (obj)).close();
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 0);
        mDb.execSQL("delete from dtvaffiliationbroadcaster where affiliationID=? and originalNetworkID=?", new String[] {
            (new StringBuilder()).append(i).append("").toString(), (new StringBuilder()).append(j).append("").toString()
        });
        continue; /* Loop/switch isn't completed */
        obj;
        ((SQLiteException) (obj)).printStackTrace();
        if(mDb == null) goto _L4; else goto _L3
_L3:
        mDb.close();
        mDb = null;
        return;
        MtvUtilDebug.Error("MtvBMLManager", (new StringBuilder()).append("deleteStationData_DeleteNetwork() : Count").append(((Cursor) (obj)).getCount()).toString());
          goto _L5
        Exception exception;
        exception;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw exception;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static int deleteStationData_GetNetworkItemCount(int i)
    {
        int j;
        int k;
        boolean flag;
        flag = false;
        k = 0;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("deleteStationData_GetNetworkItemCount() :     affiliation_ID = ").append(i).toString());
        j = ((flag) ? 1 : 0);
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 1);
        j = ((flag) ? 1 : 0);
        Cursor cursor = mDb.rawQuery("select count(*)  from dtvaffiliationbroadcaster where affiliationID=?", new String[] {
            (new StringBuilder()).append(i).append("").toString()
        });
        i = k;
        j = ((flag) ? 1 : 0);
        if(!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        j = ((flag) ? 1 : 0);
        if(cursor.getCount() <= 0) goto _L4; else goto _L3
_L3:
        j = ((flag) ? 1 : 0);
        i = cursor.getInt(0);
_L2:
        j = i;
        cursor.close();
        k = i;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
            k = i;
        }
_L6:
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("deleteStationData_GetNetworkItemCount() :    count = ").append(k).toString());
        return k;
_L4:
        j = ((flag) ? 1 : 0);
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("deleteStationData_GetNetworkItemCount() : mCursor.getCount() = ").append(cursor.getCount()).toString());
        i = k;
        continue; /* Loop/switch isn't completed */
        Object obj;
        obj;
        MtvUtilDebug.Error("MtvBMLManager", "deleteStationData_GetNetworkItemCount()  db file open failed");
        ((SQLiteException) (obj)).printStackTrace();
        k = j;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
            k = j;
        }
        if(true) goto _L6; else goto _L5
_L5:
        obj;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw obj;
        if(true) goto _L2; else goto _L7
_L7:
    }

    public static String deleteStationData_GetNetworkName(int i, int j)
    {
        boolean flag;
        String s;
        String s1;
        String s2;
        flag = false;
        s2 = null;
        s = null;
        s1 = s2;
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 1);
        s1 = s2;
        Cursor cursor = mDb.rawQuery((new StringBuilder()).append("select originalNetworkID from dtvaffiliationbroadcaster where affiliationID=?     order by originalNetworkID limit ").append(j).append(",1").toString(), new String[] {
            (new StringBuilder()).append(i).append("").toString()
        });
        j = ((flag) ? 1 : 0);
        s1 = s2;
        if(!cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_112;
        s1 = s2;
        j = cursor.getInt(0);
        s1 = s2;
        cursor.close();
        s1 = s2;
        if(mDb == null)
            break MISSING_BLOCK_LABEL_151;
        s1 = s2;
        mDb.close();
        s1 = s2;
        mDb = null;
        s1 = s2;
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 1);
        s1 = s2;
        cursor = mDb.rawQuery("select SI  from dtvaffiliationbroadcaster where affiliationID=? and originalNetworkID=?", new String[] {
            (new StringBuilder()).append(i).append("").toString(), (new StringBuilder()).append(j).append("").toString()
        });
        s1 = s2;
        if(!cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_254;
        s1 = s2;
        s = cursor.getString(0);
        s1 = s;
        cursor.close();
        s2 = s;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
            s2 = s;
        }
_L2:
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("deleteStationData_GetNetworkName() : networkName").append(s2).toString());
        return s2;
        Object obj;
        obj;
        ((SQLiteException) (obj)).printStackTrace();
        s2 = s1;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
            s2 = s1;
        }
        if(true) goto _L2; else goto _L1
_L1:
        obj;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw obj;
    }

    public static MtvCProBMInfo getAvailableCProBMInfo(int i)
        throws SQLiteException, IOException
    {
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        MtvCProBMInfo mtvcprobminfo;
        Object obj;
        Cursor cursor;
        obj = null;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfo() : called. id = ").append(i).toString());
        try
        {
            mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 1);
        }
        catch(SQLiteException sqliteexception)
        {
            MtvUtilDebug.Error("MtvBMLManager", "getAvailableCProBMInfo() : CProBMInfo  data open failed");
            return null;
        }
        if(mDb == null)
        {
            MtvUtilDebug.Error("MtvBMLManager", "getAvailableCProBMInfo() : there is no     CProBMInfo");
            mDb.close();
            return null;
        }
        cursor = mDb.rawQuery("select rowid, * from dtvcprobminfo where id=?", new String[] {
            (new StringBuilder()).append(i).append("").toString()
        });
        j = cursor.getColumnIndex("rowid");
        k = cursor.getColumnIndex("id");
        l = cursor.getColumnIndex("CproBMType");
        i1 = cursor.getColumnIndex("title");
        j1 = cursor.getColumnIndex("dstURI");
        k1 = cursor.getColumnIndex("originalNetworkID");
        l1 = cursor.getColumnIndex("transportStreamID");
        i2 = cursor.getColumnIndex("serviceID");
        j2 = cursor.getColumnIndex("affiliationID0");
        k2 = cursor.getColumnIndex("affiliationID1");
        l2 = cursor.getColumnIndex("affiliationID2");
        i3 = cursor.getColumnIndex("affiliationID3");
        j3 = cursor.getColumnIndex("affiliationID4");
        k3 = cursor.getColumnIndex("affiliationID5");
        l3 = cursor.getColumnIndex("outline");
        i4 = cursor.getColumnIndex("reserved");
        mtvcprobminfo = obj;
        if(!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        int j4 = cursor.getCount();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfo() : iItemSize = ").append(j4).toString());
_L4:
        int k4 = cursor.getInt(k);
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfo() : data id = ").append(k4).toString());
        if(k4 != i)
            continue; /* Loop/switch isn't completed */
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfo() : matching  data found. id = ").append(k4).toString());
        mtvcprobminfo = new MtvCProBMInfo();
        mtvcprobminfo.index = cursor.getInt(j);
        mtvcprobminfo.id = k4;
        mtvcprobminfo.CproBMType = cursor.getInt(l);
        mtvcprobminfo.title = cursor.getString(i1);
        mtvcprobminfo.dstURI = cursor.getString(j1);
        mtvcprobminfo.originalNetworkID = cursor.getInt(k1);
        mtvcprobminfo.transportStreamID = cursor.getInt(l1);
        mtvcprobminfo.serviceID = cursor.getInt(i2);
        mtvcprobminfo.affiliationID[0] = cursor.getInt(j2);
        mtvcprobminfo.affiliationID[1] = cursor.getInt(k2);
        mtvcprobminfo.affiliationID[2] = cursor.getInt(l2);
        mtvcprobminfo.affiliationID[3] = cursor.getInt(i3);
        mtvcprobminfo.affiliationID[4] = cursor.getInt(j3);
        mtvcprobminfo.affiliationID[5] = cursor.getInt(k3);
        mtvcprobminfo.outline = cursor.getString(l3);
        mtvcprobminfo.reserved = cursor.getString(i4);
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfoAll()  Crop ID     : ").append(mtvcprobminfo.id).toString());
        MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfoAll()  Crop index     : ").append(mtvcprobminfo.index).toString());
        mtvcprobminfo.validdate = getValidDateCProBMInfo(mtvcprobminfo.id);
_L2:
        cursor.close();
        mDb.close();
        MtvUtilDebug.Mid("MtvBMLManager", "getAvailableCProBMInfo() : End");
        return mtvcprobminfo;
        if(cursor.moveToNext()) goto _L4; else goto _L3
_L3:
        mtvcprobminfo = obj;
          goto _L2
        if(true) goto _L4; else goto _L5
_L5:
    }

    public static MtvCProBMInfo[] getAvailableCProBMInfoAll()
        throws SQLiteException
    {
        int i = 0;
        MtvUtilDebug.Low("MtvBMLManager", "getAvailableCProBMInfoAll() : called.");
        if(vCProBMInfo.size() != 0)
            vCProBMInfo.clear();
        try
        {
            mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 1);
        }
        catch(SQLiteException sqliteexception)
        {
            MtvUtilDebug.Error("MtvBMLManager", "getAvailableCProBMInfoAll() : CProBMInfo data open failed");
            return null;
        }
        if(mDb == null)
        {
            MtvUtilDebug.Error("MtvBMLManager", "getAvailableCProBMInfoAll() : there is no CProBMInfo");
            mDb.close();
            return null;
        }
        Cursor cursor = mDb.rawQuery("select rowid, * from dtvcprobminfo", null);
        int j = cursor.getColumnIndex("id");
        int k = cursor.getColumnIndex("CproBMType");
        int l = cursor.getColumnIndex("title");
        int i1 = cursor.getColumnIndex("dstURI");
        int j1 = cursor.getColumnIndex("originalNetworkID");
        int k1 = cursor.getColumnIndex("transportStreamID");
        int l1 = cursor.getColumnIndex("serviceID");
        int i2 = cursor.getColumnIndex("affiliationID0");
        int j2 = cursor.getColumnIndex("affiliationID1");
        int k2 = cursor.getColumnIndex("affiliationID2");
        int l2 = cursor.getColumnIndex("affiliationID3");
        int i3 = cursor.getColumnIndex("affiliationID4");
        int j3 = cursor.getColumnIndex("affiliationID5");
        int k3 = cursor.getColumnIndex("outline");
        int l3 = cursor.getColumnIndex("reserved");
        if(cursor.moveToFirst())
        {
            i = cursor.getCount();
            MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfoAll() : iItemSize = ").append(i).toString());
            Log.e("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfoAll() : iItemSize = ").append(i).toString());
            do
            {
                MtvCProBMInfo mtvcprobminfo = new MtvCProBMInfo();
                mtvcprobminfo.id = cursor.getInt(j);
                mtvcprobminfo.CproBMType = cursor.getInt(k);
                mtvcprobminfo.title = cursor.getString(l);
                mtvcprobminfo.dstURI = cursor.getString(i1);
                mtvcprobminfo.originalNetworkID = cursor.getInt(j1);
                mtvcprobminfo.transportStreamID = cursor.getInt(k1);
                mtvcprobminfo.serviceID = cursor.getInt(l1);
                mtvcprobminfo.affiliationID[0] = cursor.getInt(i2);
                mtvcprobminfo.affiliationID[1] = cursor.getInt(j2);
                mtvcprobminfo.affiliationID[2] = cursor.getInt(k2);
                mtvcprobminfo.affiliationID[3] = cursor.getInt(l2);
                mtvcprobminfo.affiliationID[4] = cursor.getInt(i3);
                mtvcprobminfo.affiliationID[5] = cursor.getInt(j3);
                mtvcprobminfo.outline = cursor.getString(k3);
                mtvcprobminfo.reserved = cursor.getString(l3);
                if(!MtvUtilDebug.isReleaseMode())
                    MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getAvailableCProBMInfoAll()   Crop ID  : ").append(mtvcprobminfo.id).toString());
                mtvcprobminfo.validdate = getValidDateCProBMInfo(mtvcprobminfo.id);
                vCProBMInfo.add(mtvcprobminfo);
            } while(cursor.moveToNext());
        }
        MtvCProBMInfo amtvcprobminfo[] = new MtvCProBMInfo[i];
        if(!vCProBMInfo.isEmpty())
        {
            MtvUtilDebug.Mid("MtvBMLManager", "getAvailableCProBMInfoAll() : vCProBMInfo is not empty! so proceed copyInto().");
            vCProBMInfo.copyInto(amtvcprobminfo);
        } else
        {
            MtvUtilDebug.Mid("MtvBMLManager", "getAvailableCProBMInfoAll() : vCProBMInfo is empty!");
        }
        cursor.close();
        mDb.close();
        MtvUtilDebug.Low("MtvBMLManager", "getAvailableCProBMInfoAll() : End");
        return amtvcprobminfo;
    }

    public static int getOriginalNetworkId(int i, int j)
        throws SQLiteException
    {
        int k;
        byte byte0;
        byte0 = -1;
        MtvUtilDebug.Low("MtvBMLManager", "deleteStationData_DeleteNetwork() : called.");
        k = byte0;
        mDb = SQLiteDatabase.openDatabase("/data/one-seg/bml.db", null, 1);
        k = byte0;
        Cursor cursor = mDb.rawQuery((new StringBuilder()).append("select originalNetworkID from dtvaffiliationbroadcaster where affiliationID=? order by originalNetworkID limit ").append(j).append(",1").toString(), new String[] {
            (new StringBuilder()).append(i).append("").toString()
        });
        i = byte0;
        k = byte0;
        if(!cursor.moveToFirst())
            break MISSING_BLOCK_LABEL_106;
        k = byte0;
        i = cursor.getInt(0);
        k = i;
        cursor.close();
        j = i;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
            j = i;
        }
_L2:
        return j;
        Object obj;
        obj;
        ((SQLiteException) (obj)).printStackTrace();
        j = k;
        if(mDb == null) goto _L2; else goto _L1
_L1:
        mDb.close();
        mDb = null;
        return k;
        obj;
        if(mDb != null)
        {
            mDb.close();
            mDb = null;
        }
        throw obj;
    }

    private static Date getValidDateCProBMInfo(int i)
    {
        Object obj;
        Object obj3;
        Date date;
        date = new Date();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvBMLManager", (new StringBuilder()).append("getValidDateCProBMInfo() : index ").append(i).toString());
        obj = null;
        obj3 = null;
        Object obj1 = new FileInputStream("/data/one-seg/CproBmMng.dat");
        obj = new DataInputStream(((java.io.InputStream) (obj1)));
        long l = 0L;
_L2:
        if(l >= (long)i)
            break; /* Loop/switch isn't completed */
        ((DataInputStream) (obj)).readInt();
        ((DataInputStream) (obj)).readInt();
        l++;
        if(true) goto _L2; else goto _L1
_L1:
        ((DataInputStream) (obj)).readInt();
        l = ((DataInputStream) (obj)).readInt() * 60;
        if(l >= 0L)
            break MISSING_BLOCK_LABEL_135;
        date.setTime(0L);
_L3:
        ((DataInputStream) (obj)).close();
        Object obj2;
        if(obj1 != null)
            try
            {
                ((FileInputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj)
            {
                ((IOException) (obj)).printStackTrace();
                return date;
            }
        return date;
        date.setTime(l * 1000L);
          goto _L3
        obj2;
_L7:
        obj = obj1;
        MtvUtilDebug.Error("MtvBMLManager", (new StringBuilder()).append("getValidDateCProBMInfo() :   Exception : ").append(obj2).toString());
        if(obj1 != null)
        {
            try
            {
                ((FileInputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj)
            {
                ((IOException) (obj)).printStackTrace();
                return date;
            }
            return date;
        } else
        {
            break MISSING_BLOCK_LABEL_132;
        }
        obj1;
_L5:
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
        throw obj1;
        obj2;
        obj = obj1;
        obj1 = obj2;
        if(true) goto _L5; else goto _L4
_L4:
        obj2;
        obj1 = obj3;
        if(true) goto _L7; else goto _L6
_L6:
    }

    private static final String MTV_BML_MANAGER_AFFILIATION_BLOCK_DB_TABLE_NAME = "dtvaffiliationblock";
    private static final String MTV_BML_MANAGER_AFFILIATION_BROADCASTER_DB_TABLE_NAME = "dtvaffiliationbroadcaster";
    private static final String MTV_BML_MANAGER_CPROBM_DATE_INFO_FILE_NAME = "/data/one-seg/CproBmMng.dat";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_0 = "affiliationID0";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_1 = "affiliationID1";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_2 = "affiliationID2";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_3 = "affiliationID3";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_4 = "affiliationID4";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_AFFILIATION_ID_5 = "affiliationID5";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_CPROBMTYPE = "CproBMType";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_DST_URI = "dstURI";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_ID = "id";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_INDEX = "rowid";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_NAME = "/data/one-seg/bml.db";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_ORIGINAL_NETWORK_ID = "originalNetworkID";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_OUTLINE = "outline";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_RESERVED = "reserved";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_SERVICE_ID = "serviceID";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_TABLE_NAME = "dtvcprobminfo";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_TITLE = "title";
    private static final String MTV_BML_MANAGER_CPROBM_INFO_DB_TRANSPORT_STREAM_ID = "transportStreamID";
    private static final String TAG = "MtvBMLManager";
    private static SQLiteDatabase mDb;
    private static Vector vCProBMInfo = new Vector();

}
