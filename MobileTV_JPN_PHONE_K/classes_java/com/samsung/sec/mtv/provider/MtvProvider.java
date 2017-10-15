// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.*;
import android.net.Uri;
import android.text.TextUtils;
import com.samsung.sec.mtv.utility.MtvUtilSetReservationAlarm;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            MtvAreaManager, MtvChannelManager, MtvProgramManager, MtvReservationManager, 
//            MtvReservation, MtvArea

public class MtvProvider extends ContentProvider
{
    protected static class DatabaseHelper extends SQLiteOpenHelper
    {

        private void createDefaultContents(SQLiteDatabase sqlitedatabase)
        {
            MtvArea mtvarea = new MtvArea(-1, "Empty");
            for(int i = 0; i < 10; i++)
                sqlitedatabase.insert("areas", null, MtvAreaManager.getContentValues(mtvarea));

        }

        public static DatabaseHelper getInstance(Context context)
        {
            if(mDatabaseHelperInstance == null)
                mDatabaseHelperInstance = new DatabaseHelper(context);
            return mDatabaseHelperInstance;
        }

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            MtvUtilDebug.Mid("DatabaseHelper", "onCreate");
            sqlitedatabase.execSQL("CREATE TABLE areas (_id INTEGER PRIMARY KEY,area_id INTEGER,area_name TEXT);");
            sqlitedatabase.execSQL("CREATE TABLE channels (_id INTEGER PRIMARY KEY,ch_vch INTEGER,ch_pch INTEGER DEFAULT -1,ch_fav INTEGER DEFAULT 0,ch_avlb INTEGER DEFAULT 0,ch_name TEXT,ch_slot INTEGER,ch_svcid1 INTEGER  DEFAULT -1,ch_svcid2 INTEGER  DEFAULT -1,srv_svcid1 INTEGER DEFAULT 0,srv_multichannel INTEGER DEFAULT 0,srv_svcname1 TEXT);");
            sqlitedatabase.execSQL("CREATE TABLE programs (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT);");
            sqlitedatabase.execSQL("CREATE TABLE reservations (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT,egp_type INTEGER,egp_status INTEGER,egp_serviceid INTEGER);");
            createDefaultContents(sqlitedatabase);
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            MtvUtilDebug.Mid("DatabaseHelper", (new StringBuilder()).append("onUpgrade oldVersion = ").append(i).append(" newVersion = ").append(j).toString());
            if(j != 9)
                break MISSING_BLOCK_LABEL_180;
            try
            {
                sqlitedatabase.execSQL("ALTER TABLE channels ADD COLUMN srv_svcid1 INTEGER DEFAULT 0;");
            }
            catch(SQLiteException sqliteexception)
            {
                MtvUtilDebug.Mid("DatabaseHelper", (new StringBuilder()).append("onUpgrade srv_svcid1 SQLiteException = ").append(sqliteexception).toString());
            }
            try
            {
                sqlitedatabase.execSQL("ALTER TABLE channels ADD COLUMN srv_multichannel INTEGER DEFAULT 0;");
            }
            catch(SQLiteException sqliteexception1)
            {
                MtvUtilDebug.Mid("DatabaseHelper", (new StringBuilder()).append("onUpgrade srv_multichannel SQLiteException = ").append(sqliteexception1).toString());
            }
            try
            {
                sqlitedatabase.execSQL("ALTER TABLE channels ADD COLUMN srv_svcname1 TEXT DEFAULT ' ';");
            }
            catch(SQLiteException sqliteexception2)
            {
                MtvUtilDebug.Mid("DatabaseHelper", (new StringBuilder()).append("onUpgrade srv_svcid1 SQLiteException = ").append(sqliteexception2).toString());
            }
            sqlitedatabase.execSQL("UPDATE reservations SET egp_serviceid= 0;");
_L1:
            return;
            sqlitedatabase;
            MtvUtilDebug.Mid("DatabaseHelper", (new StringBuilder()).append("onUpgrade EPG_SERVICEID SQLiteException = ").append(sqlitedatabase).toString());
            return;
            if(i != j)
            {
                sqlitedatabase.execSQL("DROP TABLE IF EXISTS areas");
                sqlitedatabase.execSQL("DROP TABLE IF EXISTS channels");
                sqlitedatabase.execSQL("DROP TABLE IF EXISTS programs");
                sqlitedatabase.execSQL("DROP TABLE IF EXISTS reservations");
                onCreate(sqlitedatabase);
                return;
            }
              goto _L1
        }

