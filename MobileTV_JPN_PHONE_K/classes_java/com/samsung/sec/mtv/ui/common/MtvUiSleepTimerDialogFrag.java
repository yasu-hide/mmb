// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.os.Bundle;
import android.view.Window;
import android.widget.*;
import com.samsung.sec.mtv.utility.MtvPreferences;
import java.util.Calendar;

public class MtvUiSleepTimerDialogFrag extends DialogFragment
{
    private static class CustomTimePickerDialog extends TimePickerDialog
    {

        public void onTimeChanged(TimePicker timepicker, int i, int j)
        {
            super.onTimeChanged(timepicker, i, j);
            setTitle(0x7f0702de);
        }

        public CustomTimePickerDialog(Context context, android.app.TimePickerDialog.OnTimeSetListener ontimesetlistener, int i, int j, boolean flag)
        {
            super(context, ontimesetlistener, i, j, flag);
        }
    }


    public MtvUiSleepTimerDialogFrag()
    {
        mPreferences = null;
        mListener = null;
        timeSetListener = new android.app.TimePickerDialog.OnTimeSetListener() {

            public void onTimeSet(TimePicker timepicker, int i, int j)
            {
                MtvUtilDebug.Low("MtvUiSleepTimerDialogFrag", (new StringBuilder()).append(" hourOfDay ").append(i).append(" minuteOfDay ").append(j).toString());
                setCustomSleepTime(i, j);
                mNewCustomSleepTime = getCustomSleepTime();
                if(mNewCustomSleepTime == 0)
                {
                    Toast.makeText(getActivity(), 0x7f0702d9, 0).show();
                    return;
                } else
                {
                    setAutoTimer(mContext, 5);
                    return;
                }
            }

            final MtvUiSleepTimerDialogFrag this$0;

            
            {
                this$0 = MtvUiSleepTimerDialogFrag.this;
                super();
            }
        }
;
    }

    private AlertDialog createDialogByType(int i)
    {
        i;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 30
    //                   1 28
    //                   2 281;
           goto _L1 _L2 _L1 _L3
_L1:
        return null;
_L2:
        String as[];
        as = new String[6];
        int j = 0 + 1;
        as[0] = getString(0x7f070291);
        i = j + 1;
        as[j] = String.format(getString(0x7f0701de), new Object[] {
            Integer.valueOf(10)
        });
        j = i + 1;
        as[i] = String.format(getString(0x7f0701de), new Object[] {
            Integer.valueOf(30)
        });
        i = j + 1;
        as[j] = getString(0x7f0701da);
        j = i + 1;
        as[i] = getString(0x7f0701db);
        as[j] = getString(0x7f070220);
        mPreferences.getAutoPowerOffTime();
        JVM INSTR lookupswitch 5: default 196
    //                   0: 256
    //                   10: 261
    //                   30: 266
    //                   60: 271
    //                   120: 276;
           goto _L4 _L5 _L6 _L7 _L8 _L9
_L4:
        i = 5;
_L10:
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0701ef).setSingleChoiceItems(as, i, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int k)
            {
                MtvUtilDebug.Low("MtvUiSleepTimerDialogFrag", (new StringBuilder()).append("which button = ").append(String.valueOf(k)).toString());
                if(k == 5)
                {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("custom", true);
                    bundle.putInt("remainTime", mCurrentSleepTime);
                    MtvUiSleepTimerDialogFrag.newInstance(bundle).show(getActivity().getFragmentManager(), "dialog");
                } else
                {
                    setAutoTimer(getActivity(), k);
                }
                dialoginterface.dismiss();
            }

            final MtvUiSleepTimerDialogFrag this$0;

            
            {
                this$0 = MtvUiSleepTimerDialogFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int k)
            {
                dialoginterface.dismiss();
            }

            final MtvUiSleepTimerDialogFrag this$0;

            
            {
                this$0 = MtvUiSleepTimerDialogFrag.this;
                super();
            }
        }
).create();
        alertdialog.getWindow().addFlags(1024);
        return alertdialog;
_L5:
        i = 0;
          goto _L10
_L6:
        i = 1;
          goto _L10
_L7:
        i = 2;
          goto _L10
_L8:
        i = 3;
          goto _L10
_L9:
        i = 4;
          goto _L10
