// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk;

import android.os.Build;

public class SsdkVendorCheck
{

    private SsdkVendorCheck()
    {
    }

    public static boolean isSamsungDevice()
    {
        while(strBrand == null || strManufacturer == null || strBrand.compareToIgnoreCase("Samsung") != 0 && strManufacturer.compareToIgnoreCase("Samsung") != 0) 
            return false;
        return true;
    }

    private static String strBrand;
    private static String strManufacturer;

    static 
    {
        strBrand = Build.BRAND;
        strManufacturer = Build.MANUFACTURER;
    }
}
