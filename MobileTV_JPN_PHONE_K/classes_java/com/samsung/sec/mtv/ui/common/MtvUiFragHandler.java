// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.os.*;
import com.samsung.sec.mtv.ui.bml.*;
import com.samsung.sec.mtv.ui.channelguide.MtvUiChannelNumFrag;
import com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayerImgFrag;
import com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayerVidFrag;
import java.util.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiMemInfoFrag, MtvUiProgInfoFrag, MtvUiMainFrag, MtvUiRecordFrag, 
//            MtvUiCaptureFrag, MtvUiVolumeControlBarFrag, MtvUiStatusBarFrag, MtvUiFrag

public class MtvUiFragHandler
{
    public static final class FRAG_TYPE extends Enum
    {

        public static FRAG_TYPE valueOf(String s)
        {
            return (FRAG_TYPE)Enum.valueOf(com/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE, s);
        }

        public static FRAG_TYPE[] values()
        {
            return (FRAG_TYPE[])$VALUES.clone();
        }

        private static final FRAG_TYPE $VALUES[];
        public static final FRAG_TYPE TYPE_ALL;
        public static final FRAG_TYPE TYPE_BMLBASIC;
        public static final FRAG_TYPE TYPE_BMLCAPBASIC;
        public static final FRAG_TYPE TYPE_BMLCAPKEYPAD;
        public static final FRAG_TYPE TYPE_BMLKEYPAD;
        public static final FRAG_TYPE TYPE_BMLNUMIN;
        public static final FRAG_TYPE TYPE_BML_DIALOGUE;
        public static final FRAG_TYPE TYPE_CAPTURE;
        public static final FRAG_TYPE TYPE_CHANNELNUM;
        public static final FRAG_TYPE TYPE_FP_MAIN_IMG;
        public static final FRAG_TYPE TYPE_FP_MAIN_VID;
        public static final FRAG_TYPE TYPE_INFO;
        public static final FRAG_TYPE TYPE_NONE;
        public static final FRAG_TYPE TYPE_RECORD;
        public static final FRAG_TYPE TYPE_STATUS_BAR;
        public static final FRAG_TYPE TYPE_TAG_MEM_INFO;
        public static final FRAG_TYPE TYPE_TAG_PROG_INFO;
        public static final FRAG_TYPE TYPE_UI_MAIN;
        public static final FRAG_TYPE TYPE_VOLUME;

        static 
        {
            TYPE_UI_MAIN = new FRAG_TYPE("TYPE_UI_MAIN", 0);
            TYPE_RECORD = new FRAG_TYPE("TYPE_RECORD", 1);
            TYPE_INFO = new FRAG_TYPE("TYPE_INFO", 2);
            TYPE_CAPTURE = new FRAG_TYPE("TYPE_CAPTURE", 3);
            TYPE_CHANNELNUM = new FRAG_TYPE("TYPE_CHANNELNUM", 4);
            TYPE_BMLNUMIN = new FRAG_TYPE("TYPE_BMLNUMIN", 5);
            TYPE_BMLBASIC = new FRAG_TYPE("TYPE_BMLBASIC", 6);
            TYPE_BMLKEYPAD = new FRAG_TYPE("TYPE_BMLKEYPAD", 7);
            TYPE_BMLCAPKEYPAD = new FRAG_TYPE("TYPE_BMLCAPKEYPAD", 8);
            TYPE_BMLCAPBASIC = new FRAG_TYPE("TYPE_BMLCAPBASIC", 9);
            TYPE_VOLUME = new FRAG_TYPE("TYPE_VOLUME", 10);
            TYPE_FP_MAIN_IMG = new FRAG_TYPE("TYPE_FP_MAIN_IMG", 11);
            TYPE_FP_MAIN_VID = new FRAG_TYPE("TYPE_FP_MAIN_VID", 12);
            TYPE_STATUS_BAR = new FRAG_TYPE("TYPE_STATUS_BAR", 13);
            TYPE_BML_DIALOGUE = new FRAG_TYPE("TYPE_BML_DIALOGUE", 14);
            TYPE_TAG_MEM_INFO = new FRAG_TYPE("TYPE_TAG_MEM_INFO", 15);
            TYPE_TAG_PROG_INFO = new FRAG_TYPE("TYPE_TAG_PROG_INFO", 16);
            TYPE_ALL = new FRAG_TYPE("TYPE_ALL", 17);
            TYPE_NONE = new FRAG_TYPE("TYPE_NONE", 18);
            $VALUES = (new FRAG_TYPE[] {
                TYPE_UI_MAIN, TYPE_RECORD, TYPE_INFO, TYPE_CAPTURE, TYPE_CHANNELNUM, TYPE_BMLNUMIN, TYPE_BMLBASIC, TYPE_BMLKEYPAD, TYPE_BMLCAPKEYPAD, TYPE_BMLCAPBASIC, 
                TYPE_VOLUME, TYPE_FP_MAIN_IMG, TYPE_FP_MAIN_VID, TYPE_STATUS_BAR, TYPE_BML_DIALOGUE, TYPE_TAG_MEM_INFO, TYPE_TAG_PROG_INFO, TYPE_ALL, TYPE_NONE
            });
        }

