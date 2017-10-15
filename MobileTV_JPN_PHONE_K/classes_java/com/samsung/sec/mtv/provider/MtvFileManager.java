// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.MtvUtilDebug;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.os.Environment;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.utility.*;
import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            MtvFile

public class MtvFileManager
{
    private static class MtvFileComparator
        implements Comparator
    {

        public int compare(MtvFile mtvfile, MtvFile mtvfile1)
        {
            if(mtvfile == null || mtvfile1 == null)
            {
                MtvUtilDebug.High("MtvFileManager", "compare - null handling not supported - SERIOUS ERROR");
                return 0;
            } else
            {
                return (int)(mtvfile1.getCreationTime().getTime() - mtvfile.getCreationTime().getTime());
            }
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((MtvFile)obj, (MtvFile)obj1);
        }

        private MtvFileComparator()
        {
        }

    }

    public static interface MtvFileManagerListener
    {

        public abstract void onPostUpdate(MtvFile amtvfile[], boolean flag);
    }

    private static class MtvFileManagerRunnable
        implements Runnable
    {

        private MtvFile[] fetchTVFilesList()
        {
            mCurrentTry = mCurrentTry + 1;
            return MtvFileManager.getAvailableTVRecFilesEx(true);
        }

        public void run()
        {
            do
            {
                MtvFileManager.availableTvFiles = fetchTVFilesList();
                MtvUtilDebug.Low("MtvFileManager", "availableTvFiles changed.... Posting to MtvFileManagerListener");
                MtvFileManager.updateTvFilesDBInfo();
                if(TV_FILE_DB_INFO.isDbModified)
                {
                    mListener.onPostUpdate(MtvFileManager.availableTvFiles, true);
                    if(MtvFileManager.availableTvFiles == null || MtvFileManager.availableTvFiles.length != 0)
                        try
                        {
                            Thread.sleep(300L);
                        }
                        catch(InterruptedException interruptedexception)
                        {
                            MtvUtilDebug.Error("MtvFileManager", (new StringBuilder()).append("InterruptedException occured !").append(interruptedexception).toString());
                        }
                    if(mCurrentTry > 5)
                        return;
                } else
                {
                    MtvUtilDebug.Low("MtvFileManager", "DB Not  Modified ! Returning !");
                    mListener.onPostUpdate(MtvFileManager.availableTvFiles, false);
                    return;
                }
            } while(true);
        }

        private static final int MAX_TRIES = 5;
        private int mCurrentTry;
        private MtvFileManagerListener mListener;

        MtvFileManagerRunnable(MtvFileManagerListener mtvfilemanagerlistener)
        {
            mCurrentTry = 0;
            mListener = mtvfilemanagerlistener;
        }
    }

    private static class MtvFileManagerTvFileBuilder
    {

        public void close()
        {
            if(mCursor != null)
            {
                mCursor.close();
                mCursor = null;
            }
        }

        public int getItemSize()
        {
            int i = 0;
            if(mCursor != null)
                i = mCursor.getCount();
            return i;
        }

