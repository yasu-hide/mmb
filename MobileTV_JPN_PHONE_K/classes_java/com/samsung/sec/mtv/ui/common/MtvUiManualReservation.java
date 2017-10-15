// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.*;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.utility.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvBaseActivity

public class MtvUiManualReservation extends MtvBaseActivity
    implements android.view.View.OnClickListener, MtvUiFrag.IMtvFragEventListener, android.view.View.OnTouchListener, TextWatcher
{
    private static final class PopupType extends Enum
    {

        public static PopupType valueOf(String s)
        {
            return (PopupType)Enum.valueOf(com/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType, s);
        }

        public static PopupType[] values()
        {
            return (PopupType[])$VALUES.clone();
        }

        private static final PopupType $VALUES[];
        public static final PopupType CHANNEL_NUMBER;
        public static final PopupType END_DATE;
        public static final PopupType END_TIME;
        public static final PopupType NONE;
        public static final PopupType RESRV_TYPE;
        public static final PopupType START_DATE;
        public static final PopupType START_TIME;

        static 
        {
            NONE = new PopupType("NONE", 0);
            RESRV_TYPE = new PopupType("RESRV_TYPE", 1);
            CHANNEL_NUMBER = new PopupType("CHANNEL_NUMBER", 2);
            START_DATE = new PopupType("START_DATE", 3);
            END_DATE = new PopupType("END_DATE", 4);
            START_TIME = new PopupType("START_TIME", 5);
            END_TIME = new PopupType("END_TIME", 6);
            $VALUES = (new PopupType[] {
                NONE, RESRV_TYPE, CHANNEL_NUMBER, START_DATE, END_DATE, START_TIME, END_TIME
            });
        }

        private PopupType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class TimePickerFragment extends DialogFragment
        implements android.app.TimePickerDialog.OnTimeSetListener
    {

        public int getHour()
        {
            return hour;
        }

        public int getMinute()
        {
            return minute;
        }

        public void onAttach(Activity activity)
        {
            super.onAttach(activity);
            try
            {
                mListener = (MtvUiFrag.IMtvFragEventListener)activity;
                return;
            }
            catch(ClassCastException classcastexception)
            {
                throw new ClassCastException((new StringBuilder()).append(activity.toString()).append(" must implement IMtvFragEventListener").toString());
            }
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
            {
                hour = bundle.getInt("HOUR_OF_DAY");
                minute = bundle.getInt("MINUTE");
                int i = bundle.getInt("TYPE");
                if(i == PopupType.START_TIME.ordinal())
                    type = PopupType.START_TIME;
                else
                if(i == PopupType.END_TIME.ordinal())
                    type = PopupType.END_TIME;
                else
                    type = PopupType.NONE;
            }
            bundle = new TimePickerDialog(getActivity(), 2, this, hour, minute, DateFormat.is24HourFormat(getActivity()));
            bundle.setCanceledOnTouchOutside(false);
            return bundle;
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            super.onSaveInstanceState(bundle);
            bundle.putInt("HOUR_OF_DAY", hour);
            bundle.putInt("MINUTE", minute);
            bundle.putInt("TYPE", type.ordinal());
        }

        public void onTimeSet(TimePicker timepicker, int i, int j)
        {
            char c;
            c = '\uFFFF';
            MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("onTimeSet: hour - ").append(i).append(" minute - ").append(j).append(" type - ").append(type).toString());
            cal.set(11, i);
            cal.set(12, j);
            if(type != PopupType.START_TIME) goto _L2; else goto _L1
_L1:
            c = '\u010F';
_L4:
            mListener.onFragEvent(c, cal);
            hour = i;
            minute = j;
            return;
_L2:
            if(type == PopupType.END_TIME)
                c = '\u0110';
            if(true) goto _L4; else goto _L3
_L3:
        }

        Calendar cal;
        private int hour;
        private MtvUiFrag.IMtvFragEventListener mListener;
        private int minute;
        private PopupType type;

        public TimePickerFragment()
        {
            cal = Calendar.getInstance();
        }

        public TimePickerFragment(int i, int j, PopupType popuptype)
        {
            cal = Calendar.getInstance();
            hour = i;
            minute = j;
            type = popuptype;
        }
    }


    public MtvUiManualReservation()
    {
        mCurrentPopupType = PopupType.NONE;
        mIsReserveFromEPG = false;
        mPch = -1;
        selectedItem = 0;
        mPrevReservation = null;
        mChannelListIndex = -1;
        mMtvPreferences = null;
        mSavedBundle = null;
        reserve_save_menu = null;
        reserve_cancel_menu = null;
        mEpgreservationServiceID = -1;
        mProgramName = null;
        startTimeFragment = null;
        endTimeFragment = null;
        mStartDateSetListener = new android.app.DatePickerDialog.OnDateSetListener() {

            public void onDateSet(DatePicker datepicker, int i, int j, int k)
            {
                datepicker = new Date(i, j, k);
                if(datepicker.getTime() < getDefaultDate())
                {
                    startTimeShouldBeSetAfterCurrentTimeAlert();
                    return;
                }
                if(datepicker.getTime() == getDefaultDate())
                {
                    long l1 = System.currentTimeMillis();
                    int l = (new Date(l1)).getHours();
                    int i1 = (new Date(l1)).getMinutes();
                    if(l > mStartHour)
                    {
                        startTimeShouldBeSetAfterCurrentTimeAlert();
                        return;
                    }
                    if(l == mStartHour && i1 >= mStartMinute)
                    {
                        startTimeShouldBeSetAfterCurrentTimeAlert();
                        return;
                    }
                }
                if(datepicker.getTime() - getDefaultDate() > 0x240c8400L)
                {
                    setStartTimeWithinOneWeekAlert();
                    return;
                } else
                {
                    mStartYear = i;
                    mStartMonth = j + 1;
                    mStartDay = k;
                    mReserveStartDate.setText(formatDate(mStartYear, mStartMonth - 1, mStartDay));
                    return;
                }
            }

            final MtvUiManualReservation this$0;

            
            {
                this$0 = MtvUiManualReservation.this;
                super();
            }
        }
;
        mEndDateSetListener = new android.app.DatePickerDialog.OnDateSetListener() {

            public void onDateSet(DatePicker datepicker, int i, int j, int k)
            {
                mEndYear = i;
                mEndMonth = j + 1;
                mEndDay = k;
                mReserveEndDate.setText(formatDate(mEndYear, mEndMonth - 1, mEndDay));
            }

            final MtvUiManualReservation this$0;

            
            {
                this$0 = MtvUiManualReservation.this;
                super();
            }
        }
;
        mDismissListener = new android.content.DialogInterface.OnDismissListener() {

            public void onDismiss(DialogInterface dialoginterface)
            {
                mReserveDialog = null;
            }

            final MtvUiManualReservation this$0;

            
            {
                this$0 = MtvUiManualReservation.this;
                super();
            }
        }
;
        popupSaveDate = Calendar.getInstance();
    }

    private MtvReservation convertEPGInfoToReserve(int i, String s, int j, String s1, String s2, int k)
    {
        Object obj;
        int l = -1;
        long l1 = 0L;
        long l2 = 0L;
        Object obj1 = null;
        obj = null;
        String s3 = "";
        SimpleDateFormat simpledateformat;
        if(i == 1)
            i = 0;
        else
            i = 1;
        if(s != null)
            s3 = s;
        s = MtvChannelManager.findByPChannel(this, j);
        if(s != null)
            l = ((MtvChannel) (s)).mVirtualNum;
        simpledateformat = new SimpleDateFormat("yyyy/M/d H:mm");
        s = obj1;
        s1 = simpledateformat.parse(s1);
        s = s1;
        s2 = simpledateformat.parse(s2);
        s = s2;
        s2 = s1;
        s1 = s;
_L2:
        if(s2 != null)
            l1 = s2.getTime();
        if(s1 != null)
            l2 = s1.getTime();
        return new MtvReservation(j, l, -1, l1, l2, s3, "", i, 0, k);
        s1;
        MtvUtilDebug.Low("MtvUiManualReservation", "convertEPGInfoToReserve caught in date parsing");
        s1.printStackTrace();
        s1 = obj;
        s2 = s;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private String formatDate(int i, int j, int k)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy/M/d");
        simpledateformat.applyPattern((new StringBuilder()).append(simpledateformat.toPattern()).append(" (EEE)").toString());
        return simpledateformat.format(new Date(i - 1900, j, k));
    }

    private String formatTime(int i, int j)
    {
        Object obj = new SimpleDateFormat("mm");
        Object obj1 = new Date();
        ((Date) (obj1)).setMinutes(j);
        obj1 = ((SimpleDateFormat) (obj)).format(((Date) (obj1))).toString();
        if(DateFormat.is24HourFormat(getApplicationContext()))
            return (new StringBuilder()).append(i).append(" : ").append(((String) (obj1))).toString();
        if(Locale.getDefault().getLanguage().equals("en"))
        {
            if(i < 12)
            {
                StringBuilder stringbuilder = new StringBuilder();
                if(i == 0)
                    obj = "12";
                else
                    obj = Integer.valueOf(i);
                return stringbuilder.append(obj).append(" : ").append(((String) (obj1))).append(" ").append(DateUtils.getAMPMString(0).toUpperCase()).toString();
            }
            StringBuilder stringbuilder1 = new StringBuilder();
            if(i == 12)
                obj = "12";
            else
                obj = Integer.valueOf(i - 12);
            return stringbuilder1.append(obj).append(" : ").append(((String) (obj1))).append(" ").append(DateUtils.getAMPMString(1).toUpperCase()).toString();
        }
        if(i < 12)
        {
            if(Locale.getDefault().getLanguage().equals("ja"))
            {
                StringBuilder stringbuilder2 = (new StringBuilder()).append(DateUtils.getAMPMString(0).toUpperCase()).append(" ");
                if(i == 0)
                    obj = "0";
                else
                    obj = Integer.valueOf(i);
                return stringbuilder2.append(obj).append(" : ").append(((String) (obj1))).toString();
            }
            StringBuilder stringbuilder3 = (new StringBuilder()).append(DateUtils.getAMPMString(0).toUpperCase()).append(" ");
            if(i == 0)
                obj = "12";
            else
                obj = Integer.valueOf(i);
            return stringbuilder3.append(obj).append(" : ").append(((String) (obj1))).toString();
        }
        if(Locale.getDefault().getLanguage().equals("ja"))
        {
            StringBuilder stringbuilder4 = (new StringBuilder()).append(DateUtils.getAMPMString(1).toUpperCase()).append(" ");
            if(i == 12)
                obj = "0";
            else
                obj = Integer.valueOf(i - 12);
            return stringbuilder4.append(obj).append(" : ").append(((String) (obj1))).toString();
        }
        StringBuilder stringbuilder5 = (new StringBuilder()).append(DateUtils.getAMPMString(1).toUpperCase()).append(" ");
        if(i == 12)
            obj = "12";
        else
            obj = Integer.valueOf(i - 12);
        return stringbuilder5.append(obj).append(" : ").append(((String) (obj1))).toString();
    }

    private void initReservationVariables()
    {
        mReservationType = -1;
        long l = System.currentTimeMillis();
        Object obj = new SimpleDateFormat("yyyy");
        SimpleDateFormat simpledateformat = new SimpleDateFormat("H");
        Object obj1 = new SimpleDateFormat("M");
        Object obj2 = new SimpleDateFormat("d");
        mStartYear = Integer.parseInt(((SimpleDateFormat) (obj)).format(new Date(l)));
        mStartMonth = Integer.parseInt(((SimpleDateFormat) (obj1)).format(new Date(l)));
        mStartDay = Integer.parseInt(((SimpleDateFormat) (obj2)).format(new Date(l)));
        mStartHour = Integer.parseInt(simpledateformat.format(new Date(l)));
        mStartMinute = 0;
        if(mStartHour < 23)
        {
            mStartHour = mStartHour + 1;
        } else
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.add(5, 1);
            long l1 = calendar.getTimeInMillis();
            mStartYear = Integer.parseInt(((SimpleDateFormat) (obj)).format(new Date(l1)));
            mStartMonth = Integer.parseInt(((SimpleDateFormat) (obj1)).format(new Date(l1)));
            mStartDay = Integer.parseInt(((SimpleDateFormat) (obj2)).format(new Date(l1)));
            mStartHour = 0;
        }
        obj = "";
        obj1 = "";
        obj2 = "";
        if(mIsReserveFromEPG)
        {
            if(getIntent() != null)
            {
                Intent intent = getIntent();
                int i = intent.getIntExtra("EXTRA_RESERVATION_TYPE", -1);
                mEpgreservationServiceID = intent.getIntExtra("EXTRA_RESERVATION_SERVICE_ID", -1);
                int j = intent.getIntExtra("EXTRA_RESERVATION_CHANNEL_NO", -1);
                if(intent.getStringExtra("EXTRA_RESERVATION_START_DATE") != null)
                    obj = intent.getStringExtra("EXTRA_RESERVATION_START_DATE");
                if(intent.getStringExtra("EXTRA_RESERVATION_END_DATE") != null)
                    obj1 = intent.getStringExtra("EXTRA_RESERVATION_END_DATE");
                if(intent.getStringExtra("EXTRA_RESERVATION_PROGRAM_NAME") != null)
                    obj2 = intent.getStringExtra("EXTRA_RESERVATION_PROGRAM_NAME");
                MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("epgReservationChNo = ").append(j).append(" mEpgreservationServiceID= ").append(mEpgreservationServiceID).toString());
                setRemineReservation(convertEPGInfoToReserve(i, ((String) (obj2)), j, ((String) (obj)), ((String) (obj1)), mEpgreservationServiceID));
            }
        } else
        if(mPrevReservation != null)
            setRemineReservation(mPrevReservation);
        else
            setNewReserve();
        MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("initReservationVariables() :: mPch = ").append(mPch).append(" mChannelServiceID = ").append(mChannelServiceID).toString());
    }

    private void initViewControl()
    {
        mChannelNum = (Button)findViewById(0x7f0a0014);
        mDummyEditTextBox = (EditText)findViewById(0x7f0a0012);
        mProgramInputName = (EditText)findViewById(0x7f0a0019);
        mReserveStartDate = (Button)findViewById(0x7f0a0015);
        mReserveEndDate = (Button)findViewById(0x7f0a0017);
        mReserveStartTime = (Button)findViewById(0x7f0a0016);
        mReserveEndTime = (Button)findViewById(0x7f0a0018);
        mReserveType = (Button)findViewById(0x7f0a0013);
        mProgramInputName.setImeOptions(6);
        mProgramInputName.setOnTouchListener(this);
        mChannelNum.setOnClickListener(this);
        mReserveStartDate.setOnClickListener(this);
        mReserveStartTime.setOnClickListener(this);
        mReserveEndDate.setOnClickListener(this);
        mReserveEndTime.setOnClickListener(this);
        mReserveType.setOnClickListener(this);
        InputFilter inputfilter = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
            {
                for(; i < j; i++)
                    if(charsequence.charAt(i) == ';' || charsequence.charAt(i) == '=')
                    {
                        Toast.makeText(MtvBaseActivity.mCurrentAcitivity, getResources().getString(0x7f0702d7), 0).show();
                        return "";
                    }

                if(mProgramName != null && mProgramName.getBytes().length >= 120)
                    return "";
                else
                    return null;
            }

            final MtvUiManualReservation this$0;

            
            {
                this$0 = MtvUiManualReservation.this;
                super();
            }
        }