        private FRAG_TYPE(String s, int i)
        {
            super(s, i);
        }
    }


    private MtvUiFragHandler()
    {
        fragHashMap = new LinkedHashMap();
        isEnabled = true;
    }

    public MtvUiFragHandler(FragmentManager fragmentmanager, int i, int j)
    {
        fragHashMap = new LinkedHashMap();
        isEnabled = true;
        fragMgr = fragmentmanager;
        activityType = i;
        viewGroup = j;
    }

    private void addFragInternal(FRAG_TYPE frag_type, long l)
    {
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("addFragInternal!!! FragType:").append(frag_type).toString());
        fragHashMap.put(frag_type, Long.valueOf(l));
    }

    public static void addUnManagedFrag(FRAG_TYPE frag_type, Bundle bundle, int i, Activity activity)
    {
        if(activity == null || frag_type == null || !activity.isResumed()) goto _L2; else goto _L1
_L1:
        static class _cls8
        {

            static final int $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[];

            static 
            {
                $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE = new int[FRAG_TYPE.values().length];
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_UI_MAIN.ordinal()] = 1;
                }
                catch(NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_RECORD.ordinal()] = 2;
                }
                catch(NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_INFO.ordinal()] = 3;
                }
                catch(NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_CAPTURE.ordinal()] = 4;
                }
                catch(NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_CHANNELNUM.ordinal()] = 5;
                }
                catch(NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_BMLNUMIN.ordinal()] = 6;
                }
                catch(NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_BMLBASIC.ordinal()] = 7;
                }
                catch(NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_BMLKEYPAD.ordinal()] = 8;
                }
                catch(NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_BMLCAPBASIC.ordinal()] = 9;
                }
                catch(NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_BMLCAPKEYPAD.ordinal()] = 10;
                }
                catch(NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_BML_DIALOGUE.ordinal()] = 11;
                }
                catch(NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_VOLUME.ordinal()] = 12;
                }
                catch(NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_STATUS_BAR.ordinal()] = 13;
                }
                catch(NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_FP_MAIN_IMG.ordinal()] = 14;
                }
                catch(NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_FP_MAIN_VID.ordinal()] = 15;
                }
                catch(NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_TAG_MEM_INFO.ordinal()] = 16;
                }
                catch(NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiFragHandler$FRAG_TYPE[FRAG_TYPE.TYPE_TAG_PROG_INFO.ordinal()] = 17;
                }
                catch(NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls8..SwitchMap.com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE[frag_type.ordinal()];
        JVM INSTR tableswitch 16 17: default 44
    //                   16 45
    //                   17 76;
           goto _L2 _L3 _L4
_L2:
        return;
_L3:
        bundle = activity.getFragmentManager().beginTransaction();
        bundle.add(i, new MtvUiMemInfoFrag(), frag_type.toString());
        bundle.commit();
        return;
_L4:
        activity = activity.getFragmentManager().beginTransaction();
        activity.add(i, new MtvUiProgInfoFrag(bundle), frag_type.toString());
        activity.commit();
        return;
    }

    private transient Fragment getNewFrag(FRAG_TYPE frag_type, int ai[])
    {
        switch(_cls8..SwitchMap.com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE[frag_type.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return new MtvUiMainFrag();

        case 2: // '\002'
            return new MtvUiRecordFrag();

        case 3: // '\003'
            return null;

        case 4: // '\004'
            return new MtvUiCaptureFrag();

        case 5: // '\005'
            return new MtvUiChannelNumFrag();

        case 6: // '\006'
            return new MtvUiBmlNumKeyPadFragment();

        case 7: // '\007'
            return new MtvUiBmlBasicControlFrag();

        case 8: // '\b'
            return new MtvUiBmlKeyPadControlFragment();

        case 9: // '\t'
            return new MtvUiBmlCaptionBasicControlFrag();

        case 10: // '\n'
            return new MtvUiBmlCaptionKeyPadControlFragment();

        case 11: // '\013'
            return MtvUiBmlDialogFrag.getInstance();

        case 12: // '\f'
            return new MtvUiVolumeControlBarFrag();

        case 13: // '\r'
            if(activityType == 0)
                return new MtvUiStatusBarFrag(0);
            else
                return new MtvUiStatusBarFrag(1);

        case 14: // '\016'
            if(ai != null && ai.length >= 1)
                return new MtvUiFilePlayerImgFrag(ai[1]);
            else
                return new MtvUiFilePlayerImgFrag();

        case 15: // '\017'
            break;
        }
        if(ai != null && ai.length >= 1)
            return new MtvUiFilePlayerVidFrag(ai[1]);
        else
            return new MtvUiFilePlayerVidFrag();
    }

    private FRAG_TYPE getTopFragType()
    {
        MtvUtilDebug.Mid("MtvUiFragHandler", (new StringBuilder()).append("getTopFragType : fragHandler Enabled?: ").append(isEnabled).toString());
        if(isEnabled)
        {
            Set set = fragHashMap.keySet();
            MtvUtilDebug.Low("MtvUiFragHandler", set.toString());
            Object aobj[] = set.toArray();
            if(aobj.length > 0)
                return (FRAG_TYPE)aobj[aobj.length - 1];
            else
                return FRAG_TYPE.TYPE_NONE;
        } else
        {
            return FRAG_TYPE.TYPE_NONE;
        }
    }

    private void remFragInternal(FRAG_TYPE frag_type)
    {
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("remFragInternal!!! FragType:").append(frag_type).toString());
        fragHashMap.remove(frag_type);
    }

    public static boolean removeUnManagedFrag(FRAG_TYPE frag_type, Activity activity)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(activity == null)
            break MISSING_BLOCK_LABEL_67;
        flag = flag1;
        if(frag_type == null)
            break MISSING_BLOCK_LABEL_67;
        flag = flag1;
        if(!activity.isResumed())
            break MISSING_BLOCK_LABEL_67;
        Object obj = activity.getFragmentManager();
        try
        {
            activity = ((FragmentManager) (obj)).findFragmentByTag(frag_type.toString());
        }
        // Misplaced declaration of an exception variable
        catch(Activity activity)
        {
            MtvUtilDebug.High("MtvUiFragHandler", (new StringBuilder()).append(frag_type).append(":").append(activity.getMessage()).toString());
            return false;
        }
        flag = flag1;
        if(activity == null)
            break MISSING_BLOCK_LABEL_67;
        obj = ((FragmentManager) (obj)).beginTransaction();
        ((FragmentTransaction) (obj)).remove(activity);
        ((FragmentTransaction) (obj)).commit();
        flag = true;
        return flag;
    }

    private void startTimer(FRAG_TYPE frag_type, long l)
    {
        Runnable runnable;
        runnable = null;
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("startTimer: fragType[").append(frag_type).append("] timeOut[").append(l).append("]").toString());
        if(frag_type != FRAG_TYPE.TYPE_UI_MAIN) goto _L2; else goto _L1