        public MtvFile getNextTvFile()
        {
            MtvFile mtvfile = null;
            if(mCursor == null) goto _L2; else goto _L1
_L1:
            boolean flag;
            MtvFile mtvfile1;
            if(!bMoveToFirstDone)
            {
                bMoveToFirstDone = true;
                flag = mCursor.moveToFirst();
            } else
            {
                flag = mCursor.moveToNext();
            }
            if(!flag) goto _L4; else goto _L3
_L3:
            mtvfile1 = new MtvFile();
            mtvfile = mtvfile1;
            if(mtvfile1 == null) goto _L6; else goto _L5
_L5:
            if(mDbType != 1 && mDbType != 2) goto _L8; else goto _L7
_L7:
            mtvfile1.index = mCursor.getInt(index);
            mtvfile1.channelName = mCursor.getString(indexChannelName);
            mtvfile1.programName = mCursor.getString(indexProgramName);
            mtvfile1.filePath = mCursor.getString(indexFilePath);
            mtvfile1.pidOfVideo = mCursor.getInt(indexVPID);
            mtvfile1.pidOfAudio = mCursor.getInt(indexAPID);
            mtvfile1.creationTime = new Date(mCursor.getLong(indexCreationTime));
            mtvfile1.durationOfRecording = mCursor.getInt(indexDuration);
            mtvfile1.fileFormat = mCursor.getInt(indexFileFormat);
            mtvfile1.fileSize = mCursor.getInt(indexFileSize);
            mtvfile1.isLATM = mCursor.getInt(indexIsLATM);
            mtvfile = mtvfile1;
            if(mDbType == 2)
            {
                mtvfile1.index = mtvfile1.index * -1;
                mtvfile = mtvfile1;
            }
_L6:
            mtvfile1 = mtvfile;
            if(mtvfile == null)
                mtvfile1 = null;
            return mtvfile1;
_L8:
            mtvfile = mtvfile1;
            if(mDbType == 3)
            {
                mtvfile1.index = mCursor.getInt(index);
                mtvfile1.channelName = mCursor.getString(indexChannelName);
                mtvfile1.programName = mCursor.getString(indexProgramName);
                mtvfile1.filePath = mCursor.getString(indexFilePath);
                mtvfile1.creationTime = new Date(mCursor.getLong(indexCreationTime));
                mtvfile1.fileFormat = mCursor.getInt(indexFileFormat);
                mtvfile1.fileSize = mCursor.getInt(indexFileSize);
                mtvfile1.index = MtvFileManager.convertToImageDbIndex(mtvfile1.index);
                mtvfile = mtvfile1;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            mCursor.close();
            mCursor = null;
            continue; /* Loop/switch isn't completed */
_L2:
            MtvUtilDebug.High("MtvFileManager", "TvFileBuilder: cursor is null");
            if(true) goto _L6; else goto _L9
_L9:
        }

        public static final int DBTYPE_TV_FILE_EXTMEM = 2;
        public static final int DBTYPE_TV_FILE_PHONEMEM = 1;
        public static final int DBTYPE_TV_IMAGE = 3;
        private boolean bMoveToFirstDone;
        private int index;
        private int indexAPID;
        private int indexChannelName;
        private int indexCreationTime;
        private int indexDuration;
        private int indexFileFormat;
        private int indexFilePath;
        private int indexFileSize;
        private int indexIsLATM;
        private int indexProgramName;
        private int indexVPID;
        private Cursor mCursor;
        private int mDbType;

        public MtvFileManagerTvFileBuilder(SQLiteDatabase sqlitedatabase, int i)
        {
            String s;
            mCursor = null;
            mDbType = 1;
            bMoveToFirstDone = false;
            s = null;
            mDbType = i;
            if(i == 1 || i == 2)
                s = "select rowid, * from tvfiles_dbtable";
            else
            if(i == 3)
                s = "select rowid, * from tvimage_dbtable";
            else
                MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("unsupported dbtype ").append(i).toString());
            if(s != null)
                try
                {
                    mCursor = sqlitedatabase.rawQuery(s, null);
                }
                // Misplaced declaration of an exception variable
                catch(SQLiteDatabase sqlitedatabase)
                {
                    MtvUtilDebug.High("MtvFileManager", "MtvFileManagerTvFileBuilder failed()...");
                    sqlitedatabase.printStackTrace();
                    mCursor = null;
                }
            if(mCursor == null)
                break MISSING_BLOCK_LABEL_456;
            if(mCursor.getCount() != 0) goto _L2; else goto _L1
_L1:
            MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("TvFileBuilder: no entries in this DB !, dbType ").append(i).toString());
            mCursor.close();
            mCursor = null;
_L4:
            return;
_L2:
            if(i == 1 || i == 2)
            {
                index = mCursor.getColumnIndex("rowid");
                indexChannelName = mCursor.getColumnIndex("chName");
                indexProgramName = mCursor.getColumnIndex("proName");
                indexFilePath = mCursor.getColumnIndex("fullFilePath");
                indexVPID = mCursor.getColumnIndex("V_PID");
                indexAPID = mCursor.getColumnIndex("A_PID");
                indexCreationTime = mCursor.getColumnIndex("iCreateTime");
                indexDuration = mCursor.getColumnIndex("iDuration");
                indexFileFormat = mCursor.getColumnIndex("iFileFormat");
                indexFileSize = mCursor.getColumnIndex("iFileSize");
                indexIsLATM = mCursor.getColumnIndex("isLATM");
                return;
            }
            if(i != 3) goto _L4; else goto _L3
_L3:
            index = mCursor.getColumnIndex("rowid");
            indexChannelName = mCursor.getColumnIndex("chName");
            indexProgramName = mCursor.getColumnIndex("proName");
            indexFilePath = mCursor.getColumnIndex("fullFilePath");
            indexCreationTime = mCursor.getColumnIndex("iCreateTime");
            indexFileFormat = mCursor.getColumnIndex("iFileFormat");
            indexFileSize = mCursor.getColumnIndex("iFileSize");
            return;
            MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("TvFileBuider failed. Query [").append(s).append("], dbType ").append(i).toString());
            mCursor = null;
            return;
        }
    }

    private static final class TV_FILE_DB_INFO extends Enum
    {

        public static int getTotalItemsCount()
        {
            return itemsTotalCount;
        }

        public static boolean isDbModified()
        {
            return isDbModified;
        }

        public static void setDBModified(boolean flag)
        {
            isDbModified = flag;
        }

        public static TV_FILE_DB_INFO valueOf(String s)
        {
            return (TV_FILE_DB_INFO)Enum.valueOf(com/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO, s);
        }

        public static TV_FILE_DB_INFO[] values()
        {
            return (TV_FILE_DB_INFO[])$VALUES.clone();
        }

        public int getItemsCount()
        {
            return itemsCount;
        }

        public int getLastItemId()
        {
            return lastItemId;
        }

        public void updateItemsInfo(int i, int j)
        {
            MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append(this).append(" itemsTotalCount : ").append(itemsTotalCount).append(" this.itemsCount : ").append(itemsCount).append(" itemsCount : ").append(i).append(" this.lastItemId ").append(lastItemId).append(" lastItemId ").append(j).toString());
            if(itemsCount != i || lastItemId != j)
            {
                isDbModified = true;
                MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("DB Modified for ").append(this).toString());
            }
            itemsTotalCount = (itemsTotalCount - itemsCount) + i;
            itemsCount = i;
            lastItemId = j;
        }

        private static final TV_FILE_DB_INFO $VALUES[];
        public static final TV_FILE_DB_INFO TV_FILES_EXT;
        public static final TV_FILE_DB_INFO TV_FILES_INT;
        public static final TV_FILE_DB_INFO TV_IMAGES_EXT;
        public static final TV_FILE_DB_INFO TV_IMAGES_INT;
        private static boolean isDbModified = false;
        private static int itemsTotalCount = 0;
        private int itemsCount;
        private int lastItemId;

        static 
        {
            TV_FILES_INT = new TV_FILE_DB_INFO("TV_FILES_INT", 0);
            TV_FILES_EXT = new TV_FILE_DB_INFO("TV_FILES_EXT", 1);
            TV_IMAGES_INT = new TV_FILE_DB_INFO("TV_IMAGES_INT", 2);
            TV_IMAGES_EXT = new TV_FILE_DB_INFO("TV_IMAGES_EXT", 3);
            $VALUES = (new TV_FILE_DB_INFO[] {
                TV_FILES_INT, TV_FILES_EXT, TV_IMAGES_INT, TV_IMAGES_EXT
            });
        }


        private TV_FILE_DB_INFO(String s, int i)
        {
            super(s, i);
            itemsCount = 0;
            lastItemId = 0;
        }
    }


    public MtvFileManager()
    {
    }

    private static int convertFromImageDbIndex(int i)
    {
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("[ImageDB]  input index: ").append(i).append(" hex: ").append(Integer.toHexString(i)).append(" converted to : hex: ").append(Integer.toHexString(i & 0xbfffffff)).append(" int: ").append(i & 0xbfffffff).toString());
        return i & 0xbfffffff;
    }

    private static int convertToImageDbIndex(int i)
    {
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("[ImageDB]  input index: ").append(i).append(" hex: ").append(Integer.toHexString(i)).append(" converted to :").append(Integer.toHexString(i | 0x40000000)).toString());
        return i | 0x40000000;
    }

    public static void deleteTvFile(int i, String s, IMtvAppPlayerOneSeg imtvappplayeroneseg)
        throws MtvFileDBException
    {
        boolean flag1 = true;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("Entered deleteTvFile(), iFileIndex ").append(i).toString());
        if(imtvappplayeroneseg == null)
            throw new MtvFileDBException("Entered deleteTvFile() invalid player ");
        boolean flag = flag1;
        if(mIsImageDBEnabled)
        {
            flag = flag1;
            if(i > 0)
            {
                flag = flag1;
                if(isImageDbIndex(i))
                {
                    flag = false;
                    try
                    {
                        deleteTvImage(i, s, imtvappplayeroneseg);
                    }
                    // Misplaced declaration of an exception variable
                    catch(String s)
                    {
                        s.printStackTrace();
                    }
                }
            }
        }
        if(flag)
        {
            s = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            if(s != null && imtvappplayeroneseg.deleteTVFile(s, i))
                MtvUtilDebug.Low("MtvFileManager", "Successfully deleted the requested TV File ");
            else
                MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("nativeDeleteTVRecFile() is failed, index ").append(i).toString());
        }
        MtvUtilDebug.Low("MtvFileManager", "Exiting deleteTvFile() ");
    }

    public static void deleteTvImage(int i, String s, IMtvAppPlayerOneSeg imtvappplayeroneseg)
        throws MtvFileDBException
    {
        boolean flag1;
        boolean flag2;
        Object obj;
        File file;
        obj = null;
        file = null;
        flag1 = false;
        flag2 = false;
        if(imtvappplayeroneseg == null)
            throw new MtvFileDBException("Entered deleteTvFile() invalid player ");
        if(mIsImageDBEnabled && isImageDbIndex(i)) goto _L2; else goto _L1
_L1:
        deleteTvFile(i, s, imtvappplayeroneseg);
_L4:
        return;
_L2:
        boolean flag;
        if(s == null)
        {
            MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("illegal param - filePath is null, index: ").append(i).toString());
            return;
        }
        i = convertFromImageDbIndex(i);
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("deleteTvImage: file index: ").append(i).append("  filePath: ").append(s).toString());
        Object obj1;
        if(s.contains("PhMem") || s.contains("Phone") || s.contains("sdcard"))
            obj1 = MTV_FILE_MANAGER_TV_IMAGES_DB_NAME;
        else
            obj1 = "/mnt/extSdCard/tvimages_database.db";
        imtvappplayeroneseg = file;
        obj1 = SQLiteDatabase.openDatabase(((String) (obj1)), null, 0);
        imtvappplayeroneseg = ((IMtvAppPlayerOneSeg) (obj1));
        obj = obj1;
        ((SQLiteDatabase) (obj1)).execSQL((new StringBuilder()).append("DELETE FROM tvimage_dbtable WHERE ROWID == ").append(i).toString());
        imtvappplayeroneseg = ((IMtvAppPlayerOneSeg) (obj1));
        obj = obj1;
        file = new File(s);
        flag = flag2;
        imtvappplayeroneseg = ((IMtvAppPlayerOneSeg) (obj1));
        obj = obj1;
        if(!file.exists())
            break MISSING_BLOCK_LABEL_259;
        flag = flag2;
        imtvappplayeroneseg = ((IMtvAppPlayerOneSeg) (obj1));
        obj = obj1;
        if(!file.canWrite())
            break MISSING_BLOCK_LABEL_259;
        imtvappplayeroneseg = ((IMtvAppPlayerOneSeg) (obj1));
        obj = obj1;
        flag = file.delete();
        if(obj1 != null)
            ((SQLiteDatabase) (obj1)).close();
_L5:
        if(!flag)
        {
            MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("deleteTvImage: failed to delete file: ").append(s).toString());
            return;
        }
        if(true) goto _L4; else goto _L3
