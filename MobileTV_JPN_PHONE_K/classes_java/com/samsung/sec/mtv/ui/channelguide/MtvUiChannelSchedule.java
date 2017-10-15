// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.AlertDialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegProgram;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.samsung.sec.mtv.app.context.IMtvAppPlaybackStateListener;
import com.samsung.sec.mtv.app.context.IMtvAppProgramAttributeListener;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContext;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContextManager;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackState;
import com.samsung.sec.mtv.app.context.MtvAppProgramAttributes;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.MtvChannel;
import com.samsung.sec.mtv.provider.MtvChannelManager;
import com.samsung.sec.mtv.provider.MtvProgram;
import com.samsung.sec.mtv.provider.MtvProgramManager;
import com.samsung.sec.mtv.provider.MtvReservation;
import com.samsung.sec.mtv.provider.MtvReservationManager;
import com.samsung.sec.mtv.ui.common.MtvBaseActivity;
import com.samsung.sec.mtv.ui.common.MtvUiDialogsFrag;
import com.samsung.sec.mtv.ui.common.MtvUiFragHandler;
import com.samsung.sec.mtv.ui.common.MtvUiMemInfoFrag;
import com.samsung.sec.mtv.utility.MtvPreferences;
import com.samsung.sec.mtv.utility.MtvUtilAppService;
import com.samsung.sec.mtv.utility.MtvUtilAudioManager;
import com.samsung.sec.mtv.utility.MtvUtilConfigSetting;
import com.samsung.sec.mtv.utility.MtvUtilSetReservationAlarm;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Arrays;