_L1:
        runnable = mTimedMainFrag;
_L8:
        if(l != -1L) goto _L4; else goto _L3
_L3:
        mHandler.removeCallbacks(runnable);
_L6:
        return;
_L2:
        if(frag_type == FRAG_TYPE.TYPE_STATUS_BAR)
            runnable = mTimedStatusFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_VOLUME)
            runnable = mTimedVolumeControlBarFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_CAPTURE)
            runnable = mTimedCaptureFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_FP_MAIN_IMG)
            runnable = mTimedFPImgFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_FP_MAIN_VID)
            runnable = mTimedFPVidFrag;
        continue; /* Loop/switch isn't completed */
_L4:
        if(l < 0L)
            break; /* Loop/switch isn't completed */
        if(runnable != null)
        {
            mHandler.removeCallbacks(runnable);
            mHandler.postDelayed(runnable, l);
            return;
        }
        if(true) goto _L6; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvUiFragHandler", "startTimer: intvalid timer value");
        return;
        if(true) goto _L8; else goto _L7
_L7:
    }

    private void stopTimer(FRAG_TYPE frag_type)
    {
        Runnable runnable;
        runnable = null;
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("stopTimer: fragType[").append(frag_type).append("]").toString());
        if(frag_type != FRAG_TYPE.TYPE_UI_MAIN) goto _L2; else goto _L1