_L3:
        SQLiteException sqliteexception;
        sqliteexception;
        obj = imtvappplayeroneseg;
        MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("deleteTvImage failed(), file index: ").append(i).toString());
        obj = imtvappplayeroneseg;
        sqliteexception.printStackTrace();
        if(imtvappplayeroneseg != null)
            imtvappplayeroneseg.close();
        flag = flag1;
          goto _L5
        s;
        if(obj != null)
            ((SQLiteDatabase) (obj)).close();
        throw s;
    }

    private static String generateFileName(int i, Date date)
    {
        String s;
        String s1;
        s1 = null;
        s = null;
        if(i != 0 && i != 1) goto _L2; else goto _L1
_L1:
        s1 = "record";
        s = ".ts";
_L4:
        date = (new SimpleDateFormat("yyyyMMddHHmmssS")).format(date);
        return (new StringBuilder()).append(s1).append(date).append(s).toString();
_L2:
        if(i == 2)
        {
            s1 = "capture";
            s = ".jpg";
        } else
        if(i == 3)
        {
            s1 = "thumb";
            s = ".thm";
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static MtvFile[] getAvailableTVRecFiles()
    {
        int k;
        Cursor cursor;
        k = 0;
        cursor = null;
        if(mIsImageDBEnabled)
            return getAvailableTVRecFilesEx(false);
        MtvUtilDebug.Low("MtvFileManager", " Entered getAvailableTVRecFiles() ");
        if(vAvailableTvFiles == null) goto _L2; else goto _L1
_L1:
        Object obj;
        if(vAvailableTvFiles.size() != 0)
            vAvailableTvFiles.clear();
        MtvUtilDebug.Low("MtvFileManager", "nativeUpdateTvFile() Success");
        int i;
        int l;
        int j1;
        int l1;
        int i2;
        int k2;
        int l2;
        int j3;
        int l3;
        int j4;
        int l4;
        MtvFile mtvfile;
        try
        {
            obj = SQLiteDatabase.openDatabase(MTV_FILE_MANAGER_TV_FILE_DB_NAME, null, 1);
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFiles() there is no TvFiles");
            obj = null;
        }
        if(obj == null) goto _L4; else goto _L3
_L3:
        cursor = ((SQLiteDatabase) (obj)).rawQuery("select rowid, * from tvfiles_dbtable", null);
        i = cursor.getColumnIndex("rowid");
        l = cursor.getColumnIndex("chName");
        j1 = cursor.getColumnIndex("proName");
        l1 = cursor.getColumnIndex("fullFilePath");
        i2 = cursor.getColumnIndex("V_PID");
        k2 = cursor.getColumnIndex("A_PID");
        l2 = cursor.getColumnIndex("iCreateTime");
        j3 = cursor.getColumnIndex("iDuration");
        l3 = cursor.getColumnIndex("iFileFormat");
        j4 = cursor.getColumnIndex("iFileSize");
        l4 = cursor.getColumnIndex("isLATM");
        if(cursor.moveToFirst())
        {
            k = cursor.getCount();
            MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFiles() iItemSize : ").append(k).toString());
            do
            {
                mtvfile = new MtvFile();
                mtvfile.index = cursor.getInt(i);
                mtvfile.channelName = cursor.getString(l);
                mtvfile.programName = cursor.getString(j1);
                mtvfile.filePath = cursor.getString(l1);
                mtvfile.pidOfVideo = cursor.getInt(i2);
                mtvfile.pidOfAudio = cursor.getInt(k2);
                mtvfile.creationTime = new Date(cursor.getLong(l2));
                mtvfile.durationOfRecording = cursor.getInt(j3);
                mtvfile.fileFormat = cursor.getInt(l3);
                mtvfile.fileSize = cursor.getInt(j4);
                mtvfile.isLATM = cursor.getInt(l4);
                vAvailableTvFiles.add(mtvfile);
            } while(cursor.moveToNext());
        } else
        {
            MtvUtilDebug.High("MtvFileManager", "getAvailableTvFiles() mCursor.moveToFirst() failed");
        }
        cursor.close();
        ((SQLiteDatabase) (obj)).close();
        if(MtvUtilMemoryStatus.isExternalMemoryAvailable())
            try
            {
                obj = SQLiteDatabase.openDatabase("/mnt/extSdCard/external_tvfiles.db", null, 1);
            }
            // Misplaced declaration of an exception variable
            catch(Object obj)
            {
                if(!MtvUtilDebug.isReleaseMode())
                    MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFiles(): openDatabase /mnt/extSdCard/external_tvfiles.db failed");
                obj = null;
            }
        else
            MtvUtilDebug.Low("MtvFileManager", "No SDcard available. Cannot openDatabase /mnt/extSdCard/external_tvfiles.db");
        if(obj != null) goto _L6; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFiles() there is no TvFiles in sd card");
        obj = new MtvFile[k];
        vAvailableTvFiles.copyInto(((Object []) (obj)));
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFiles() End");
_L13:
        MtvUtilDebug.Low("MtvFileManager", " Exiting getAvailableTVRecFiles() ");
        return ((MtvFile []) (obj));
_L6:
        int j;
        boolean flag;
        int i3;
        int k3;
        int i4;
        int k4;
        int i5;
        int j5;
        int k5;
        int l5;
        int i6;
        int j6;
        int k6;
        cursor = ((SQLiteDatabase) (obj)).rawQuery("select rowid, * from tvfiles_dbtable", null);
        i3 = cursor.getColumnIndex("rowid");
        k3 = cursor.getColumnIndex("chName");
        i4 = cursor.getColumnIndex("proName");
        k4 = cursor.getColumnIndex("fullFilePath");
        i5 = cursor.getColumnIndex("V_PID");
        j5 = cursor.getColumnIndex("A_PID");
        k5 = cursor.getColumnIndex("iCreateTime");
        l5 = cursor.getColumnIndex("iDuration");
        i6 = cursor.getColumnIndex("iFileFormat");
        j6 = cursor.getColumnIndex("iFileSize");
        k6 = cursor.getColumnIndex("isLATM");
        j = 0;
        flag = false;
        if(!cursor.moveToFirst()) goto _L8; else goto _L7
_L7:
        int j2;
        j2 = cursor.getCount();
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFiles() iItemSize_ext : ").append(j2).toString());
        j = ((flag) ? 1 : 0);
_L10:
        int k1;
        boolean flag2;
        MtvFile mtvfile1;
        Date date;
        mtvfile1 = new MtvFile();
        mtvfile1.index = cursor.getInt(i3) * -1;
        mtvfile1.channelName = cursor.getString(k3);
        mtvfile1.programName = cursor.getString(i4);
        mtvfile1.filePath = cursor.getString(k4);
        mtvfile1.pidOfVideo = cursor.getInt(i5);
        mtvfile1.pidOfAudio = cursor.getInt(j5);
        date = new Date(cursor.getLong(k5));
        mtvfile1.creationTime = date;
        mtvfile1.durationOfRecording = cursor.getInt(l5);
        mtvfile1.fileFormat = cursor.getInt(i6);
        mtvfile1.fileSize = cursor.getInt(j6);
        mtvfile1.isLATM = cursor.getInt(k6);
        flag2 = false;
        k1 = j;
_L11:
        boolean flag1 = flag2;
        int i1 = j;
        if(k1 < vAvailableTvFiles.size())
        {
            if(((MtvFile)vAvailableTvFiles.get(k1)).getCreationTime().getTime() <= date.getTime())
                break MISSING_BLOCK_LABEL_1050;
            vAvailableTvFiles.add(k1, mtvfile1);
            i1 = k1 + 1;
            flag1 = true;
        }
        if(!flag1)
            vAvailableTvFiles.add(mtvfile1);
        j = i1;
        if(cursor.moveToNext()) goto _L10; else goto _L9
_L9:
        j = j2;
_L8:
        cursor.close();
        ((SQLiteDatabase) (obj)).close();
        obj = new MtvFile[k + j];
        vAvailableTvFiles.copyInto(((Object []) (obj)));
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFiles() End");
        continue; /* Loop/switch isn't completed */
        k1++;
          goto _L11
_L4:
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFiles() there is no TvFiles");
        obj = cursor;
        continue; /* Loop/switch isn't completed */
_L2:
        MtvUtilDebug.Low("MtvFileManager", " vAvilableTVFiles is null.. Cannot get the updated files list ");
        obj = cursor;
        if(true) goto _L13; else goto _L12
_L12:
    }

    public static void getAvailableTVRecFilesEx(MtvFileManagerListener mtvfilemanagerlistener)
    {
        if(mtvfilemanagerlistener == null)
            throw new IllegalArgumentException("MtvFileManagerListener listener cannot be null...");
        updateTvFilesDBInfo();
        if(availableTvFiles != null && !TV_FILE_DB_INFO.isDbModified())
        {
            MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFilesEx(MtvFileManagerListener) :: No Change in DB. Returning the old List.... ");
            mtvfilemanagerlistener.onPostUpdate(availableTvFiles, false);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFilesEx(MtvFileManagerListener) :: DB updated... Computing The whole list in new Thread...");
            (new Thread(new MtvFileManagerRunnable(mtvfilemanagerlistener))).start();
            return;
        }
    }

    public static MtvFile[] getAvailableTVRecFilesEx(boolean flag)
    {
        com/samsung/sec/mtv/provider/MtvFileManager;
        JVM INSTR monitorenter ;
        if(!flag) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvFileManager", "updateTvFilesDBInfo already called !");
_L5:
        if(TV_FILE_DB_INFO.getTotalItemsCount() != 0) goto _L4; else goto _L3
_L3:
        Object obj;
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFilesEx() :: No TvFiles found !");
        availableTvFiles = null;
        obj = availableTvFiles;
_L8:
        com/samsung/sec/mtv/provider/MtvFileManager;
        JVM INSTR monitorexit ;
        return ((MtvFile []) (obj));
_L2:
        updateTvFilesDBInfo();
          goto _L5
        obj;
        throw obj;
_L4:
        if(availableTvFiles == null || TV_FILE_DB_INFO.isDbModified())
            break MISSING_BLOCK_LABEL_142;
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFilesEx() :: No Change in DB. Returning the old List.... ");
        int i = 0;
_L7:
        if(i >= availableTvFiles.length)
            break; /* Loop/switch isn't completed */
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("AvailableTVRecFiles: #").append(i).append(" ").append(availableTvFiles[i]).toString());
        i++;
        if(true) goto _L7; else goto _L6
_L6:
        obj = availableTvFiles;
          goto _L8
        int j = 0;
label0:
        {
            if(mIsImageDBEnabled)
                break label0;
            obj = getAvailableTVRecFiles();
        }
          goto _L8
        MtvUtilDebug.Low("MtvFileManager", " Entered getAvailableTVRecFilesEx() ");
        if(vAvailableTvFiles == null) goto _L10; else goto _L9
_L9:
        if(vAvailableTvFiles.size() != 0)
            vAvailableTvFiles.clear();
_L20:
        obj = vAvailableTvFiles;
        if(obj == null) goto _L12; else goto _L11
_L11:
        obj = SQLiteDatabase.openDatabase(MTV_FILE_MANAGER_TV_FILE_DB_NAME, null, 1);
_L21:
        Object obj1 = obj;
        if(obj == null) goto _L14; else goto _L13
_L13:
        obj1 = new MtvFileManagerTvFileBuilder(((SQLiteDatabase) (obj)), 1);
        if(obj1 == null) goto _L16; else goto _L15
_L15:
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFilesEx() opened db: ").append(MTV_FILE_MANAGER_TV_FILE_DB_NAME).append(" ItemSize is: ").append(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize()).toString());
        if(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize() <= 0) goto _L18; else goto _L17
_L17:
        MtvFile mtvfile = ((MtvFileManagerTvFileBuilder) (obj1)).getNextTvFile();
        if(mtvfile == null) goto _L18; else goto _L19
_L19:
        vAvailableTvFiles.add(mtvfile);
          goto _L17
_L10:
        vAvailableTvFiles = new Vector();
          goto _L20
        obj;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFilesEx() open failed for db: ").append(MTV_FILE_MANAGER_TV_FILE_DB_NAME).toString());
        obj = null;
          goto _L21
_L18:
        ((MtvFileManagerTvFileBuilder) (obj1)).close();
_L16:
        ((SQLiteDatabase) (obj)).close();
        obj1 = null;
_L14:
        flag = MtvUtilMemoryStatus.isExternalMemoryAvailable();
        if(!flag) goto _L23; else goto _L22
_L22:
        obj = SQLiteDatabase.openDatabase("/mnt/extSdCard/external_tvfiles.db", null, 1);
_L26:
        if(obj == null)
            break MISSING_BLOCK_LABEL_508;
        obj1 = new MtvFileManagerTvFileBuilder(((SQLiteDatabase) (obj)), 2);
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_503;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFilesEx() opened db: /mnt/extSdCard/external_tvfiles.db ItemSize is: ").append(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize()).toString());
        if(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize() <= 0)
            break; /* Loop/switch isn't completed */
_L24:
        mtvfile = ((MtvFileManagerTvFileBuilder) (obj1)).getNextTvFile();
        if(mtvfile == null)
            break; /* Loop/switch isn't completed */
        vAvailableTvFiles.add(mtvfile);
          goto _L24
        obj;
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFilesEx() open failed for db: /mnt/extSdCard/external_tvfiles.db");
        obj = null;
        continue; /* Loop/switch isn't completed */
_L23:
        MtvUtilDebug.Low("MtvFileManager", "No SDcard available. Cannot openDatabase /mnt/extSdCard/external_tvfiles.db");
        obj = obj1;
        if(true) goto _L26; else goto _L25
_L25:
        ((MtvFileManagerTvFileBuilder) (obj1)).close();
        ((SQLiteDatabase) (obj)).close();
        obj = SQLiteDatabase.openDatabase(MTV_FILE_MANAGER_TV_IMAGES_DB_NAME, null, 1);
_L29:
        if(obj == null)
            break MISSING_BLOCK_LABEL_658;
        obj1 = new MtvFileManagerTvFileBuilder(((SQLiteDatabase) (obj)), 3);
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_653;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFilesEx() opened db: ").append(MTV_FILE_MANAGER_TV_IMAGES_DB_NAME).append(" ItemSize is: ").append(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize()).toString());
        if(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize() <= 0)
            break; /* Loop/switch isn't completed */
_L27:
        mtvfile = ((MtvFileManagerTvFileBuilder) (obj1)).getNextTvFile();
        if(mtvfile == null)
            break; /* Loop/switch isn't completed */
        vAvailableTvFiles.add(mtvfile);
          goto _L27
        obj;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFilesEx() open failed for db: ").append(MTV_FILE_MANAGER_TV_IMAGES_DB_NAME).toString());
        obj = null;
        if(true) goto _L29; else goto _L28
_L28:
        ((MtvFileManagerTvFileBuilder) (obj1)).close();
        ((SQLiteDatabase) (obj)).close();
        obj = SQLiteDatabase.openDatabase("/mnt/extSdCard/tvimages_database.db", null, 1);
_L32:
        if(obj == null)
            break MISSING_BLOCK_LABEL_776;
        obj1 = new MtvFileManagerTvFileBuilder(((SQLiteDatabase) (obj)), 3);
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_771;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("getAvailableTVRecFilesEx() opened db: /mnt/extSdCard/tvimages_database.db ItemSize is: ").append(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize()).toString());
        if(((MtvFileManagerTvFileBuilder) (obj1)).getItemSize() <= 0)
            break; /* Loop/switch isn't completed */
_L30:
        mtvfile = ((MtvFileManagerTvFileBuilder) (obj1)).getNextTvFile();
        if(mtvfile == null)
            break; /* Loop/switch isn't completed */
        vAvailableTvFiles.add(mtvfile);
          goto _L30
        obj;
        MtvUtilDebug.Low("MtvFileManager", "getAvailableTVRecFilesEx() open failed for db: /mnt/extSdCard/tvimages_database.db");
        obj = null;
        if(true) goto _L32; else goto _L31
_L31:
        ((MtvFileManagerTvFileBuilder) (obj1)).close();
        ((SQLiteDatabase) (obj)).close();
        int k;
        vAvailableTvFiles.removeAll(Collections.singleton(null));
        k = vAvailableTvFiles.size();
        if(k <= 0) goto _L34; else goto _L33
_L33:
        Collections.sort(vAvailableTvFiles, new MtvFileComparator());
        j = k;
        if(k <= 0) goto _L36; else goto _L35
_L35:
        availableTvFiles = new MtvFile[k];
        if(availableTvFiles != null)
            vAvailableTvFiles.copyInto(availableTvFiles);
        break MISSING_BLOCK_LABEL_953;
_L38:
        j = k;
        if(i >= availableTvFiles.length) goto _L36; else goto _L37
_L37:
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("New AvailableTVRecFiles #").append(i).append(" ").append(availableTvFiles[i]).toString());
        i++;
          goto _L38