public class MtvUiChannelSchedule extends MtvBaseActivity
    implements android.view.View.OnClickListener, IMtvAppProgramAttributeListener, IMtvAppPlaybackStateListener, com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener
{
    private class ProgramAdapter extends BaseAdapter
    {

        private boolean isDatechanged(int i)
        {
            if(i == 0)
                return true;
            Date date = new Date(mtvPrograms[i - 1].mTimeStart);
            Date date1 = new Date(mtvPrograms[i].mTimeStart);
            return date.getDay() != date1.getDay();
        }

        public int getCount()
        {
            if(mtvPrograms != null)
                return mtvPrograms.length;
            else
                return 0;
        }

        public MtvProgram getItem(int i)
        {
            return mtvPrograms[i];
        }

        public volatile Object getItem(int i)
        {
            return getItem(i);
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            int j;
            view = mtvPrograms[i];
            j = 0;
            viewgroup = mInflater.inflate(0x7f030015, viewgroup, false);
            if(view == null) goto _L2; else goto _L1
_L1:
            ImageView imageview;
            MtvReservation mtvreservation;
            viewgroup.setTag(view);
            Object obj = (TextView)viewgroup.findViewById(0x7f0a0072);
            long l;
            if(isDatechanged(i))
                ((TextView) (obj)).setText((new SimpleDateFormat("yyyy.M.d(EEE)")).format(new Date(((MtvProgram) (view)).mTimeStart)));
            else
                ((TextView) (obj)).setVisibility(8);
            obj = (new SimpleDateFormat("H:mm")).format(new Date(((MtvProgram) (view)).mTimeStart));
            obj = (new StringBuilder()).append(((String) (obj))).append(" - ").append((new SimpleDateFormat("H:mm")).format(new Date(((MtvProgram) (view)).mTimeEnd))).toString();
            imageview = (ImageView)viewgroup.findViewById(0x7f0a0074);
            if(mMtvPreferences != null)
                j = mMtvPreferences.getLatestServiceID();
            mtvreservation = MtvReservationManager.find(context, ((MtvProgram) (view)).mTimeStart, new boolean[0]);
            if(mtvreservation == null || mtvreservation.mPgmStatus != 0 || mtvreservation.mTimeStart != ((MtvProgram) (view)).mTimeStart || mtvreservation.mTimeEnd != ((MtvProgram) (view)).mTimeEnd || mtvreservation.mPgmServiceID != j) goto _L4; else goto _L3
_L3:
            if(mtvreservation == null || mtvreservation.mPgmType != 0) goto _L6; else goto _L5
_L5:
            imageview.setImageDrawable(mIcon[2]);
_L13:
            imageview.setImageAlpha(255);
_L11:
            ((TextView)viewgroup.findViewById(0x7f0a0075)).setText(((CharSequence) (obj)));
            ((TextView)viewgroup.findViewById(0x7f0a0076)).setText(((MtvProgram) (view)).mPgmName);
            if(mPreferences == null)
                mPreferences = new MtvPreferences(getApplicationContext());
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            obj = mMtvAppPlaybackContext.getAttribute().getCurrentProgram();
            if(obj == null || ((MtvProgram) (view)).mTimeStart != ((MtvOneSegProgram) (obj)).getStartTime().getTime() || ((MtvProgram) (view)).mTimeEnd != ((MtvOneSegProgram) (obj)).getEndTime().getTime()) goto _L8; else goto _L7
_L7:
            l = System.currentTimeMillis();
            MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("match - currentTime - ").append(l).toString());
            if(((MtvProgram) (view)).mTimeStart > l || ((MtvProgram) (view)).mTimeEnd < l) goto _L10; else goto _L9
_L9:
            nowOnAirPosition = i;
            ((ImageView)viewgroup.findViewById(0x7f0a0077)).setVisibility(0);
_L2:
            return viewgroup;
_L6:
            if(mtvreservation != null && mtvreservation.mPgmType == 1)
                imageview.setImageDrawable(mIcon[1]);
            continue; /* Loop/switch isn't completed */
_L4:
            imageview.setImageDrawable(mIcon[0]);
            imageview.setImageAlpha(0);
              goto _L11
_L10:
            ((ImageView)viewgroup.findViewById(0x7f0a0077)).setVisibility(4);
            return viewgroup;
_L8:
            ((ImageView)viewgroup.findViewById(0x7f0a0077)).setVisibility(4);
            return viewgroup;
            if(true) goto _L13; else goto _L12
_L12:
        }

        public void setSelectItemTextColor(int i)
        {
            mProgramAdapter.notifyDataSetChanged();
        }

        private Context context;
        private final LayoutInflater mInflater;
        private MtvProgram mtvPrograms[];
        final MtvUiChannelSchedule this$0;

        public ProgramAdapter(Context context1, MtvProgram amtvprogram[])
        {
            this$0 = MtvUiChannelSchedule.this;
            super();
            mtvPrograms = amtvprogram;
            context = context1;
            mInflater = (LayoutInflater)context1.getSystemService("layout_inflater");
        }
    }


    public MtvUiChannelSchedule()
    {
        mProgramAdapter = null;
        mMtvAppPlaybackContext = null;
        mServiceID = 0;
        nowOnAirPosition = -1;
        mChannelScheduleUiMsgHandler = new Handler() {

            public void handleMessage(Message message)
            {
                switch(message.what)
                {
                default:
                    return;

                case 317: 
                    runOnUiThread(new Runnable() {

                        public void run()
                        {
                            if(mPreferences == null)
                                mPreferences = new MtvPreferences(getApplicationContext());
                            MtvProgramManager.updateProgramsByVch(getApplicationContext(), getProgram(), mMtvPreferences.getLatestVChannel(), true);
                            setListViewItemByPCh(mPreferences.getLatestPChannel());
                        }

                        final _cls1 this$1;

            
            {
                this$1 = _cls1.this;
                super();
            }
                    }
);
                    break;
                }
            }

            final MtvUiChannelSchedule this$0;

            
            {
                this$0 = MtvUiChannelSchedule.this;
                super();
            }
        }
;
        mScheduleListListener = new android.widget.AdapterView.OnItemClickListener() {

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                MtvUtilDebug.Low("MtvUiChannelSchedule", "mScheduleListListener");
                if(getFragmentManager().findFragmentByTag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO.toString()) == null)
                {
                    adapterview = (MtvProgram)view.getTag();
                    view = new Bundle();
                    view.putInt("pgmPch", ((MtvProgram) (adapterview)).mPch);
                    MtvChannel mtvchannel = MtvChannelManager.findByPChannel(getApplicationContext(), ((MtvProgram) (adapterview)).mPch, mMtvPreferences.getLatestServiceID());
                    MtvReservation mtvreservation;
                    if(mtvchannel != null)
                        if(mtvchannel.mMultiChannelNo != -1)
                            view.putString("channelName", (new StringBuilder()).append(mtvchannel.mChannelName).append("\t").append(mtvchannel.mMultiChannelNo).toString());
                        else
                            view.putString("channelName", mtvchannel.mChannelName);
                    mtvreservation = MtvReservationManager.find(getApplicationContext(), ((MtvProgram) (adapterview)).mTimeStart, new boolean[0]);
                    if(mtvchannel != null)
                        view.putString("channelName", mtvchannel.mChannelName);
                    view.putLong("startTime", ((MtvProgram) (adapterview)).mTimeStart);
                    view.putLong("endtime", ((MtvProgram) (adapterview)).mTimeEnd);
                    view.putString("programName", ((MtvProgram) (adapterview)).mPgmName);
                    MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append(" pgm.mPgmDetail :").append(((MtvProgram) (adapterview)).mPgmDetail).toString());
                    view.putString("programDesc", ((MtvProgram) (adapterview)).mPgmDetail);
                    view.putInt("reservationType", checkForReservationType(adapterview));
                    view.putInt("pgmVch", ((MtvProgram) (adapterview)).mVch);
                    if(mtvreservation != null)
                        view.putInt("rsrvStatus", mtvreservation.mPgmStatus);
                    if(i == nowOnAirPosition)
                        view.putBoolean("isNowOnAir", true);
                    else
                        view.putBoolean("isNowOnAir", false);
                    MtvUiFragHandler.addUnManagedFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO, view, 0x7f0a0000, MtvUiChannelSchedule.this);
                    mProgramAdapter.setSelectItemTextColor(i);
                }
            }

            final MtvUiChannelSchedule this$0;

            
            {
                this$0 = MtvUiChannelSchedule.this;
                super();
            }
        }