_L1:
        runnable = mTimedMainFrag;
_L4:
        if(runnable != null)
            mHandler.removeCallbacks(runnable);
        return;
_L2:
        if(frag_type == FRAG_TYPE.TYPE_STATUS_BAR)
            runnable = mTimedStatusFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_VOLUME)
            runnable = mTimedVolumeControlBarFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_CAPTURE)
            runnable = mTimedCaptureFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_FP_MAIN_IMG)
            runnable = mTimedFPImgFrag;
        else
        if(frag_type == FRAG_TYPE.TYPE_FP_MAIN_VID)
            runnable = mTimedFPVidFrag;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public transient void addFrag(FRAG_TYPE frag_type, long l, boolean flag, int ai[])
    {
        Fragment fragment;
        String s;
        fragment = null;
        s = frag_type.toString();
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("addFrag: fragType[").append(frag_type).append("] timeOut[").append(l).append("] addToBackStack[").append(flag).append("]").toString());
        if(isFragPresent(frag_type))
            removeFrag(frag_type);
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("addFrag : fragHandler Enabled?:").append(isEnabled).toString());
        if(!isEnabled) goto _L2; else goto _L1
_L1:
        if(fragMgr == null) goto _L4; else goto _L3
_L3:
        FragmentTransaction fragmenttransaction;
        fragmenttransaction = fragMgr.beginTransaction();
        if(true)
            if(ai != null && ai.length > 1)
                fragment = getNewFrag(frag_type, ai);
            else
                fragment = getNewFrag(frag_type, new int[0]);
        if(fragment == null || !fragment.isAdded() && !fragment.isVisible()) goto _L5; else goto _L2
_L2:
        return;
_L5:
        int i;
        int j = viewGroup;
        i = j;
        if(ai != null)
        {
            i = j;
            if(ai.length > 0)
                i = ai[0];
        }
        if(!flag || fragment == null) goto _L7; else goto _L6
_L6:
        fragmenttransaction.add(i, fragment, s);
        fragmenttransaction.addToBackStack(null);
_L9:
        fragmenttransaction.commit();
_L4:
        if(l > 0L)
            startTimer(frag_type, l);
        addFragInternal(frag_type, l);
        return;
_L7:
        if(fragment != null)
            fragmenttransaction.add(i, fragment, s);
        if(true) goto _L9; else goto _L8
_L8:
    }

    public void fillFragHandlerData(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiFragHandler", "fillFragHandlerData");
        FRAG_TYPE afrag_type[] = FRAG_TYPE.values();
        int j = afrag_type.length;
        for(int i = 0; i < j; i++)
        {
            FRAG_TYPE frag_type = afrag_type[i];
            Long long1 = Long.valueOf(bundle.getLong(frag_type.toString(), 0L));
            if(long1.longValue() == 0L)
                continue;
            fragHashMap.put(frag_type, long1);
            if(long1.longValue() != -1L)
                startTimer(frag_type, ((Long)fragHashMap.get(frag_type)).longValue());
        }

    }

    public int getActivityType()
    {
        return activityType;
    }

    public void hideAllFragments()
    {
        MtvUtilDebug.Mid("MtvUiFragHandler", (new StringBuilder()).append("hideAllFragments : fragHandler Enabled?:").append(isEnabled).toString());
        if(isEnabled)
        {
            Iterator iterator = fragHashMap.keySet().iterator();
            FragmentTransaction fragmenttransaction = null;
            if(fragMgr != null)
                fragmenttransaction = fragMgr.beginTransaction();
            do
            {
                if(!iterator.hasNext())
                    break;
                FRAG_TYPE frag_type = (FRAG_TYPE)iterator.next();
                Object obj = frag_type.toString();
                if(fragMgr != null)
                {
                    obj = fragMgr.findFragmentByTag(((String) (obj)));
                    if(obj != null && !((Fragment) (obj)).isHidden() && frag_type == FRAG_TYPE.TYPE_CHANNELNUM && fragmenttransaction != null)
                        fragmenttransaction.hide(((Fragment) (obj)));
                }
            } while(true);
            if(fragmenttransaction != null)
                fragmenttransaction.commit();
        }
    }

    public boolean isFragPresent(FRAG_TYPE frag_type)
    {
        boolean flag = false;
        if(fragHashMap != null)
            flag = fragHashMap.containsKey(frag_type);
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("isFragpresent : fragType: ").append(frag_type).append(" bRetVal: ").append(flag).toString());
        return flag;
    }

    public void onUpdate(int i, Object obj, FRAG_TYPE frag_type)
    {
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("onUpdate: fragType[").append(frag_type).append("] what[").append(i).append("]").toString());
        MtvUtilDebug.Mid("MtvUiFragHandler", (new StringBuilder()).append("onUpdate : fragHandler Enabled?:").append(isEnabled).toString());
        if(fragMgr == null) goto _L2; else goto _L1