        private static final String CREATE_TABLE_CHANNELS = "CREATE TABLE channels (_id INTEGER PRIMARY KEY,ch_vch INTEGER,ch_pch INTEGER DEFAULT -1,ch_fav INTEGER DEFAULT 0,ch_avlb INTEGER DEFAULT 0,ch_name TEXT,ch_slot INTEGER,ch_svcid1 INTEGER  DEFAULT -1,ch_svcid2 INTEGER  DEFAULT -1,srv_svcid1 INTEGER DEFAULT 0,srv_multichannel INTEGER DEFAULT 0,srv_svcname1 TEXT);";
        private static final String CREATE_TABLE_PROGRAMS = "CREATE TABLE programs (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT);";
        private static final String CREATE_TABLE_RESERVATIONS = "CREATE TABLE reservations (_id INTEGER PRIMARY KEY,epg_vch INTEGER,epg_pch INTEGER,epg_plock INTEGER,epg_stime INTEGER,epg_etime INTEGER,epg_name TEXT,epg_detail TEXT,egp_type INTEGER,egp_status INTEGER,egp_serviceid INTEGER);";
        private static final String DATABASE_NAME = "mtv.db";
        private static final int DATABASE_VERSION = 9;
        private static final String TAG = "DatabaseHelper";
        private static DatabaseHelper mDatabaseHelperInstance = null;


        private DatabaseHelper(Context context)
        {
            super(context, "mtv.db", null, 9);
            MtvProvider.mContext = context;
        }
    }

    private static class UpdateOldDBDBRunnable
        implements Runnable
    {

        public void run()
        {
            MtvProvider.setReservations();
        }

        UpdateOldDBDBRunnable()
        {
        }
    }


    public MtvProvider()
    {
        mOpenHelper = null;
    }

    private Uri insert_area(Uri uri, ContentValues contentvalues)
    {
        long l;
        if(contentvalues != null)
            contentvalues = new ContentValues(contentvalues);
        else
            contentvalues = new ContentValues();
        l = mOpenHelper.getWritableDatabase().insert("areas", null, contentvalues);
        if(l > 0L)
        {
            uri = ContentUris.withAppendedId(MtvAreaManager.CONTENT_URI, l);
            getContext().getContentResolver().notifyChange(uri, null);
            return uri;
        } else
        {
            throw new SQLException((new StringBuilder()).append("Failed to insert row into ").append(uri).toString());
        }
    }

    private Uri insert_channel(Uri uri, ContentValues contentvalues)
    {
        long l;
        if(contentvalues != null)
            contentvalues = new ContentValues(contentvalues);
        else
            contentvalues = new ContentValues();
        l = mOpenHelper.getWritableDatabase().insert("channels", null, contentvalues);
        if(l > 0L)
        {
            uri = ContentUris.withAppendedId(MtvChannelManager.CONTENT_URI, l);
            getContext().getContentResolver().notifyChange(uri, null);
            return uri;
        } else
        {
            throw new SQLException((new StringBuilder()).append("Failed to insert row into ").append(uri).toString());
        }
    }

    private Uri insert_program(Uri uri, ContentValues contentvalues)
    {
        long l;
        if(contentvalues != null)
            contentvalues = new ContentValues(contentvalues);
        else
            contentvalues = new ContentValues();
        l = mOpenHelper.getWritableDatabase().insert("programs", null, contentvalues);
        if(l > 0L)
        {
            uri = ContentUris.withAppendedId(MtvProgramManager.CONTENT_URI, l);
            getContext().getContentResolver().notifyChange(uri, null);
            return uri;
        } else
        {
            throw new SQLException((new StringBuilder()).append("Failed to insert row into ").append(uri).toString());
        }
    }

    private Uri insert_reservation(Uri uri, ContentValues contentvalues)
    {
        long l;
        if(contentvalues != null)
            contentvalues = new ContentValues(contentvalues);
        else
            contentvalues = new ContentValues();
        l = mOpenHelper.getWritableDatabase().insert("reservations", null, contentvalues);
        if(l > 0L)
        {
            uri = ContentUris.withAppendedId(MtvReservationManager.CONTENT_URI, l);
            getContext().getContentResolver().notifyChange(uri, null);
            return uri;
        } else
        {
            throw new SQLException((new StringBuilder()).append("Failed to insert row into ").append(uri).toString());
        }
    }

    public static boolean setReservations()
    {
        MtvReservation amtvreservation[] = (MtvReservation[])MtvReservationManager.getAllReserves(mContext.getApplicationContext());
        if(amtvreservation == null)
            return false;
        Arrays.sort(amtvreservation);
        for(int i = 0; i < amtvreservation.length; i++)
            if(amtvreservation[i].mTimeStart > 0L)
                MtvUtilSetReservationAlarm.setReservationAlarm(mContext.getApplicationContext(), amtvreservation[i].mTimeStart, true, false);

        return true;
    }

    public int delete(Uri uri, String s, String as[])
    {
        SQLiteDatabase sqlitedatabase;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvProvider", (new StringBuilder()).append("delete ").append(uri.toString()).toString());
        sqlitedatabase = mOpenHelper.getWritableDatabase();
        mUriMatcher.match(uri);
        JVM INSTR tableswitch 1 10: default 104
    //                   1 149
    //                   2 163
    //                   3 104
    //                   4 254
    //                   5 268
    //                   6 104
    //                   7 359
    //                   8 373
    //                   9 104
    //                   10 131;
           goto _L1 _L2 _L3 _L1 _L4 _L5 _L1 _L6 _L7 _L1 _L8
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());
_L8:
        int i = 0;
