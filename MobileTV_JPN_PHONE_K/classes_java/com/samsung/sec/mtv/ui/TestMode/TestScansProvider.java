// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.TestMode;

import android.content.*;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.*;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;

public class TestScansProvider extends ContentProvider
{
    private static class DBConstructor extends SQLiteOpenHelper
    {

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            sqlitedatabase.execSQL("CREATE TABLE testscans (_id INTEGER PRIMARY KEY,scantime INTEGER,numchannels INTEGER,maxchanneltime INTEGER,minchanneltime INTEGER,unixtime INTEGER);");
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS testscans");
            onCreate(sqlitedatabase);
        }

        public DBConstructor(Context context)
        {
            super(context, "testscan_table.db", null, 1);
        }
    }


    public TestScansProvider()
    {
    }

    public int delete(Uri uri, String s, String as[])
    {
        SQLiteDatabase sqlitedatabase = mDBConstructor.getWritableDatabase();
        sUriMatcher.match(uri);
        JVM INSTR tableswitch 1 2: default 40
    //                   1 67
    //                   2 93;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());
_L2:
        int i = sqlitedatabase.delete("testscans", s, as);
_L5:
        getContext().getContentResolver().notifyChange(uri, null);
        return i;
_L3:
        Object obj = (String)uri.getPathSegments().get(1);
        obj = (new StringBuilder()).append("_id=").append(((String) (obj)));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.delete("testscans", ((StringBuilder) (obj)).append(s).toString(), as);
        if(true) goto _L5; else goto _L4
_L4:
    }

    public String getType(Uri uri)
    {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        if(sUriMatcher.match(uri) != 1)
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());
        int i;
        long l;
        SQLiteDatabase sqlitedatabase;
        String s;
        if(contentvalues == null)
            contentvalues = new ContentValues();
        else
            contentvalues = new ContentValues(contentvalues);
        l = System.currentTimeMillis();
        if(!contentvalues.containsKey("unixtime"))
            contentvalues.put("unixtime", Long.valueOf(Long.valueOf(l).longValue() / 1000L));
        if(!contentvalues.containsKey("scantime"))
            contentvalues.put("scantime", Integer.valueOf(0));
        if(!contentvalues.containsKey("numchannels"))
            contentvalues.put("numchannels", Integer.valueOf(0));
        if(!contentvalues.containsKey("maxchanneltime"))
            contentvalues.put("maxchanneltime", Integer.valueOf(0));
        if(!contentvalues.containsKey("minchanneltime"))
            contentvalues.put("minchanneltime", Integer.valueOf(0));
        sqlitedatabase = mDBConstructor.getWritableDatabase();
        l = sqlitedatabase.insert("testscans", "scantime", contentvalues);
        if(l <= 0L)
            break MISSING_BLOCK_LABEL_359;
        contentvalues = null;
        if("content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo" == null)
            break MISSING_BLOCK_LABEL_202;
        contentvalues = Uri.parse("content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo");
        contentvalues = query(contentvalues, new String[] {
            "_id", "scantime", "numchannels", "maxchanneltime", "minchanneltime", "unixtime"
        }, null, null, "unixtime ASC");
        if(contentvalues == null)
            break MISSING_BLOCK_LABEL_309;
        i = contentvalues.getCount() - 10;
        if(i <= 0)
            break MISSING_BLOCK_LABEL_309;
        s = (new StringBuilder()).append("_id in (select _id from testscans order by _id LIMIT ").append(i).append(");").toString();
        contentvalues.moveToFirst();
        sqlitedatabase.delete("testscans", s, null);
        if(contentvalues == null)
            break MISSING_BLOCK_LABEL_319;
        contentvalues.close();
        contentvalues = ContentUris.withAppendedId(TestScans.TestScansInfo.CONTENT_URI, l);
        getContext().getContentResolver().notifyChange(contentvalues, null);
        return contentvalues;
        contentvalues;
        contentvalues.printStackTrace();
        throw new SQLException((new StringBuilder()).append("Failed to insert row into ").append(uri).toString());
    }

    public boolean onCreate()
    {
        mDBConstructor = new DBConstructor(getContext());
        return true;
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        SQLiteQueryBuilder sqlitequerybuilder;
        sqlitequerybuilder = new SQLiteQueryBuilder();
        sqlitequerybuilder.setTables("testscans");
        sUriMatcher.match(uri);
        JVM INSTR tableswitch 1 2: default 44
    //                   1 72
    //                   2 129;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown Uri ").append(uri).toString());
_L2:
        sqlitequerybuilder.setProjectionMap(sTestScansProjectionMap);
_L5:
        if(TextUtils.isEmpty(s1))
            s1 = "unixtime ASC";
        as = sqlitequerybuilder.query(mDBConstructor.getReadableDatabase(), as, s, as1, null, null, s1);
        as.setNotificationUri(getContext().getContentResolver(), uri);
        return as;
_L3:
        sqlitequerybuilder.setProjectionMap(sTestScansProjectionMap);
        sqlitequerybuilder.appendWhere((new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1)).toString());
        if(true) goto _L5; else goto _L4
_L4:
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        SQLiteDatabase sqlitedatabase = mDBConstructor.getWritableDatabase();
        sUriMatcher.match(uri);
        JVM INSTR tableswitch 1 2: default 40
    //                   1 67
    //                   2 95;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown URI ").append(uri).toString());
_L2:
        int i = sqlitedatabase.update("testscans", contentvalues, s, as);
_L5:
        getContext().getContentResolver().notifyChange(uri, null);
        return i;
_L3:
        Object obj = (String)uri.getPathSegments().get(1);
        obj = (new StringBuilder()).append("_id=").append(((String) (obj)));
        if(!TextUtils.isEmpty(s))
            s = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
        else
            s = "";
        i = sqlitedatabase.update("testscans", contentvalues, ((StringBuilder) (obj)).append(s).toString(), as);
        if(true) goto _L5; else goto _L4
_L4:
    }

    private static final String DATABASE_NAME = "testscan_table.db";
    private static final int DATABASE_VERSION = 1;
    private static final int MAX_LIMIT = 10;
    private static final int TESTSCANS = 1;
    private static final int TESTSCANS_ID = 2;
    private static final String TESTSCAN_TABLE_NAME = "testscans";
    private static HashMap sTestScansProjectionMap;
    private static final UriMatcher sUriMatcher;
    private DBConstructor mDBConstructor;

    static 
    {
        sUriMatcher = new UriMatcher(-1);
        sUriMatcher.addURI("com.samung.sec.mtv.ui.TestMode.TestScans", "testscansinfo", 1);
        sUriMatcher.addURI("com.samung.sec.mtv.ui.TestMode.TestScans", "testscansinfo/#", 2);
        sTestScansProjectionMap = new HashMap();
        sTestScansProjectionMap.put("_id", "_id");
        sTestScansProjectionMap.put("scantime", "scantime");
        sTestScansProjectionMap.put("numchannels", "numchannels");
        sTestScansProjectionMap.put("maxchanneltime", "maxchanneltime");
        sTestScansProjectionMap.put("minchanneltime", "minchanneltime");
        sTestScansProjectionMap.put("unixtime", "unixtime");
    }
}