_L34:
        MtvUtilDebug.High("MtvFileManager", "getAvailableTVRecFilesEx(): total file count from all DBs = 0 (NO FILES FOUND)");
        j = k;
_L36:
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append(" Exiting getAvailableTVRecFilesEx(), totalCount read: ").append(j).toString());
        obj = availableTvFiles;
          goto _L8
_L12:
        MtvUtilDebug.Low("MtvFileManager", " vAvilableTVFiles is null.. Cannot get the updated files list ");
          goto _L36
        i = 0;
          goto _L38
    }

    private static String getCaptureFilePath(int i)
    {
        if(i == 1)
            return "sdcard/image/MyTvFiles/";
        else
            return "/mnt/extSdCard/image/MyTvFiles/";
    }

    private static int getCountCoulmn(Cursor cursor)
    {
        int i = 0;
        if(cursor != null)
        {
            cursor.moveToFirst();
            i = cursor.getInt(0);
        }
        return i;
    }

    public static int getFileCount(int i)
    {
        Object obj1 = null;
        MtvFileManagerTvFileBuilder mtvfilemanagertvfilebuilder = null;
        boolean flag1 = false;
        boolean flag = false;
        Object obj;
        if(1 == i)
        {
            obj = MTV_FILE_MANAGER_TV_FILE_DB_NAME;
        } else
        {
            obj = mtvfilemanagertvfilebuilder;
            if(i == 0)
            {
                obj = mtvfilemanagertvfilebuilder;
                if(MtvUtilMemoryStatus.isExternalMemoryAvailable())
                    obj = "/mnt/extSdCard/external_tvfiles.db";
            }
        }
        if(obj != null)
            try
            {
                obj1 = SQLiteDatabase.openDatabase(((String) (obj)), null, 1);
            }
            catch(SQLiteException sqliteexception)
            {
                StringBuilder stringbuilder = (new StringBuilder()).append("getFileCount() - Cannot open DB [").append(((String) (obj))).append("] from [");
                if(i == 1)
                    sqliteexception = "Phone";
                else
                    sqliteexception = "SDcard";
                MtvUtilDebug.Low("MtvFileManager", stringbuilder.append(sqliteexception).append("] memory").toString());
                sqliteexception = null;
            }
        i = ((flag1) ? 1 : 0);
        if(obj1 != null)
        {
            mtvfilemanagertvfilebuilder = new MtvFileManagerTvFileBuilder(((SQLiteDatabase) (obj1)), 2);
            i = ((flag) ? 1 : 0);
            if(mtvfilemanagertvfilebuilder != null)
            {
                i = mtvfilemanagertvfilebuilder.getItemSize();
                MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("Total [").append(i).append("] entries in [").append(((String) (obj))).append("]").toString());
                mtvfilemanagertvfilebuilder.close();
            }
            ((SQLiteDatabase) (obj1)).close();
        }
        return i;
    }

    private static int getMaxIdColumn(Cursor cursor)
    {
        int i = 0;
        if(cursor != null)
        {
            cursor.moveToFirst();
            i = cursor.getInt(0);
        }
        return i;
    }

    private static MtvFile getMtvFileFromAvailable(int i, String s)
    {
        Object obj = null;
        int j = 0;
        do
        {
label0:
            {
                MtvFile mtvfile = obj;
                if(j < vAvailableTvFiles.size())
                {
                    if(i != ((MtvFile)vAvailableTvFiles.get(j)).getIndex() || !s.equals(((MtvFile)vAvailableTvFiles.get(j)).getFilePath()))
                        break label0;
                    mtvfile = (MtvFile)vAvailableTvFiles.get(j);
                }
                return mtvfile;
            }
            j++;
        } while(true);
    }

    private static String getRecThumbPath(int i)
    {
        if(i == 1)
            return "sdcard/video/MyTvFiles/thumbnails/";
        else
            return "/mnt/extSdCard/video/MyTvFiles/thumbnails/";
    }

    private static void insertOneSegTvFile(MtvFile mtvfile)
        throws MtvFileDBException, SQLiteException
    {
        if(!mIsImageDBEnabled)
            break MISSING_BLOCK_LABEL_44;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("separate DB for captured images is enabled...").append(MTV_FILE_MANAGER_TV_IMAGES_DB_NAME).toString());
        insertOneSegTvImage(mtvfile);
