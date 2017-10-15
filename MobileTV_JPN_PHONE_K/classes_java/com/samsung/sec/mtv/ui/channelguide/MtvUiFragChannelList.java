// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.*;
import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegChannel;
import android.broadcast.helper.types.MtvOneSegProgram;
import android.content.*;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.*;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.utility.*;
import com.sec.android.touchwiz.widget.TwProgressBar;

// Referenced classes of package com.samsung.sec.mtv.ui.channelguide:
//            MtvUiChannelSchedule, MtvUiSetArea

public class MtvUiFragChannelList extends MtvUiFrag
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener, android.widget.AdapterView.OnItemLongClickListener, android.app.LoaderManager.LoaderCallbacks
{
    private class ChannelAdapter extends CursorAdapter
    {

        public void bindView(View view, Context context, Cursor cursor)
        {
            cursor = MtvChannelManager.builder(cursor);
            view.setTag(cursor);
            MtvUtilDebug.Low(MtvUiFragChannelList.TAG, (new StringBuilder()).append("bindView channel=").append(cursor.toString()).toString());
            TextView textview = (TextView)view.findViewById(0x7f0a006f);
            TextView textview1 = (TextView)view.findViewById(0x7f0a006e);
            TextView textview2 = (TextView)view.findViewById(0x7f0a0070);
            textview.setText("  ");
            int i = 0;
            if(((MtvChannel) (cursor)).mAvailable == 1 && ((MtvChannel) (cursor)).mMultiChannelNo != 0)
            {
                i = ((MtvChannel) (cursor)).mMultiChannelNo;
                int j;
                if(i < 99)
                    context = (new StringBuilder()).append("0").append(i).toString();
                else
                    context = Integer.toString(i);
                textview2.setText(context);
                textview2.setVisibility(0);
            } else
            {
                textview2.setVisibility(4);
            }
            context = Integer.toString(((MtvChannel) (cursor)).mVirtualNum);
            if(i == 0 || i % 10 == 1)
            {
                textview.setText(context);
                textview.setVisibility(0);
            } else
            {
                textview.setVisibility(4);
            }
            textview1.setText(((MtvChannel) (cursor)).mChannelName);
            if(((MtvChannel) (cursor)).mAvailable == 1 && !MtvUtilDebug.isReleaseMode())
            {
                textview.setTextColor(-256);
                textview1.setTextColor(-256);
                textview2.setTextColor(Color.parseColor("#969696"));
            } else
            {
                textview.setTextColor(-1);
                textview1.setTextColor(-1);
                textview2.setTextColor(Color.parseColor("#969696"));
            }
            i = mMtvPreferences.getLatestVChannel();
            j = mMtvPreferences.getLatestVChannelMultiChannel();
            if(i != -1 && ((MtvChannel) (cursor)).mVirtualNum == i && ((MtvChannel) (cursor)).mMultiChannelNo == j)
            {
                MtvUtilDebug.Mid(MtvUiFragChannelList.TAG, (new StringBuilder()).append("current: vch=").append(i).append(", select: pch=").append(((MtvChannel) (cursor)).mPhysicalNum).append(" vch=").append(((MtvChannel) (cursor)).mVirtualNum).toString());
                view.findViewById(0x7f0a006d).setBackground(mContext.getResources().getDrawable(0x7f020100));
            } else
            {
                view.findViewById(0x7f0a006d).setBackground(mContext.getResources().getDrawable(0x7f020022));
            }
            if(((MtvChannel) (cursor)).mPhysicalNum < 1)
            {
                view.findViewById(0x7f0a006d).setBackground(mContext.getResources().getDrawable(0x7f0200fc));
                view.findViewById(0x7f0a006d).getBackground().setAlpha(127);
                textview1.setTextColor(Color.parseColor("#6b6b6b"));
                textview.setTextColor(Color.parseColor("#6b6b6b"));
                textview2.setTextColor(Color.parseColor("#969696"));
                return;
            }
            if(((MtvChannel) (cursor)).mAvailable == 1 && !MtvUtilDebug.isReleaseMode())
            {
                textview.setTextColor(-256);
                textview1.setTextColor(-256);
                textview2.setTextColor(Color.parseColor("#969696"));
                return;
            } else
            {
                textview1.setTextColor(Color.parseColor("#f5f5f5"));
                textview.setTextColor(Color.parseColor("#f5f5f5"));
                textview2.setTextColor(Color.parseColor("#969696"));
                return;
            }
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            return super.getView(i, view, viewgroup);
        }

        public View newView(Context context, Cursor cursor, ViewGroup viewgroup)
        {
            return ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030014, viewgroup, false);
        }

        private final Context mContext;
        final MtvUiFragChannelList this$0;

        public ChannelAdapter(Context context, Cursor cursor)
        {
            this$0 = MtvUiFragChannelList.this;
            super(context, cursor);
            mContext = context;
        }
    }

    public static class ChannelListDialogFragment extends DialogFragment
    {

        private Dialog createDialog(int i)
        {
            AlertDialog alertdialog = null;
            i;
            JVM INSTR tableswitch 0 1: default 24
        //                       0 31
        //                       1 77;
               goto _L1 _L2 _L3
_L1:
            alertdialog.setCanceledOnTouchOutside(false);
            return alertdialog;
_L2:
            alertdialog = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070219).setItems(0x7f05000b, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    switch(i)
                    {
                    default:
                        return;

                    case 0: // '\0'
                        ChannelListDialogFragment.removeDialog(getFragmentManager(), "ChannelListDialogFragment");
                        break;
                    }
                    ChannelListDialogFragment.newInstance(1).show(getFragmentManager(), "ChannelListDialogFragment");
                }

                final ChannelListDialogFragment this$0;

            
            {
                this$0 = ChannelListDialogFragment.this;
                super();
            }
            }
).create();
            alertdialog.getWindow().addFlags(1024);
            continue; /* Loop/switch isn't completed */