;
        mScheduleListLongListener = new android.widget.AdapterView.OnItemLongClickListener() {

            public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
            {
                ((ListView)findViewById(0x7f0a0005)).setOnItemClickListener(null);
                MtvUtilDebug.Low("MtvUiChannelSchedule", "mScheduleListLongListener");
                adapterview = (MtvProgram)view.getTag();
                boolean flag = processItemClick(adapterview, view, i);
                mChannelScheduleUiMsgHandler.postDelayed(new Runnable() {

                    public void run()
                    {
                        ((ListView)findViewById(0x7f0a0005)).setOnItemClickListener(mScheduleListListener);
                    }

                    final _cls3 this$1;

            
            {
                this$1 = _cls3.this;
                super();
            }
                }
, 1000L);
                return flag;
            }

            final MtvUiChannelSchedule this$0;

            
            {
                this$0 = MtvUiChannelSchedule.this;
                super();
            }
        }
;
        mScheduleListClickListener = new android.widget.AdapterView.OnItemClickListener() {

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                MtvUtilDebug.Low("MtvUiChannelSchedule", "mScheduleListClickListener");
                adapterview = (MtvProgram)view.getTag();
                if(reserveContextMenuAlertDialog != null && reserveContextMenuAlertDialog.isShowing())
                {
                    return;
                } else
                {
                    processItemClick(adapterview, view, i);
                    return;
                }
            }

            final MtvUiChannelSchedule this$0;

            
            {
                this$0 = MtvUiChannelSchedule.this;
                super();
            }
        }