_L1:
        return;
        mtvfile;
        mtvfile.printStackTrace();
        return;
        if(mtvfile != null)
        {
            if(mtvfile.getFilePath().regionMatches(false, 0, "Phone", 0, "Phone".length()) || mtvfile.getFilePath().regionMatches(false, 0, MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION, 0, MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION.length()) || mtvfile.getFilePath().regionMatches(false, 0, MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION, 0, MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION.length()))
            {
                SQLiteDatabase sqlitedatabase;
                try
                {
                    sqlitedatabase = SQLiteDatabase.openOrCreateDatabase(MTV_FILE_MANAGER_TV_FILE_DB_NAME, null);
                }
                // Misplaced declaration of an exception variable
                catch(MtvFile mtvfile)
                {
                    MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvFile() fail to create db");
                    throw new MtvFileDBException("insertOneSegTvFile() fail to create db");
                }
                if(sqlitedatabase == null)
                {
                    MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvFile() fail to create db");
                    throw new MtvFileDBException("insertOneSegTvFile() fail to create db");
                }
                sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS tvfiles_dbtable (chName TEXT, proName TEXT, fullFilePath TEXT, V_PID INTEGER, A_PID INTEGER, iCreateTime INTEGER, iDuration INTEGER, iFileFormat INTEGER, iFileSize INTEGER, isLATM INTEGER);");
                Date date = mtvfile.getCreationTime();
                if(mtvfile.getChannelName() == null || mtvfile.getProgramName() == null || mtvfile.getFilePath() == null || date == null || mtvfile.getFileFormat() == -1 || mtvfile.getFileSize() == -1L)
                {
                    MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvFile() the parameter is invalid");
                    sqlitedatabase.close();
                    throw new MtvFileDBException("insertOneSegTvFile() the parameter is invalid");
                }
                if(mtvfile.getFileFormat() == 2)
                    sqlitedatabase.execSQL((new StringBuilder()).append("INSERT INTO tvfiles_dbtable VALUES (\"").append(mtvfile.getChannelName()).append("\",\"").append(mtvfile.getProgramName()).append("\",\"").append(mtvfile.getFilePath()).append("\", -1, -1, ").append(date.getTime()).append(", -1, ").append(mtvfile.getFileFormat()).append(",").append(mtvfile.getFileSize()).append(", 0);").toString());
                else
                    sqlitedatabase.execSQL((new StringBuilder()).append("INSERT INTO tvfiles_dbtable VALUES (\"").append(mtvfile.getChannelName()).append("\",\"").append(mtvfile.getProgramName()).append("\",\"").append(mtvfile.getFilePath()).append("\",").append(mtvfile.getPidOfVideo()).append(",").append(mtvfile.getPidOfAudio()).append(",").append(date.getTime()).append(",").append(mtvfile.getDurationOfRecording()).append(",").append(mtvfile.getFileFormat()).append(",").append(mtvfile.getFileSize()).append(");").toString());
                sqlitedatabase.close();
                return;
            }
            if(mtvfile.getFilePath().regionMatches(false, 0, "SDCard", 0, "SDCard".length()) || mtvfile.getFilePath().regionMatches(false, 0, "/mnt/extSdCard/image/MyTvFiles/", 0, "/mnt/extSdCard/image/MyTvFiles/".length()) || mtvfile.getFilePath().regionMatches(false, 0, "/mnt/extSdCard/video/MyTvFiles/", 0, "/mnt/extSdCard/video/MyTvFiles/".length()))
            {
                SQLiteDatabase sqlitedatabase1;
                try
                {
                    sqlitedatabase1 = SQLiteDatabase.openOrCreateDatabase("/mnt/extSdCard/external_tvfiles.db", null);
                }
                // Misplaced declaration of an exception variable
                catch(MtvFile mtvfile)
                {
                    MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvFile() fail to create db in Ext memory");
                    throw new MtvFileDBException("insertOneSegTvFile() fail to create db in Ext memory");
                }
                if(sqlitedatabase1 == null)
                {
                    MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvFile() fail to create db in Ext memory");
                    throw new MtvFileDBException("insertOneSegTvFile() fail to create db in Ext memory");
                }
                sqlitedatabase1.execSQL("CREATE TABLE IF NOT EXISTS tvfiles_dbtable (chName TEXT, proName TEXT, fullFilePath TEXT, V_PID INTEGER, A_PID INTEGER, iCreateTime INTEGER, iDuration INTEGER, iFileFormat INTEGER, iFileSize INTEGER, isLATM INTEGER);");
                Date date1 = mtvfile.getCreationTime();
                if(mtvfile.getChannelName() == null || mtvfile.getProgramName() == null || mtvfile.getFilePath() == null || date1 == null || mtvfile.getFileFormat() == -1 || mtvfile.getFileSize() == -1L)
                {
                    MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvFile() the parameter is invalid");
                    sqlitedatabase1.close();
                    throw new MtvFileDBException("insertOneSegTvFile() the parameter is invalid");
                }
                if(mtvfile.getFileFormat() == 2)
                    sqlitedatabase1.execSQL((new StringBuilder()).append("INSERT INTO tvfiles_dbtable VALUES (\"").append(mtvfile.getChannelName()).append("\",\"").append(mtvfile.getProgramName()).append("\",\"").append(mtvfile.getFilePath()).append("\", -1, -1, ").append(date1.getTime()).append(", -1, ").append(mtvfile.getFileFormat()).append(",").append(mtvfile.getFileSize()).append(", 0);").toString());
                else
                    sqlitedatabase1.execSQL((new StringBuilder()).append("INSERT INTO tvfiles_dbtable VALUES (\"").append(mtvfile.getChannelName()).append("\",\"").append(mtvfile.getProgramName()).append("\",\"").append(mtvfile.getFilePath()).append("\",").append(mtvfile.getPidOfVideo()).append(",").append(mtvfile.getPidOfAudio()).append(",").append(date1.getTime()).append(",").append(mtvfile.getDurationOfRecording()).append(",").append(mtvfile.getFileFormat()).append(",").append(mtvfile.getFileSize()).append(");").toString());
                sqlitedatabase1.close();
                return;
            }
        } else
        {
            throw new MtvFileDBException("The parameter is null");
        }
          goto _L1
    }

    public static void insertOneSegTvImage(MtvFile mtvfile)
        throws MtvFileDBException, SQLiteException
    {
        Object obj;
        if(!mIsImageDBEnabled)
        {
            MtvUtilDebug.High("MtvFileManager", "separate DB for captured images is NOT enabled... use insertOneSegTvFile directly!");
            insertOneSegTvFile(mtvfile);
            return;
        }
        if(mtvfile == null)
        {
            MtvUtilDebug.High("MtvFileManager", "input param is null, nothing to save!");
            return;
        }
        if(mtvfile.getFileFormat() != 2)
        {
            MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("unsupported format ").append(mtvfile.getFileFormat()).toString());
            throw new MtvFileDBException("unsupported file format for db storage");
        }
        if(mtvfile.getChannelName() == null || mtvfile.getFilePath() == null || mtvfile.getFileSize() == -1L || mtvfile.getCreationTime() == null)
        {
            MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("insertOneSegTvImage() the parameter is invalid and the channelname is: ").append(mtvfile.getChannelName()).toString());
            throw new MtvFileDBException("insertOneSegTvImage() the parameter is invalid");
        }
        obj = mtvfile.getFilePath();
        if(((String) (obj)).contains("PhMem") || ((String) (obj)).contains("Phone") || ((String) (obj)).contains("sdcard"))
        {
            MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvImage()  - to phone memory");
            obj = MTV_FILE_MANAGER_TV_IMAGES_DB_NAME;
        } else
        {
            MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvImage()  - to SD card");
            obj = "/mnt/extSdCard/tvimages_database.db";
        }
        try
        {
            obj = SQLiteDatabase.openOrCreateDatabase(((String) (obj)), null);
        }
        // Misplaced declaration of an exception variable
        catch(MtvFile mtvfile)
        {
            MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvImage() fail to create db");
            throw new MtvFileDBException("insertOneSegTvImage() fail to create db");
        }
        if(obj == null)
        {
            MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvFile() fail to create db");
            throw new MtvFileDBException("insertOneSegTvFile() fail to create db");
        }
        ((SQLiteDatabase) (obj)).execSQL("CREATE TABLE IF NOT EXISTS tvimage_dbtable (chName TEXT, proName TEXT, fullFilePath TEXT, iCreateTime INTEGER, iFileFormat INTEGER, iFileSize INTEGER);");
        mtvfile = (new StringBuilder()).append("INSERT INTO tvimage_dbtable VALUES (\"").append(mtvfile.getChannelName()).append("\",\"").append(mtvfile.getProgramName()).append("\",\"").append(mtvfile.getFilePath()).append("\", ").append(mtvfile.getCreationTime().getTime()).append(",").append(mtvfile.getFileFormat()).append(",").append(mtvfile.getFileSize()).append(");").toString();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvFileManager", mtvfile);
        ((SQLiteDatabase) (obj)).execSQL(mtvfile);
        if(obj != null)
            ((SQLiteDatabase) (obj)).close();
        return;
        mtvfile;
        MtvUtilDebug.Low("MtvFileManager", "insertOneSegTvImage() failed");
        if(obj != null)
            ((SQLiteDatabase) (obj)).close();
        return;
        mtvfile;
        if(obj != null)
            ((SQLiteDatabase) (obj)).close();
        throw mtvfile;
    }

    private static boolean isImageDbIndex(int i)
    {
        return (i & 0x40000000) == 0x40000000;
    }

    public static boolean renameTvFile(int i, String s, IMtvAppPlayerOneSeg imtvappplayeroneseg, String s1)
        throws MtvFileDBException
    {
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append(" Entered renameTvFile(), iFileIndex[").append(i).append("] renameString[").append(s1).append("]").toString());
        boolean flag1 = true;
        boolean flag3 = false;
        if(imtvappplayeroneseg == null)
            throw new MtvFileDBException("Entered renameTvFile() invalid player ");
        boolean flag2 = flag3;
        boolean flag = flag1;
        if(mIsImageDBEnabled)
        {
            flag2 = flag3;
            flag = flag1;
            if(i > 0)
            {
                flag2 = flag3;
                flag = flag1;
                if(isImageDbIndex(i))
                {
                    flag = false;
                    try
                    {
                        flag2 = renameTvImage(i, s, imtvappplayeroneseg, s1);
                    }
                    // Misplaced declaration of an exception variable
                    catch(IMtvAppPlayerOneSeg imtvappplayeroneseg)
                    {
                        imtvappplayeroneseg.printStackTrace();
                        flag2 = flag3;
                    }
                }
            }
        }
        flag3 = flag2;
        if(flag)
        {
            imtvappplayeroneseg = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            flag3 = flag2;
            if(imtvappplayeroneseg != null)
            {
                flag3 = flag2;
                if(imtvappplayeroneseg.getComponents() != null)
                {
                    flag3 = flag2;
                    if(imtvappplayeroneseg.getComponents().getFile() != null)
                        flag3 = imtvappplayeroneseg.getComponents().getFile().renameTVFile(i, s1);
                }
            }
        }
        if(flag3)
        {
            imtvappplayeroneseg = getMtvFileFromAvailable(i, s);
            imtvappplayeroneseg.setProgramName(s1);
            udpateAvilableFilesbyFileIndex(i, s, imtvappplayeroneseg);
        }
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("Exiting renameTvFile() with ").append(flag3).toString());
        return flag3;
    }

    private static boolean renameTvImage(int i, String s, IMtvAppPlayerOneSeg imtvappplayeroneseg, String s1)
        throws MtvFileDBException
    {
        boolean flag;
        Object obj1 = null;
        Object obj2 = null;
        if(imtvappplayeroneseg == null)
            throw new MtvFileDBException("Entered renameTvImage() invalid player ");
        if(s == null)
        {
            MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("illegal param - filePath is null, index: ").append(i).toString());
            return false;
        }
        i = convertFromImageDbIndex(i);
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("renameTvImage: file index: ").append(i).append("  filePath: ").append(s).toString());
        Object obj;
        if(s.contains("PhMem") || s.contains("Phone") || s.contains("sdcard"))
            obj = MTV_FILE_MANAGER_TV_IMAGES_DB_NAME;
        else
            obj = "/mnt/extSdCard/tvimages_database.db";
        s = obj2;
        imtvappplayeroneseg = obj1;
        obj = SQLiteDatabase.openDatabase(((String) (obj)), null, 0);
        s = ((String) (obj));
        imtvappplayeroneseg = ((IMtvAppPlayerOneSeg) (obj));
        ((SQLiteDatabase) (obj)).execSQL((new StringBuilder()).append("UPDATE tvimage_dbtable SET proName = \"").append(s1).append("\"").append(" WHERE ROWID == ").append(i).toString());
        flag = true;
        if(obj != null)
            ((SQLiteDatabase) (obj)).close();
