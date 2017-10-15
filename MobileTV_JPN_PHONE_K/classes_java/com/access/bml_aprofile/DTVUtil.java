// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

public final class DTVUtil
{

    public DTVUtil()
    {
    }

    private static String getCallingClassName(int i)
    {
        StackTraceElement astacktraceelement[] = (new Throwable()).getStackTrace();
        if(astacktraceelement.length <= i)
            return "unknownclass";
        String s = astacktraceelement[i].getClassName();
        String s1;
        try
        {
            s1 = s.substring(s.lastIndexOf(".") + 1, s.length());
        }
        catch(IndexOutOfBoundsException indexoutofboundsexception)
        {
            return s;
        }
        return s1;
    }

    public static void logD(String s)
    {
        Log.d(getCallingClassName(2), s);
    }

    public static void logE(String s)
    {
        Log.e(getCallingClassName(2), s);
    }

    public static void logI(String s)
    {
        Log.i(getCallingClassName(2), s);
    }

    public static void logV(String s)
    {
        Log.v(getCallingClassName(2), s);
    }

    public static void logW(String s)
    {
        Log.w(getCallingClassName(2), s);
    }

    public static void show(String s, Context context)
    {
        if(context == null)
        {
            Log.w(com/access/bml_aprofile/DTVUtil.getSimpleName(), "Context is null.");
            return;
        }
        Log.i(getCallingClassName(2), s);
        if(mToast != null)
            break MISSING_BLOCK_LABEL_60;
        mToast = Toast.makeText(context, s, 0);
_L1:
        mToast.show();
        return;
        try
        {
            mToast.setText(s);
        }
        // Misplaced declaration of an exception variable
        catch(String s)
        {
            Log.w(com/access/bml_aprofile/DTVUtil.getSimpleName(), "Failed to show message.");
            return;
        }
          goto _L1
    }

    private static Toast mToast = null;

}