;
    }

    private CharSequence getSpinnerTitle(MtvChannel mtvchannel)
    {
        MtvUtilDebug.Error("MtvUiChannelSchedule", (new StringBuilder()).append("MtvChannel  ").append(mtvchannel.toString()).append("MultiChannel No:  ").append(mtvchannel.mMultiChannelNo).toString());
        Object obj;
        if(mtvchannel.mChannelName.length() > 10)
            obj = (new StringBuilder()).append(mtvchannel.mChannelName.substring(0, 10)).append(".").append(".").append(".").toString();
        else
            obj = mtvchannel.mChannelName;
        if(mtvchannel.mAvailable == 1 && mtvchannel.mMultiChannelNo != 0)
        {
            if(mtvchannel.mMultiChannelNo == 0 || mtvchannel.mMultiChannelNo % 10 == 1)
            {
                if(!MtvUtilDebug.isReleaseMode())
                {
                    obj = (new StringBuilder()).append(" ").append(mtvchannel.mVirtualNum).append(" ").append(mtvchannel.mPhysicalNum).append(" ").append(((String) (obj))).append(" ");
                    if(mtvchannel.mMultiChannelNo < 99)
                        mtvchannel = (new StringBuilder()).append("0").append(mtvchannel.mMultiChannelNo).toString();
                    else
                        mtvchannel = Integer.toString(mtvchannel.mMultiChannelNo);
                    return ((StringBuilder) (obj)).append(mtvchannel).toString();
                }
                obj = (new StringBuilder()).append(" ").append(mtvchannel.mVirtualNum).append(" ").append(((String) (obj))).append(" ");
                if(mtvchannel.mMultiChannelNo < 99)
                    mtvchannel = (new StringBuilder()).append("0").append(mtvchannel.mMultiChannelNo).toString();
                else
                    mtvchannel = Integer.toString(mtvchannel.mMultiChannelNo);
                return ((StringBuilder) (obj)).append(mtvchannel).toString();
            }
            if(!MtvUtilDebug.isReleaseMode())
            {
                obj = (new StringBuilder()).append("         ").append(((String) (obj))).append(" ");
                if(mtvchannel.mMultiChannelNo < 99)
                    mtvchannel = (new StringBuilder()).append("0").append(mtvchannel.mMultiChannelNo).toString();
                else
                    mtvchannel = Integer.toString(mtvchannel.mMultiChannelNo);
                return ((StringBuilder) (obj)).append(mtvchannel).toString();
            }
            obj = (new StringBuilder()).append("    ").append(((String) (obj))).append(" ");
            if(mtvchannel.mMultiChannelNo < 99)
                mtvchannel = (new StringBuilder()).append("0").append(mtvchannel.mMultiChannelNo).toString();
            else
                mtvchannel = Integer.toString(mtvchannel.mMultiChannelNo);
            return ((StringBuilder) (obj)).append(mtvchannel).toString();
        }
        if(!MtvUtilDebug.isReleaseMode())
            return (new StringBuilder()).append(" ").append(mtvchannel.mVirtualNum).append(" ").append(mtvchannel.mPhysicalNum).append(" ").append(((String) (obj))).toString();
        else
            return (new StringBuilder()).append(" ").append(mtvchannel.mVirtualNum).append(" ").append(((String) (obj))).toString();
    }

    private void mStartNewChannel(MtvChannel mtvchannel)
    {
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
        IMtvAppPlayerOneSeg imtvappplayeroneseg = MtvAppPlayerOneSeg.getInstance();
        if(mtvappplaybackcontext != null && imtvappplayeroneseg != null)
        {
            mMtvAppPlaybackContext = mtvappplaybackcontext;
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            if(mtvchannel != null)
            {
                mtvchannel = prepareUri(mtvchannel.mPhysicalNum, mtvchannel.mServiceID, true);
                MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("startTvAfterScan  which URI =").append(mtvchannel).toString());
                imtvappplayeroneseg.open(mMtvAppPlaybackContext, mtvchannel);
            }
        }
    }

    private boolean processItemClick(MtvProgram mtvprogram, View view, int i)
    {
        boolean flag1 = false;
        if(i == nowOnAirPosition)
            flag1 = true;
        MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("pgm :").append(mtvprogram).toString());
        if(!isReservationAlreadyTime(mtvprogram))
        {
            showAlreadyReserveDlg();
            return false;
        }
        Object obj = ((TextView)view.findViewById(0x7f0a0075)).getText().toString();
        view = (new StringBuilder()).append(((String) (obj))).append(" ").append(((TextView)view.findViewById(0x7f0a0076)).getText()).toString();
        boolean flag = false;
        int j = 0;
        if(mMtvPreferences != null)
            j = mMtvPreferences.getLatestServiceID();
        obj = MtvReservationManager.find(getApplicationContext(), mtvprogram.mTimeStart, new boolean[0]);
        if(i == nowOnAirPosition)
            i = 0x7f050012;
        else
        if(obj != null && ((MtvReservation) (obj)).mTimeStart == mtvprogram.mTimeStart && ((MtvReservation) (obj)).mTimeEnd == mtvprogram.mTimeEnd && ((MtvReservation) (obj)).mPgmServiceID == j && ((MtvReservation) (obj)).mPgmStatus == 0)
        {
            if(obj != null && ((MtvReservation) (obj)).mPgmType == 0)
            {
                i = 0x7f050011;
            } else
            {
                i = ((flag) ? 1 : 0);
                if(obj != null)
                {
                    i = ((flag) ? 1 : 0);
                    if(((MtvReservation) (obj)).mPgmType == 1)
                        i = 0x7f050010;
                }
            }
        } else
        {
            i = 0x7f05000f;
        }
        if(mtvprogram.mTimeStart < System.currentTimeMillis() && mtvprogram.mTimeEnd < System.currentTimeMillis())
        {
            return false;
        } else
        {
            reserveContextMenuDialog(view, i, mtvprogram, flag1);
            mProgramAdapter.notifyDataSetChanged();
            return true;
        }
    }

    private void setListViewItemByPCh(int i)
    {
        MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("nPCh ").append(i).toString());
        nowOnAirPosition = -1;
        MtvProgram amtvprogram[] = MtvProgramManager.findProgramsByPChannel(getApplicationContext(), i);
        if(amtvprogram != null)
            for(i = 0; i < amtvprogram.length; i++)
                MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("mtvPrograms ").append(amtvprogram[i].mPgmName).toString());

        ListView listview = (ListView)findViewById(0x7f0a0005);
        mProgramAdapter = new ProgramAdapter(this, amtvprogram);
        listview.setAdapter(mProgramAdapter);
        listview.setEmptyView(findViewById(0x7f0a0006));
        if(getIntent().getBooleanExtra("view_program_details", false))
        {
            listview.setOnItemClickListener(mScheduleListListener);
            listview.setOnItemLongClickListener(mScheduleListLongListener);
            return;
        } else
        {
            listview.setOnItemClickListener(mScheduleListClickListener);
            return;
        }
    }

    private void setSpinnerButtonText(CharSequence charsequence, MtvChannel mtvchannel)
    {
        mSpinnerButton.setText(charsequence);
    }

    private void showChannelList()
    {
        MtvChannel amtvchannel[] = MtvChannelManager.getAllAvailableChannels(this);
        if(amtvchannel == null)
            return;
        int j = 0;
        CharSequence acharsequence[] = new CharSequence[amtvchannel.length];
        for(int i = 0; i < amtvchannel.length; i++)
        {
            acharsequence[i] = getSpinnerTitle(amtvchannel[i]);
            if(acharsequence[i].equals(mSpinnerButton.getText()))
                j = i;
        }

        Bundle bundle = new Bundle();
        bundle.putInt("dialogType", 18);
        bundle.putInt("itemListIndex", j);
        bundle.putCharSequenceArray("channelNameList", acharsequence);
        showChannelListAlertDialog = MtvUiDialogsFrag.newInstance(bundle);
        showChannelListAlertDialog.show(getFragmentManager(), "change_area_complete");
    }

    public void CancelReservationDialog(final long mStartTime)
    {
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f07020c).setMessage(0x7f0702ce).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MtvReservationManager.delete(getApplicationContext(), mStartTime, null);
                mProgramAdapter.notifyDataSetChanged();
            }

            final MtvUiChannelSchedule this$0;
            final long val$mStartTime;

            
            {
                this$0 = MtvUiChannelSchedule.this;
                mStartTime = l;
                super();
            }
        }
).setNegativeButton(0x7f07020b, null).show().getWindow().addFlags(1024);
        mProgramAdapter.notifyDataSetChanged();
    }

    public void ReserveProgramStarted(String s, MtvProgram mtvprogram)
    {
        if(!isReservationAlreadyTime(mtvprogram))
        {
            showAlreadyReserveDlg();
            return;
        } else
        {
            s = new MtvProgram(mtvprogram.mPch, mtvprogram.mVch, mtvprogram.mLock, System.currentTimeMillis() + 2000L, mtvprogram.mTimeEnd, mtvprogram.mPgmName, mtvprogram.mPgmDetail);
            MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("program.mPch :").append(mtvprogram.mPch).toString());
            int i = mMtvPreferences.getLatestServiceID();
            MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("program.mPch :").append(mtvprogram.mPch).append("mServiceID :").append(i).toString());
            s = new MtvReservation(s, 0, 0, i);
            MtvReservationManager.updateOrInsert(getApplicationContext(), s);
            MtvUtilSetReservationAlarm.setReservationAlarm(getApplicationContext(), ((MtvReservation) (s)).mTimeStart, true, false);
            return;
        }
    }

    public int checkForReservationType(MtvProgram mtvprogram)
    {
        boolean flag;
        MtvReservation mtvreservation;
        flag = false;
        int i = 0;
        mtvreservation = MtvReservationManager.find(getApplicationContext(), mtvprogram.mTimeStart, new boolean[0]);
        if(mMtvPreferences != null)
            i = mMtvPreferences.getLatestServiceID();
        if(mtvreservation == null || mtvreservation.mTimeStart != mtvprogram.mTimeStart || mtvreservation.mTimeEnd != mtvprogram.mTimeEnd || mtvreservation.mPgmServiceID != i)
            break MISSING_BLOCK_LABEL_112;
        if(mtvreservation == null || mtvreservation.mPgmType != 0) goto _L2; else goto _L1
_L1:
        byte byte0 = 2;
_L4:
        return byte0;
_L2:
        byte0 = flag;
        if(mtvreservation == null) goto _L4; else goto _L3
_L3:
        byte0 = flag;
        if(mtvreservation.mPgmType != 1) goto _L4; else goto _L5
_L5:
        return 1;
        return 0;
    }

    public Handler getHandler()
    {
        return mChannelScheduleUiMsgHandler;
    }

    public MtvOneSegProgram[] getProgram()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getProgram();
        else
            return null;
    }

    public boolean isReservationAlreadyTime(MtvProgram mtvprogram)
    {
        MtvReservation amtvreservation[] = (MtvReservation[])MtvReservationManager.getAllReserves(this);
        if(amtvreservation == null || mtvprogram == null)
            return false;
        Arrays.sort(amtvreservation);
        int i = 0;
        if(mMtvPreferences != null)
            i = mMtvPreferences.getLatestServiceID();
        for(int j = 0; j < amtvreservation.length; j++)
        {
            if(amtvreservation[j].mTimeStart < System.currentTimeMillis())
                continue;
            if(mtvprogram.mTimeStart == amtvreservation[j].mTimeStart && mtvprogram.mTimeEnd == amtvreservation[j].mTimeEnd)
                if(mtvprogram != null && amtvreservation[j].mPgmServiceID != i)
                {
                    MtvUtilDebug.Low("MtvUiChannelSchedule", "Program is not null and urids are same:false");
                    return false;
                } else
                {
                    MtvUtilDebug.Low("MtvUiChannelSchedule", "Program is null or urids are not same:true");
                    return true;
                }
            if(mtvprogram.mTimeStart >= amtvreservation[j].mTimeEnd || mtvprogram != null && amtvreservation[j].mUriId == mtvprogram.mUriId)
                continue;
            if(mtvprogram.mTimeEnd <= amtvreservation[j].mTimeStart)
            {
                MtvUtilDebug.Low("MtvUiChannelSchedule", "list support back to back reservations: true");
                return true;
            } else
            {
                MtvUtilDebug.Low("MtvUiChannelSchedule", "list support back to back reservations: false");
                return false;
            }
        }

        return true;
    }

    public void onBackPressed()
    {
        if(MtvUiFragHandler.removeUnManagedFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO, this))
        {
            return;
        } else
        {
            finish();
            return;
        }
    }

    public void onClick(View view)
    {
        switch(view.getId())
        {
        default:
            return;

        case 2131361794: 
            showChannelList();
            break;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mActivity = this;
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            mMtvAppPlaybackContext.getState().registerListener(this);
        }
        requestWindowFeature(1);
        setContentView(0x7f030001);
        getWindow().addFlags(1152);
        Object aobj[];
        if(getResources().getConfiguration().orientation == 1)
            getWindow().clearFlags(1024);
        else
            getWindow().addFlags(1024);
        mPreferences = new MtvPreferences(getApplicationContext());
        mIcon[1] = getResources().getDrawable(0x7f02008d);
        mIcon[2] = getResources().getDrawable(0x7f02008a);
        if(mPreferences.getLatestPChannelFromVChannel() != -1)
        {
            String s = (new StringBuilder()).append("CH ").append(mPreferences.getLatestPChannelFromVChannel()).toString();
            MtvChannel mtvchannel = MtvChannelManager.findByPChannel(getApplicationContext(), mPreferences.getLatestPChannelFromVChannel(), mPreferences.getLatestServiceID());
            bundle = s;
            if(mtvchannel != null)
            {
                bundle = s;
                if(mtvchannel.mChannelName != null)
                    bundle = getSpinnerTitle(mtvchannel);
            }
        } else
        {
            bundle = getResources().getString(0x7f070309);
        }
        mSpinnerButton = (Button)findViewById(0x7f0a0002);
        aobj = MtvChannelManager.getAllAvailableChannels(this);
        if(aobj != null && aobj.length < 1)
            mSpinnerButton.setEnabled(false);
        else
            mSpinnerButton.setEnabled(true);
        mSpinnerButton.setText(bundle);
        bundle = (ListView)findViewById(0x7f0a0005);
        aobj = MtvProgramManager.findProgramsByPChannel(getApplicationContext(), mPreferences.getLatestPChannelFromVChannel());
        mProgramAdapter = new ProgramAdapter(getApplicationContext(), ((MtvProgram []) (aobj)));
        bundle.setAdapter(mProgramAdapter);
        bundle.setEmptyView(findViewById(0x7f0a0006));
        if(getIntent().getBooleanExtra("view_program_details", false))
        {
            bundle.setOnItemClickListener(mScheduleListListener);
            bundle.setOnItemLongClickListener(mScheduleListLongListener);
        } else
        {
            bundle.setOnItemClickListener(mScheduleListClickListener);
        }
        mSpinnerButton.setOnClickListener(this);
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    public void onDestroy()
    {
        super.onDestroy();
        mMtvPreferences = null;
    }

    public void onFragEvent(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("onFragEvent: event[").append(i).append("]").toString());
        i;
        JVM INSTR tableswitch 267 267: default 52
    //                   267 53;
           goto _L1 _L2
_L1:
        return;
_L2:
        i = ((Integer)obj).intValue();
        MtvUtilDebug.Mid("MtvUiChannelSchedule", (new StringBuilder()).append("showChannelList which").append(i).toString());
        obj = MtvChannelManager.getAllAvailableChannels(this);
        if(obj != null)
        {
            obj = obj[i];
            MtvUtilDebug.Mid("MtvUiChannelSchedule", (new StringBuilder()).append("channel ").append(((MtvChannel) (obj)).mPhysicalNum).toString());
            MtvProgramManager.delete(this, null);
            mPreferences.setLatestPChannel(((MtvChannel) (obj)).mPhysicalNum);
            mPreferences.setLatestVChannel(((MtvChannel) (obj)).mVirtualNum);
            mPreferences.setLatestServiceID(((MtvChannel) (obj)).mServiceID);
            mPreferences.setLatestVChannelMultiChannel(((MtvChannel) (obj)).mMultiChannelNo);
            mStartNewChannel(((MtvChannel) (obj)));
            setSpinnerButtonText(getSpinnerTitle(((MtvChannel) (obj))), ((MtvChannel) (obj)));
            setListViewItemByPCh(((MtvChannel) (obj)).mPhysicalNum);
            return;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 0 0: default 24
    //                   0 26;
           goto _L1 _L2
_L1:
        return true;
_L2:
        if(getFragmentManager().findFragmentByTag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO.toString()) == null)
            (new MtvUiMemInfoFrag()).show(getFragmentManager(), "MtvUiMemInfoFrag");
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onPlayerNotification(int i, int j, int k)
    {
        MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("onPlayerNotification ...:command : ").append(i).append(" status : ").append(j).toString());
        i;
        JVM INSTR lookupswitch 3: default 72
    //                   20482: 156
    //                   20484: 120
    //                   20494: 73;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L4:
        MtvUtilDebug.Low("MtvUiChannelSchedule", "onPlayerNotification CMD_CLOSE");
        switch(j)
        {
        default:
            return;

        case 24581: 
            break;
        }
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            return;
        }
          goto _L1