_L1:
        if(FRAG_TYPE.TYPE_ALL == frag_type) goto _L4; else goto _L3
_L3:
        Fragment fragment;
        frag_type = frag_type.toString();
        fragment = fragMgr.findFragmentByTag(frag_type);
        if(fragment == null) goto _L6; else goto _L5
_L5:
        ((MtvUiFrag)fragment).onUpdate(i, obj);
_L2:
        return;
_L6:
        MtvUtilDebug.High("MtvUiFragHandler", (new StringBuilder()).append("onUpdate failed as ").append(frag_type).append(" not present").toString());
        return;
_L4:
        if(FRAG_TYPE.TYPE_ALL == frag_type)
        {
            frag_type = fragHashMap.keySet().iterator();
            while(frag_type.hasNext()) 
            {
                Object obj1 = ((FRAG_TYPE)frag_type.next()).toString();
                obj1 = fragMgr.findFragmentByTag(((String) (obj1)));
                if(obj1 != null)
                    ((MtvUiFrag)obj1).onUpdate(i, obj);
            }
        }
        if(true) goto _L2; else goto _L7
_L7:
    }

    public FRAG_TYPE peekUiFragment()
    {
        return getTopFragType();
    }

    public void putFragHandlerData(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiFragHandler", "putFragHandlerData");
        FRAG_TYPE frag_type;
        for(Iterator iterator = fragHashMap.keySet().iterator(); iterator.hasNext(); stopTimer(frag_type))
        {
            frag_type = (FRAG_TYPE)iterator.next();
            bundle.putLong(frag_type.toString(), ((Long)fragHashMap.get(frag_type)).longValue());
            MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("fragType: ").append(frag_type).append(" timeOut: ").append(fragHashMap.get(frag_type)).toString());
        }

    }

    public void redrawTopFrag()
    {
        Object obj = getTopFragType().toString();
        if(fragMgr != null)
        {
            obj = fragMgr.findFragmentByTag(((String) (obj)));
            if(obj != null)
                ((MtvUiFrag)obj).redraw();
        }
    }

    public void removeFrag(FRAG_TYPE frag_type)
    {
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("removeFrag: fragType[").append(frag_type).append("]").toString());
        Object obj = frag_type.toString();
        if(fragMgr != null)
        {
            MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("removeFrag : fragHandler Enabled?:").append(isEnabled).toString());
            if(isEnabled)
            {
                obj = fragMgr.findFragmentByTag(((String) (obj)));
                if(obj != null && (((Fragment) (obj)).isAdded() || ((Fragment) (obj)).isVisible()))
                {
                    FragmentTransaction fragmenttransaction = fragMgr.beginTransaction();
                    fragmenttransaction.remove(((Fragment) (obj)));
                    fragmenttransaction.commit();
                }
                remFragInternal(frag_type);
            }
        }
        stopTimer(frag_type);
    }

    public void removeTimers()
    {
        MtvUtilDebug.Low("MtvUiFragHandler", "removeTimers called...");
        if(mTimedMainFrag != null)
            mHandler.removeCallbacks(mTimedMainFrag);
        if(mTimedStatusFrag != null)
            mHandler.removeCallbacks(mTimedStatusFrag);
        if(mTimedVolumeControlBarFrag != null)
            mHandler.removeCallbacks(mTimedVolumeControlBarFrag);
        if(mTimedCaptureFrag != null)
            mHandler.removeCallbacks(mTimedCaptureFrag);
        if(mTimedCaptureFrag != null)
            mHandler.removeCallbacks(mTimedFPImgFrag);
        if(mTimedCaptureFrag != null)
            mHandler.removeCallbacks(mTimedFPVidFrag);
    }

    public void reset()
    {
        removeTimers();
        setEnabled(false);
        fragHashMap.clear();
        mHandler.removeCallbacksAndMessages(null);
        fragMgr = null;
    }

    public void resetTimer(FRAG_TYPE frag_type, long l)
    {
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("resetTimer: fragType[").append(frag_type).append("] timeOut[").append(l).append("]").toString());
        startTimer(frag_type, l);
    }

    public void setActivityType(int i)
    {
        activityType = i;
    }

    public void setEnabled(boolean flag)
    {
        isEnabled = flag;
        MtvUtilDebug.Low("MtvUiFragHandler", (new StringBuilder()).append("setEnabled : fragHandler isEnabled?:").append(isEnabled).toString());
    }

    public void unhideAllFragments()
    {
        MtvUtilDebug.Mid("MtvUiFragHandler", (new StringBuilder()).append("unhideAllFragments : fragHandler Enabled?:").append(isEnabled).toString());
        if(isEnabled)
        {
            Iterator iterator = fragHashMap.keySet().iterator();
            FragmentTransaction fragmenttransaction = null;
            if(fragMgr != null)
                fragmenttransaction = fragMgr.beginTransaction();
            do
            {
                if(!iterator.hasNext())
                    break;
                FRAG_TYPE frag_type = (FRAG_TYPE)iterator.next();
                Object obj = frag_type.toString();
                if(fragMgr != null)
                {
                    obj = fragMgr.findFragmentByTag(((String) (obj)));
                    if(obj != null && ((Fragment) (obj)).isHidden() && frag_type == FRAG_TYPE.TYPE_CHANNELNUM && fragmenttransaction != null)
                        fragmenttransaction.show(((Fragment) (obj)));
                }
            } while(true);
            if(fragmenttransaction != null)
                fragmenttransaction.commit();
        }
    }

    public static final int ACT_FILE_PLAYER = 1;
    public static final int ACT_TV_LINKS = 2;
    public static final int ACT_UI_PLAYER = 0;
    public static final int CLEAR_TIMERS_INT_VAL = -1;
    private static final int OTHER_DATA_ARGS_INDEX = 1;
    private static final int OTHER_DATA_CUSTOM_PARENT_INDEX = 0;
    private static final String TAG = "MtvUiFragHandler";
    private int activityType;
    private Map fragHashMap;
    private FragmentManager fragMgr;
    private boolean isEnabled;
    private Handler mHandler = new Handler() {

        public void handleMessage(Message message)
        {
            int i = message.what;
        }

        final MtvUiFragHandler this$0;

            
            {
                this$0 = MtvUiFragHandler.this;
                super();
            }
    }
