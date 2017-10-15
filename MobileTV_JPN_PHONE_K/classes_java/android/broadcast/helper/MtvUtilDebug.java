// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper;

import android.os.SystemProperties;
import android.util.Log;
import java.io.*;

// Referenced classes of package android.broadcast.helper:
//            MtvUtilDebugSetting

public class MtvUtilDebug
{

    private MtvUtilDebug()
    {
        iDebugSetting = null;
        iDebugSetting = MtvUtilDebugSetting.getInstance();
    }

    public static void Error(String s, String s1)
    {
        if(s1 != null)
            Log.e(s, s1);
    }

    public static void High(String s, String s1)
    {
        if(s1 != null)
            Log.i(s, s1);
    }

    public static void Low(String s, String s1)
    {
        if(s1 != null)
            Log.v(s, s1);
    }

    public static void Mid(String s, String s1)
    {
        if(s1 != null)
            Log.d(s, s1);
    }

    public static MtvUtilDebug getDebugInstance()
    {
        if(iSelfInstance == null)
            iSelfInstance = new MtvUtilDebug();
        return iSelfInstance;
    }

    private int getDebugSettingIndex(String s, String s1)
    {
        int i;
label0:
        {
            int j = s.indexOf(s1);
            if(j >= 0)
            {
                i = j;
                if(j <= s.length())
                    break label0;
            }
            Log.e("MtvUtilDebug", (new StringBuilder()).append("setDebugInfoToFile : Error in Index:").append(j).toString());
            i = -1;
        }
        return i;
    }

    private boolean isLoggable(String s, int i)
    {
        return true;
    }

    public static boolean isReleaseMode()
    {
        if(iSelfInstance == null)
            iSelfInstance = getDebugInstance();
        boolean flag;
        if(SystemProperties.getInt("ro.debuggable", 0) == 1)
            flag = true;
        else
            flag = false;
        return !flag;
    }