;
        mProgramInputName.setFilters(new InputFilter[] {
            inputfilter, new android.text.InputFilter.LengthFilter(255)
        });
        mProgramInputName.addTextChangedListener(this);
    }

    private void onEndTimeSet(int i, int j)
    {
        Date date = new Date(mEndYear, mEndMonth - 1, mEndDay);
        Date date1 = new Date(mStartYear, mStartMonth - 1, mStartDay);
        if(date.getTime() == date1.getTime())
        {
            int k = mStartHour;
            int l = mStartMinute;
            if(k > i)
            {
                EndTimeShouldBeSetAfterStartTimeAlert();
                return;
            }
            if(k == i && l >= j)
            {
                EndTimeShouldBeSetAfterStartTimeAlert();
                return;
            }
        }
        mEndHour = i;
        mEndMinute = j;
        mReserveEndTime.setText(formatTime(mEndHour, mEndMinute));
    }

    private void onStartTimeSet(int i, int j)
    {
        if((new Date(mStartYear, mStartMonth - 1, mStartDay)).getTime() == getDefaultDate())
        {
            long l1 = System.currentTimeMillis();
            int k = (new Date(l1)).getHours();
            int l = (new Date(l1)).getMinutes();
            if(k > i)
            {
                startTimeShouldBeSetAfterCurrentTimeAlert();
                return;
            }
            if(k == i && l >= j)
            {
                startTimeShouldBeSetAfterCurrentTimeAlert();
                return;
            }
        }
        mStartHour = i;
        mStartMinute = j;
        mReserveStartTime.setText(formatTime(mStartHour, mStartMinute));
    }

    private void reloadReservationVariables(Bundle bundle)
    {
        mChannelListIndex = bundle.getInt("ChannelListIndex");
        mEpgreservationServiceID = bundle.getInt("epgServiceId");
        mPch = bundle.getInt("mPch");
        MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("reloadReservationVariables() :: mPch = ").append(mPch).append(" mChannelListIndex =").append(mChannelListIndex).toString());
        mChannelNum.setText(getDisplayChannelText(mChannelListIndex));
        Calendar calendar;
        if(mChannelListIndex > -1)
        {
            mPch = mChannelsList[mChannelListIndex].mPhysicalNum;
            mVch = mChannelsList[mChannelListIndex].mVirtualNum;
            mChannelServiceID = mChannelsList[mChannelListIndex].mServiceID;
            mChannelNum.setText(getDisplayChannelText(mChannelListIndex));
        } else
        if(mPch != -1)
            mChannelNum.setText((new StringBuilder()).append(getString(0x7f070043)).append(mPch).toString());
        calendar = (Calendar)bundle.getSerializable("mStartDate");
        mStartYear = calendar.get(1);
        mStartMonth = calendar.get(2);
        mStartDay = calendar.get(5);
        mStartHour = calendar.get(11);
        mStartMinute = calendar.get(12);
        mReserveStartDate.setText(formatDate(mStartYear, mStartMonth - 1, mStartDay));
        mReserveStartTime.setText(formatTime(mStartHour, mStartMinute));
        calendar = (Calendar)bundle.getSerializable("mEndDate");
        mEndYear = calendar.get(1);
        mEndMonth = calendar.get(2);
        mEndDay = calendar.get(5);
        mEndHour = calendar.get(11);
        mEndMinute = calendar.get(12);
        mReserveEndDate.setText(formatDate(mEndYear, mEndMonth - 1, mEndDay));
        mReserveEndTime.setText(formatTime(mEndHour, mEndMinute));
        mReservationType = bundle.getInt("mReservationType");
        if(mReservationType == 1)
            mReserveType.setText(0x7f070315);
        else
            mReserveType.setText(0x7f0702ad);
        mProgramInputName.setText(bundle.getString("mProgramInputName"));
    }

    private void reset()
    {
        mIsReserveFromEPG = false;
        mReserveDialog = null;
        mPrevReservation = null;
        mChannelsList = null;
        mChannelListIndex = -1;
        mMtvPreferences = null;
        mSavedBundle = null;
    }

    private void saveManualReserve()
    {
        long l = (new Date(mStartYear - 1900, mStartMonth - 1, mStartDay, mStartHour, mStartMinute, 0)).getTime();
        long l1 = (new Date(mEndYear - 1900, mEndMonth - 1, mEndDay, mEndHour, mEndMinute, 0)).getTime();
        Object obj = ((EditText)findViewById(0x7f0a0019)).getText().toString().trim();
        int i;
        if(mIsReserveFromEPG && mChannelServiceID != 0)
        {
            i = mEpgreservationServiceID;
            MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("saveManualReserve: mEpgreservationServiceID - ").append(mEpgreservationServiceID).toString());
        } else
        {
            i = mChannelServiceID;
        }
        MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("saveManualReserve:: mServiceID: ").append(i).toString());
        obj = new MtvReservation(mPch, mVch, -1, l, l1, ((String) (obj)), "", mReservationType, 0, i);
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("saving manualReserve this.mPch = ").append(mPch).toString());
        if(mPrevReservation != null)
            MtvReservationManager.update(this, ((MtvReservation) (obj)), mPrevReservation.mUriId);
        else
            MtvReservationManager.updateOrInsert(this, ((MtvReservation) (obj)));
        MtvUtilSetReservationAlarm.setReservationAlarm(this, ((MtvReservation) (obj)).mTimeStart, true, false);
        Toast.makeText(this, getString(0x7f0702c4), 0).show();
        obj = new Intent();
        ((Intent) (obj)).setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
        ((Intent) (obj)).putExtra("popup_type", 3);
        ((Intent) (obj)).putExtra("Alert_title", true);
        ((Intent) (obj)).setFlags(0x14000000);
        MtvUtilDebug.High("MtvUiManualReservation", "Mobile Tv Lanuch antenna");
        startActivity(((Intent) (obj)));
        reset();
        finish();
    }

    private void setRemineReservation(MtvReservation mtvreservation)
    {
        boolean flag1 = false;
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if(i < mChannelsList.length)
                {
                    if(mChannelsList[i].mPhysicalNum != mtvreservation.mPch || mChannelsList[i].mServiceID != mtvreservation.mPgmServiceID && mChannelsList[i].mServiceID != 0)
                        break label0;
                    mChannelNum.setText(getDisplayChannelText(i));
                    mPch = mChannelsList[i].mPhysicalNum;
                    mVch = mChannelsList[i].mVirtualNum;
                    mChannelServiceID = mChannelsList[i].mServiceID;
                    mChannelListIndex = i;
                    flag = true;
                }
                if(!flag)
                {
                    mChannelNum.setText(Integer.toString(mtvreservation.mPch));
                    mPch = mtvreservation.mPch;
                    mVch = -1;
                    mChannelServiceID = 0;
                }
                mProgramInputName.setText(mtvreservation.mPgmName);
                SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy/M/d");
                simpledateformat.applyPattern((new StringBuilder()).append(simpledateformat.toPattern()).append(" (EEE)").toString());
                mReserveStartDate.setText(simpledateformat.format(new Date(mtvreservation.mTimeStart)));
                mReserveEndDate.setText(simpledateformat.format(new Date(mtvreservation.mTimeEnd)));
                SimpleDateFormat simpledateformat1 = new SimpleDateFormat("H");
                SimpleDateFormat simpledateformat2 = new SimpleDateFormat("mm");
                SimpleDateFormat simpledateformat3;
                SimpleDateFormat simpledateformat4;
                if(DateFormat.is24HourFormat(getApplicationContext()))
                {
                    mReserveStartTime.setText((new StringBuilder()).append(simpledateformat1.format(new Date(mtvreservation.mTimeStart))).append(" : ").append(simpledateformat2.format(new Date(mtvreservation.mTimeStart))).toString());
                } else
                {
                    int j = Integer.parseInt(simpledateformat1.format(new Date(mtvreservation.mTimeStart)));
                    if(j < 12)
                    {
                        Button button = mReserveStartTime;
                        StringBuilder stringbuilder = new StringBuilder();
                        Object obj;
                        if(j == 0)
                            obj = "12";
                        else
                            obj = Integer.valueOf(j);
                        button.setText(stringbuilder.append(obj).append(" : ").append(simpledateformat2.format(new Date(mtvreservation.mTimeStart))).append(" ").append(DateUtils.getAMPMString(0).toUpperCase()).toString());
                    } else
                    {
                        Button button1 = mReserveStartTime;
                        StringBuilder stringbuilder1 = new StringBuilder();
                        Object obj1;
                        if(j == 12)
                            obj1 = "12";
                        else
                            obj1 = Integer.valueOf(j - 12);
                        button1.setText(stringbuilder1.append(obj1).append(" : ").append(simpledateformat2.format(new Date(mtvreservation.mTimeStart))).append(" ").append(DateUtils.getAMPMString(1).toUpperCase()).toString());
                    }
                }
                if(DateFormat.is24HourFormat(getApplicationContext()))
                {
                    mReserveEndTime.setText((new StringBuilder()).append(simpledateformat1.format(new Date(mtvreservation.mTimeEnd))).append(" : ").append(simpledateformat2.format(new Date(mtvreservation.mTimeEnd))).toString());
                } else
                {
                    int k = Integer.parseInt(simpledateformat1.format(new Date(mtvreservation.mTimeEnd)));
                    if(k < 12)
                    {
                        Button button2 = mReserveEndTime;
                        StringBuilder stringbuilder2 = new StringBuilder();
                        Object obj2;
                        if(k == 0)
                            obj2 = "12";
                        else
                            obj2 = Integer.valueOf(k);
                        button2.setText(stringbuilder2.append(obj2).append(" : ").append(simpledateformat2.format(new Date(mtvreservation.mTimeEnd))).append(" ").append(DateUtils.getAMPMString(0).toUpperCase()).toString());
                    } else
                    {
                        Button button3 = mReserveEndTime;
                        StringBuilder stringbuilder3 = new StringBuilder();
                        Object obj3;
                        if(k == 12)
                            obj3 = "12";
                        else
                            obj3 = Integer.valueOf(k - 12);
                        button3.setText(stringbuilder3.append(obj3).append(" : ").append(simpledateformat2.format(new Date(mtvreservation.mTimeEnd))).append(" ").append(DateUtils.getAMPMString(1).toUpperCase()).toString());
                    }
                }
                if(mtvreservation.mPgmType == 0)
                {
                    mReserveType.setText(0x7f0702ad);
                    mReservationType = 0;
                } else
                {
                    mReserveType.setText(0x7f070315);
                    mReservationType = 1;
                }
                simpledateformat = new SimpleDateFormat("yyyy");
                simpledateformat3 = new SimpleDateFormat("M");
                simpledateformat4 = new SimpleDateFormat("d");
                mStartYear = Integer.parseInt(simpledateformat.format(new Date(mtvreservation.mTimeStart)));
                mStartMonth = Integer.parseInt(simpledateformat3.format(new Date(mtvreservation.mTimeStart)));
                mStartDay = Integer.parseInt(simpledateformat4.format(new Date(mtvreservation.mTimeStart)));
                mStartHour = Integer.parseInt(simpledateformat1.format(new Date(mtvreservation.mTimeStart)));
                mStartMinute = Integer.parseInt(simpledateformat2.format(new Date(mtvreservation.mTimeStart)));
                mEndYear = Integer.parseInt(simpledateformat.format(new Date(mtvreservation.mTimeEnd)));
                mEndMonth = Integer.parseInt(simpledateformat3.format(new Date(mtvreservation.mTimeEnd)));
                mEndDay = Integer.parseInt(simpledateformat4.format(new Date(mtvreservation.mTimeEnd)));
                mEndHour = Integer.parseInt(simpledateformat1.format(new Date(mtvreservation.mTimeEnd)));
                mEndMinute = Integer.parseInt(simpledateformat2.format(new Date(mtvreservation.mTimeEnd)));
                checkInputAllField(true);
                return;
            }
            i++;
        } while(true);
    }

    private void showMtvDialog(int i)
    {
        if(mReserveDialog != null) goto _L2; else goto _L1
_L1:
        final CharSequence channelNameList[] = Calendar.getInstance();
        i;
        JVM INSTR tableswitch 0 5: default 52
    //                   0 68
    //                   1 317
    //                   2 434
    //                   3 175
    //                   4 480
    //                   5 597;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L3:
        if(mReserveDialog != null)
            mReserveDialog.setCanceledOnTouchOutside(false);
_L2:
        return;
_L4:
        mCurrentPopupType = PopupType.RESRV_TYPE;
        channelNameList = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0702d5);
        if(mReservationType == 0)
            i = 0;
        else
            i = 1;
        mReserveDialog = channelNameList.setSingleChoiceItems(0x7f050012, i, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                if(j == 0)
                {
                    mReservationType = 0;
                    ((Button)findViewById(0x7f0a0013)).setText(0x7f0702ad);
                } else
                {
                    mReservationType = 1;
                    ((Button)findViewById(0x7f0a0013)).setText(0x7f070315);
                }
                dialoginterface.dismiss();
            }

            final MtvUiManualReservation this$0;

            
            {
                this$0 = MtvUiManualReservation.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                dialoginterface.dismiss();
            }

            final MtvUiManualReservation this$0;

            
            {
                this$0 = MtvUiManualReservation.this;
                super();
            }
        }
).create();
        mReserveDialog.setOnDismissListener(mDismissListener);
        mReserveDialog.show();
        mReserveDialog.getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L7:
        mCurrentPopupType = PopupType.CHANNEL_NUMBER;
        channelNameList = new CharSequence[mChannelsList.length];
        for(i = 0; i < mChannelsList.length; i++)
        {
            channelNameList[i] = getDisplayChannelText(i);
            if(channelNameList[i].equals(mChannelNum.getText()))
                mChannelListIndex = i;
        }

        mReserveDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0702d1).setSingleChoiceItems(channelNameList, mChannelListIndex, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                String s = (String)channelNameList[j];
                mChannelNum.setText(s);
                mChannelListIndex = j;
                mPch = mChannelsList[mChannelListIndex].mPhysicalNum;
                mVch = mChannelsList[mChannelListIndex].mVirtualNum;
                mChannelServiceID = mChannelsList[mChannelListIndex].mServiceID;
                checkInputAllField(true);
                dialoginterface.dismiss();
            }

            final MtvUiManualReservation this$0;
            final CharSequence val$channelNameList[];

            
            {
                this$0 = MtvUiManualReservation.this;
                channelNameList = acharsequence;
                super();
            }
        }
).setNegativeButton(0x7f07020b, null).create();
        mReserveDialog.setOnDismissListener(mDismissListener);
        mReserveDialog.show();
        mReserveDialog.getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L5:
        mCurrentPopupType = PopupType.START_DATE;
        mReserveDialog = new DatePickerDialog(this, 2, mStartDateSetListener, mStartYear, mStartMonth - 1, mStartDay);
        channelNameList.set(2000, 0, 1);
        ((DatePickerDialog)mReserveDialog).getDatePicker().setMinDate(channelNameList.getTimeInMillis());
        channelNameList.clear();
        channelNameList.set(2037, 11, 31);
        ((DatePickerDialog)mReserveDialog).getDatePicker().setMaxDate(channelNameList.getTimeInMillis());
        mReserveDialog.setOnDismissListener(mDismissListener);
        mReserveDialog.show();
        continue; /* Loop/switch isn't completed */