_L2:
        MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("renameTvImage: file:").append(i).append(" bRetVal:").append(flag).toString());
        return flag;
        s1;
        imtvappplayeroneseg = s;
        MtvUtilDebug.High("MtvFileManager", (new StringBuilder()).append("renameTvImage failed(), file index: ").append(i).toString());
        flag = false;
        imtvappplayeroneseg = s;
        s1.printStackTrace();
        if(s != null)
            s.close();
        if(true) goto _L2; else goto _L1
_L1:
        s;
        if(imtvappplayeroneseg != null)
            imtvappplayeroneseg.close();
        throw s;
    }

    public static void saveFile(int i, Bitmap bitmap, MtvFile mtvfile)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        String s;
        obj2 = null;
        obj3 = null;
        int j;
        boolean flag;
        ByteBuffer bytebuffer;
        FileInputStream fileinputstream;
        File file;
        if(mtvfile == null)
            j = 2;
        else
            j = mtvfile.fileFormat;
        obj = obj3;
        obj1 = obj2;
        j;
        JVM INSTR tableswitch 0 2: default 48
    //                   0 56
    //                   1 834
    //                   2 881;
           goto _L1 _L2 _L3 _L4
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        obj1 = obj2;
        obj = obj3;
_L9:
        s = (new StringBuilder()).append(obj).append(((String) (obj1))).toString();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile: filePath=").append(obj).append(" fileName=").append(((String) (obj1))).toString());
        if(obj != null && !((File) (obj)).exists())
            ((File) (obj)).mkdirs();
        file = new File(((File) (obj)), ((String) (obj1)));
        try
        {
            if(file.exists())
                file.delete();
            file.createNewFile();
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile File creation fail [").append(obj).append("]").toString());
            ((IOException) (obj)).printStackTrace();
        }
        bytebuffer = null;
        fileinputstream = null;
        obj3 = null;
        obj2 = obj3;
        obj = bytebuffer;
        obj1 = fileinputstream;
        MtvUtilDebug.Low("TAG", "saveFile: create new fileoutputstream");
        obj2 = obj3;
        obj = bytebuffer;
        obj1 = fileinputstream;
        obj3 = new FileOutputStream(file);
        obj = obj3;
        obj1 = obj3;
        flag = bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, ((java.io.OutputStream) (obj3)));
        obj = obj3;
        obj1 = obj3;
        ((FileOutputStream) (obj3)).close();
        if(!flag) goto _L6; else goto _L5
