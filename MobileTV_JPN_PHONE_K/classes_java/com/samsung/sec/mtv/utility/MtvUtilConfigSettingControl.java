// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.broadcast.helper.MtvUtilDebug;
import java.io.*;

// Referenced classes of package com.samsung.sec.mtv.utility:
//            MtvUtilConfigSetting

public class MtvUtilConfigSettingControl
{

    public MtvUtilConfigSettingControl()
    {
    }

    private int changeBooleanToInt(boolean flag)
    {
        return !flag ? 0 : 1;
    }

    private int getSettingValue(String s, String s1)
    {
        int i = s.indexOf(s1);
        if(i >= 0)
        {
            i = s.charAt(s1.length() + i + 1);
            if(i == '1')
                i = 1;
            else
            if(i == '2')
                i = 2;
            else
                i = 0;
            MtvUtilDebug.High("MtvUtilConfigSettingControl", (new StringBuilder()).append("## ").append(s1).append("=[").append(i).append("]").toString());
            return i;
        } else
        {
            MtvUtilDebug.Error("MtvUtilConfigSettingControl", (new StringBuilder()).append("## Not found ").append(s1).toString());
            return -1;
        }
    }

    public MtvUtilConfigSetting getConfigFromFile()
    {
        Object obj1;
        MtvUtilConfigSetting mtvutilconfigsetting;
        mtvutilconfigsetting = new MtvUtilConfigSetting();
        obj1 = new File("/data/one-seg/", "OneSeg_Config.cfg");
        if(((File) (obj1)).exists() && ((File) (obj1)).length() > 0L) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Error("MtvUtilConfigSettingControl", "Not found config file! [/data/one-seg/OneSeg_Config.cfg]");
_L9:
        return mtvutilconfigsetting;
_L2:
        Object obj;
        byte abyte0[];
        Object obj3;
        Object obj4;
        abyte0 = new byte[(int)((File) (obj1)).length() + 10];
        obj4 = null;
        obj = null;
        obj3 = null;
        obj1 = new FileInputStream(((File) (obj1)));
        obj = new String(abyte0, 0, ((FileInputStream) (obj1)).read(abyte0));
        if(getSettingValue(((String) (obj)), "CONFIG_TSFILESIMUL") != 1) goto _L4; else goto _L3
_L3:
        mtvutilconfigsetting.iTsFileSimul = true;
_L7:
        if(getSettingValue(((String) (obj)), "CONFIG_TSCAPTURE") != 1) goto _L6; else goto _L5
_L5:
        mtvutilconfigsetting.iTsCapture = true;
_L10:
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
                return mtvutilconfigsetting;
            }
        return mtvutilconfigsetting;
_L4:
        mtvutilconfigsetting.iTsFileSimul = false;
          goto _L7
        obj2;
_L15:
        obj = obj1;
        ((FileNotFoundException) (obj2)).printStackTrace();
        obj = obj1;
        MtvUtilDebug.Error("MtvUtilConfigSettingControl", "Not found config file! [/data/one-seg/OneSeg_Config.cfg]");
        if(obj1 == null) goto _L9; else goto _L8
_L8:
        try
        {
            ((FileInputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            ((IOException) (obj)).printStackTrace();
            return mtvutilconfigsetting;
        }
        return mtvutilconfigsetting;
_L6:
        mtvutilconfigsetting.iTsCapture = false;
          goto _L10
        obj2;
_L14:
        obj = obj1;
        MtvUtilDebug.Error("MtvUtilConfigSettingControl", "IO Exceiption Error! [/data/one-seg/OneSeg_Config.cfg]");
        obj = obj1;
        ((IOException) (obj2)).printStackTrace();
        if(obj1 == null) goto _L9; else goto _L11
_L11:
        try
        {
            ((FileInputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            ((IOException) (obj)).printStackTrace();
            return mtvutilconfigsetting;
        }
        return mtvutilconfigsetting;
        obj1;
_L13:
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
        if(true) goto _L13; else goto _L12
_L12:
        obj2;
        obj1 = obj4;
          goto _L14
        obj2;
        obj1 = obj3;
          goto _L15
    }

    public boolean setConfigToFile(MtvUtilConfigSetting mtvutilconfigsetting)
    {
        Object obj;
        Object obj1;
        Object obj2;
        String s;
        obj = new StringBuffer(400);
        ((StringBuffer) (obj)).append((new StringBuilder()).append("CONFIG_TSFILESIMUL=").append(changeBooleanToInt(mtvutilconfigsetting.iTsFileSimul)).append("\n").toString());
        ((StringBuffer) (obj)).append((new StringBuilder()).append("CONFIG_TSCAPTURE=").append(changeBooleanToInt(mtvutilconfigsetting.iTsCapture)).append("\n").toString());
        s = ((StringBuffer) (obj)).toString();
        MtvUtilDebug.Mid("MtvUtilConfigSettingControl", (new StringBuilder()).append("Save Content\n[").append(s).toString());
        obj = new File("/data/one-seg/", "OneSeg_Config.cfg");
        obj2 = null;
        mtvutilconfigsetting = null;
        obj1 = null;
        obj = new FileOutputStream(((File) (obj)));
        ((FileOutputStream) (obj)).write(s.getBytes());
        if(obj != null)
            try
            {
                ((FileOutputStream) (obj)).flush();
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(MtvUtilConfigSetting mtvutilconfigsetting)
            {
                mtvutilconfigsetting.printStackTrace();
            }
_L1:
        return true;
        mtvutilconfigsetting;
        obj = obj1;
        obj1 = mtvutilconfigsetting;
_L5:
        mtvutilconfigsetting = ((MtvUtilConfigSetting) (obj));
        ((FileNotFoundException) (obj1)).printStackTrace();
        mtvutilconfigsetting = ((MtvUtilConfigSetting) (obj));
        MtvUtilDebug.Error("MtvUtilConfigSettingControl", "File Not Found=[/data/one-seg/OneSeg_Config.cfg]");
        if(obj != null)
            try
            {
                ((FileOutputStream) (obj)).flush();
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(MtvUtilConfigSetting mtvutilconfigsetting)
            {
                mtvutilconfigsetting.printStackTrace();
            }
          goto _L1
        IOException ioexception;
        ioexception;
        obj = obj2;
_L4:
        mtvutilconfigsetting = ((MtvUtilConfigSetting) (obj));
        ioexception.printStackTrace();
        mtvutilconfigsetting = ((MtvUtilConfigSetting) (obj));
        MtvUtilDebug.Error("MtvUtilConfigSettingControl", "File Writng Fail!=[/data/one-seg/OneSeg_Config.cfg]");
        if(obj != null)
            try
            {
                ((FileOutputStream) (obj)).flush();
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(MtvUtilConfigSetting mtvutilconfigsetting)
            {
                mtvutilconfigsetting.printStackTrace();
            }
          goto _L1
        obj;
_L3:
        if(mtvutilconfigsetting != null)
            try
            {
                mtvutilconfigsetting.flush();
                mtvutilconfigsetting.close();
            }
            // Misplaced declaration of an exception variable
            catch(MtvUtilConfigSetting mtvutilconfigsetting)
            {
                mtvutilconfigsetting.printStackTrace();
            }
        throw obj;
        ioexception;
        mtvutilconfigsetting = ((MtvUtilConfigSetting) (obj));
        obj = ioexception;
        if(true) goto _L3; else goto _L2
_L2:
        ioexception;
          goto _L4
        ioexception;
          goto _L5
    }

    private static final String CONFIG_FILE = "OneSeg_Config.cfg";
    private static final String ROOT_DIR = "/data/one-seg/";
    private static final String TAG = "MtvUtilConfigSettingControl";
}