_L6:
        mCurrentPopupType = PopupType.START_TIME;
        startTimeFragment = new TimePickerFragment(mStartHour, mStartMinute, PopupType.START_TIME);
        startTimeFragment.show(getFragmentManager(), "startTime");
        continue; /* Loop/switch isn't completed */
_L8:
        mCurrentPopupType = PopupType.END_DATE;
        mReserveDialog = new DatePickerDialog(this, 2, mEndDateSetListener, mEndYear, mEndMonth - 1, mEndDay);
        channelNameList.set(2000, 0, 1);
        ((DatePickerDialog)mReserveDialog).getDatePicker().setMinDate(channelNameList.getTimeInMillis());
        channelNameList.clear();
        channelNameList.set(2037, 11, 31);
        ((DatePickerDialog)mReserveDialog).getDatePicker().setMaxDate(channelNameList.getTimeInMillis());
        mReserveDialog.setOnDismissListener(mDismissListener);
        mReserveDialog.show();
        continue; /* Loop/switch isn't completed */
_L9:
        mCurrentPopupType = PopupType.END_TIME;
        endTimeFragment = new TimePickerFragment(mEndHour, mEndMinute, PopupType.END_TIME);
        endTimeFragment.show(getFragmentManager(), "endTime");
        if(true) goto _L3; else goto _L10