_L5:
        obj = obj3;
        obj1 = obj3;
        bitmap = new MtvUtilCrypto(1);
        obj = obj3;
        obj1 = obj3;
        i = bitmap.getOutputSize(1, (int)file.length());
        obj = obj3;
        obj1 = obj3;
        bytebuffer = ByteBuffer.allocate(i);
        obj = obj3;
        obj1 = obj3;
        obj2 = ByteBuffer.allocate((int)file.length());
        obj = obj3;
        obj1 = obj3;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile:  file length = ").append(file.length()).toString());
        obj = obj3;
        obj1 = obj3;
        if(MtvUtilDebug.isReleaseMode())
            break MISSING_BLOCK_LABEL_419;
        obj = obj3;
        obj1 = obj3;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile:  outSize = ").append(i).toString());
        obj = obj3;
        obj1 = obj3;
        fileinputstream = new FileInputStream(file);
        obj = obj3;
        obj1 = obj3;
        i = fileinputstream.read(((ByteBuffer) (obj2)).array());
        obj = obj3;
        obj1 = obj3;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append(" numbrerOfBytesRead ").append(i).toString());
_L10:
        obj = obj3;
        obj1 = obj3;
        fileinputstream.close();
_L13:
        obj = obj3;
        obj1 = obj3;
        MtvUtilDebug.Low("TAG", "saveFile:  Encrypt ");
        obj = obj3;
        obj1 = obj3;
        bitmap.encryptData(((ByteBuffer) (obj2)), bytebuffer);
        obj = null;
        obj1 = null;
        obj2 = null;
        bitmap = new FileOutputStream(file);
        obj = bitmap;
        obj1 = bitmap;
        bitmap.write(bytebuffer.array());
_L15:
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        if(MtvUtilDebug.isReleaseMode())
            break MISSING_BLOCK_LABEL_626;
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        MtvUtilDebug.Low("TAG", (new StringBuilder()).append("saveFile:  encrypted length").append(bytebuffer.array().length).toString());
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        MtvUtilDebug.Low("TAG", "saveFile:  Encrypt Success ");
        obj3 = bitmap;
        if(mtvfile == null) goto _L6; else goto _L7
_L7:
        obj3 = bitmap;
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        if(mtvfile.fileFormat != 2) goto _L6; else goto _L8
_L8:
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        MtvUtilDebug.Low("MtvFileManager", "saveFile: file.mFormat == FILE_FORMAT_JPEG ");
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        mtvfile.filePath = s;
        obj = bitmap;
        obj1 = bitmap;
        mtvfile.fileSize = (int)bitmap.getChannel().size();
        obj = bitmap;
        obj1 = bitmap;
        if(MtvUtilDebug.isReleaseMode())
            break MISSING_BLOCK_LABEL_768;
        obj = bitmap;
        obj1 = bitmap;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile: FILE SIZE = ").append(mtvfile.fileSize).toString());
_L16:
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        insertOneSegTvImage(mtvfile);
        obj3 = bitmap;
_L6:
        bitmap = s;
        if(obj3 == null)
            break MISSING_BLOCK_LABEL_800;
        ((FileOutputStream) (obj3)).close();
        bitmap = s;
_L12:
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile:returning filefull path = ").append(bitmap).toString());
        return;
_L3:
        obj1 = (new StringBuilder()).append("/").append(mtvfile.filePath).append(".thm").toString();
        obj = new File(getRecThumbPath(i));
          goto _L9
_L4:
        obj1 = (new StringBuilder()).append("/").append(generateFileName(2, new Date())).toString().replace("jpg", "img");
        obj = new File(getCaptureFilePath(i));
          goto _L9
        IOException ioexception2;
        ioexception2;
        obj = obj3;
        obj1 = obj3;
        ioexception2.printStackTrace();
          goto _L10
        bitmap;
        obj1 = obj;
_L21:
        obj = obj1;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile FileNotFoundException [").append(bitmap).append("]").toString());
        obj = obj1;
        bitmap.printStackTrace();
        mtvfile = null;
        bitmap = mtvfile;
        if(obj1 == null) goto _L12; else goto _L11
_L11:
        ((FileOutputStream) (obj1)).close();
        bitmap = mtvfile;
          goto _L12
        bitmap;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile FileOutputStream.close() IOException [").append(bitmap).append("]").toString());
        bitmap.printStackTrace();
        bitmap = mtvfile;
          goto _L12
        IOException ioexception1;
        ioexception1;
        obj = obj3;
        obj1 = obj3;
        ioexception1.printStackTrace();
          goto _L13
        bitmap;
        obj2 = obj3;
_L17:
        obj = obj2;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile IOException [").append(bitmap).append("] in the outermost block").toString());
        bitmap = s;
        if(obj2 == null) goto _L12; else goto _L14
_L14:
        ((FileOutputStream) (obj2)).close();
        bitmap = s;
          goto _L12
        bitmap;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile FileOutputStream.close() IOException [").append(bitmap).append("]").toString());
        bitmap.printStackTrace();
        bitmap = s;
          goto _L12
        IOException ioexception;
        ioexception;
        bitmap = ((Bitmap) (obj2));
_L20:
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        ioexception.printStackTrace();
          goto _L15
        ioexception;
        obj2 = bitmap;
        obj = bitmap;
        obj1 = bitmap;
        ioexception.printStackTrace();
          goto _L16
        bitmap;
          goto _L17
        bitmap;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile FileOutputStream.close() IOException [").append(bitmap).append("]").toString());
        bitmap.printStackTrace();
        bitmap = s;
          goto _L12
        bitmap;
_L19:
        if(obj != null)
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(MtvFile mtvfile)
            {
                MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("saveFile FileOutputStream.close() IOException [").append(mtvfile).append("]").toString());
                mtvfile.printStackTrace();
            }
        throw bitmap;
        bitmap;
        obj = obj1;
        if(true) goto _L19; else goto _L18