_L3:
            alertdialog = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070237).setMessage(0x7f0702d6).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface = MtvChannelManager.getUri(MtvUiFragChannelList.sSelectedChannel.mUriId);
                    MtvChannelManager.update2Default(getActivity().getApplicationContext(), dialoginterface);
                    MtvProgramManager.deletePChannelPrograms(getActivity().getApplicationContext(), MtvUiFragChannelList.sSelectedChannel.mPhysicalNum);
                    MtvChannelManager.deleteVChannelInfoBasedOnPhysical(getActivity().getApplicationContext(), MtvUiFragChannelList.sSelectedChannel.mVirtualNum, MtvUiFragChannelList.sSelectedChannel.mPhysicalNum);
                    dialoginterface = new MtvPreferences(getActivity().getApplicationContext());
                    if(MtvUiFragChannelList.sSelectedChannel.mVirtualNum == dialoginterface.getLatestVChannel())
                    {
                        dialoginterface.setLatestVChannel(-1);
                        dialoginterface.setLatestPChannel(-1);
                        dialoginterface.setLatestServiceID(0);
                        dialoginterface.setLatestVChannelMultiChannel(0);
                        MtvChannel mtvchannel = MtvChannelManager.getFirstOnAir(getActivity().getApplicationContext());
                        MtvUiFrag mtvuifrag = (MtvUiFrag)getFragmentManager().findFragmentByTag("channelguidelist");
                        if(mtvchannel != null)
                        {
                            dialoginterface.setLatestVChannel(mtvchannel.mVirtualNum);
                            dialoginterface.setLatestPChannel(mtvchannel.mPhysicalNum);
                            dialoginterface.setLatestServiceID(mtvchannel.mServiceID);
                            dialoginterface.setLatestVChannelMultiChannel(mtvchannel.mMultiChannelNo);
                            if(mtvuifrag != null)
                                mtvuifrag.onUpdate(250, Integer.valueOf(mtvchannel.mPhysicalNum));
                        } else
                        {
                            if(MtvAreaManager.getCount(getActivity().getApplicationContext()) > 1)
                                MtvUiFragChannelList.mListener.onFragEvent(1, null);
                            else
                                MtvUiFragChannelList.mListener.onFragEvent(3, null);
                            Toast.makeText(getActivity(), 0x7f0702f4, 0).show();
                            dialoginterface.setLatestPChannel(13);
                            if(mtvuifrag != null)
                            {
                                mtvuifrag.onUpdate(250, Integer.valueOf(13));
                                return;
                            }
                        }
                    }
                }

                final ChannelListDialogFragment this$0;

            
            {
                this$0 = ChannelListDialogFragment.this;
                super();
            }
            }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                }

                final ChannelListDialogFragment this$0;

            
            {
                this$0 = ChannelListDialogFragment.this;
                super();
            }
            }
).create();
            alertdialog.getWindow().addFlags(1024);
            if(true) goto _L1; else goto _L4