    public void loadDbgInfoFromFile()
    {
        int i;
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        byte abyte0[];
        Object obj6;
        File file;
        Object obj7;
        Object obj8;
        File file1;
        i = -1;
        obj = null;
        file1 = new File("/data/one-seg/", "debug.ini");
        obj6 = null;
        obj7 = null;
        abyte0 = null;
        obj4 = null;
        obj5 = null;
        obj8 = null;
        obj3 = null;
        file = null;
        obj1 = obj7;
        obj2 = obj8;
        if(!file1.exists()) goto _L2; else goto _L1
_L1:
        obj1 = obj7;
        obj2 = obj8;
        if(file1.length() > 0L) goto _L3; else goto _L2
_L2:
        obj1 = obj7;
        obj2 = obj8;
        file = new File("/system/etc/one-seg", "debug.ini");
        obj1 = obj7;
        obj2 = obj8;
        obj = new FileInputStream(file);
        abyte0 = new byte[(int)file.length() + 10];
        i = ((FileInputStream) (obj)).read(abyte0);
        obj1 = new FileOutputStream(file1);
        ((OutputStream) (obj1)).write(abyte0, 0, i);
        obj2 = obj1;
        obj1 = abyte0;
_L17:
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj3)
            {
                ((IOException) (obj3)).printStackTrace();
            }
        if(obj2 != null)
            try
            {
                ((OutputStream) (obj2)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj2)
            {
                ((IOException) (obj2)).printStackTrace();
            }
        if(obj1 != null)
            break MISSING_BLOCK_LABEL_234;
        obj2 = new byte[(int)file1.length() + 10];
        obj1 = new FileInputStream(file1);
        obj = obj1;
        i = ((FileInputStream) (obj1)).read(((byte []) (obj2)));
        obj = obj1;
        obj1 = obj2;
        char c;
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
        obj = new String(((byte []) (obj1)), 0, i);
        i = getDebugSettingIndex(((String) (obj)), MtvUtilDebugSetting.DBG_NAME_ERROR);
        if(-1 != i)
        {
            if(((String) (obj)).charAt(MtvUtilDebugSetting.DBG_NAME_ERROR.length() + i + 1) == '1')
                i = 1;
            else
                i = 0;
            iDebugSetting.setDebugValuesForLevel(8, i);
        }
        i = getDebugSettingIndex(((String) (obj)), MtvUtilDebugSetting.DBG_NAME_HIGH);
        if(-1 != i)
        {
            c = ((String) (obj)).charAt(MtvUtilDebugSetting.DBG_NAME_HIGH.length() + i + 1);
            if(c == '0')
                iDebugSetting.setDebugValuesForLevel(7, 0);
            else
            if(c == '1')
                iDebugSetting.setDebugValuesForLevel(12, 1);
            else
                Log.e("MtvUtilDebug", (new StringBuilder()).append("Error in Value retrieved va;ue").append(c).toString());
        }
        i = getDebugSettingIndex(((String) (obj)), MtvUtilDebugSetting.DBG_NAME_MID);
        if(-1 != i)
        {
            c = ((String) (obj)).charAt(MtvUtilDebugSetting.DBG_NAME_MID.length() + i + 1);
            if(c == '0')
                iDebugSetting.setDebugValuesForLevel(3, 0);
            else
            if(c == '1')
                iDebugSetting.setDebugValuesForLevel(14, 1);
            else
                Log.e("MtvUtilDebug", (new StringBuilder()).append("Error in Value retrieved va;ue").append(c).toString());
        } else
        {
            Log.i("MtvUtilDebug", (new StringBuilder()).append("onLoadDebugInfo :Error in  Index").append(i).toString());
        }
        i = getDebugSettingIndex(((String) (obj)), MtvUtilDebugSetting.DBG_NAME_LOW);
        if(-1 != i)
        {
            c = ((String) (obj)).charAt(MtvUtilDebugSetting.DBG_NAME_LOW.length() + i + 1);
            if(c == '0')
                iDebugSetting.setDebugValuesForLevel(1, 0);
            else
            if(c == '1')
                iDebugSetting.setDebugValuesForLevel(15, 1);
            else
                Log.e("MtvUtilDebug", (new StringBuilder()).append("Error in Value retrieved va;ue").append(c).toString());
        }
        i = 0;
        while(i < 16) 
        {
            obj1 = MtvUtilDebugSetting.MdlNclassNames[i].split(":");
            int j = getDebugSettingIndex(((String) (obj)), ((String) (obj1[0])));
            if(-1 != j)
            {
                if(((String) (obj)).charAt(((String) (obj1[0])).length() + j + 1) == '1')
                    j = 1;
                else
                    j = 0;
                iDebugSetting.setDebugValuesOfModule(1 << i, j);
            } else
            {
                Log.i("MtvUtilDebug", (new StringBuilder()).append("onLoadDebugInfo :Error in  Index").append(j).toString());
            }
            i++;
        }
          goto _L4
        obj3;
        obj = abyte0;
_L15:
        obj1 = obj;
        obj2 = obj4;
        Log.e("MtvUtilDebug", "loadDbgInfoFromFile: error while copying files from debug file from /system/etc/one-seg");
        obj1 = obj;
        obj2 = obj4;
        ((FileNotFoundException) (obj3)).printStackTrace();
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
        if(obj4 == null) goto _L4; else goto _L5
_L5:
        ((OutputStream) (obj4)).close();
_L4:
        return;
        obj;
        ((IOException) (obj)).printStackTrace();
        return;
        obj3;
        obj4 = obj5;
        obj = obj6;
_L14:
        obj1 = obj;
        obj2 = obj4;
        Log.e("MtvUtilDebug", "loadDbgInfoFromFile: I/O execption");
        obj1 = obj;
        obj2 = obj4;
        ((IOException) (obj3)).printStackTrace();
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
        if(obj4 == null) goto _L4; else goto _L6
_L6:
        try
        {
            ((OutputStream) (obj4)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            ((IOException) (obj)).printStackTrace();
        }
        return;
        obj;
_L13:
        if(obj1 != null)
            try
            {
                ((FileInputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj1)
            {
                ((IOException) (obj1)).printStackTrace();
            }
        if(obj2 != null)
            try
            {
                ((OutputStream) (obj2)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj1)
            {
                ((IOException) (obj1)).printStackTrace();
            }
        throw obj;
        obj2;
        obj1 = obj;
_L12:
        obj = obj1;
        Log.e("MtvUtilDebug", "loadDbgInfoFromFile: error while copying files from debug file from /system/etc/one-seg");
        obj = obj1;
        ((FileNotFoundException) (obj2)).printStackTrace();
        if(obj1 == null) goto _L4; else goto _L7
_L7:
        try
        {
            ((FileInputStream) (obj1)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            ((IOException) (obj)).printStackTrace();
        }
        return;
        obj2;
        obj1 = obj;
_L11:
        obj = obj1;
        Log.e("MtvUtilDebug", "loadDbgInfoFromFile: I/O execption");
        obj = obj1;
        ((IOException) (obj2)).printStackTrace();
        if(obj1 == null) goto _L4; else goto _L8
_L8:
        try
        {
            ((FileInputStream) (obj1)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            ((IOException) (obj)).printStackTrace();
        }
        return;
        obj2;
        obj1 = obj;
        obj = obj2;
_L10:
        if(obj1 != null)
            try
            {
                ((FileInputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj1)
            {
                ((IOException) (obj1)).printStackTrace();
            }
        throw obj;
        obj2;
        obj1 = obj;
        obj = obj2;
        if(true) goto _L10; else goto _L9
_L9:
        obj2;
          goto _L11
        obj2;
          goto _L12
        obj4;
        obj1 = obj;
        obj2 = obj3;
        obj = obj4;
          goto _L13
        obj3;
        obj2 = obj1;
        obj1 = obj;
        obj = obj3;
          goto _L13
        obj3;
        obj4 = obj5;
          goto _L14
        obj3;
        obj4 = obj1;
          goto _L14
        obj3;
        continue; /* Loop/switch isn't completed */
        obj3;
        obj4 = obj1;
        if(true) goto _L15; else goto _L3
_L3:
        obj2 = null;
        obj1 = obj;
        obj = obj2;
        obj2 = file;
        if(true) goto _L17; else goto _L16
_L16:
    }

    public void saveDbgInfoToFile()
    {
        Object obj1 = new File("/data/one-seg/", "debug.ini");
        if(((File) (obj1)).exists() && ((File) (obj1)).length() > 0L) goto _L2; else goto _L1
_L1:
        Log.e("MtvUtilDebug", "Debug.ini file doesnt exists");
_L12:
        return;
_L2:
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        String as[];
        byte abyte0[];
        abyte0 = new byte[(int)((File) (obj1)).length() + 10];
        obj2 = null;
        as = null;
        obj3 = null;
        obj5 = null;
        obj4 = null;
        Object obj = new FileInputStream(((File) (obj1)));
        obj3 = new String(abyte0, 0, ((FileInputStream) (obj)).read(abyte0));
        char c;
        int i;
        int j;
        boolean flag;
label0:
        {
            obj2 = ((String) (obj3)).toCharArray();
            i = getDebugSettingIndex(((String) (obj3)), MtvUtilDebugSetting.DBG_NAME_ERROR);
            flag = iDebugSetting.isAllowedDebugLevel(8);
            if(obj2.length <= MtvUtilDebugSetting.DBG_NAME_ERROR.length() + i)
                break label0;
            j = MtvUtilDebugSetting.DBG_NAME_ERROR.length();
        }
          goto _L3
_L16:
label1:
        {
            i = getDebugSettingIndex(((String) (obj3)), MtvUtilDebugSetting.DBG_NAME_HIGH);
            flag = iDebugSetting.isAllowedDebugLevel(4);
            if(obj2.length <= MtvUtilDebugSetting.DBG_NAME_HIGH.length() + i)
                break label1;
            j = MtvUtilDebugSetting.DBG_NAME_HIGH.length();
        }
          goto _L4
_L17:
label2:
        {
            i = getDebugSettingIndex(((String) (obj3)), MtvUtilDebugSetting.DBG_NAME_MID);
            flag = iDebugSetting.isAllowedDebugLevel(2);
            if(obj2.length <= MtvUtilDebugSetting.DBG_NAME_MID.length() + i)
                break label2;
            j = MtvUtilDebugSetting.DBG_NAME_MID.length();
        }
          goto _L5
_L18:
        i = getDebugSettingIndex(((String) (obj3)), MtvUtilDebugSetting.DBG_NAME_LOW);
        flag = iDebugSetting.isAllowedDebugLevel(1);
        if(obj2.length <= MtvUtilDebugSetting.DBG_NAME_LOW.length() + i) goto _L7; else goto _L6
_L6:
        j = MtvUtilDebugSetting.DBG_NAME_LOW.length();
          goto _L8
_L19:
        if(i >= 16) goto _L10; else goto _L9
_L9:
        as = MtvUtilDebugSetting.MdlNclassNames[i].split(":");
        j = getDebugSettingIndex(((String) (obj3)), as[0]);
        if(-1 == j)
            break MISSING_BLOCK_LABEL_400;
        flag = iDebugSetting.isAllowedModuleForDebug(1 << i);
        if(obj2.length <= as[0].length() + j)
            break MISSING_BLOCK_LABEL_737;
        k = as[0].length();
        break MISSING_BLOCK_LABEL_388;
        try
        {
            Log.i("MtvUtilDebug", (new StringBuilder()).append("onLoadDebugInfo :Error in  Index").append(j).toString());
            break MISSING_BLOCK_LABEL_737;
        }
        // Misplaced declaration of an exception variable
        catch(Object obj1) { }
_L15:
        obj2 = obj;
        obj3 = obj4;
        Log.i("MtvUtilDebug", "IOException ");
        obj2 = obj;
        obj3 = obj4;
        ((IOException) (obj1)).printStackTrace();
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
        if(obj4 == null) goto _L12; else goto _L11
_L11:
        try
        {
            ((BufferedWriter) (obj4)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            ((IOException) (obj)).printStackTrace();
        }
        return;
_L10:
        if(!((File) (obj1)).exists());
        obj1 = new BufferedWriter(new FileWriter(((File) (obj1))));
        ((BufferedWriter) (obj1)).write(((char []) (obj2)));
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
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_541;
        ((BufferedWriter) (obj1)).close();
        return;
        obj;
        ((IOException) (obj)).printStackTrace();
        return;
        obj1;
        obj = obj2;
_L14:
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
        if(obj3 != null)
            try
            {
                ((BufferedWriter) (obj3)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
        throw obj1;
        obj1;
        obj3 = obj5;
        continue; /* Loop/switch isn't completed */
        obj1;
        obj3 = obj5;
        continue; /* Loop/switch isn't completed */
        obj2;
        obj3 = obj1;
        obj1 = obj2;
        if(true) goto _L14; else goto _L13
_L13:
        obj1;
        obj = as;
          goto _L15
        obj1;
          goto _L15
        obj2;
        obj4 = obj1;
        obj1 = obj2;
          goto _L15
_L3:
        int k;
        if(flag)
            c = '1';
        else
            c = '0';
        obj2[j + i + 1] = c;
          goto _L16
_L4:
        if(flag)
            c = '1';
        else
            c = '0';
        obj2[j + i + 1] = c;
          goto _L17
_L5:
        if(flag)
            c = '1';
        else
            c = '0';
        obj2[j + i + 1] = c;
          goto _L18
_L8:
        if(flag)
            c = '1';
        else
            c = '0';
        obj2[j + i + 1] = c;
_L7:
        i = 0;
          goto _L19
        if(flag)
            c = '1';
        else
            c = '0';
        obj2[k + j + 1] = c;
        i++;
          goto _L19
    }

    private static final String DEBUG_FILE = "debug.ini";
    private static final String ROOT_DIR = "/data/one-seg/";
    private static final String SYSTEM_ROOT_DIR = "/system/etc/one-seg";
    private static final String TAG = "MtvUtilDebug";
    private static MtvUtilDebug iSelfInstance;
    private MtvUtilDebugSetting iDebugSetting;
}