_L18:
        ioexception;
          goto _L20
        bitmap;
          goto _L21
    }

    private static void udpateAvilableFilesbyFileIndex(int i, String s, MtvFile mtvfile)
    {
        int j = 0;
        do
        {
label0:
            {
                if(j < vAvailableTvFiles.size())
                {
                    if(i != ((MtvFile)vAvailableTvFiles.get(j)).getIndex() || !s.equals(((MtvFile)vAvailableTvFiles.get(j)).getFilePath()))
                        break label0;
                    vAvailableTvFiles.set(j, mtvfile);
                    vAvailableTvFiles.copyInto(availableTvFiles);
                }
                return;
            }
            j++;
        } while(true);
    }

    private static void updateTvFilesDBInfo()
    {
        com/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;
        JVM INSTR monitorenter ;
        MtvUtilDebug.Low("MtvFileManager", "updateTvFilesDBInfo()");
        Object obj;
        Object obj1;
        obj1 = null;
        obj = null;
        TV_FILE_DB_INFO.setDBModified(false);
        SQLiteDatabase sqlitedatabase = SQLiteDatabase.openDatabase(MTV_FILE_MANAGER_TV_FILE_DB_NAME, null, 1, mErrorHandler);
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        Cursor cursor = sqlitedatabase.rawQuery("select count(rowid) from tvfiles_dbtable", null);
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        int j = getCountCoulmn(cursor);
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        cursor.close();
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        cursor = sqlitedatabase.rawQuery("select max (rowid) from tvfiles_dbtable", null);
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        int i = getMaxIdColumn(cursor);
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        cursor.close();
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        TV_FILE_DB_INFO.TV_FILES_INT.updateItemsInfo(j, i);
        obj = sqlitedatabase;
        if(sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_165;
        obj = sqlitedatabase;
        if(!sqlitedatabase.isOpen())
            break MISSING_BLOCK_LABEL_165;
        sqlitedatabase.close();
        obj = sqlitedatabase;
_L4:
        boolean flag = MtvUtilMemoryStatus.isExternalMemoryAvailable();
        if(!flag) goto _L2; else goto _L1
_L1:
        obj1 = obj;
        sqlitedatabase = SQLiteDatabase.openDatabase("/mnt/extSdCard/external_tvfiles.db", null, 1, mErrorHandler);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor = sqlitedatabase.rawQuery("select count(rowid) from tvfiles_dbtable", null);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        j = getCountCoulmn(cursor);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor.close();
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor = sqlitedatabase.rawQuery("select max (rowid) from tvfiles_dbtable", null);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        i = getMaxIdColumn(cursor);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor.close();
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        TV_FILE_DB_INFO.TV_FILES_EXT.updateItemsInfo(j, i);
        obj = sqlitedatabase;
        if(sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_320;
        obj = sqlitedatabase;
        if(!sqlitedatabase.isOpen())
            break MISSING_BLOCK_LABEL_320;
        sqlitedatabase.close();
        obj = sqlitedatabase;
_L6:
        obj1 = obj;
        sqlitedatabase = SQLiteDatabase.openDatabase(MTV_FILE_MANAGER_TV_IMAGES_DB_NAME, null, 1, mErrorHandler);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor = sqlitedatabase.rawQuery("select count(rowid) from tvimage_dbtable", null);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        i = getCountCoulmn(cursor);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor.close();
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor = sqlitedatabase.rawQuery("select max (rowid) from tvimage_dbtable", null);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        j = getMaxIdColumn(cursor);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor.close();
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        TV_FILE_DB_INFO.TV_IMAGES_INT.updateItemsInfo(i, j);
        obj = sqlitedatabase;
        if(sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_468;
        obj = sqlitedatabase;
        if(!sqlitedatabase.isOpen())
            break MISSING_BLOCK_LABEL_468;
        sqlitedatabase.close();
        obj = sqlitedatabase;
_L8:
        obj1 = obj;
        sqlitedatabase = SQLiteDatabase.openDatabase("/mnt/extSdCard/tvimages_database.db", null, 1, mErrorHandler);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor = sqlitedatabase.rawQuery("select count(rowid) from tvimage_dbtable", null);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        i = getCountCoulmn(cursor);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor.close();
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor = sqlitedatabase.rawQuery("select max (rowid) from tvimage_dbtable", null);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        j = getMaxIdColumn(cursor);
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        cursor.close();
        obj1 = sqlitedatabase;
        obj = sqlitedatabase;
        TV_FILE_DB_INFO.TV_IMAGES_EXT.updateItemsInfo(i, j);
        if(sqlitedatabase == null)
            break MISSING_BLOCK_LABEL_606;
        if(sqlitedatabase.isOpen())
            sqlitedatabase.close();
_L10:
        com/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;
        JVM INSTR monitorexit ;
        return;
        SQLiteException sqliteexception;
        sqliteexception;
        obj1 = obj;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("updateTvFilesDBInfo() open failed for db: ").append(MTV_FILE_MANAGER_TV_FILE_DB_NAME).append(sqliteexception).toString());
        obj1 = obj;
        TV_FILE_DB_INFO.TV_FILES_INT.updateItemsInfo(0, 0);
        obj = null;
        if(true) goto _L4; else goto _L3
_L3:
        throw new NullPointerException();
        obj;
        com/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_697;
        if(((SQLiteDatabase) (obj1)).isOpen())
            ((SQLiteDatabase) (obj1)).close();
        throw obj;
        sqliteexception;
        obj = obj1;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("updateTvFilesDBInfo() open failed for db: /mnt/extSdCard/external_tvfiles.db").append(sqliteexception).toString());
        obj = obj1;
        TV_FILE_DB_INFO.TV_FILES_EXT.updateItemsInfo(0, 0);
        obj = null;
        if(true) goto _L6; else goto _L5
_L5:
        throw new NullPointerException();
        obj1;
        if(obj == null)
            break MISSING_BLOCK_LABEL_772;
        if(((SQLiteDatabase) (obj)).isOpen())
            ((SQLiteDatabase) (obj)).close();
        throw obj1;
_L2:
        MtvUtilDebug.Low("MtvFileManager", "updateTvFilesDBInfo() No SD Card to Open db: /mnt/extSdCard/external_tvfiles.db");
        TV_FILE_DB_INFO.TV_FILES_EXT.updateItemsInfo(0, 0);
          goto _L6
        sqliteexception;
        obj = obj1;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("updateTvFilesDBInfo() open failed for db: ").append(MTV_FILE_MANAGER_TV_IMAGES_DB_NAME).append(sqliteexception).toString());
        obj = obj1;
        TV_FILE_DB_INFO.TV_IMAGES_INT.updateItemsInfo(0, 0);
        obj = null;
        if(true) goto _L8; else goto _L7
_L7:
        throw new NullPointerException();
        obj1;
        if(obj == null)
            break MISSING_BLOCK_LABEL_873;
        if(((SQLiteDatabase) (obj)).isOpen())
            ((SQLiteDatabase) (obj)).close();
        throw obj1;
        sqliteexception;
        obj = obj1;
        MtvUtilDebug.Low("MtvFileManager", (new StringBuilder()).append("updateTvFilesDBInfo() open failed for db: /mnt/extSdCard/tvimages_database.db").append(sqliteexception).toString());
        obj = obj1;
        TV_FILE_DB_INFO.TV_IMAGES_EXT.updateItemsInfo(0, 0);
        if(true) goto _L10; else goto _L9
_L9:
        throw new NullPointerException();
        Exception exception;
        exception;
        if(obj == null)
            break MISSING_BLOCK_LABEL_947;
        if(((SQLiteDatabase) (obj)).isOpen())
            ((SQLiteDatabase) (obj)).close();
        throw exception;
          goto _L6
    }

    private static final String ANDROID_SDCARD_PATH = Environment.getExternalStorageDirectory().toString();
    private static final int IMAGE_DB_INDEX_MASK = 0x40000000;
    private static final String MTV_FILE_MANAGER_TV_FILE_CHANNEL_NAME = "chName";
    private static final String MTV_FILE_MANAGER_TV_FILE_CREATION_TIME = "iCreateTime";
    private static final String MTV_FILE_MANAGER_TV_FILE_DB_NAME = (new StringBuilder()).append(ANDROID_SDCARD_PATH).append("/Android/data/one-seg/tvfiles_database.db").toString();
    private static final String MTV_FILE_MANAGER_TV_FILE_DB_NAME_EXT = "/mnt/extSdCard/external_tvfiles.db";
    private static final String MTV_FILE_MANAGER_TV_FILE_DURATUIN_OF_RECORDING = "iDuration";
    private static final String MTV_FILE_MANAGER_TV_FILE_FIELDS = "chName TEXT, proName TEXT, fullFilePath TEXT, V_PID INTEGER, A_PID INTEGER, iCreateTime INTEGER, iDuration INTEGER, iFileFormat INTEGER, iFileSize INTEGER, isLATM INTEGER";
    private static final String MTV_FILE_MANAGER_TV_FILE_FORMAT = "iFileFormat";
    private static final String MTV_FILE_MANAGER_TV_FILE_INDEX = "rowid";
    private static final String MTV_FILE_MANAGER_TV_FILE_IS_LATM = "isLATM";
    private static final String MTV_FILE_MANAGER_TV_FILE_PATH = "fullFilePath";
    private static final String MTV_FILE_MANAGER_TV_FILE_PID_OF_AUDIO = "A_PID";
    private static final String MTV_FILE_MANAGER_TV_FILE_PID_OF_VIDEO = "V_PID";
    private static final String MTV_FILE_MANAGER_TV_FILE_PROGRAM_NAME = "proName";
    private static final String MTV_FILE_MANAGER_TV_FILE_SIZE = "iFileSize";
    private static final String MTV_FILE_MANAGER_TV_FILE_TABLE = "tvfiles_dbtable";
    private static final String MTV_FILE_MANAGER_TV_IMAGES_DB_FIELDS = "chName TEXT, proName TEXT, fullFilePath TEXT, iCreateTime INTEGER, iFileFormat INTEGER, iFileSize INTEGER";
    private static final String MTV_FILE_MANAGER_TV_IMAGES_DB_NAME = (new StringBuilder()).append(ANDROID_SDCARD_PATH).append("/Android/data/one-seg/tvimages_database.db").toString();
    private static final String MTV_FILE_MANAGER_TV_IMAGES_DB_NAME_EXT = "/mnt/extSdCard/tvimages_database.db";
    private static final String MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION = (new StringBuilder()).append(ANDROID_SDCARD_PATH).append("/image/MyTvFiles/").toString();
    private static final String MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION_EXT = "/mnt/extSdCard/image/MyTvFiles/";
    private static final String MTV_FILE_MANAGER_TV_IMAGE_TABLE = "tvimage_dbtable";
    private static final String MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION = (new StringBuilder()).append(ANDROID_SDCARD_PATH).append("/video/MyTvFiles/").toString();
    private static final String MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION_EXT = "/mnt/extSdCard/video/MyTvFiles/";
    private static final String MTV_FILE_MANAGER_TV_TS_FILE_LOCATION = "Phone";
    private static final String MTV_FILE_MANAGER_TV_TS_FILE_LOCATION_EXT = "SDCard";
    private static final String TAG = "MtvFileManager";
    private static MtvFile availableTvFiles[] = null;
    static DatabaseErrorHandler mErrorHandler = new DatabaseErrorHandler() {

        public void onCorruption(SQLiteDatabase sqlitedatabase)
        {
            MtvUtilDebug.Low("MtvFileManager", "onCorruption: ");
            if(sqlitedatabase != null && sqlitedatabase.isOpen())
                sqlitedatabase.close();
        }

    }
;
    private static boolean mIsImageDBEnabled = true;
    private static Vector vAvailableTvFiles = null;

    static 
    {
        vAvailableTvFiles = new Vector();
    }




/*
    static MtvFile[] access$202(MtvFile amtvfile[])
    {
        availableTvFiles = amtvfile;
        return amtvfile;
    }

*/

}
