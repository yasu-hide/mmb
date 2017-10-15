// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look;

import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemProperties;
import android.util.Log;
import com.samsung.android.sdk.*;

// Referenced classes of package com.samsung.android.sdk.look:
//            SlookImpl

public final class Slook
    implements SsdkInterface
{
    public static class VERSION_CODES
    {

        public static final int L1 = 1;
        public static final int L2 = 2;

        public VERSION_CODES()
        {
        }
    }


    public Slook()
    {
    }

    private void insertLog(Context context)
    {
        int i = -1;
        int j = context.getPackageManager().getPackageInfo("com.samsung.android.providers.context", 128).versionCode;
        i = j;
_L1:
        Log.d("SM_SDK", (new StringBuilder()).append("versionCode: ").append(i).toString());
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        if(i > 1)
        {
            if(context.checkCallingOrSelfPermission("com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY") != 0)
            {
                throw new SecurityException();
            } else
            {
                ContentValues contentvalues = new ContentValues();
                Object obj = getClass().getPackage().getName();
                String s = (new StringBuilder()).append(context.getPackageName()).append("#").append(getVersionCode()).toString();
                contentvalues.put("app_id", ((String) (obj)));
                contentvalues.put("feature", s);
                obj = new Intent();
                ((Intent) (obj)).setAction("com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY");
                ((Intent) (obj)).putExtra("data", contentvalues);
                ((Intent) (obj)).setPackage("com.samsung.android.providers.context");
                context.sendBroadcast(((Intent) (obj)));
                return;
            }
        } else
        {
            Log.d("SM_SDK", "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission");
            return;
        }
        namenotfoundexception;
        Log.d("SM_SDK", "Could not find ContextProvider");
          goto _L1
    }

    public int getVersionCode()
    {
        if(mVersionCode != -1)
            return mVersionCode;
        try
        {
            mVersionCode = SystemProperties.getInt("ro.slook.ver", 0);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
            mVersionCode = 0;
        }
        return mVersionCode;
    }

    public String getVersionName()
    {
        return null;
    }

    public void initialize(Context context)
        throws SsdkUnsupportedException
    {
        if(!SsdkVendorCheck.isSamsungDevice())
            throw new SsdkUnsupportedException("This device is not samsung product.", 0);
        if(getVersionCode() < 1)
            throw new SsdkUnsupportedException("This device is not supported.", 1);
        try
        {
            insertLog(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch(Context context)
        {
            throw new SecurityException("com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required.");
        }
    }

    public boolean isFeatureEnabled(int i)
    {
        switch(i)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("The type(").append(i).append(") is not supported.").toString());

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            if(getVersionCode() >= 1)
                return SlookImpl.isFeatureEnabled(i);
            else
                return false;

        case 6: // '\006'
            return SlookImpl.isFeatureEnabled(i);
        }
    }

    public static final int AIRBUTTON = 1;
    public static final int COCKTAIL_BAR = 6;
    private static final int NOT_ASSIGN = -1;
    public static final int SMARTCLIP = 2;
    public static final int SPEN_BEZEL_INTERACTION = 5;
    public static final int SPEN_HOVER_ICON = 4;
    private static final String TAG = "Slook";
    public static final int WRITINGBUDDY = 3;
    private static int mVersionCode = -1;

}