_L10:
        getContext().getContentResolver().notifyChange(uri, null);
        return i;
_L2:
        i = sqlitedatabase.delete("channels", s, as);
        continue; /* Loop/switch isn't completed */
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.delete("channels", stringbuilder.append(s).toString(), as);
        continue; /* Loop/switch isn't completed */
_L4:
        i = sqlitedatabase.delete("programs", s, as);
        continue; /* Loop/switch isn't completed */
_L5:
        StringBuilder stringbuilder1 = (new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.delete("programs", stringbuilder1.append(s).toString(), as);
        continue; /* Loop/switch isn't completed */
_L6:
        i = sqlitedatabase.delete("reservations", s, as);
        continue; /* Loop/switch isn't completed */
_L7:
        StringBuilder stringbuilder2 = (new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.delete("reservations", stringbuilder2.append(s).toString(), as);
        if(true) goto _L10; else goto _L9
_L9:
    }

    public String getType(Uri uri)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvProvider", (new StringBuilder()).append("getType ").append(uri.toString()).toString());
        switch(mUriMatcher.match(uri))
        {
        case 3: // '\003'
        case 6: // '\006'
        case 9: // '\t'
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());

        case 10: // '\n'
            return "vnd.android.cursor.dir/vnd.android.mtv.area";

        case 1: // '\001'
            return "vnd.android.cursor.dir/vnd.android.mtv.channel";

        case 2: // '\002'
            return "vnd.android.curosr.item/vnd.android.mtv.channel";

        case 4: // '\004'
            return "vnd.android.cursor.dir/vnd.android.mtv.program";

        case 5: // '\005'
            return "vnd.android.curosr.item/vnd.android.mtv.program";

        case 7: // '\007'
            return "vnd.android.cursor.dir/vnd.android.mtv.reservation";

        case 8: // '\b'
            return "vnd.android.curosr.item/vnd.android.mtv.reservation";
        }
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvProvider", (new StringBuilder()).append("insert ").append(uri.toString()).toString());
        switch(mUriMatcher.match(uri))
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());

        case 10: // '\n'
            return insert_area(uri, contentvalues);

        case 1: // '\001'
            return insert_channel(uri, contentvalues);

        case 4: // '\004'
            return insert_program(uri, contentvalues);

        case 7: // '\007'
            return insert_reservation(uri, contentvalues);
        }
    }

    public boolean onCreate()
    {
        MtvUtilDebug.Mid("MtvProvider", "onCreate");
        mOpenHelper = DatabaseHelper.getInstance(getContext());
        return true;
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        SQLiteQueryBuilder sqlitequerybuilder;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvProvider", (new StringBuilder()).append("query ").append(uri.toString()).append(" where: ").append(s).toString());
        sqlitequerybuilder = new SQLiteQueryBuilder();
        mUriMatcher.match(uri);
        JVM INSTR tableswitch 1 11: default 120
    //                   1 292
    //                   2 344
    //                   3 670
    //                   4 418
    //                   5 470
    //                   6 724
    //                   7 544
    //                   8 596
    //                   9 778
    //                   10 147
    //                   11 238;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L7:
        break MISSING_BLOCK_LABEL_724;
_L10:
        break MISSING_BLOCK_LABEL_778;
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());
_L11:
        String as2[];
        String s2;
        sqlitequerybuilder.setTables("areas");
        sqlitequerybuilder.setProjectionMap(MtvAreaManager.PROJECTION_MAP);
        String as3[] = as;
        if(as == null)
            as3 = MtvAreaManager.PROJECTION;
        as2 = as3;
        s2 = s1;
        if(s1 == null)
        {
            s2 = "_id ASC";
            as2 = as3;
        }