_L4:
        }

        public static ChannelListDialogFragment newInstance(int i)
        {
            com/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;
            JVM INSTR monitorenter ;
            ChannelListDialogFragment channellistdialogfragment;
            channellistdialogfragment = new ChannelListDialogFragment();
            channellistdialogfragment.dialogId = i;
            com/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;
            JVM INSTR monitorexit ;
            return channellistdialogfragment;
            Exception exception;
            exception;
            throw exception;
        }

        public static void removeDialog(FragmentManager fragmentmanager, String s)
        {
            if(s != null && fragmentmanager != null)
            {
                FragmentTransaction fragmenttransaction = fragmentmanager.beginTransaction();
                fragmentmanager = fragmentmanager.findFragmentByTag(s);
                if(fragmentmanager != null)
                {
                    fragmenttransaction.remove(fragmentmanager);
                    fragmenttransaction.commit();
                }
            }
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
                dialogId = bundle.getInt("dialogId");
            return createDialog(dialogId);
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putInt("dialogId", dialogId);
            super.onSaveInstanceState(bundle);
        }

        private static final String DIALOG_TAG = "ChannelListDialogFragment";
        private int dialogId;

        public ChannelListDialogFragment()
        {
        }
    }

    class ControlChGuideLoadingAnimationRunnable
        implements Runnable
    {

        private void controlAnimation()
        {
            MtvUtilDebug.Low(MtvUiFragChannelList.TAG, (new StringBuilder()).append("controlAnimation: called :").append(isEnable).toString());
            if(isEnable)
            {
                mLoadingImageView.invalidate();
                mLoadingImageView.setVisibility(0);
                mTxtAnimation.setVisibility(0);
                if(!isRotating)
                {
                    isRotating = true;
                    mLoadingImageView.startAnimation(rotatingAnimation);
                }
                if(mStrAnimation != null)
                    mTxtAnimation.setText(mStrAnimation);
                else
                    mTxtAnimation.setText("");
            } else
            {
                isRotating = false;
                mLoadingImageView.clearAnimation();
                mLoadingImageView.setVisibility(4);
                mTxtAnimation.setText("");
                mTxtAnimation.setVisibility(4);
            }
            mLoadingImageView.requestLayout();
        }

        public void postAnimationToRunInUIThread()
        {
            mLoadingImageView.removeCallbacks(this);
            mLoadingImageView.post(this);
        }

        public void run()
        {
            controlAnimation();
        }

        public void setAnimationEnable(boolean flag)
        {
            MtvUtilDebug.Low(MtvUiFragChannelList.TAG, (new StringBuilder()).append("ControlAnimationRunnable: setAnimationEnable :").append(flag).toString());
            isEnable = flag;
        }

        protected void setAnimationText(String s)
        {
            MtvUtilDebug.Low(MtvUiFragChannelList.TAG, (new StringBuilder()).append("ControlAnimationRunnable: setAnimationText :").append(s).toString());
            mStrAnimation = s;
        }

        private boolean isEnable;
        private String mStrAnimation;
        final MtvUiFragChannelList this$0;

        public ControlChGuideLoadingAnimationRunnable()
        {
            this$0 = MtvUiFragChannelList.this;
            super();
            isEnable = false;
            MtvUtilDebug.Low(MtvUiFragChannelList.TAG, "ControlChGuideLoadingAnimationRunnable...");
        }
    }


    public MtvUiFragChannelList()
    {
        mStackLevel = 1;
        mMtvAppPlaybackContext = null;
        mSurfaceView = null;
        mLoadingImageView = null;
        rotatingAnimation = null;
        isRotating = false;
        mTxtAnimation = null;
        mhidden_surfaceview = null;
        mChannelNameText = null;
        mProgNameText = null;
        mListView = null;
        mNoSignalAlertDialog = null;
        mSlotID = -1;
        mSlotMap = null;
        all_List_channels = null;
        scroll_position = 0;
        mScanProgressDialog = null;
        mScanProgressBar = null;
        mScanProgressTitle = null;
        mScanProgressInfo = null;
        bScanProgress = false;
        mChangeAreaCompleteDialog = null;
    }

    private void StartScanProgessBar(Context context)
    {
        View view = LayoutInflater.from(context).inflate(0x7f030017, null);
        context = new android.app.AlertDialog.Builder(context);
        MtvUtilDebug.Low(TAG, "StartScanProgessBar: called...");
        context.setIcon(0x7f020073).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                MtvUtilDebug.Low(MtvUiFragChannelList.TAG, "StartScanProgessBar: Cancel pressed issuing cancel scan");
                cancelScanChannel();
            }

            final MtvUiFragChannelList this$0;

            
            {
                this$0 = MtvUiFragChannelList.this;
                super();
            }
        }
).setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {

            public boolean onKey(DialogInterface dialoginterface, int j, KeyEvent keyevent)
            {
                if(j == 82)
                {
                    MtvUtilDebug.Low(MtvUiFragChannelList.TAG, "StartScanProgessBar:onKey KEYCODE_MENU is ignore");
                    return true;
                } else
                {
                    return false;
                }
            }

            final MtvUiFragChannelList this$0;

            
            {
                this$0 = MtvUiFragChannelList.this;
                super();
            }
        }
).setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            public void onCancel(DialogInterface dialoginterface)
            {
                MtvUtilDebug.Low(MtvUiFragChannelList.TAG, "StartScanProgessBar onCancel: Progress Dialog cancelled");
                cancelScanChannel();
            }

            final MtvUiFragChannelList this$0;

            
            {
                this$0 = MtvUiFragChannelList.this;
                super();
            }
        }
);
        mScanProgressTitle = (TextView)view.findViewById(0x7f0a0079);
        mScanProgressInfo = (TextView)view.findViewById(0x7f0a007c);
        mScanProgressBar = (TwProgressBar)view.findViewById(0x7f0a007b);
        int i;
        if(mScanType == 1)
            mScanProgressTitle.setText(getString(0x7f0702cf));
        else
        if(mScanType == 2)
            mScanProgressTitle.setText(getString(0x7f07030c));
        mScanProgressBar.setProgressDrawable(0x7f0200bf);
        mScanProgressBar.setBackgroundDrawable(0x7f0200c0);
        mScanProgressBar.setMax(100);
        i = getScanProgessPercentage();
        mScanProgressInfo.setText((new StringBuilder()).append(Integer.toString(i)).append(" %").toString());
        mScanProgressBar.setProgress(i);
        context.setView(view);
        mScanProgressDialog = context.create();
        mScanProgressDialog.setCanceledOnTouchOutside(false);
        mScanProgressDialog.show();
        context = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(context != null && context.getState().getOp() == 20485)
        {
            mScanProgressDialog.setCancelable(true);
            mScanProgressDialog.getButton(-2).setEnabled(true);
        } else
        {
            mScanProgressDialog.setCancelable(false);
            mScanProgressDialog.getButton(-2).setEnabled(false);
        }
        mScanProgressDialog.getWindow().addFlags(1024);
    }

    private void UpdateScanProgessBar()
    {
        if(mScanProgressBar != null)
        {
            int i = getScanProgessPercentage();
            mScanProgressBar.setProgress(i);
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("pg*** UpdateScanProgessBar- scanPercentage:").append(i).toString());
            mScanProgressInfo.setText((new StringBuilder()).append(Integer.toString(i)).append(" %").toString());
        }
    }

    private void cancelScanChannel()
    {
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        IMtvAppPlayerOneSeg imtvappplayeroneseg = MtvAppPlayerOneSeg.getInstance();
        if(mtvappplaybackcontext != null && imtvappplayeroneseg != null)
        {
            MtvUtilDebug.Low(TAG, "cancelScanChannel called");
            if(imtvappplayeroneseg.cancelScanChannels(mtvappplaybackcontext))
            {
                if(mScanProgressDialog != null)
                {
                    mScanProgressDialog.dismiss();
                    mScanProgressDialog = null;
                }
                return;
            } else
            {
                MtvUtilDebug.High(TAG, "cancelScanChannel : Cancel Update/Search failed ");
                return;
            }
        } else
        {
            MtvUtilDebug.Error(TAG, "cancelScanChannel : Cancel Update/Search failed ");
            return;
        }
    }

    private void changeArea(int i)
    {
        mMtvPreferences.setCurrentSlot(i);
        MtvProgramManager.delete(getActivity(), null);
        mListAdapter.swapCursor(null);
        getLoaderManager().restartLoader(1, null, this);
        mListView.setAdapter(mListAdapter);
    }

    private void changeAreaNStartTV(int i)
    {
        mMtvPreferences.setCurrentSlot(i);
        MtvProgramManager.delete(getActivity(), null);
        MtvChannel mtvchannel = MtvChannelManager.getFirstOnAir(getActivity());
        IMtvAppPlayerOneSeg imtvappplayeroneseg;
        if(mtvchannel != null)
        {
            mMtvPreferences.setLatestPChannel(mtvchannel.mPhysicalNum);
            mMtvPreferences.setLatestVChannel(mtvchannel.mVirtualNum);
            mMtvPreferences.setLatestServiceID(mtvchannel.mServiceID);
            mMtvPreferences.setLatestVChannelMultiChannel(mtvchannel.mMultiChannelNo);
        } else
        {
            mMtvPreferences.setLatestPChannel(13);
            mMtvPreferences.setLatestVChannel(-1);
            mMtvPreferences.setLatestServiceID(0);
            mMtvPreferences.setLatestVChannelMultiChannel(0);
        }
        invalidateChannelInfo();
        imtvappplayeroneseg = MtvAppPlayerOneSeg.getInstance();
        if(imtvappplayeroneseg != null && mtvchannel != null)
        {
            imtvappplayeroneseg.open(MtvAppPlaybackContextManager.getInstance().getLiveTV(), prepareUri(mtvchannel.mPhysicalNum));
            return;
        } else
        {
            imtvappplayeroneseg.open(MtvAppPlaybackContextManager.getInstance().getLiveTV(), prepareUri(mMtvPreferences.getLatestPChannel()));
            return;
        }
    }

    private MtvOneSegChannel[] getChannel()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getChannel();
        else
            return null;
    }

    private String getCurrentChannelName()
    {
        boolean flag1;
        String s;
        MtvOneSegChannel amtvonesegchannel[];
        String s1 = "";
        amtvonesegchannel = getChannel();
        flag1 = false;
        boolean flag = false;
        s = s1;
        if(amtvonesegchannel != null)
        {
            int i = 0;
            do
            {
                s = s1;
                flag1 = flag;
                if(i >= amtvonesegchannel[0].getNumberOfPhysicalIDs())
                    break;
                if(getServiceID() == amtvonesegchannel[i].getPhysicalID())
                {
                    s1 = amtvonesegchannel[i].getServName();
                    flag = true;
                }
                i++;
            } while(true);
        }
        MtvUtilDebug.Error(TAG, (new StringBuilder()).append("channelName - [").append(s).append("], isChannelNameset-").append(flag1).toString());
        if(flag1 || amtvonesegchannel == null || amtvonesegchannel[0].getServName() == null) goto _L2; else goto _L1
_L1:
        s = amtvonesegchannel[0].getServName();
_L4:
        MtvUtilDebug.Error(TAG, (new StringBuilder()).append("channelName after-[").append(s).append("]  isChannelNameset-").append(flag1).toString());
        return s;
_L2:
        if(!flag1)
            s = mMtvPreferences.getLatestChannelNameForDisplay(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private MtvOneSegProgram getCurrentProgram()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getCurrentProgram();
        else
            return null;
    }

    private String getCurrentProgramName()
    {
        Object obj = getCurrentProgram();
        if(obj != null)
        {
            obj = ((MtvOneSegProgram) (obj)).getProgName();
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("Program Name -[").append(((String) (obj))).append("]").toString());
            return ((String) (obj));
        } else
        {
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("Current Program Name is NOT available!-[").append("").append("]").toString());
            return "";
        }
    }

    private int getScanProgessPercentage()
    {
        int i = 0;
        boolean flag = false;
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
        {
            MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            if(mtvappplaybackcontext != null && mtvappplaybackcontext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
                mMtvAppPlaybackContext = mtvappplaybackcontext;
        }
        if(mMtvAppPlaybackContext != null)
        {
            i = mMtvAppPlaybackContext.getAttribute().getLastScannedChannel();
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("pg*** mMtvAppPlaybackContext  ").append(mMtvAppPlaybackContext.getType()).toString());
        }
        int j = ((flag) ? 1 : 0);
        if(i >= 13)
        {
            j = ((flag) ? 1 : 0);
            if(i <= 52)
            {
                j = ((flag) ? 1 : 0);
                if(40 > 0)
                {
                    MtvUtilDebug.Low(TAG, (new StringBuilder()).append("pg*** % ***    ").append(i).toString());
                    j = ((i - 12) * 100) / 40;
                }
            }
        }
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("pg*** % ***    ").append(j).append("  ").append(i).toString());
        return j;
    }

    private int getServiceID()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getCurrentOpenedChannelServiceId();
        else
            return 0;
    }

    private void initPlayer()
    {
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LIVETV)
        {
            IMtvOneSegVideoControl imtvonesegvideocontrol = mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface();
            if(imtvonesegvideocontrol != null)
                imtvonesegvideocontrol.enableVideo();
            else
                MtvUtilDebug.Low(TAG, "initPlayer: getcontrolInterface returned NULL !!");
        }
        registerVideoSurfaceView(true);
        if(MtvAreaManager.getCount(getActivity().getApplicationContext()) > 0)
        {
            if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
                showAnimationControl(false, null);
            else
            if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
                showAnimationControl(true, getString(0x7f070268));
            else
                showAnimationControl(true, getString(0x7f07021d));
            mhidden_surfaceview.setVisibility(8);
            mSurfaceView.setVisibility(0);
            if(mListAdapter != null && mListAdapter.getCursor() != null)
                mListAdapter.notifyDataSetChanged();
            mListView.setSelection(mMtvPreferences.getLatestVChannel() - 1);
            showChannelNameProgramName(getCurrentChannelName(), getCurrentProgramName());
            return;
        } else
        {
            MtvUtilDebug.High(TAG, "noAreaSet... HiddenSurfaaceView Visible...");
            showAnimationControl(false, null);
            showChannelNameProgramName("", "");
            mhidden_surfaceview.setVisibility(0);
            mSurfaceView.setVisibility(8);
            return;
        }
    }

    private void initView(View view)
    {
        mSurfaceView = (SurfaceView)view.findViewById(0x7f0a00b2);
        if(mSurfaceView != null)
            mSurfaceView.setOnClickListener(this);
        mLoadingImageView = (ImageView)view.findViewById(0x7f0a00b5);
        rotatingAnimation = AnimationUtils.loadAnimation(getActivity(), 0x7f040000);
        mTxtAnimation = (TextView)view.findViewById(0x7f0a0025);
        mControlChGuideLoadingAnimationRunnable = new ControlChGuideLoadingAnimationRunnable();
        mhidden_surfaceview = (ImageView)view.findViewById(0x7f0a00b3);
        mhidden_surfaceview.setImageDrawable(getResources().getDrawable(0x7f02007b));
        mChannelNameText = (TextView)view.findViewById(0x7f0a00b6);
        mProgNameText = (TextView)view.findViewById(0x7f0a00b7);
        mCh_guide_schedule = (Button)view.findViewById(0x7f0a00b9);
        if(mCh_guide_schedule != null)
        {
            mCh_guide_schedule.setOnClickListener(this);
            mCh_guide_schedule.setTransformationMethod(null);
        }
        mCh_guide_tvview_btn = (Button)view.findViewById(0x7f0a00ba);
        if(mCh_guide_tvview_btn != null)
        {
            mCh_guide_tvview_btn.setOnClickListener(this);
            mCh_guide_tvview_btn.setTransformationMethod(null);
        }
        mListView = (ListView)view.findViewById(0x7f0a00b8);
        mListView.setVisibility(0);
        mListView.setAdapter(mListAdapter);
        mListView.setOnItemClickListener(this);
        mListView.setOnItemLongClickListener(this);
    }

    private void invalidateChannelInfo()
    {
        if(mChannelNameText != null)
            mChannelNameText.setText("");
        if(mProgNameText != null)
            mProgNameText.setText("");
    }

    private MtvURI prepareUri(int i)
    {
        MtvURI mtvuri = null;
        int j = 0;
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getActivity());
        int k = mMtvPreferences.getLatestServiceID();
        if(mMtvPreferences != null)
        {
            j = MtvChannelManager.findMultiChannelNoByServiceId(getActivity(), i, k);
            mtvuri = new MtvURI(2, i, k, false);
            MtvUtilDebug.Low(TAG, "prepareUri Set OneSeg");
        }
        mMtvPreferences.setLatestServiceID(k);
        mMtvPreferences.setLatestVChannelMultiChannel(j);
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("mtvURI in prepareUri serviceID: ").append(mtvuri.serviceID()).append(" and multiChNo : ").append(j).append(" and physical chnlNum: ").append(mtvuri.chnlNum()).toString());
        return mtvuri;
    }

    private void registerVideoSurfaceView(boolean flag)
    {
        IMtvOneSegVideoControl imtvonesegvideocontrol;
label0:
        {
            if(mMtvAppPlaybackContext != null)
            {
                mMtvAppPlaybackContext.getComponents().getVideo().enable();
                imtvonesegvideocontrol = mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface();
                if(imtvonesegvideocontrol != null)
                {
                    if(!flag)
                        break label0;
                    imtvonesegvideocontrol.registerSurface(mSurfaceView);
                }
            }
            return;
        }
        imtvonesegvideocontrol.unregisterSurface(mSurfaceView);
    }

    private void scanChannel()
    {
        MtvUiGenericPlayer.removeOpenChannelMessages();
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getScanner();
        IMtvAppPlayerOneSeg imtvappplayeroneseg = MtvAppPlayerOneSeg.getInstance();
        if(mtvappplaybackcontext != null && imtvappplayeroneseg != null)
        {
            mMtvAppPlaybackContext = mtvappplaybackcontext;
            mMtvAppPlaybackContext.getState().registerListener((IMtvAppPlaybackStateListener)getActivity());
            mMtvAppPlaybackContext.getAttribute().registerListener((IMtvAppProgramAttributeListener)getActivity());
            imtvappplayeroneseg.scanChannels(mtvappplaybackcontext);
            MtvUtilDebug.Low(TAG, "scanChannel :Scan Started ...");
            StartScanProgessBar(getActivity());
            return;
        } else
        {
            MtvUtilDebug.Error(TAG, "ScanChannel : Update/Search failed ");
            return;
        }
    }

    private void scanChannel(int i, int ai[])
    {
        mListener.onFragEvent(4, null);
        mMtvPreferences.setCurrentSlot(i);
        mListAdapter.swapCursor(null);
        getLoaderManager().restartLoader(1, null, this);
        mMtvPreferences.setLatestVChannel(-1);
        mMtvPreferences.setLatestPChannel(-1);
        mMtvPreferences.setLatestServiceID(0);
        mMtvPreferences.setLatestVChannelMultiChannel(0);
        MtvChannelManager.deleteDB(getActivity(), null);
        if(ai != null)
        {
            mScanType = 1;
            String s = MtvAreaStationInfo.AREA_LOCAL[ai[0]][ai[1]][ai[2]];
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("update Channel current slotId= ").append(i).append(" Area Name= ").append(s).toString());
            MtvAreaManager.update(getActivity(), i, new MtvArea(MtvAreaStationInfo.AREA_LOCAL_ID[ai[0]][ai[1]][ai[2]], s));
            MtvChannelManager.setDefaultAreaNChannel(getActivity(), i, MtvAreaStationInfo.AREA_LOCAL_ID[ai[0]][ai[1]][ai[2]], null);
        } else
        {
            ai = MtvAreaManager.find(getActivity(), mMtvPreferences.getCurrentSlot());
            if(ai != null && ((MtvArea) (ai)).mAreaId >= 0)
            {
                mScanType = 2;
                MtvUtilDebug.Low(TAG, (new StringBuilder()).append("update Channel current slotId=").append(i).append(" areaId=").append(((MtvArea) (ai)).mAreaId).append(" areaName=").append(((MtvArea) (ai)).mAreaName).toString());
                MtvChannelManager.setDefaultAreaNChannel(getActivity(), i, ((MtvArea) (ai)).mAreaId, ((MtvArea) (ai)).mAreaName);
            } else
            if(ai != null)
                MtvUtilDebug.Low(TAG, (new StringBuilder()).append("Scan channel Area is not set =").append(i).append(" areaId=").append(((MtvArea) (ai)).mAreaId).append(" areaName=").append(((MtvArea) (ai)).mAreaName).toString());
            else
                MtvUtilDebug.Low(TAG, "Scan channel Area is not set and was returned as NULL");
        }
        scanChannel();
        invalidateChannelInfo();
    }

    private void showChannelNameProgramName(String s, String s1)
    {
        if(MtvAppPlaybackContextManager.getInstance().getCurrentContext() == null);
        if(MtvAreaManager.getCount(getActivity().getApplicationContext()) > 0)
        {
            if(mChannelNameText != null)
                mChannelNameText.setText(s);
            MtvUtilDebug.Mid(TAG, (new StringBuilder()).append("In showChannelNameProgramName, strProgName: ").append(s1).toString());
            if(mProgNameText != null && s1 != null && !s1.equalsIgnoreCase("No program name"))
                mProgNameText.setText(s1);
            return;
        } else
        {
            invalidateChannelInfo();
            return;
        }
    }

    private void startTvAfterScan()
    {
        Object obj = MtvAppPlaybackContextManager.getInstance().getLiveTV();
        MtvUtilAudioManager.getInstance(getActivity()).stopOtherSound();
        IMtvAppPlayerOneSeg imtvappplayeroneseg = MtvAppPlayerOneSeg.getInstance();
        if(obj != null && imtvappplayeroneseg != null)
        {
            mMtvAppPlaybackContext = ((MtvAppPlaybackContext) (obj));
            mMtvAppPlaybackContext.getState().registerListener((IMtvAppPlaybackStateListener)getActivity());
            mMtvAppPlaybackContext.getAttribute().registerListener((IMtvAppProgramAttributeListener)getActivity());
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
                showAnimationControl(false, null);
            else
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
                showAnimationControl(true, getString(0x7f070268));
            else
                showAnimationControl(true, getString(0x7f07021d));
            registerVideoSurfaceView(true);
            obj = MtvChannelManager.getFirstOnAir(getActivity().getApplicationContext());
            if(obj != null)
            {
                mMtvPreferences.setLatestPChannel(((MtvChannel) (obj)).mPhysicalNum);
                mMtvPreferences.setLatestVChannel(((MtvChannel) (obj)).mVirtualNum);
                mMtvPreferences.setLatestServiceID(((MtvChannel) (obj)).mServiceID);
                mMtvPreferences.setLatestVChannelMultiChannel(((MtvChannel) (obj)).mMultiChannelNo);
                obj = prepareUri(((MtvChannel) (obj)).mPhysicalNum);
                if(mListAdapter.getCursor() != null)
                    mListAdapter.notifyDataSetChanged();
                if(!MtvUtilDebug.isReleaseMode())
                    MtvUtilDebug.Low(TAG, (new StringBuilder()).append("startTvAfterScan  which URI =").append(obj).toString());
                imtvappplayeroneseg.open(mMtvAppPlaybackContext, ((MtvURI) (obj)));
            }
            scrollChannel();
            return;
        } else
        {
            MtvUtilDebug.Error(TAG, "Scan Failed");
            return;
        }
    }

    void changeAreaDialogBuilder(Context context)
    {
        context = new Bundle();
        context.putInt("dialogType", 1);
        MtvUiDialogsFrag.newInstance(context).show(getFragmentManager(), "dialog");
    }

    public void customRestartLoader()
    {
        getLoaderManager().restartLoader(1, null, this);
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        try
        {
            mListener = (com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener)activity;
            return;
        }
        catch(ClassCastException classcastexception)
        {
            throw new ClassCastException((new StringBuilder()).append(activity.toString()).append(" must implement IMtvFragEventListener").toString());
        }
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 3: default 40
    //                   2131361970: 97
    //                   2131361977: 41
    //                   2131361978: 97;
           goto _L1 _L2 _L3 _L2
_L1:
        return;
_L3:
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
        {
            view = new Intent(getActivity().getApplicationContext(), com/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule);
            view.putExtra("view_program_details", true);
            startActivity(view);
            return;
        }
          goto _L1
_L2:
        mListener.onFragEvent(0, null);
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low(TAG, "onCreate called...");
        mMtvPreferences = new MtvPreferences(getActivity());
        if(bundle != null)
        {
            mScanType = bundle.getInt("mScanType", 2);
            bScanProgress = bundle.getBoolean("scanprogress", false);
            mSlotID = bundle.getInt("mSlotID");
            mSlotMap = bundle.getIntArray("mSlotMap");
        }
        mListAdapter = new ChannelAdapter(getActivity(), null);
        customRestartLoader();
        bundle = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(bScanProgress && bundle != null && bundle.getState().getOp() == 20485)
            StartScanProgessBar(getActivity());
        setHasOptionsMenu(true);
    }

    public Loader onCreateLoader(int i, Bundle bundle)
    {
        i = 0;
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getActivity());
        if(mMtvPreferences != null)
            i = mMtvPreferences.getCurrentSlot();
        bundle = (new StringBuilder()).append("ch_slot=").append(i).toString();
        return new CursorLoader(getActivity(), MtvChannelManager.CONTENT_URI, null, bundle, null, null);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        MtvUtilDebug.Error(TAG, "onCreateOptionsMenu called... Not doing anything as it can be handled in onPreapareOptionsMenu() !!!");
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low(TAG, "onCreateView called :");
        layoutinflater = layoutinflater.inflate(0x7f030022, viewgroup, false);
        customRestartLoader();
        initView(layoutinflater);
        return layoutinflater;
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low(TAG, "onDestroy called...");
        mMtvPreferences = null;
        super.onDestroy();
    }

    public void onDestroyView()
    {
        MtvUtilDebug.Low(TAG, "onDestroyView called...");
        super.onDestroyView();
        if(mScanProgressDialog != null && mScanProgressDialog.isShowing())
        {
            mScanProgressDialog.dismiss();
            mScanProgressDialog = null;
        }
        getLoaderManager().destroyLoader(1);
        mMtvAppPlaybackContext = null;
        registerVideoSurfaceView(false);
        isRotating = false;
    }

    public void onDetach()
    {
        MtvUtilDebug.Low(TAG, "onDetach called...");
        super.onDetach();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MtvUtilDebug.Low(TAG, "onItemClick ");
        adapterview = (MtvChannel)view.getTag();
        if(adapterview != null)
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onItemClick ((MtvChannel) item) :: ").append(adapterview.toString()).toString());
        if(adapterview != null)
        {
            if(((MtvChannel) (adapterview)).mPhysicalNum < 1)
            {
                Toast.makeText(getActivity().getApplicationContext(), 0x7f0702f4, 0).show();
                return;
            }
            MtvUtilDebug.Error(TAG, (new StringBuilder()).append("item.mServiceID.mServiceID   :").append(((MtvChannel) (adapterview)).mServiceID).append("physicalNum : ").append(((MtvChannel) (adapterview)).mPhysicalNum).toString());
            if(((MtvChannel) (adapterview)).mVirtualNum == mMtvPreferences.getLatestVChannel() && mMtvPreferences.getLatestServiceID() == ((MtvChannel) (adapterview)).mServiceID)
            {
                mMtvPreferences.setLatestVChannel(((MtvChannel) (adapterview)).mVirtualNum);
                mMtvPreferences.setLatestVChannelMultiChannel(((MtvChannel) (adapterview)).mMultiChannelNo);
                mMtvPreferences.setLatestServiceID(((MtvChannel) (adapterview)).mServiceID);
                mListener.onFragEvent(0, null);
                return;
            }
            MtvUtilDebug.Error(TAG, (new StringBuilder()).append("item.mServiceID.mServiceID   :").append(((MtvChannel) (adapterview)).mServiceID).toString());
            mMtvPreferences.setLatestVChannel(((MtvChannel) (adapterview)).mVirtualNum);
            mMtvPreferences.setLatestPChannel(((MtvChannel) (adapterview)).mPhysicalNum);
            mMtvPreferences.setLatestVChannelMultiChannel(((MtvChannel) (adapterview)).mMultiChannelNo);
            mMtvPreferences.setLatestServiceID(((MtvChannel) (adapterview)).mServiceID);
            startTVChannel(((MtvChannel) (adapterview)).mPhysicalNum);
            mSurfaceView.setVisibility(4);
            mSurfaceView.setVisibility(0);
            if(mListAdapter.getCursor() != null)
            {
                mListAdapter.notifyDataSetChanged();
                return;
            }
        }
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = ((AdapterView) (view.getTag()));
        if(adapterview == null)
            return false;
        sSelectedChannel = (MtvChannel)adapterview;
        if(((MtvChannel)adapterview).mPhysicalNum < 1)
        {
            Toast.makeText(getActivity().getApplicationContext(), 0x7f0702f4, 0).show();
            return false;
        } else
        {
            ChannelListDialogFragment.newInstance(0).show(getFragmentManager(), "ChannelListDialogFragment");
            return true;
        }
    }

    public void onLoadFinished(Loader loader, Cursor cursor)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onLoadFinished   ").append(cursor.getCount()).toString());
        mListAdapter.swapCursor(cursor);
    }

    public volatile void onLoadFinished(Loader loader, Object obj)
    {
        onLoadFinished(loader, (Cursor)obj);
    }

    public void onLoaderReset(Loader loader)
    {
        mListAdapter.swapCursor(null);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch(menuitem.getItemId())
        {
        default:
            return true;

        case 1: // '\001'
            mListener.onFragEvent(1, null);
            return true;

        case 2: // '\002'
            menuitem = new Intent(getActivity(), com/samsung/sec/mtv/ui/channelguide/MtvUiSetArea);
            getActivity().startActivityForResult(menuitem, 0);
            return true;

        case 3: // '\003'
            scanChannel(mMtvPreferences.getCurrentSlot(), null);
            return true;

        case 4: // '\004'
            mListener.onFragEvent(2, null);
            break;
        }
        return true;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onPrepareOptionsMenu(Menu menu)
    {
        MtvUtilDebug.Low(TAG, "onPrepareOptionsMenu called...");
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        menu.clear();
        getActivity().invalidateOptionsMenu();
        if(mtvappplaybackcontext == null || mtvappplaybackcontext.getState().getState().ordinal() < com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED.ordinal())
        {
            MtvUtilDebug.High(TAG, "onPrepareOptionsMenu : MW not initialized.. returning without creating options ! ");
            return;
        }
        menu.add(0, 1, 0, 0x7f070214).setIcon(0x7f0200ae);
        menu.add(0, 2, 0, 0x7f0702d8).setIcon(0x7f0200b6);
        menu.add(0, 3, 0, 0x7f07030b).setIcon(0x7f0200be);
        menu.add(0, 4, 0, 0x7f070212).setIcon(0x7f0200af);
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
        {
            menu.findItem(3).setEnabled(false);
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onPrepareOptionsMenu enable udpate").append(mtvappplaybackcontext.getType()).append(" :").append(mtvappplaybackcontext.getState().getOp()).toString());
        }
        super.onPrepareOptionsMenu(menu);
    }

    public void onResume()
    {
        super.onResume();
        initPlayer();
        scrollChannel();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        bundle.putInt("mScanType", mScanType);
        if(mScanProgressDialog != null)
            bundle.putBoolean("scanprogress", true);
        else
            bundle.putBoolean("scanprogress", false);
        bundle.putInt("mSlotID", mSlotID);
        bundle.putIntArray("mSlotMap", mSlotMap);
        super.onSaveInstanceState(bundle);
    }

    public void onUpdate(int i, Object obj)
    {
        i;
        JVM INSTR lookupswitch 18: default 156
    //                   151: 351
    //                   152: 504
    //                   153: 399
    //                   155: 629
    //                   156: 308
    //                   157: 675
    //                   158: 389
    //                   159: 279
    //                   160: 250
    //                   161: 184
    //                   162: 217
    //                   163: 162
    //                   164: 721
    //                   165: 762
    //                   166: 157
    //                   169: 832
    //                   171: 840
    //                   250: 803;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19
_L4:
        break MISSING_BLOCK_LABEL_399;
_L3:
        break MISSING_BLOCK_LABEL_504;
_L5:
        break MISSING_BLOCK_LABEL_629;
_L7:
        break MISSING_BLOCK_LABEL_675;
_L14:
        break MISSING_BLOCK_LABEL_721;
_L15:
        break MISSING_BLOCK_LABEL_762;
_L19:
        break MISSING_BLOCK_LABEL_803;
_L17:
        break MISSING_BLOCK_LABEL_832;
_L1:
        break; /* Loop/switch isn't completed */
_L18:
        break MISSING_BLOCK_LABEL_840;
_L20:
        return;
_L16:
        initPlayer();
        return;
_L13:
        MtvUtilDebug.Mid(TAG, "Got ANNOUNCE_PROGRAM_NAME from below!!");
        showChannelNameProgramName(getCurrentChannelName(), getCurrentProgramName());
        return;
_L11:
        Boolean boolean1 = Boolean.valueOf(false);
        if(obj instanceof Boolean)
            boolean1 = (Boolean)obj;
        showAnimationControl(boolean1.booleanValue(), getString(0x7f070268));
        return;
_L12:
        Boolean boolean2 = Boolean.valueOf(false);
        if(obj instanceof Boolean)
            boolean2 = (Boolean)obj;
        showAnimationControl(boolean2.booleanValue(), getString(0x7f07021d));
        return;
_L10:
        if(obj instanceof Integer)
        {
            changeAreaNStartTV(((Integer)obj).intValue());
            return;
        } else
        {
            MtvUtilDebug.Error(TAG, "Invalid SlotID passed !");
            return;
        }
_L9:
        if(obj instanceof Integer)
        {
            changeArea(((Integer)obj).intValue());
            return;
        } else
        {
            MtvUtilDebug.Error(TAG, "Invalid SlotID passed !");
            return;
        }
_L6:
        mScanType = 1;
        if(obj != null)
        {
            obj = (MtvUiChannelGuide.MtvSearchParam)obj;
            mSlotID = ((MtvUiChannelGuide.MtvSearchParam) (obj)).getSlotId();
            mSlotMap = ((MtvUiChannelGuide.MtvSearchParam) (obj)).getSlotMap();
            scanChannel(((MtvUiChannelGuide.MtvSearchParam) (obj)).getSlotId(), ((MtvUiChannelGuide.MtvSearchParam) (obj)).getSlotMap());
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        MtvUtilDebug.Low(TAG, "onUpdate: UPDATE_ANNOUNCE_SCAN_STARTED");
        if(mScanProgressDialog != null)
        {
            mScanProgressDialog.setCancelable(true);
            mScanProgressDialog.getButton(-2).setEnabled(true);
            return;
        }
        if(true) goto _L20; else goto _L8
_L8:
        MtvUtilDebug.Low(TAG, "onUpdate: UPDATE_ANNOUNCE_SCAN_CHECK_RESUME");
        return;
        MtvUtilDebug.Low(TAG, "onUpdate: UPDATE_ANNOUNCE_SCAN_CHNL_PROGRESS bScanCancelled");
        obj = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mScanProgressDialog == null && obj != null && ((MtvAppPlaybackContext) (obj)).getState().getOp() != 20486)
        {
            StartScanProgessBar(getActivity());
            if(mScanProgressBar != null)
                mScanProgressBar.setProgress(0);
            MtvUtilDebug.Low(TAG, " onUpdate: :) :) still struggling");
        }
        if(mScanProgressDialog != null)
        {
            mScanProgressDialog.setCancelable(true);
            mScanProgressDialog.getButton(-2).setEnabled(true);
        }
        UpdateScanProgessBar();
        return;
        MtvUtilDebug.Low(TAG, "onUpdate: UPDATE_ANNOUNCE_SCAN_COMPLETED");
        if(mScanType == 1 && isResumed())
        {
            obj = new Bundle();
            ((Bundle) (obj)).putInt("dialogType", 8);
            ((Bundle) (obj)).putInt("mSlotID", mSlotID);
            ((Bundle) (obj)).putIntArray("mSlotMap", mSlotMap);
            mChangeAreaCompleteDialog = MtvUiDialogsFrag.newInstance(((Bundle) (obj)));
            mChangeAreaCompleteDialog.show(getActivity().getFragmentManager(), "change_area_complete");
        }
        if(mScanProgressDialog != null)
            mScanProgressDialog.dismiss();
        mScanProgressDialog = null;
        mScanType = 0;
        onUpdate(165, null);
        startTvAfterScan();
        return;
        MtvUtilDebug.Low(TAG, "onUpdate: UPDATE_ANNOUNCE_SCAN_CANCEL_COMPLETED");
        if(mScanProgressDialog != null)
            mScanProgressDialog.dismiss();
        mScanProgressDialog = null;
        mScanType = 0;
        onUpdate(165, null);
        startTvAfterScan();
        return;
        MtvUtilDebug.Low(TAG, "onUpdate: UPDATE_ANNOUNCE_SCAN_FAILURE");
        if(mScanProgressDialog != null)
            mScanProgressDialog.dismiss();
        mScanProgressDialog = null;
        mScanType = 0;
        onUpdate(165, null);
        startTvAfterScan();
        return;
        mCh_guide_schedule.setOnClickListener(null);
        mCh_guide_tvview_btn.setOnClickListener(null);
        mListView.setOnItemClickListener(null);
        mListView.setOnItemLongClickListener(null);
        mSurfaceView.setOnClickListener(null);
        return;
        mCh_guide_schedule.setOnClickListener(this);
        mCh_guide_tvview_btn.setOnClickListener(this);
        mListView.setOnItemClickListener(this);
        mListView.setOnItemLongClickListener(this);
        mSurfaceView.setOnClickListener(this);
        return;
        if(obj instanceof Integer)
        {
            startTVChannel(((Integer)obj).intValue());
            return;
        } else
        {
            MtvUtilDebug.Error(TAG, "Invalid Channel Number Passed !");
            return;
        }
        showSignalAlertDialog(170);
        return;
        cancelScanChannel();
        return;
    }

    public void scrollChannel()
    {
        if(mMtvPreferences != null) goto _L2; else goto _L1
_L1:
        if(isAdded() || getActivity() != null && getActivity().isResumed()) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low(TAG, "this fragment is not added yet/ or the activity is not resumed yet .. ");
_L6:
        return;
_L4:
        mMtvPreferences = new MtvPreferences(getActivity());
_L2:
        int j = mMtvPreferences.getLatestVChannelMultiChannel();
        int k = mMtvPreferences.getLatestVChannel();
        MtvUtilDebug.Mid(TAG, (new StringBuilder()).append("selected_multiChannelNo=").append(j).append(", selected_VCh=").append(k).toString());
        all_List_channels = MtvChannelManager.getAllChannels(getActivity());
        if(all_List_channels != null)
        {
            for(int i = 0; i < all_List_channels.length; i++)
                if(all_List_channels[i].mVirtualNum == k && all_List_channels[i].mMultiChannelNo == j)
                    scroll_position = i;

        } else
        {
            MtvUtilDebug.Error(TAG, "List is null something screwedup!!!");
        }
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("final_scroll_position ").append(scroll_position).toString());
        if(mListView != null)
        {
            mListView.postDelayed(new Runnable() {

                public void run()
                {
                    if(mListView.getFirstVisiblePosition() > scroll_position || mListView.getLastVisiblePosition() <= scroll_position)
                        mListView.smoothScrollToPosition(scroll_position);
                }

                final MtvUiFragChannelList this$0;

            
            {
                this$0 = MtvUiFragChannelList.this;
                super();
            }
            }
, 1000L);
            return;
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void showAnimationControl(boolean flag, String s)
    {
        MtvUtilDebug.Low(TAG, "showAnimationControl...");
        if(mControlChGuideLoadingAnimationRunnable != null && mhidden_surfaceview.getVisibility() != 0)
        {
            if(flag)
            {
                mControlChGuideLoadingAnimationRunnable.setAnimationEnable(true);
                mControlChGuideLoadingAnimationRunnable.setAnimationText(s);
            } else
            {
                mControlChGuideLoadingAnimationRunnable.setAnimationEnable(false);
                mControlChGuideLoadingAnimationRunnable.setAnimationText(s);
            }
            mControlChGuideLoadingAnimationRunnable.postAnimationToRunInUIThread();
        }
    }

    public void showSignalAlertDialog(int i)
    {
        try
        {
            if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") == null)
            {
                Bundle bundle = new Bundle();
                bundle.putInt("dialogType", 11);
                mNoSignalAlertDialog = MtvUiDialogsFrag.newInstance(bundle);
                mNoSignalAlertDialog.show(getFragmentManager(), "signal_alert_retry_exit");
            }
            return;
        }
        catch(IllegalStateException illegalstateexception)
        {
            MtvUtilDebug.Mid(TAG, "Cannot Show SignalAlertDialog after onSaveInstance");
            illegalstateexception.printStackTrace();
            return;
        }
    }

    void startTVChannel(int i)
    {
        mListener.onFragEvent(4, null);
        invalidateChannelInfo();
        MtvUiGenericPlayer.removeOpenChannelMessages();
        MtvUiGenericPlayer.postOpenChannel(prepareUri(i), 200);
        if(mMtvAppPlaybackContext == null)
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
        {
            showAnimationControl(false, null);
            return;
        }
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
        {
            showAnimationControl(true, getString(0x7f070268));
            return;
        } else
        {
            showAnimationControl(true, getString(0x7f07021d));
            return;
        }
    }

    public void updateChannelGridView()
    {
        customRestartLoader();
        mListView.setAdapter(mListAdapter);
    }

    public void updateMultichannelNo(boolean flag)
    {
        if(!isAdded() && (getActivity() == null || !getActivity().isResumed()))
            MtvUtilDebug.Low(TAG, "updateMultichannelNo - fragment not added!");
        else
        if(mListAdapter != null && mListView != null)
        {
            MtvUtilDebug.Mid(TAG, (new StringBuilder()).append("updateMultichannelNo isChannelOpened ").append(flag).toString());
            if(flag)
            {
                mListAdapter.swapCursor(null);
                customRestartLoader();
                mListView.setAdapter(mListAdapter);
                mListAdapter.notifyDataSetChanged();
                return;
            } else
            {
                customRestartLoader();
                mListAdapter.notifyDataSetChanged();
                return;
            }
        }
    }

    public void updateMultichannelNoService()
    {
        mListAdapter.notifyDataSetChanged();
    }

    public static final int CHANNEL_CURSOR_LOADER = 1;
    public static final int MENU_CHANGE_AREA = 1;
    public static final int MENU_CHANNEL_INPUT = 4;
    public static final int MENU_CHANNEL_UPDATE = 3;
    public static final int MENU_SET_AREA = 2;
    private static final int PROGRESS_BAR_LENGTH_COUNT_MAX = 100;
    private static final String SCAN_IN_PROGRESS = "scanprogress";
    private static final String SCAN_TYPE = "mScanType";
    protected static final int START_TV_CHANNEL = 250;
    private static final int TABTV_CHANNEL_LONG_CLICK_DIALOG = 0;
    private static final int TABTV_REMOVE_CONFIRM_DAILOG = 1;
    private static String TAG = "MtvUiFragChannelList";
    private static final int UPDATE_TYPE_NOSEARCH = 0;
    private static final int UPDATE_TYPE_SEARCH = 1;
    private static final int UPDATE_TYPE_UPDATE = 2;
    private static com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener mListener;
    private static MtvChannel sSelectedChannel = null;
    private MtvChannel all_List_channels[];
    private boolean bScanProgress;
    private boolean isRotating;
    private Button mCh_guide_schedule;
    private Button mCh_guide_tvview_btn;
    private DialogFragment mChangeAreaCompleteDialog;
    private TextView mChannelNameText;
    private ControlChGuideLoadingAnimationRunnable mControlChGuideLoadingAnimationRunnable;
    private ChannelAdapter mListAdapter;
    private ListView mListView;
    private ImageView mLoadingImageView;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvPreferences mMtvPreferences;
    private DialogFragment mNoSignalAlertDialog;
    private TextView mProgNameText;
    private TwProgressBar mScanProgressBar;
    private AlertDialog mScanProgressDialog;
    private TextView mScanProgressInfo;
    private TextView mScanProgressTitle;
    private int mScanType;
    int mSlotID;
    int mSlotMap[];
    int mStackLevel;
    private SurfaceView mSurfaceView;
    private TextView mTxtAnimation;
    private ImageView mhidden_surfaceview;
    private Animation rotatingAnimation;
    private int scroll_position;










/*
    static boolean access$502(MtvUiFragChannelList mtvuifragchannellist, boolean flag)
    {
        mtvuifragchannellist.isRotating = flag;
        return flag;
    }

*/




}