_L10:
    }

    public void EndTimeShouldBeSetAfterStartTimeAlert()
    {
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701e0).setMessage(0x7f070245).setPositiveButton(0x7f070298, null).show().getWindow().addFlags(1024);
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void checkInputAllField(boolean flag)
    {
label0:
        {
            if(reserve_save_menu != null)
            {
                if(!flag)
                    break label0;
                reserve_save_menu.setEnabled(true);
            }
            return;
        }
        reserve_save_menu.setEnabled(false);
    }

    public void durationWrongAlert()
    {
        int i;
        String s;
        if(mReservationType == 0)
            i = 0x7f0702f2;
        else
            i = 0x7f0702f3;
        s = String.format(getString(i), new Object[] {
            Integer.valueOf(4)
        });
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701e0).setMessage(s).setPositiveButton(0x7f070298, null).show().getWindow().addFlags(1024);
    }

    public long getDefaultDate()
    {
        long l = System.currentTimeMillis();
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy");
        SimpleDateFormat simpledateformat1 = new SimpleDateFormat("M");
        SimpleDateFormat simpledateformat2 = new SimpleDateFormat("d");
        return (new Date(Integer.parseInt(simpledateformat.format(new Date(l))), Integer.parseInt(simpledateformat1.format(new Date(l))) - 1, Integer.parseInt(simpledateformat2.format(new Date(l))))).getTime();
    }

    public String getDisplayChannelText(int i)
    {
        boolean flag = MtvUtilDebug.isReleaseMode();
        if(mChannelsList == null || i < 0 || i >= mChannelsList.length) goto _L2; else goto _L1
_L1:
        String s;
        MtvUtilDebug.Error("MtvUiManualReservation", (new StringBuilder()).append("MtvChannel  ").append(mChannelsList[i].toString()).append("MultiChannel No:  ").append(mChannelsList[i].mMultiChannelNo).toString());
        StringBuilder stringbuilder;
        if(mChannelsList[i].mChannelName.length() > 10)
            s = (new StringBuilder()).append(mChannelsList[i].mChannelName.substring(0, 10)).append(".").append(".").append(".").toString();
        else
            s = mChannelsList[i].mChannelName;
        if(mChannelsList[i].mAvailable != 1 || mChannelsList[i].mMultiChannelNo == 0) goto _L4; else goto _L3
_L3:
        if(mChannelsList[i].mMultiChannelNo != 0 && mChannelsList[i].mMultiChannelNo % 10 != 1) goto _L6; else goto _L5
_L5:
        if(!flag)
        {
            stringbuilder = (new StringBuilder()).append(" ").append(mChannelsList[i].mVirtualNum).append(" ").append(mChannelsList[i].mPhysicalNum).append(" ").append(s).append(" ");
            if(mChannelsList[i].mMultiChannelNo < 99)
                s = (new StringBuilder()).append("0").append(mChannelsList[i].mMultiChannelNo).toString();
            else
                s = Integer.toString(mChannelsList[i].mMultiChannelNo);
            s = stringbuilder.append(s).toString();
        } else
        {
            StringBuilder stringbuilder1 = (new StringBuilder()).append(" ").append(mChannelsList[i].mVirtualNum).append(" ").append(s).append(" ");
            if(mChannelsList[i].mMultiChannelNo < 99)
                s = (new StringBuilder()).append("0").append(mChannelsList[i].mMultiChannelNo).toString();
            else
                s = Integer.toString(mChannelsList[i].mMultiChannelNo);
            s = stringbuilder1.append(s).toString();
        }
_L8:
        return s;
_L6:
        if(!flag)
        {
            StringBuilder stringbuilder2 = (new StringBuilder()).append("         ").append(s).append(" ");
            if(mChannelsList[i].mMultiChannelNo < 99)
                s = (new StringBuilder()).append("0").append(mChannelsList[i].mMultiChannelNo).toString();
            else
                s = Integer.toString(mChannelsList[i].mMultiChannelNo);
            return stringbuilder2.append(s).toString();
        }
        StringBuilder stringbuilder3 = (new StringBuilder()).append("    ").append(s).append(" ");
        if(mChannelsList[i].mMultiChannelNo < 99)
            s = (new StringBuilder()).append("0").append(mChannelsList[i].mMultiChannelNo).toString();
        else
            s = Integer.toString(mChannelsList[i].mMultiChannelNo);
        return stringbuilder3.append(s).toString();
_L4:
        if(!flag)
            s = (new StringBuilder()).append(" ").append(mChannelsList[i].mVirtualNum).append(" ").append(mChannelsList[i].mPhysicalNum).append(" ").append(s).toString();
        else
            s = (new StringBuilder()).append(" ").append(mChannelsList[i].mVirtualNum).append(" ").append(s).toString();
        continue; /* Loop/switch isn't completed */
_L2:
        MtvUtilDebug.High("MtvUiManualReservation", "getDisplayChannelText() : invalid index passed returning default channel name...");
        s = getString(0x7f070215);
        if(true) goto _L8; else goto _L7
_L7:
    }

    public boolean isReservationAlreadyTime()
    {
        MtvReservation amtvreservation[] = (MtvReservation[])MtvReservationManager.getAllReserves(this);
        Date date = new Date(mStartYear - 1900, mStartMonth - 1, mStartDay, mStartHour, mStartMinute, 0);
        Date date1 = new Date(mEndYear - 1900, mEndMonth - 1, mEndDay, mEndHour, mEndMinute, 0);
        long l = date.getTime();
        long l1 = date1.getTime();
        if(amtvreservation == null)
            return true;
        Arrays.sort(amtvreservation);
        for(int i = 0; i < amtvreservation.length; i++)
        {
            if(amtvreservation[i].mTimeStart < System.currentTimeMillis())
                continue;
            if(l == amtvreservation[i].mTimeStart && l1 == amtvreservation[i].mTimeEnd)
                return mPrevReservation != null && amtvreservation[i].mUriId == mPrevReservation.mUriId;
            if(l >= amtvreservation[i].mTimeEnd || mPrevReservation != null && amtvreservation[i].mUriId == mPrevReservation.mUriId)
                continue;
            return l1 <= amtvreservation[i].mTimeStart;
        }

        return true;
    }

    public int isReservationDurationValid()
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar(mStartYear, mStartMonth - 1, mStartDay, mStartHour, mStartMinute);
        GregorianCalendar gregoriancalendar1 = new GregorianCalendar(mEndYear, mEndMonth - 1, mEndDay, mEndHour, mEndMinute);
        if(gregoriancalendar1.getTimeInMillis() - gregoriancalendar.getTimeInMillis() > 0xdbba00L)
            return 0;
        return gregoriancalendar1.getTimeInMillis() > gregoriancalendar.getTimeInMillis() ? 1 : 2;
    }

    public boolean isStartTimeGreaterThanCurrentTime()
    {
        if((new Date(mStartYear, mStartMonth - 1, mStartDay)).getTime() == getDefaultDate())
        {
            long l = System.currentTimeMillis();
            int i = (new Date(l)).getHours();
            for(int j = (new Date(l)).getMinutes(); i > mStartHour || i == mStartHour && j >= mStartMinute;)
                return false;

        }
        return true;
    }

    public void onClick(View view)
    {
        switch(view.getId())
        {
        default:
            return;

        case 2131361812: 
            showMtvDialog(3);
            return;

        case 2131361813: 
            showMtvDialog(1);
            return;

        case 2131361814: 
            showMtvDialog(2);
            return;

        case 2131361815: 
            showMtvDialog(4);
            return;

        case 2131361816: 
            showMtvDialog(5);
            return;

        case 2131361811: 
            showMtvDialog(0);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low("MtvUiManualReservation", "onCreate()");
        if(bundle == null)
            MtvUtilAppService.setAppExiting(false);
        if(MtvUtilAppService.updateBatteryInfo(this))
        {
            MtvUtilDebug.Low("MtvUiManualReservation", "Battery Level is low...");
            showLowBatteryPopup();
            finish();
        } else
        {
            mSavedBundle = bundle;
            setContentView(0x7f030004);
            mActionBar = getActionBar();
            mChannelsList = MtvChannelManager.getAllAvailableChannels(this);
            getWindow().setSoftInputMode(3);
            getWindow().addFlags(128);
            mMtvPreferences = new MtvPreferences(getApplicationContext());
            mProgramName = null;
            initViewControl();
            if(MtvUtilConfigSetting.EPGAPP_ENABLED)
            {
                Intent intent = getIntent();
                if(intent != null && intent.getAction() != null && intent.getAction().equalsIgnoreCase("ACTION_DTV_RESERVATION_DETAILS"))
                    mIsReserveFromEPG = true;
            }
            if(!mIsReserveFromEPG)
            {
                MtvReservation mtvreservation = null;
                Bundle bundle1 = getIntent().getExtras();
                if(bundle1 != null)
                    mtvreservation = MtvReservationManager.find(this, bundle1.getLong("MtvReservation"), new boolean[0]);
                if(mtvreservation != null)
                    mPrevReservation = mtvreservation;
                else
                    mPrevReservation = null;
            }
            if(bundle == null)
                initReservationVariables();
            else
                reloadReservationVariables(bundle);
            if(mChannelsList != null)
            {
                if(mChannelsList.length < 1)
                    mChannelNum.setEnabled(false);
                else
                    mChannelNum.setEnabled(true);
            } else
            {
                MtvUtilDebug.Low("MtvUiManualReservation", " mChannelsList is null !!! ");
            }
            if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            {
                getWindow().addFlags(8192);
                return;
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        boolean flag = false;
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(0x7f090001, menu);
        reserve_cancel_menu = menu.getItem(0);
        reserve_save_menu = menu.getItem(1);
        reserve_save_menu.setEnabled(false);
        if(mChannelNum != null)
        {
            menu = mChannelNum.getText().toString().trim();
            if(menu.equals(getString(0x7f070215)) || menu.equals(""))
                flag = true;
            if(!flag)
                reserve_save_menu.setEnabled(true);
        }
        menu = new android.view.MenuItem.OnMenuItemClickListener() {

            public boolean onMenuItemClick(MenuItem menuitem)
            {
                menuitem.getItemId();
                JVM INSTR tableswitch 2131362126 2131362127: default 28
            //                           2131362126 144
            //                           2131362127 30;
                   goto _L1 _L2 _L3
_L1:
                return true;
_L3:
                ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(mProgramInputName.getWindowToken(), 0);
                if(isStartTimeGreaterThanCurrentTime())
                {
                    int i = isReservationDurationValid();
                    if(i == 1)
                        if(isReservationAlreadyTime())
                        {
                            saveManualReserve();
                            return true;
                        } else
                        {
                            showAlreadyReserveDlg();
                            return true;
                        }
                    if(i == 0)
                    {
                        durationWrongAlert();
                        return true;
                    }
                    if(i == 2)
                    {
                        EndTimeShouldBeSetAfterStartTimeAlert();
                        return true;
                    }
                } else
                {
                    startTimeShouldBeSetAfterCurrentTimeAlert();
                    return true;
                }
                  goto _L1
_L2:
                reset();
                finish();
                return true;
            }

            final MtvUiManualReservation this$0;

            
            {
                this$0 = MtvUiManualReservation.this;
                super();
            }
        }
;
        reserve_save_menu.setOnMenuItemClickListener(menu);
        reserve_cancel_menu.setOnMenuItemClickListener(menu);
        return true;
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low("MtvUiManualReservation", "onDestroy()");
        if(mReserveDialog != null && mReserveDialog.isShowing())
        {
            mReserveDialog.dismiss();
            mReserveDialog = null;
        }
        mEpgreservationServiceID = -1;
        super.onDestroy();
    }

    public void onFragEvent(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiManualReservation", (new StringBuilder()).append("onFragEvent: event[").append(i).append("]").toString());
        i;
        JVM INSTR lookupswitch 3: default 68
    //                   256: 69
    //                   271: 74
    //                   272: 100;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        finish();
        return;
_L3:
        obj = (Calendar)obj;
        if(obj != null)
        {
            onStartTimeSet(((Calendar) (obj)).get(11), ((Calendar) (obj)).get(12));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        obj = (Calendar)obj;
        if(obj != null)
        {
            onEndTimeSet(((Calendar) (obj)).get(11), ((Calendar) (obj)).get(12));
            return;
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void onResume()
    {
        super.onResume();
        MtvUtilDebug.Low("MtvUiManualReservation", "onResume()");
        if(!MtvUtilAppService.isAppExiting()) goto _L2; else goto _L1
_L1:
        finish();
_L4:
        return;
_L2:
        mReserveStartTime.setText(formatTime(mStartHour, mStartMinute));
        mReserveEndTime.setText(formatTime(mEndHour, mEndMinute));
        sendBroadcast(new Intent("intent.stop.app-in-app"));
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        static class _cls9
        {

            static final int $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[];

            static 
            {
                $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType = new int[PopupType.values().length];
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[PopupType.RESRV_TYPE.ordinal()] = 1;
                }
                catch(NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[PopupType.CHANNEL_NUMBER.ordinal()] = 2;
                }
                catch(NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[PopupType.START_DATE.ordinal()] = 3;
                }
                catch(NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[PopupType.START_TIME.ordinal()] = 4;
                }
                catch(NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[PopupType.END_DATE.ordinal()] = 5;
                }
                catch(NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[PopupType.END_TIME.ordinal()] = 6;
                }
                catch(NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$ui$common$MtvUiManualReservation$PopupType[PopupType.NONE.ordinal()] = 7;
                }
                catch(NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        if(mIsReserveFromEPG)
            getWindow().setTitle(getString(0x7f070282));
        else
        if(mPrevReservation != null)
            getWindow().setTitle(getString(0x7f070240));
        else
            getWindow().setTitle(getString(0x7f070282));
        if(MtvAreaManager.getCount(getApplicationContext()) == 0)
        {
            if(reserve_save_menu != null)
                reserve_save_menu.setEnabled(false);
            MtvUiDialogsFrag.EPGErrorDialogFragment.newInstance(0x7f070247, 0x7f07021b).show(getFragmentManager(), "EPGErrorDialogFragment");
        }
        mDummyEditTextBox.requestFocus();
        if(mSavedBundle == null) goto _L4; else goto _L3
_L3:
        popupSaveDate = (Calendar)mSavedBundle.getSerializable("popupArgs");
        int i = popupSaveDate.get(1);
        int j = popupSaveDate.get(2);
        int k = popupSaveDate.get(5);
        popupSaveDate.get(11);
        popupSaveDate.get(12);
        Calendar calendar = Calendar.getInstance();
        switch(_cls9..SwitchMap.com.samsung.sec.mtv.ui.common.MtvUiManualReservation.PopupType[PopupType.valueOf(mSavedBundle.getString("popupType")).ordinal()])
        {
        default:
            return;

        case 7: // '\007'
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            showMtvDialog(0);
            return;

        case 2: // '\002'
            showMtvDialog(3);
            return;

        case 3: // '\003'
            mCurrentPopupType = PopupType.START_DATE;
            mReserveDialog = new DatePickerDialog(this, 2, mStartDateSetListener, i, j, k);
            calendar.set(2000, 0, 1);
            ((DatePickerDialog)mReserveDialog).getDatePicker().setMinDate(calendar.getTimeInMillis());
            calendar.clear();
            calendar.set(2037, 11, 31);
            ((DatePickerDialog)mReserveDialog).getDatePicker().setMaxDate(calendar.getTimeInMillis());
            mReserveDialog.setOnDismissListener(mDismissListener);
            mReserveDialog.setCanceledOnTouchOutside(false);
            mReserveDialog.show();
            return;

        case 4: // '\004'
            mCurrentPopupType = PopupType.START_TIME;
            startTimeFragment = new TimePickerFragment(mStartHour, mStartMinute, PopupType.START_TIME);
            startTimeFragment.show(getFragmentManager(), "startTime");
            return;

        case 5: // '\005'
            mCurrentPopupType = PopupType.END_DATE;
            mReserveDialog = new DatePickerDialog(this, 2, mEndDateSetListener, i, j, k);
            calendar.set(2000, 0, 1);
            ((DatePickerDialog)mReserveDialog).getDatePicker().setMinDate(calendar.getTimeInMillis());
            calendar.clear();
            calendar.set(2037, 11, 31);
            ((DatePickerDialog)mReserveDialog).getDatePicker().setMaxDate(calendar.getTimeInMillis());
            mReserveDialog.setOnDismissListener(mDismissListener);
            mReserveDialog.setCanceledOnTouchOutside(false);
            mReserveDialog.show();
            return;

        case 6: // '\006'
            mCurrentPopupType = PopupType.END_TIME;
            break;
        }
        break; /* Loop/switch isn't completed */
        if(true) goto _L4; else goto _L5
_L5:
        endTimeFragment = new TimePickerFragment(mEndHour, mEndMinute, PopupType.END_TIME);
        endTimeFragment.show(getFragmentManager(), "endTime");
        return;
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        MtvUtilDebug.Low("MtvUiManualReservation", "onSaveInstanceState()");
        bundle.putInt("ChannelListIndex", mChannelListIndex);
        bundle.putInt("epgServiceId", mEpgreservationServiceID);
        Calendar calendar = Calendar.getInstance();
        calendar.set(mStartYear, mStartMonth, mStartDay, mStartHour, mStartMinute);
        bundle.putSerializable("mStartDate", calendar);
        calendar = Calendar.getInstance();
        calendar.set(mEndYear, mEndMonth, mEndDay, mEndHour, mEndMinute);
        bundle.putSerializable("mEndDate", calendar);
        bundle.putInt("mReservationType", mReservationType);
        bundle.putInt("mPch", mPch);
        bundle.putString("mProgramInputName", mProgramInputName.getText().toString());
        if(mReserveDialog == null)
            mCurrentPopupType = PopupType.NONE;
        if(mReserveDialog instanceof DatePickerDialog)
        {
            DatePickerDialog datepickerdialog = (DatePickerDialog)mReserveDialog;
            datepickerdialog.getDatePicker().clearFocus();
            popupSaveDate.set(1, datepickerdialog.getDatePicker().getYear());
            popupSaveDate.set(2, datepickerdialog.getDatePicker().getMonth());
            popupSaveDate.set(5, datepickerdialog.getDatePicker().getDayOfMonth());
        }
        bundle.putString("popupType", mCurrentPopupType.name());
        bundle.putSerializable("popupArgs", popupSaveDate);
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        mProgramName = charsequence.toString();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if(view.getId() != 0x7f0a0019) goto _L2; else goto _L1
_L1:
        view.getParent().requestDisallowInterceptTouchEvent(true);
        motionevent.getAction() & 0xff;
        JVM INSTR tableswitch 1 1: default 48
    //                   1 50;
           goto _L2 _L3
_L2:
        return false;
_L3:
        view.getParent().requestDisallowInterceptTouchEvent(false);
        return false;
    }

    public void setNewReserve()
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy/M/d");
        simpledateformat.applyPattern((new StringBuilder()).append(simpledateformat.toPattern()).append(" (EEE)").toString());
        mEndYear = mStartYear;
        mEndMonth = mStartMonth;
        mEndDay = mStartDay;
        mEndMinute = mStartMinute;
        if(mStartHour < 23)
        {
            mEndHour = mStartHour + 1;
        } else
        {
            mEndHour = 0;
            SimpleDateFormat simpledateformat1 = new SimpleDateFormat("yyyy");
            SimpleDateFormat simpledateformat2 = new SimpleDateFormat("M");
            SimpleDateFormat simpledateformat3 = new SimpleDateFormat("d");
            Object obj = Calendar.getInstance();
            ((Calendar) (obj)).setTimeInMillis(System.currentTimeMillis());
            ((Calendar) (obj)).add(5, 1);
            obj = Long.valueOf(((Calendar) (obj)).getTimeInMillis());
            mEndYear = Integer.parseInt(simpledateformat1.format(new Date(((Long) (obj)).longValue())));
            mEndMonth = Integer.parseInt(simpledateformat2.format(new Date(((Long) (obj)).longValue())));
            mEndDay = Integer.parseInt(simpledateformat3.format(new Date(((Long) (obj)).longValue())));
        }
        mReserveType.setText(getString(0x7f0702ad));
        mReservationType = 0;
        mChannelNum.setText(getString(0x7f070215));
        mReserveStartDate.setText(simpledateformat.format(new Date(mStartYear - 1900, mStartMonth - 1, mStartDay)));
        mReserveEndDate.setText(simpledateformat.format(new Date(mEndYear - 1900, mEndMonth - 1, mEndDay)));
        mReserveStartTime.setText(formatTime(mStartHour, mStartMinute));
        mReserveEndTime.setText(formatTime(mEndHour, mEndMinute));
    }

    public void setStartTimeWithinOneWeekAlert()
    {
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701e0).setMessage(0x7f0702db).setPositiveButton(0x7f070298, null).show().getWindow().addFlags(1024);
    }

    public void showAlreadyReserveDlg()
    {
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701e0).setMessage(0x7f0702f5).setPositiveButton(0x7f070298, null).show().getWindow().addFlags(1024);
    }

    public void startTimeShouldBeSetAfterCurrentTimeAlert()
    {
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701e0).setMessage(0x7f0702ec).setIcon(0x7f020073).setPositiveButton(0x7f070298, null).show().getWindow().addFlags(1024);
    }

    private static final int DURATION_MORETHAN_4HOURS = 0;
    private static final int DURATION_START_END_SAME = 2;
    private static final int DURATION_VALID = 1;
    private static final String MANUAL_RESERVE_EPG_SERVICE_ID = "epgServiceId";
    private static final String MANUAL_RESERVE_STATE_CHANNEL = "ChannelListIndex";
    private static final int MANUAL_RESERVE_TYPE_DIALOG_CHANNEL_NUMBER = 3;
    private static final int MANUAL_RESERVE_TYPE_DIALOG_END_DATE = 4;
    private static final int MANUAL_RESERVE_TYPE_DIALOG_END_TIME = 5;
    private static final int MANUAL_RESERVE_TYPE_DIALOG_RESRV_TYPE = 0;
    private static final int MANUAL_RESERVE_TYPE_DIALOG_START_DATE = 1;
    private static final int MANUAL_RESERVE_TYPE_DIALOG_START_TIME = 2;
    private static final int MAX_VALID_DURATION = 0xdbba00;
    private static final String POPUP_ARGS = "popupArgs";
    private static final String POPUP_TYPE = "popupType";
    private static final int PROGRAM_NAME_MAX_LENGTH = 255;
    private static final String TAG = "MtvUiManualReservation";
    private static final int WEEK_TO_LONG = 0x240c8400;
    private DialogFragment endTimeFragment;
    public ActionBar mActionBar;
    private int mChannelListIndex;
    private Button mChannelNum;
    int mChannelServiceID;
    private MtvChannel mChannelsList[];
    private PopupType mCurrentPopupType;
    private android.content.DialogInterface.OnDismissListener mDismissListener;
    private EditText mDummyEditTextBox;
    private android.app.DatePickerDialog.OnDateSetListener mEndDateSetListener;
    int mEndDay;
    int mEndHour;
    int mEndMinute;
    int mEndMonth;
    int mEndYear;
    int mEpgreservationServiceID;
    boolean mIsReserveFromEPG;
    private MtvPreferences mMtvPreferences;
    int mPch;
    private MtvReservation mPrevReservation;
    private EditText mProgramInputName;
    private String mProgramName;
    int mReservationType;
    private AlertDialog mReserveDialog;
    private Button mReserveEndDate;
    private Button mReserveEndTime;
    private Button mReserveStartDate;
    private Button mReserveStartTime;
    private Button mReserveType;
    private Bundle mSavedBundle;
    private android.app.DatePickerDialog.OnDateSetListener mStartDateSetListener;
    int mStartDay;
    int mStartHour;
    int mStartMinute;
    int mStartMonth;
    int mStartYear;
    int mVch;
    public Calendar popupSaveDate;
    MenuItem reserve_cancel_menu;
    MenuItem reserve_save_menu;
    int selectedItem;
    private DialogFragment startTimeFragment;




/*
    static AlertDialog access$1002(MtvUiManualReservation mtvuimanualreservation, AlertDialog alertdialog)
    {
        mtvuimanualreservation.mReserveDialog = alertdialog;
        return alertdialog;
    }

*/






/*
    static int access$502(MtvUiManualReservation mtvuimanualreservation, int i)
    {
        mtvuimanualreservation.mChannelListIndex = i;
        return i;
    }

*/




}