_L3:
        Object obj = getString(0x7f0702e5);
        obj = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0701ef).setMessage(((CharSequence) (obj))).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int k)
            {
                mListener.onFragEvent(224, null);
                mListener = null;
            }

            final MtvUiSleepTimerDialogFrag this$0;

            
            {
                this$0 = MtvUiSleepTimerDialogFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int k)
            {
                MtvUiSleepTimerDialogFrag.setAlarm(getActivity(), mPreferences.getAutoPowerOffTime(), true);
                mListener = null;
            }

            final MtvUiSleepTimerDialogFrag this$0;

            
            {
                this$0 = MtvUiSleepTimerDialogFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (obj)).getWindow().addFlags(1024);
        return ((AlertDialog) (obj));
    }

    private int getCustomSleepTime()
    {
        return mNewCustomSleepTime;
    }

    public static MtvUiSleepTimerDialogFrag newInstance(Bundle bundle)
    {
        MtvUiSleepTimerDialogFrag mtvuisleeptimerdialogfrag = new MtvUiSleepTimerDialogFrag();
        mtvuisleeptimerdialogfrag.setArguments(bundle);
        return mtvuisleeptimerdialogfrag;
    }

    public static void setAlarm(Context context, long l, boolean flag)
    {
        MtvUtilDebug.Low("MtvUiSleepTimerDialogFrag", (new StringBuilder()).append("setAlarm aftertime_min ").append(l).toString());
        if(l < 1L)
            flag = false;
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, 1234, new Intent("com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"), 0x8000000);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.add(13, (int)(l * 60L));
        if(flag)
        {
            ((AlarmManager)context.getSystemService("alarm")).setExact(1, calendar.getTimeInMillis(), pendingintent);
            MtvUtilDebug.Low("MtvUiSleepTimerDialogFrag", (new StringBuilder()).append("auto-power off set : after min : ").append(l).toString());
            return;
        } else
        {
            ((AlarmManager)context.getSystemService("alarm")).cancel(pendingintent);
            MtvUtilDebug.Low("MtvUiSleepTimerDialogFrag", "cancelled auto-power off ");
            return;
        }
    }

    private void setAutoTimer(Context context, int i)
    {
        boolean flag;
        boolean flag1;
        flag1 = true;
        flag = flag1;
        i;
        JVM INSTR tableswitch 0 5: default 44
    //                   0 87
    //                   1 97
    //                   2 109
    //                   3 121
    //                   4 133
    //                   5 47;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L7:
        break; /* Loop/switch isn't completed */
_L1:
        flag = flag1;
_L9:
        mPreferences.setAutoPowerOffTime(mNewCustomSleepTime);
        setAlarm(context, mNewCustomSleepTime, flag);
        mListener.onFragEvent(223, null);
        mListener = null;
        return;
_L2:
        mNewCustomSleepTime = 0;
        flag = false;
        continue; /* Loop/switch isn't completed */
_L3:
        mNewCustomSleepTime = 10;
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L4:
        mNewCustomSleepTime = 30;
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L5:
        mNewCustomSleepTime = 60;
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L6:
        mNewCustomSleepTime = 120;
        flag = flag1;
        if(true) goto _L9; else goto _L8
_L8:
    }

    private void setCustomSleepTime(int i, int j)
    {
        mNewCustomSleepTime = i * 60 + j;
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        Bundle bundle1;
label0:
        {
            mContext = getActivity().getApplicationContext();
            mPreferences = new MtvPreferences(mContext);
            mListener = (MtvUiFrag.IMtvFragEventListener)getActivity();
            bundle1 = getArguments();
            bundle = null;
            if(bundle1 != null)
            {
                mCurrentSleepTime = bundle1.getInt("remainTime", 0);
                if(!bundle1.getBoolean("expire", false))
                    break label0;
                bundle = createDialogByType(2);
            }
            return bundle;
        }
        if(bundle1.getBoolean("custom", false))
        {
            bundle = new CustomTimePickerDialog(getActivity(), timeSetListener, mCurrentSleepTime / 60, mCurrentSleepTime % 60, true);
            TextView textview = new TextView(getActivity());
            textview.setText((new StringBuilder()).append("     ").append(getString(0x7f0702de)).toString());
            bundle.setCustomTitle(textview);
            return bundle;
        } else
        {
            return createDialogByType(0);
        }
    }

    public static final String MTV_UI_SLEEP_TIMER_ARG_REMAIN_TIME = "remainTime";
    private static final int MTV_UI_SLEEP_TIMER_DIALOG_TYPE_EXIT_APPLICATION = 2;
    private static final int MTV_UI_SLEEP_TIMER_DIALOG_TYPE_SELECTION = 0;
    private static final int MTV_UI_SLEEP_TIMER_DIALOG_TYPE_SELECTION_CUSTOM = 1;
    public static final String MTV_UI_SLEEP_TIMER_DIALOG_TYPE_SELECTION_CUSTOM_STRING = "custom";
    public static final int MTV_UI_SLEEP_TIMER_PENDING_INTENT_REQUEST_CODE = 1234;
    public static final String MTV_UI_SLEEP_TIMER_TURN_OFF = "expire";
    private static final int SLEEP_TIMER_10MIN = 1;
    private static final int SLEEP_TIMER_1HOUR = 3;
    private static final int SLEEP_TIMER_2HOUR = 4;
    private static final int SLEEP_TIMER_30MIN = 2;
    private static final int SLEEP_TIMER_CUSTOM = 5;
    private static final int SLEEP_TIMER_NONE = 0;
    protected static final String TAG = "MtvUiSleepTimerDialogFrag";
    private Context mContext;
    private int mCurrentSleepTime;
    private MtvUiFrag.IMtvFragEventListener mListener;
    private int mNewCustomSleepTime;
    private MtvPreferences mPreferences;
    private android.app.TimePickerDialog.OnTimeSetListener timeSetListener;




/*
    static int access$102(MtvUiSleepTimerDialogFrag mtvuisleeptimerdialogfrag, int i)
    {
        mtvuisleeptimerdialogfrag.mNewCustomSleepTime = i;
        return i;
    }

*/








/*
    static MtvUiFrag.IMtvFragEventListener access$702(MtvUiSleepTimerDialogFrag mtvuisleeptimerdialogfrag, MtvUiFrag.IMtvFragEventListener imtvfrageventlistener)
    {
        mtvuisleeptimerdialogfrag.mListener = imtvfrageventlistener;
        return imtvfrageventlistener;
    }

*/
}