;
    private Runnable mTimedCaptureFrag = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low("MtvUiFragHandler", "mTimedCaptureFrag time out, destroying it!!");
            removeFrag(FRAG_TYPE.TYPE_CAPTURE);
        }

        final MtvUiFragHandler this$0;

            
            {
                this$0 = MtvUiFragHandler.this;
                super();
            }
    }
;
    private Runnable mTimedFPImgFrag = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low("MtvUiFragHandler", "mTimedFPImgFrag time out, destroying it!!");
            removeFrag(FRAG_TYPE.TYPE_FP_MAIN_IMG);
        }

        final MtvUiFragHandler this$0;

            
            {
                this$0 = MtvUiFragHandler.this;
                super();
            }
    }
;
    private Runnable mTimedFPVidFrag = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low("MtvUiFragHandler", "mTimedFPVidFrag time out, destroying it!!");
            removeFrag(FRAG_TYPE.TYPE_FP_MAIN_VID);
        }

        final MtvUiFragHandler this$0;

            
            {
                this$0 = MtvUiFragHandler.this;
                super();
            }
    }
;
    private Runnable mTimedMainFrag = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low("MtvUiFragHandler", "MainFrag time out, destroying it!!");
            removeFrag(FRAG_TYPE.TYPE_UI_MAIN);
        }

        final MtvUiFragHandler this$0;

            
            {
                this$0 = MtvUiFragHandler.this;
                super();
            }
    }
;
    private Runnable mTimedStatusFrag = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low("MtvUiFragHandler", "StatusFrag time out, destroying it!!");
            removeFrag(FRAG_TYPE.TYPE_STATUS_BAR);
        }

        final MtvUiFragHandler this$0;

            
            {
                this$0 = MtvUiFragHandler.this;
                super();
            }
    }
;
    private Runnable mTimedVolumeControlBarFrag = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low("MtvUiFragHandler", "mTimedVolumeControlBarFrag time out, destroying it!!");
            removeFrag(FRAG_TYPE.TYPE_VOLUME);
        }

        final MtvUiFragHandler this$0;

            
            {
                this$0 = MtvUiFragHandler.this;
                super();
            }
    }
;
    private int viewGroup;
}
