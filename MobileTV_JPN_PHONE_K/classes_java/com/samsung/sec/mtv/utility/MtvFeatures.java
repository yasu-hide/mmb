// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.os.Build;

public class MtvFeatures
{
    public static class MtvTargets
    {

        public static boolean isModel(String s)
        {
            return Build.MODEL.compareTo(s) == 0;
        }

        public static final String HLTE_JPN_DCM = "SC-01F";
        public static final String HLTE_JPN_KDI = "SCL22";
        public static final String JFLTE_JPN_DCM = "SC-04E";
        public static final String KLTE_JPN_DCM = "SC-04F";
        public static final String KLTE_JPN_DCMACTIVE = "SC-02G";
        public static final String KLTE_JPN_KDI = "SCL23";
        public static final String XCOVER3LTE_JPN_DCM = "SC-01H";
        public static final String ZEROFLTE_JPN_DCM = "SC-05G";

        public MtvTargets()
        {
        }
    }


    public MtvFeatures()
    {
    }

    public static boolean hasExternalAntenna()
    {
        return Build.MODEL.compareTo("SC-05G") == 0 || Build.MODEL.compareTo("SC-04F") == 0 || Build.MODEL.compareTo("SCL23") == 0 || Build.MODEL.compareTo("SC-02G") == 0;
    }

    public static boolean is3LMEnabled()
    {
        return true;
    }

    public static boolean isAudioOutputModeEnabled()
    {
        return false;
    }

    public static boolean isAutoAntennaEnabled()
    {
        return MtvTargets.isModel("SC-01F") || MtvTargets.isModel("SCL22") || MtvTargets.isModel("SC-04E");
    }

    public static boolean isCockTailBarSupported()
    {
        return true;
    }

    public static boolean isConflicttHandlerEnabled()
    {
        return true;
    }

    public static boolean isExternalAntennaRequired()
    {
        return true;
    }

    public static boolean isHoverEnabled()
    {
        return Build.MODEL.compareTo("SC-05G") != 0 && Build.MODEL.compareTo("SC-01H") != 0;
    }

    public static boolean isMiniModeEnabled()
    {
        return true;
    }

    public static boolean isSCoverModeEnabled()
    {
        return MtvTargets.isModel("SC-01F") || MtvTargets.isModel("SCL22") || MtvTargets.isModel("SC-04F") || MtvTargets.isModel("SCL23");
    }

    public static boolean isSDCardSupported()
    {
        return Build.MODEL.compareTo("SC-05G") != 0;
    }

    public static boolean isSoundAliveSupported()
    {
        return Build.MODEL.compareTo("SC-05G") != 0;
    }

    public static final boolean PLAY_BACK_MIDDLEWARE_TIME_LAPSE_SUPPORT = true;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_3LM = true;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_ANTDET = false;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_AUDIOOUTPUTMODE = false;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_COCKTAILBAR = true;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_EXTERNALANTENNA = true;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_HOVER = true;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_MINIMODE = true;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_SCOVER = false;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_SDCARD = true;
    public static final boolean SEC_PRODUCT_FEATURE_ONESEG_SUPPORT_SOUNDALIVE = true;
    public static final boolean SEC_PRODUCT_FEATURE_TMM_CONFLICT_HANDLER_ENABLED = true;
}