_L13:
        as = sqlitequerybuilder.query(mOpenHelper.getReadableDatabase(), as2, s, as1, null, null, s2);
        if(as != null)
            as.setNotificationUri(getContext().getContentResolver(), uri);
        return as;
_L12:
        as = mOpenHelper.getReadableDatabase();
        uri = "SELECT count(*) FROM areas";
        if(!TextUtils.isEmpty(s))
            uri = (new StringBuilder()).append("SELECT count(*) FROM areas").append(" WHERE ").append(s).toString();
        return as.rawQuery(uri, as1);
_L2:
        sqlitequerybuilder.setTables("channels");
        sqlitequerybuilder.setProjectionMap(MtvChannelManager.PROJECTION_MAP);
        String as4[] = as;
        if(as == null)
            as4 = MtvChannelManager.PROJECTION;
        as2 = as4;
        s2 = s1;
        if(s1 == null)
        {
            s2 = "ch_vch ASC";
            as2 = as4;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        sqlitequerybuilder.setTables("channels");
        sqlitequerybuilder.setProjectionMap(MtvChannelManager.PROJECTION_MAP);
        sqlitequerybuilder.appendWhere((new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1)).toString());
        as2 = as;
        s2 = s1;
        if(as == null)
        {
            as2 = MtvChannelManager.PROJECTION;
            s2 = s1;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        sqlitequerybuilder.setTables("programs");
        sqlitequerybuilder.setProjectionMap(MtvProgramManager.PROJECTION_MAP);
        String as5[] = as;
        if(as == null)
            as5 = MtvProgramManager.PROJECTION;
        as2 = as5;
        s2 = s1;
        if(s1 == null)
        {
            s2 = "epg_stime ASC";
            as2 = as5;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        sqlitequerybuilder.setTables("programs");
        sqlitequerybuilder.setProjectionMap(MtvProgramManager.PROJECTION_MAP);
        sqlitequerybuilder.appendWhere((new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1)).toString());
        as2 = as;
        s2 = s1;
        if(as == null)
        {
            as2 = MtvProgramManager.PROJECTION;
            s2 = s1;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        sqlitequerybuilder.setTables("reservations");
        sqlitequerybuilder.setProjectionMap(MtvReservationManager.PROJECTION_MAP);
        String as6[] = as;
        if(as == null)
            as6 = MtvReservationManager.PROJECTION;
        as2 = as6;
        s2 = s1;
        if(s1 == null)
        {
            s2 = "epg_stime ASC";
            as2 = as6;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        sqlitequerybuilder.setTables("reservations");
        sqlitequerybuilder.setProjectionMap(MtvReservationManager.PROJECTION_MAP);
        sqlitequerybuilder.appendWhere((new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1)).toString());
        as2 = as;
        s2 = s1;
        if(as == null)
        {
            as2 = MtvReservationManager.PROJECTION;
            s2 = s1;
        }
        if(true) goto _L13; else goto _L4
_L4:
        as = mOpenHelper.getReadableDatabase();
        uri = "SELECT count(*) FROM channels";
        if(!TextUtils.isEmpty(s))
            uri = (new StringBuilder()).append("SELECT count(*) FROM channels").append(" WHERE ").append(s).toString();
        return as.rawQuery(uri, as1);
        as = mOpenHelper.getReadableDatabase();
        uri = "SELECT count(*) FROM programs";
        if(!TextUtils.isEmpty(s))
            uri = (new StringBuilder()).append("SELECT count(*) FROM programs").append(" WHERE ").append(s).toString();
        return as.rawQuery(uri, as1);
        as = mOpenHelper.getReadableDatabase();
        uri = "SELECT count(*) FROM reservations";
        if(!TextUtils.isEmpty(s))
            uri = (new StringBuilder()).append("SELECT count(*) FROM reservations").append(" WHERE ").append(s).toString();
        return as.rawQuery(uri, as1);
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        SQLiteDatabase sqlitedatabase;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvProvider", (new StringBuilder()).append("update uri=").append(uri).toString());
        sqlitedatabase = mOpenHelper.getWritableDatabase();
        mUriMatcher.match(uri);
        JVM INSTR tableswitch 1 10: default 100
    //                   1 155
    //                   2 171
    //                   3 100
    //                   4 264
    //                   5 280
    //                   6 100
    //                   7 373
    //                   8 389
    //                   9 100
    //                   10 127;
           goto _L1 _L2 _L3 _L1 _L4 _L5 _L1 _L6 _L7 _L1 _L8
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());
_L8:
        int i = sqlitedatabase.update("areas", contentvalues, s, as);
_L10:
        getContext().getContentResolver().notifyChange(uri, null);
        return i;
_L2:
        i = sqlitedatabase.update("channels", contentvalues, s, as);
        continue; /* Loop/switch isn't completed */
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.update("channels", contentvalues, stringbuilder.append(s).toString(), as);
        continue; /* Loop/switch isn't completed */
_L4:
        i = sqlitedatabase.update("programs", contentvalues, s, as);
        continue; /* Loop/switch isn't completed */
_L5:
        StringBuilder stringbuilder1 = (new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.update("programs", contentvalues, stringbuilder1.append(s).toString(), as);
        continue; /* Loop/switch isn't completed */
_L6:
        i = sqlitedatabase.update("reservations", contentvalues, s, as);
        continue; /* Loop/switch isn't completed */
_L7:
        StringBuilder stringbuilder2 = (new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.update("reservations", contentvalues, stringbuilder2.append(s).toString(), as);
        if(true) goto _L10; else goto _L9
_L9:
    }

    protected static final int AREA_COUNT = 10;
    public static final String AUTHORITY = "com.samsung.sec.mtv";
    public static final boolean DB_TEST_ENABLE = false;
    private static final int MTV_AREAS = 10;
    private static final int MTV_AREA_COUNT = 11;
    private static final int MTV_CHANNELS = 1;
    private static final int MTV_CHANNEL_COUNT = 3;
    private static final int MTV_CHANNEL_ID = 2;
    private static final int MTV_PROGRAMS = 4;
    private static final int MTV_PROGRAM_COUNT = 6;
    private static final int MTV_PROGRAM_ID = 5;
    private static final int MTV_RESERVATIONS = 7;
    private static final int MTV_RESERVATION_COUNT = 9;
    private static final int MTV_RESERVATION_ID = 8;
    private static final String TAG = "MtvProvider";
    private static Context mContext = null;
    private static final UriMatcher mUriMatcher;
    private DatabaseHelper mOpenHelper;

    static 
    {
        mUriMatcher = new UriMatcher(-1);
        mUriMatcher.addURI("com.samsung.sec.mtv", "areas", 10);
        mUriMatcher.addURI("com.samsung.sec.mtv", "areas/count", 11);
        mUriMatcher.addURI("com.samsung.sec.mtv", "channels", 1);
        mUriMatcher.addURI("com.samsung.sec.mtv", "channels/#", 2);
        mUriMatcher.addURI("com.samsung.sec.mtv", "channels/count", 3);
        mUriMatcher.addURI("com.samsung.sec.mtv", "programs", 4);
        mUriMatcher.addURI("com.samsung.sec.mtv", "programs/#", 5);
        mUriMatcher.addURI("com.samsung.sec.mtv", "programs/count", 6);
        mUriMatcher.addURI("com.samsung.sec.mtv", "reservations", 7);
        mUriMatcher.addURI("com.samsung.sec.mtv", "reservations/#", 8);
        mUriMatcher.addURI("com.samsung.sec.mtv", "reservations/count", 9);
    }


/*
    static Context access$002(Context context)
    {
        mContext = context;
        return context;
    }

*/
}