_L3:
        MtvUtilDebug.Low("MtvUiChannelSchedule", "onPlayerNotification CMD_PLAY");
        j;
        JVM INSTR lookupswitch 2: default 156
    //                   24581: 228
    //                   24593: 242;
           goto _L2 _L5 _L6
_L2:
        MtvUtilDebug.Low("MtvUiChannelSchedule", "onPlayerNotification CMD_OPEN");
        switch(j)
        {
        default:
            return;

        case 24580: 
            MtvUtilDebug.High("MtvUiChannelSchedule", "We've given up trying to open the channel, but we won't give up!! We'll keep trying!");
            break;
        }
        mStartNewChannel(new MtvChannel(0, mMtvPreferences.getLatestPChannelFromVChannel(), 0, 0, null, 0, 0, 0, mMtvPreferences.getLatestServiceID(), 0, null));
        return;
_L5:
        MtvUtilAudioManager.getInstance(getApplicationContext()).updateCurrentAudioEffectAndMode();
        continue; /* Loop/switch isn't completed */
_L6:
        MtvUtilDebug.Error("MtvUiChannelSchedule", "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!");
        if(!MtvUtilDebug.isReleaseMode())
        {
            Toast toast = Toast.makeText(this, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - ", 1);
            toast.setGravity(119, 0, 0);
            toast.show();
        }
        sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"));
        if(true) goto _L2; else goto _L7
_L7:
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        super.onPrepareOptionsMenu(menu);
        menu.clear();
        if(getFragmentManager().findFragmentByTag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO.toString()) != null)
        {
            return false;
        } else
        {
            menu.add(0, 0, 0, 0x7f070258).setIcon(0x7f0200b2);
            return true;
        }
    }

    public void onProgramAttributeReset(int i)
    {
    }

    public void onProgramAttributeUpdated(int i)
    {
        switch(i)
        {
        default:
            return;

        case 2: // '\002'
            MtvUtilDebug.Low("MtvUiChannelSchedule", "ATTRIB_PROGRAM");
            break;
        }
        mChannelScheduleUiMsgHandler.sendMessage(mChannelScheduleUiMsgHandler.obtainMessage(317));
    }

    protected void onResume()
    {
        super.onResume();
        nowOnAirPosition = -1;
        sendBroadcast(new Intent("intent.stop.app-in-app"));
        if(mPreferences == null)
            mPreferences = new MtvPreferences(getApplicationContext());
        if(mProgramAdapter != null)
            mProgramAdapter.notifyDataSetChanged();
        if(MtvUtilAppService.isAppExiting())
        {
            finish();
            return;
        } else
        {
            mMtvPreferences = new MtvPreferences(getApplicationContext());
            return;
        }
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    public void reserveContextMenuDialog(String s, int i, final MtvProgram program, final boolean bIsNowOnAir)
    {
        reserveContextMenuAlertDialog = (new android.app.AlertDialog.Builder(this)).setTitle(s).setItems(i, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                if(mMtvPreferences == null)
                    mMtvPreferences = new MtvPreferences(getApplicationContext());
                MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("program.mPch :").append(program.mPch).toString());
                int k = mMtvPreferences.getLatestServiceID();
                MtvUtilDebug.Low("MtvUiChannelSchedule", (new StringBuilder()).append("program.mPch :").append(program.mPch).append("mServiceID :").append(k).toString());
                boolean flag1;
                switch(j)
                {
                default:
                    return;

                case 0: // '\0'
                    boolean flag = false;
                    MtvReservation mtvreservation;
                    if(bIsNowOnAir)
                    {
                        MtvUtilAppService.setIsNowOnAirReservation(true);
                        dialoginterface = new MtvProgram(program.mPch, program.mVch, program.mLock, System.currentTimeMillis() + 2000L, program.mTimeEnd, program.mPgmName, program.mPgmDetail);
                    } else
                    {
                        dialoginterface = program;
                    }
                    mtvreservation = MtvReservationManager.find(getApplicationContext(), program.mTimeStart, new boolean[0]);
                    if(mtvreservation != null && mtvreservation.mTimeStart == program.mTimeStart && mtvreservation.mTimeEnd == program.mTimeEnd && mtvreservation.mPgmServiceID == k)
                    {
                        if(mtvreservation != null && mtvreservation.mPgmType == 0)
                        {
                            j = 2;
                        } else
                        {
                            j = ((flag) ? 1 : 0);
                            if(mtvreservation != null)
                            {
                                j = ((flag) ? 1 : 0);
                                if(mtvreservation.mPgmType == 1)
                                    j = 1;
                            }
                        }
                    } else
                    {
                        j = 0;
                    }
                    if(j == 2 && mtvreservation.mPgmStatus == 0)
                    {
                        dialoginterface = new MtvReservation(dialoginterface, 1, 0, k);
                        MtvReservationManager.updateOrInsert(getApplicationContext(), dialoginterface);
                    } else
                    if(j == 1 && mtvreservation.mPgmStatus == 0)
                    {
                        dialoginterface = new MtvReservation(dialoginterface, 0, 0, k);
                        MtvReservationManager.updateOrInsert(getApplicationContext(), dialoginterface);
                    } else
                    {
                        dialoginterface = new MtvReservation(dialoginterface, 0, 0, k);
                        MtvReservationManager.updateOrInsert(getApplicationContext(), dialoginterface);
                    }
                    MtvUtilSetReservationAlarm.setReservationAlarm(getApplicationContext(), ((MtvReservation) (dialoginterface)).mTimeStart, true, false);
                    MtvUiChannelSchedule.mActivity.mProgramAdapter.notifyDataSetChanged();
                    return;

                case 1: // '\001'
                    flag1 = false;
                    if(bIsNowOnAir)
                    {
                        dialoginterface = new Intent();
                        dialoginterface.setFlags(0x4000000);
                        dialoginterface.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
                        startActivity(dialoginterface);
                        return;
                    }
                    dialoginterface = MtvReservationManager.find(getApplicationContext(), program.mTimeStart, new boolean[0]);
                    break;
                }
                if(dialoginterface != null && ((MtvReservation) (dialoginterface)).mTimeStart == program.mTimeStart && ((MtvReservation) (dialoginterface)).mTimeEnd == program.mTimeEnd && ((MtvReservation) (dialoginterface)).mPgmServiceID == k)
                {
                    if(dialoginterface != null && ((MtvReservation) (dialoginterface)).mPgmType == 0)
                    {
                        j = 2;
                    } else
                    {
                        j = ((flag1) ? 1 : 0);
                        if(dialoginterface != null)
                        {
                            j = ((flag1) ? 1 : 0);
                            if(((MtvReservation) (dialoginterface)).mPgmType == 1)
                                j = 1;
                        }
                    }
                } else
                {
                    j = 0;
                }
                if(j == 0 || dialoginterface != null && ((MtvReservation) (dialoginterface)).mPgmStatus != 0)
                {
                    dialoginterface = new MtvReservation(program, 1, 0, k);
                    MtvReservationManager.updateOrInsert(getApplicationContext(), dialoginterface);
                    MtvUtilSetReservationAlarm.setReservationAlarm(getApplicationContext(), ((MtvReservation) (dialoginterface)).mTimeStart, true, false);
                    MtvUiChannelSchedule.mActivity.mProgramAdapter.notifyDataSetChanged();
                } else
                {
                    (new android.app.AlertDialog.Builder(MtvUiChannelSchedule.this)).setTitle(0x7f07020c).setMessage(0x7f0702ce).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            MtvReservationManager.delete(getApplicationContext(), program.mTimeStart, null);
                            MtvUtilSetReservationAlarm.setReservationAlarm(getApplicationContext(), program.mTimeStart, false, true);
                            MtvUiChannelSchedule.mActivity.mProgramAdapter.notifyDataSetChanged();
                        }

                        final _cls5 this$1;

            
            {
                this$1 = _cls5.this;
                super();
            }
                    }
).setNegativeButton(0x7f07020b, null).show().getWindow().addFlags(1024);
                }
                MtvUiChannelSchedule.mActivity.mProgramAdapter.notifyDataSetChanged();
            }

            final MtvUiChannelSchedule this$0;
            final boolean val$bIsNowOnAir;
            final MtvProgram val$program;

            
            {
                this$0 = MtvUiChannelSchedule.this;
                program = mtvprogram;
                bIsNowOnAir = flag;
                super();
            }
        }
).show();
        reserveContextMenuAlertDialog.setCanceledOnTouchOutside(false);
        reserveContextMenuAlertDialog.getWindow().addFlags(1024);
        mActivity.mProgramAdapter.notifyDataSetChanged();
    }

    public void showAlreadyReserveDlg()
    {
        (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701e0).setMessage(0x7f0702f5).setPositiveButton(0x7f070298, null).show().getWindow().addFlags(1024);
    }

    private static final int ICON_RESERVE_NONE = 0;
    private static final int ICON_RESERVE_PLAY = 1;
    private static final int ICON_RESERVE_RECORD = 2;
    private static final int MENU_VIEW_FREE_MEMORY = 0;
    private static final int RESERVE_NONE = 0;
    private static final int RESERVE_PLAY = 1;
    private static final int RESERVE_RECORD = 2;
    private static MtvUiChannelSchedule mActivity = null;
    private final String TAG = "MtvUiChannelSchedule";
    private Handler mChannelScheduleUiMsgHandler;
    private final Drawable mIcon[] = new Drawable[3];
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvPreferences mMtvPreferences;
    private MtvPreferences mPreferences;
    private ProgramAdapter mProgramAdapter;
    android.widget.AdapterView.OnItemClickListener mScheduleListClickListener;
    android.widget.AdapterView.OnItemClickListener mScheduleListListener;
    android.widget.AdapterView.OnItemLongClickListener mScheduleListLongListener;
    int mServiceID;
    private Button mSpinnerButton;
    public MtvProgram mtvPrograms[];
    private int nowOnAirPosition;
    private AlertDialog reserveContextMenuAlertDialog;
    private DialogFragment showChannelListAlertDialog;




/*
    static MtvPreferences access$002(MtvUiChannelSchedule mtvuichannelschedule, MtvPreferences mtvpreferences)
    {
        mtvuichannelschedule.mPreferences = mtvpreferences;
        return mtvpreferences;
    }

*/




/*
    static MtvPreferences access$102(MtvUiChannelSchedule mtvuichannelschedule, MtvPreferences mtvpreferences)
    {
        mtvuichannelschedule.mMtvPreferences = mtvpreferences;
        return mtvpreferences;
    }

*/






/*
    static MtvAppPlaybackContext access$502(MtvUiChannelSchedule mtvuichannelschedule, MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mtvuichannelschedule.mMtvAppPlaybackContext = mtvappplaybackcontext;
        return mtvappplaybackcontext;
    }

*/



/*
    static int access$602(MtvUiChannelSchedule mtvuichannelschedule, int i)
    {
        mtvuichannelschedule.nowOnAirPosition = i;
        return i;
    }

*/



}
