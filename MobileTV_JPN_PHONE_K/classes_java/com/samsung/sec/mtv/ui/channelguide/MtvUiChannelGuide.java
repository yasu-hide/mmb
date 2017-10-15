// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegChannel;
import android.broadcast.helper.types.MtvOneSegProgram;
import android.content.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.ui.bml.MtvUiBmlSurfaceView;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer;
import com.samsung.sec.mtv.utility.*;
import java.util.*;

// Referenced classes of package com.samsung.sec.mtv.ui.channelguide:
//            MtvUiChangeArea, MtvUiFragReservationList, MtvUiFragChannelList, MtvUiFragTVFilesList, 
//            MtvUiFragTVLinkList

public class MtvUiChannelGuide extends MtvBaseActivity
    implements IMtvAppPlaybackStateListener, IMtvAppProgramAttributeListener, com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener
{
    public static final class MtvSearchParam
    {

        public int getSlotId()
        {
            return slotId;
        }

        public int[] getSlotMap()
        {
            return slotMap;
        }

        private final int slotId;
        private final int slotMap[];

        public MtvSearchParam(int i, int ai[])
        {
            slotId = i;
            slotMap = ai;
        }
    }

    private class TabManager
        implements android.widget.TabHost.OnTabChangeListener
    {

        public void addTab(android.widget.TabHost.TabSpec tabspec, Class class1, Bundle bundle)
        {
            String s = tabspec.getTag();
            tabspec.setContent(new MyTabContentFactory(mActivity));
            class1 = new TabInfo(s, class1, bundle);
            class1.fragment = mActivity.getFragmentManager().findFragmentByTag(s);
            if(((TabInfo) (class1)).fragment != null && !((TabInfo) (class1)).fragment.isDetached())
            {
                bundle = mActivity.getFragmentManager().beginTransaction();
                bundle.detach(((TabInfo) (class1)).fragment);
                bundle.commit();
            }
            mTabs.put(s, class1);
            mTabHost.addTab(tabspec);
        }

        public void onTabChanged(String s)
        {
            s = (TabInfo)mTabs.get(s);
            if(s != null && !s.equals(mLastTab))
            {
                FragmentTransaction fragmenttransaction = mActivity.getFragmentManager().beginTransaction();
                if(mLastTab != null && mLastTab.fragment != null)
                    fragmenttransaction.detach(mLastTab.fragment);
                if(s != null && ((TabInfo) (s)).fragment != null)
                {
                    fragmenttransaction.attach(((TabInfo) (s)).fragment);
                } else
                {
                    s.fragment = Fragment.instantiate(mActivity, ((TabInfo) (s)).mClass.getName(), ((TabInfo) (s)).args);
                    fragmenttransaction.add(mContainerId, ((TabInfo) (s)).fragment, ((TabInfo) (s)).tag);
                }
                fragmenttransaction.commit();
                mActivity.getFragmentManager().executePendingTransactions();
                if(mLastTab != null && mLastTab.tag != "channelguidelist" && mTabHost.getCurrentTab() == 0 && MtvAreaManager.getCount(getApplicationContext()) == 0)
                {
                    mMtvPreferences.setLatestVChannel(-1);
                    mMtvPreferences.setLatestServiceID(0);
                    mMtvPreferences.setLatestVChannelMultiChannel(0);
                    if(noAreaSetAlertDialog == null || !noAreaSetAlertDialog.isShowing())
                        createDialog(0);
                }
                mLastTab = s;
                if(mTabHost.getCurrentTab() == 0 && MtvUiChannelGuide.IsLowSignalInOtherTab && MtvUiChannelGuide.IsTabInitDone)
                {
                    MtvUiChannelGuide.IsLowSignalInOtherTab = false;
                    runOnUiThread(new Runnable() {

                        public void run()
                        {
                            if(MtvUiChannelGuide.mTabManager != null)
                                MtvUiChannelGuide.mTabManager.onUpdate(169, Integer.valueOf(0), "channelguidelist");
                            mTabHost.getTabWidget().setEnabled(true);
                        }

                        final TabManager this$1;

            
            {
                this$1 = TabManager.this;
                super();
            }
                    }
);
                }
            }
        }

        public void onUpdate(int i, Object obj, String s)
        {
            s = (MtvUiFrag)mActivity.getFragmentManager().findFragmentByTag(s);
            if(s != null)
            {
                s.onUpdate(i, obj);
                return;
            } else
            {
                MtvUtilDebug.Error(MtvUiChannelGuide.TAG, "Channel Guide Fragment invaild during scan");
                return;
            }
        }

        private final Activity mActivity;
        private final int mContainerId;
        TabInfo mLastTab;
        private final TabHost mTabHost;
        private final HashMap mTabs = new HashMap();
        final MtvUiChannelGuide this$0;


        public TabManager(Activity activity, TabHost tabhost, int i)
        {
            this$0 = MtvUiChannelGuide.this;
            super();
            mActivity = activity;
            mTabHost = tabhost;
            mContainerId = i;
            tabhost.setOnTabChangedListener(this);
        }
    }

    final class TabManager.MyTabContentFactory
        implements android.widget.TabHost.TabContentFactory
    {

        public View createTabContent(String s)
        {
            s = new View(mContext);
            s.setMinimumWidth(0);
            s.setMinimumHeight(0);
            return s;
        }

        private final Activity mContext;
        final TabManager this$1;

        public TabManager.MyTabContentFactory(Activity activity)
        {
            this$1 = TabManager.this;
            super();
            mContext = activity;
        }
    }

    final class TabManager.TabInfo
    {

        private final Bundle args;
        private Fragment fragment;
        private final Class mClass;
        private final String tag;
        final TabManager this$1;



/*
        static Fragment access$502(TabManager.TabInfo tabinfo, Fragment fragment1)
        {
            tabinfo.fragment = fragment1;
            return fragment1;
        }

*/




        public TabManager.TabInfo(String s, Class class1, Bundle bundle)
        {
            this$1 = TabManager.this;
            super();
            tag = s;
            mClass = class1;
            args = bundle;
        }
    }

    public static interface onChannelChangedListener
    {

        public abstract void onChannelChanged();
    }


    public MtvUiChannelGuide()
    {
        mMtvPlayerOneSeg = null;
        mSelected = null;
        noAreaSetAlertDialog = null;
        currentTabId = 0;
        NoAreaDialogShowing = false;
        mMtvAppPlaybackContext = null;
        mMtvAudMgr = null;
        mPopupMenu = null;
        mIsPopupMenuShowing = false;
        mMenuButton = null;
        mChannelGuideUiMsgHandler = new Handler() {

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 351 351: default 24
            //                           351 25;
                   goto _L1 _L2
_L1:
                return;
_L2:
                message = getProgram();
                if(mMtvPreferences == null)
                    mMtvPreferences = new MtvPreferences(getApplicationContext());
                int j = mMtvPreferences.getLatestVChannel();
                MtvProgramManager.delete(MtvUiChannelGuide.this, null);
                if(message != null && message.length > 0)
                {
                    int i = 0;
                    while(i < message.length && message[i] != null) 
                    {
                        MtvProgram mtvprogram = new MtvProgram(message[i], j);
                        if(mtvprogram != null)
                            MtvProgramManager.updateOrInsert(MtvUiChannelGuide.this, mtvprogram);
                        i++;
                    }
                }
                if(true) goto _L1; else goto _L3
_L3:
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
;
        RunnableShowNotification = new Runnable() {

            public void run()
            {
                showNotification();
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
;
        RunnableRemoveWeakSignalDialogue = new Runnable() {

            public void run()
            {
                if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null && isResumed())
                {
                    MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "RunnableRemoveWeakSignalDialogue... removed");
                    MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                    openChannel();
                }
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
;
        RunnableUpdateProgramChannelInfo = new Runnable() {

            public void run()
            {
                if(MtvUiChannelGuide.mTabManager != null)
                    MtvUiChannelGuide.mTabManager.onUpdate(163, null, "channelguidelist");
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
;
        RunnableUpdateTVFilesList = new Runnable() {

            public void run()
            {
                MtvAppPlaybackContext mtvappplaybackcontext;
                MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "mRunnableUpdateTvFilesDb Start");
                mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                if(mtvappplaybackcontext == null)
                    break MISSING_BLOCK_LABEL_121;
                MtvUtilDebug.Low(MtvUiChannelGuide.TAG, (new StringBuilder()).append("mRunnableUpdateTvFilesDb: Type[").append(mtvappplaybackcontext.getType()).append("]. If LOCAL runnable will be self Posted again in 1sec.").toString());
                if(mtvappplaybackcontext.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV) goto _L2; else goto _L1
_L1:
                mChannelGuideUiMsgHandler.removeCallbacks(RunnableUpdateTVFilesList);
                mChannelGuideUiMsgHandler.postDelayed(RunnableUpdateTVFilesList, 1000L);
_L4:
                return;
_L2:
                if(MtvUiChannelGuide.mTabManager == null) goto _L4; else goto _L3
_L3:
                MtvUiChannelGuide.mTabManager.onUpdate(2, Boolean.valueOf(false), "tvfiles");
                return;
                MtvUtilDebug.Error(MtvUiChannelGuide.TAG, "mRunnableUpdateTvFilesDb: mMtvAppPlaybackContext is null, Fix it by Self Posting if there is any issue.!!!");
                return;
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
;
        mIntentReceiver = new BroadcastReceiver() {

            public void onReceive(Context context, Intent intent)
            {
                context = intent.getAction();
                MtvUtilDebug.Low(MtvUiChannelGuide.TAG, (new StringBuilder()).append("mIntentReceiver onReceive: action=").append(context).toString());
                while(context == null || !context.equals("com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED")) 
                    return;
                MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "mIntentReceiver: onRecieve for confirmation of TV file delete");
                MtvUiChannelGuide.mTabManager.onUpdate(167, Integer.valueOf(mSlotId), "tvfiles");
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
;
    }

    private void createDialog(int i)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("createDialog :called dialog type :").append(i).toString());
        android.app.AlertDialog.Builder builder;
        switch(i)
        {
        default:
            return;

        case 0: // '\0'
            builder = new android.app.AlertDialog.Builder(this);
            break;
        }
        builder.setIcon(0x7f020073);
        builder.setTitle(0x7f07021b);
        builder.setMessage(0x7f070216);
        builder.setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                if(currentTabId != 0)
                    mTabHost.setCurrentTab(0);
                Intent intent = new Intent(MtvUiChannelGuide.this, com/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea);
                intent.putExtra("slotId", 0);
                startActivityForResult(intent, 0);
                dialoginterface.dismiss();
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
);
        noAreaSetAlertDialog = builder.create();
        noAreaSetAlertDialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            public void onCancel(DialogInterface dialoginterface)
            {
                setResult(-1, getIntent().putExtra("noAreaSet", MtvUiChannelGuide.noAreaSet));
                finish();
                dialoginterface.dismiss();
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
);
        noAreaSetAlertDialog.getWindow().addFlags(1024);
        noAreaSetAlertDialog.show();
        noAreaSetAlertDialog.setCanceledOnTouchOutside(false);
    }

    private String getCurrentChannelProgramTitle(boolean flag, boolean flag1)
    {
        MtvOneSegChannel amtvonesegchannel[] = null;
        Object obj = null;
        if(!flag)
        {
            amtvonesegchannel = getChannel();
            obj = getCurrentProgram();
        }
        String s;
        if(amtvonesegchannel != null)
            s = amtvonesegchannel[0].getServName();
        else
            s = mMtvPreferences.getLatestChannelNameForDisplay(flag1);
        if(obj != null)
        {
            obj = ((MtvOneSegProgram) (obj)).getProgName();
            isProgramUpdated = true;
        } else
        {
            isProgramUpdated = false;
            obj = "";
        }
        return (new StringBuilder()).append("").append(s).append("\n").append(((String) (obj))).toString();
    }

    private void initPlayer()
    {
        boolean flag;
        Intent intent = getIntent();
        if(intent != null && intent.getAction() != null && intent.getAction().equalsIgnoreCase("ACTION_DTV_RESERVATION_LIST"))
            flag = true;
        else
            flag = false;
        mDummyBmlSurface = (MtvUiBmlSurfaceView)findViewById(0x7f0a000c);
        mMenuButton = (ImageButton)findViewById(0x7f0a0008);
        mMenuButton.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                showPopupMenu();
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
);
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext == null) goto _L2; else goto _L1
_L1:
        if(mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LIVETV || mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER) goto _L4; else goto _L3
_L3:
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
        mMtvAppPlaybackContext.getState().registerListener(this);
        mMtvAppPlaybackContext.getAttribute().registerListener(this);
        openChannel();
_L6:
        return;
_L4:
        mMtvAppPlaybackContext.getState().registerListener(this);
        mMtvAppPlaybackContext.getAttribute().registerListener(this);
        return;
_L2:
        if(!flag)
        {
            MtvUtilDebug.Error(TAG, "Current Context is null... issuing create again...");
            mTabHost.getTabWidget().setEnabled(false);
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
            mDummyBmlSurface = (MtvUiBmlSurfaceView)findViewById(0x7f0a000c);
            mMtvAppPlaybackContext.getState().registerListener(this);
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            getApplicationContext().startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
            mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1);
            mMtvAppPlaybackContext.getComponents().getBml().enable();
            if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
            {
                mDummyBmlSurface.onResume(mMtvAppPlaybackContext);
                return;
            } else
            {
                MtvUiFragHandler mtvuifraghandler = new MtvUiFragHandler(getFragmentManager(), -1, 0x1020011);
                mtvuifraghandler.setEnabled(false);
                mDummyBmlSurface.create(mMtvAppPlaybackContext, mtvuifraghandler);
                return;
            }
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static View prepareTabView(Context context, String s)
    {
        context = LayoutInflater.from(context).inflate(0x7f030037, null);
        ((TextView)context.findViewById(0x7f0a0134)).setText(s);
        return context;
    }

    public static void registerChannelChangedListener(onChannelChangedListener onchannelchangedlistener)
    {
        mListener.add(onchannelchangedlistener);
    }

    private void setActivityProperty()
    {
        requestWindowFeature(1);
        setVolumeControlStream(3);
        getWindow().addFlags(128);
    }

    private void setPreferencesForCancelScan()
    {
        MtvChannel mtvchannel = MtvChannelManager.getFirstOnAir(getApplicationContext());
        if(mtvchannel != null)
        {
            mMtvPreferences.setLatestPChannel(mtvchannel.mPhysicalNum);
            mMtvPreferences.setLatestVChannel(mtvchannel.mVirtualNum);
            mMtvPreferences.setLatestServiceID(mtvchannel.mServiceID);
            mMtvPreferences.setLatestVChannelMultiChannel(mtvchannel.mMultiChannelNo);
        }
    }

    private void showNotification()
    {
        MtvUtilDebug.Low(TAG, "showNotification...");
        Object obj = new Intent();
        ((Intent) (obj)).setFlags(0x100000);
        ((Intent) (obj)).setAction("android.intent.action.MAIN");
        ((Intent) (obj)).addCategory("android.intent.category.LAUNCHER");
        ((Intent) (obj)).setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
        obj = PendingIntent.getActivity(this, 0, ((Intent) (obj)), 0);
        PendingIntent pendingintent = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"), 0);
        RemoteViews remoteviews = new RemoteViews(getPackageName(), 0x7f030032);
        remoteviews.setImageViewResource(0x7f0a0121, 0x7f0200c3);
        remoteviews.setTextViewText(0x7f0a0123, getString(0x7f070294));
        remoteviews.setTextViewText(0x7f0a0126, getCurrentChannelProgramTitle(false, false));
        remoteviews.setOnClickPendingIntent(0x7f0a0129, pendingintent);
        obj = (new android.app.Notification.Builder(this)).setSmallIcon(0x7f0200c3).setWhen(0L).setOngoing(true).setAutoCancel(false).setContent(remoteviews).setContentIntent(((PendingIntent) (obj))).build();
        if(mNotificationManager != null)
        {
            mNotificationManager.notify(0x7f0200c3, ((android.app.Notification) (obj)));
            return;
        } else
        {
            MtvUtilDebug.Error(TAG, "mNotificationManager is null");
            return;
        }
    }

    public static void unregisterChannelChangedListener(onChannelChangedListener onchannelchangedlistener)
    {
        mListener.remove(onchannelchangedlistener);
    }

    public void addMemInfoFrag()
    {
        (new MtvUiMemInfoFrag()).show(getFragmentManager(), "MtvUiMemInfoFrag");
    }

    public MtvOneSegChannel[] getChannel()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getChannel();
        else
            return null;
    }

    public MtvOneSegProgram getCurrentProgram()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getCurrentProgram();
        else
            return null;
    }

    public MtvOneSegProgram getCurrentProgramDetails(MtvOneSegProgram amtvonesegprogram[])
    {
        Object obj = null;
        long l = getStreamTime();
        int j = amtvonesegprogram.length;
        int i = 0;
        do
        {
label0:
            {
                MtvOneSegProgram mtvonesegprogram = obj;
                if(i < j)
                {
                    mtvonesegprogram = amtvonesegprogram[i];
                    if(mtvonesegprogram == null || l < mtvonesegprogram.getStartTime().getTime() || l > mtvonesegprogram.getEndTime().getTime())
                        break label0;
                }
                return mtvonesegprogram;
            }
            i++;
        } while(true);
    }

    public MtvOneSegProgram[] getProgram()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getProgram();
        else
            return null;
    }

    public long getStreamTime()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getTot();
        else
            return 0L;
    }

    public void notifyChannelChanged()
    {
        for(Iterator iterator = mListener.iterator(); iterator.hasNext(); ((onChannelChangedListener)iterator.next()).onChannelChanged());
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("MtvUiChannelGuide onActivityResult: requestCode=").append(i).append(", resultCode=").append(j).toString());
        if(j == -1)
            if(intent.getBooleanExtra("setarea", true))
            {
                if(intent.hasExtra("noAreaSet"))
                {
                    MtvUtilDebug.Low(TAG, "noAreaSet! -user didnot select Area");
                    noAreaSet = true;
                } else
                {
                    MtvUtilDebug.Low(TAG, "Launching Change Area from SET AREA Class!");
                    int k = intent.getIntExtra("slotId", 0);
                    Intent intent1 = new Intent(this, com/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea);
                    intent1.putExtra("slotId", k);
                    startActivityForResult(intent1, 0);
                }
            } else
            {
                mTabHost.getTabWidget().setEnabled(false);
                if(mTabManager != null && currentTabId == 0)
                    mTabManager.onUpdate(164, null, "channelguidelist");
                noAreaSet = false;
                mSlotId = intent.getIntExtra("slotId", 0);
                mSelected = intent.getIntArrayExtra("localId");
            }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
        if(MtvUiFragHandler.removeUnManagedFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO, this))
            return;
        Fragment fragment = getFragmentManager().findFragmentByTag("TvLinkInfo");
        if(fragment != null)
        {
            FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
            fragmenttransaction.remove(fragment);
            fragmenttransaction.commit();
            mTabHost.getTabWidget().setEnabled(true);
            return;
        } else
        {
            setResult(-1, getIntent().putExtra("bIsChannelChanged", bIsChannelChanged));
            finish();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onCreate called..Time:").append(System.currentTimeMillis()).toString());
        IsTabInitDone = false;
        mMtvPreferences = new MtvPreferences(getApplicationContext());
        setActivityProperty();
        setContentView(0x7f030002);
        mTabHost = (TabHost)findViewById(0x7f0a0007);
        mTabHost.setup();
        mTabManager = new TabManager(this, mTabHost, 0x7f0a000a);
        boolean flag = false;
        Intent intent = getIntent();
        int i = ((flag) ? 1 : 0);
        if(intent != null)
        {
            i = ((flag) ? 1 : 0);
            if(intent.getAction() != null)
            {
                i = ((flag) ? 1 : 0);
                if(intent.getAction().equalsIgnoreCase("ACTION_DTV_RESERVATION_LIST"))
                {
                    mTabManager.addTab(mTabHost.newTabSpec("schedule").setIndicator(getString(0x7f0702c9)), com/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList, null);
                    mTabHost.getTabWidget().getChildTabViewAt(0).setBackgroundResource(0x7f0200cc);
                    i = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
                    if(1 == i || 3 == i)
                    {
                        TextView textview = (TextView)mTabHost.getTabWidget().getChildTabViewAt(0).findViewById(0x1020016);
                        if(textview != null)
                            textview.setPadding(0, 0, 160, 0);
                    }
                    i = 1;
                }
            }
        }
        if(i == 0)
        {
            mTabManager.addTab(mTabHost.newTabSpec("channelguidelist").setIndicator(getString(0x7f07021c)), com/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList, null);
            mTabManager.addTab(mTabHost.newTabSpec("schedule").setIndicator(getString(0x7f0702c9)), com/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList, null);
            mTabManager.addTab(mTabHost.newTabSpec("tvfiles").setIndicator(getString(0x7f070300)), com/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList, null);
            mTabManager.addTab(mTabHost.newTabSpec("tvlink").setIndicator(getString(0x7f070302)), com/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList, null);
            for(int j = 0; j <= 3; j++)
            {
                TextView textview1 = (TextView)mTabHost.getTabWidget().getChildAt(j).findViewById(0x1020016);
                textview1.setAllCaps(false);
                textview1.setTextSize(18F);
                mTabHost.getTabWidget().getChildTabViewAt(j).setPadding(0, 0, 0, 0);
            }

            mTabHost.getTabWidget().setGravity(17);
        }
        mNotificationManager = (NotificationManager)getSystemService("notification");
        if(bundle == null) goto _L2; else goto _L1
_L1:
        currentTabId = bundle.getInt("currenttabindex", -1);
        NoAreaDialogShowing = bundle.getBoolean("noareadialogontop", false);
_L4:
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
        if(currentTabId != mTabHost.getCurrentTab())
            mTabHost.setCurrentTab(currentTabId);
        mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        registerReceiver(mIntentReceiver, INTENT_FILTER);
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onCreate END..Time:").append(System.currentTimeMillis()).toString());
        IsTabInitDone = true;
        return;
_L2:
        if(getIntent().hasExtra("tab"))
            currentTabId = getIntent().getIntExtra("tab", 0);
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void onDestroy()
    {
        if(isFinishing())
            bIsChannelChanged = false;
        MtvUtilDebug.Low(TAG, "onDestroy called");
        MtvUtilAppService.unbindDrawables(findViewById(0x7f0a0009));
        System.gc();
        mNotificationManager = null;
        unregisterReceiver(mIntentReceiver);
        super.onDestroy();
    }

    public void onFragEvent(int i, Object obj)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onFragEvent: event[").append(i).append("]").toString());
        i;
        JVM INSTR lookupswitch 21: default 212
    //                   0: 213
    //                   1: 536
    //                   2: 236
    //                   3: 619
    //                   4: 650
    //                   251: 286
    //                   252: 397
    //                   253: 269
    //                   255: 346
    //                   256: 601
    //                   258: 587
    //                   261: 306
    //                   262: 567
    //                   263: 417
    //                   268: 326
    //                   269: 326
    //                   270: 326
    //                   500: 498
    //                   501: 437
    //                   502: 453
    //                   503: 517;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L16 _L16 _L17 _L18 _L19 _L20
_L11:
        break MISSING_BLOCK_LABEL_601;
_L5:
        break MISSING_BLOCK_LABEL_619;
_L1:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_650;
_L21:
        return;
_L2:
        setResult(-1, getIntent().putExtra("bIsChannelChanged", bIsChannelChanged));
        finish();
        return;
_L4:
        obj = getIntent();
        ((Intent) (obj)).putExtra("channelinput", true);
        setResult(-1, ((Intent) (obj)));
        mMtvPreferences.setLatestFileIndex(0);
        finish();
        return;
_L9:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(1, obj, "schedule");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(1, Boolean.valueOf(false), "tvfiles");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L13:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(3, Boolean.valueOf(false), "tvfiles");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L16:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(i, Boolean.valueOf(false), "tvfiles");
            return;
        }
        if(true) goto _L21; else goto _L10
_L10:
        obj = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer);
        MtvUtilDebug.Low(TAG, "startFilePlayer MTV_UPDATE_FRAG_CMD_DIALOGS_LAUNCH_FILE_PLAYER");
        ((Intent) (obj)).putExtra("MtvFile", MtvFileManager.getAvailableTVRecFilesEx(false)[mMtvPreferences.getSelectedFileIndex()]);
        startActivityForResult(((Intent) (obj)), 0);
        return;
_L8:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(2, Boolean.valueOf(false), "tvfiles");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L15:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(4, Boolean.valueOf(false), "tvfiles");
            return;
        }
        if(true) goto _L21; else goto _L18
_L18:
        obj = (Intent)obj;
        if(obj != null)
            startActivityForResult(((Intent) (obj)), 0);
        return;
_L19:
        Bundle bundle = new Bundle();
        bundle.putInt("dialogType", 2);
        bundle.putInt("SlotID", ((Integer)obj).intValue());
        MtvUiDialogsFrag.newInstance(bundle).show(getFragmentManager(), "dialog");
        return;
_L17:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(159, obj, "channelguidelist");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L20:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(160, obj, "channelguidelist");
            return;
        }
        if(true) goto _L21; else goto _L3
_L3:
        obj = new Bundle();
        ((Bundle) (obj)).putInt("dialogType", 1);
        MtvUiDialogsFrag.newInstance(((Bundle) (obj))).show(getFragmentManager(), "dialog");
        return;
_L14:
        if(mTabManager != null)
        {
            mTabManager.onUpdate(2, Boolean.valueOf(false), "schedule");
            return;
        }
        if(true) goto _L21; else goto _L12
_L12:
        MtvUtilDebug.Low(TAG, "Low signal - Retrying again!!");
        openChannel();
        return;
        MtvUtilDebug.Low(TAG, "Exiting the application ");
        MtvUtilAppService.setAppExiting(true);
        finish();
        return;
        if(noAreaSetAlertDialog == null || !noAreaSetAlertDialog.isShowing())
        {
            MtvUtilDebug.Low(TAG, "created dialog called 1");
            createDialog(0);
        }
        bIsChannelChanged = true;
        MtvProgramManager.delete(this, null);
        return;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if(i == 126 || i == 127)
            return true;
        else
            return super.onKeyDown(i, keyevent);
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.High(TAG, (new StringBuilder()).append("onKeyUp, keyCode:").append(i).toString());
        if(i == 82)
        {
            showPopupMenu();
            return true;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    public void onMtvAppFinishNotify(Object obj)
    {
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
        {
            obj = MtvAppPlayerOneSeg.getInstance();
            if(obj != null)
            {
                if(((IMtvAppPlayerOneSeg) (obj)).cancelScanChannels(mMtvAppPlaybackContext))
                    MtvUtilDebug.High(TAG, "cancelScanChannel : Cancel Success");
                else
                    MtvUtilDebug.High(TAG, "cancelScanChannel : Cancel Update/Search failed - false");
            } else
            {
                MtvUtilDebug.Error(TAG, "cancelScanChannel : Cancel Update/Search failed");
            }
            setPreferencesForCancelScan();
        }
        finish();
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onMtvAppLiveBroadcastNotify called: what=").append(i).toString());
        i;
        JVM INSTR tableswitch 4 6: default 52
    //                   4 75
    //                   5 75
    //                   6 59;
           goto _L1 _L2 _L2 _L3
_L1:
        super.onMtvAppLiveBroadcastNotify(i, obj);
_L5:
        return;
_L3:
        mChannelGuideUiMsgHandler.postDelayed(RunnableUpdateTVFilesList, 1000L);
        return;
_L2:
        mChannelGuideUiMsgHandler.postDelayed(RunnableUpdateTVFilesList, 1000L);
        if(mTabManager != null)
        {
            mTabManager.onUpdate(7, Boolean.valueOf(false), "tvfiles");
            return;
        }
        if(true) goto _L5; else goto _L4
_L4:
    }

    protected void onPause()
    {
        MtvUtilDebug.Low(TAG, "onPause...");
        MtvUtilAudioManager.getInstance(getApplicationContext()).unRegisterMediaButtonReceiver();
        super.onPause();
    }

    public void onPlayerNotification(int i, int j, final int extra)
    {
        final Object fragment;
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("Ch Guide onPlayerNotification command:").append(i).append(" status:").append(j).append(" extra:").append(extra).toString());
        fragment = (MtvUiFragChannelList)getFragmentManager().findFragmentByTag("channelguidelist");
        i;
        JVM INSTR tableswitch 20481 20494: default 132
    //                   20481 133
    //                   20482 162
    //                   20483 1427
    //                   20484 480
    //                   20485 729
    //                   20486 1373
    //                   20487 132
    //                   20488 132
    //                   20489 132
    //                   20490 132
    //                   20491 132
    //                   20492 132
    //                   20493 1701
    //                   20494 406;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L1 _L1 _L1 _L1 _L1 _L1 _L8 _L9
_L1:
        return;
_L2:
        if(j == 24581)
        {
            MtvUtilDebug.Low(TAG, "IMtvAppPlayerOneSeg.CMD_CREATE IMtvAppPlayerOneSeg.STAT_COMPLETED...");
            runOnUiThread(new Runnable() {

                public void run()
                {
                    mTabHost.getTabWidget().setEnabled(true);
                    Fragment fragment1 = getFragmentManager().findFragmentByTag("channelguidelist");
                    if(MtvUiChannelGuide.mTabManager != null && fragment1 != null && fragment1.isResumed())
                        MtvUiChannelGuide.mTabManager.onUpdate(166, null, "channelguidelist");
                    openChannel();
                    mDummyBmlSurface.onResume(mMtvAppPlaybackContext);
                }

                final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
            }
);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        switch(j)
        {
        case 24578: 
        case 24579: 
        default:
            return;

        case 24577: 
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            mMtvAppPlaybackContext.getState().registerListener(this);
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            runOnUiThread(RunnableShowNotification);
            runOnUiThread(new Runnable() {

                public void run()
                {
                    if(fragment != null)
                    {
                        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED)
                            fragment.updateMultichannelNo(true);
                        else
                            fragment.updateMultichannelNo(false);
                        fragment.scrollChannel();
                        fragment.showAnimationControl(true, getString(0x7f07021d));
                    }
                }

                final MtvUiChannelGuide this$0;
                final MtvUiFragChannelList val$fragment;

            
            {
                this$0 = MtvUiChannelGuide.this;
                fragment = mtvuifragchannellist;
                super();
            }
            }
);
            return;

        case 24582: 
            if(fragment != null)
            {
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(true, getString(0x7f07021d));
                return;
            }
            break;

        case 24584: 
            if(fragment != null)
            {
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(false, null);
                return;
            }
            break;

        case 24583: 
            if(fragment != null)
            {
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(true, getString(0x7f07021d));
                return;
            }
            break;

        case 24580: 
            if(fragment != null)
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(true, getString(0x7f07021d));
            MtvUtilDebug.Low(TAG, "STATUS_FAIL_SIGNAL_ERROR");
            if(extra == mMtvPreferences.getLatestPChannel() && MtvAreaManager.getCount(getApplicationContext()) > 0)
            {
                if(mTabHost.getCurrentTab() == 0)
                {
                    IsLowSignalInOtherTab = false;
                    runOnUiThread(new Runnable() {

                        public void run()
                        {
                            if(MtvUiChannelGuide.mTabManager != null)
                                MtvUiChannelGuide.mTabManager.onUpdate(169, Integer.valueOf(extra), "channelguidelist");
                            mTabHost.getTabWidget().setEnabled(true);
                        }

                        final MtvUiChannelGuide this$0;
                        final int val$extra;

            
            {
                this$0 = MtvUiChannelGuide.this;
                extra = i;
                super();
            }
                    }
);
                    return;
                } else
                {
                    IsLowSignalInOtherTab = true;
                    return;
                }
            } else
            {
                MtvUtilDebug.Low(TAG, "channel list tab is not active, don't show low signal alert");
                return;
            }

        case 24581: 
            break;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onPlayerNotification ...:CMD_CLOSE: Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24581: 
            runOnUiThread(RunnableUpdateProgramChannelInfo);
            break;
        }
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        switch(j)
        {
        default:
            return;

        case 24577: 
            if(fragment != null)
            {
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(true, getString(0x7f070268));
                return;
            }
            break;

        case 24581: 
            fragment = MtvUtilAudioManager.getInstance(getApplicationContext());
            ((MtvUtilAudioManager) (fragment)).stopOtherSound();
            ((MtvUtilAudioManager) (fragment)).updateCurrentAudioEffectAndMode();
            return;

        case 24582: 
            if(fragment != null)
            {
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(true, getString(0x7f070268));
                return;
            }
            break;

        case 24583: 
            if(fragment != null)
            {
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(true, getString(0x7f070268));
                return;
            }
            break;

        case 24584: 
            if(fragment != null)
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(false, null);
            mChannelGuideUiMsgHandler.post(RunnableRemoveWeakSignalDialogue);
            return;

        case 24580: 
            if(fragment != null)
                ((MtvUiFragChannelList) (fragment)).showAnimationControl(true, getString(0x7f07021d));
            openChannel();
            return;

        case 24593: 
            MtvUtilDebug.Error(TAG, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!");
            if(!MtvUtilDebug.isReleaseMode())
            {
                Toast toast = Toast.makeText(this, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - ", 1);
                toast.setGravity(119, 0, 0);
                toast.show();
            }
            sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        j;
        JVM INSTR lookupswitch 5: default 780
    //                   24577: 781
    //                   24580: 1359
    //                   24581: 1293
    //                   24597: 804
    //                   24598: 1280;
           goto _L10 _L11 _L12 _L13 _L14 _L15
_L10:
        return;
_L11:
        MtvUtilDebug.Low(TAG, "onPlayerNotification :CMD_SCAN : STAT_STARTED");
        runOnUiThread(new Runnable() {

            public void run()
            {
                if(MtvUiChannelGuide.mTabManager != null)
                    MtvUiChannelGuide.mTabManager.onUpdate(151, Integer.valueOf(extra), "channelguidelist");
            }

            final MtvUiChannelGuide this$0;
            final int val$extra;

            
            {
                this$0 = MtvUiChannelGuide.this;
                extra = i;
                super();
            }
        }
);
        return;
_L14:
        MtvOneSegChannel amtvonesegchannel[];
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onPlayerNotification :CMD_SCAN : STAT_CHNL_DETECTED extra:").append(extra).toString());
        amtvonesegchannel = null;
        i = 0;
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mtvappplaybackcontext != null)
            amtvonesegchannel = mtvappplaybackcontext.getAttribute().getChannel();
        if(amtvonesegchannel == null) goto _L17; else goto _L16
_L16:
        int k;
        int l;
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("Length of Service ").append(amtvonesegchannel.length).toString());
        extra = -1;
        k = -1;
        l = 0;
        j = 0;
_L23:
        if(l >= amtvonesegchannel.length) goto _L17; else goto _L18
_L18:
        if(amtvonesegchannel[l] == null) goto _L20; else goto _L19
_L19:
        int i1;
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("For service no [").append(l).append("]  Channel detail Vch [").append(amtvonesegchannel[l].getRemoteKeyID()).append("] ServiceID[").append(amtvonesegchannel[l].getPhysicalID()).append("] Physical channel [").append(amtvonesegchannel[l].getServID()).append("]").toString());
        extra = amtvonesegchannel[l].getRemoteKeyID();
        k = amtvonesegchannel[l].getServID();
        int j1;
        if(l < 9)
            j1 = amtvonesegchannel[l].getRemoteKeyID() * 10;
        else
            j1 = amtvonesegchannel[l].getRemoteKeyID() * 100;
        i1 = j + 1;
        j = j1 + 600 + (j + 1);
        j1 = mMtvPreferences.getLatestVChannelMultiChannel();
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("Multichannel ").append(j).toString());
        if(j1 != j || i != 1) goto _L22; else goto _L21
_L21:
        MtvUtilDebug.Low(TAG, "last_maultiChannel == mOneSegChannel[i].getServID()");
        j = i1;
_L24:
        l++;
          goto _L23
_L22:
        MtvChannelManager.updateOrInsert(this, new MtvChannel(amtvonesegchannel[l].getRemoteKeyID(), amtvonesegchannel[l].getServID(), 0, 1, amtvonesegchannel[l].getServName(), (new MtvPreferences(this)).getCurrentSlot(), -1, -1, amtvonesegchannel[l].getPhysicalID(), j, amtvonesegchannel[l].getPhysicalIDName()));
        mMtvPreferences.setLatestVChannelMultiChannel(j);
        i = amtvonesegchannel[l].getPhysicalIDType();
        j = i1;
_L25:
        MtvChannelManager.deleteVChannelInfo(this, extra, k, 0);
          goto _L24
_L20:
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("mOneSegChannel vis null for i=  ").append(l).toString());
          goto _L25
_L17:
        mChannelGuideUiMsgHandler.post(RunnableChannelDetected);
        return;
          goto _L24
_L15:
        mChannelGuideUiMsgHandler.post(RunnableChannelNotDetected);
        return;
_L13:
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onPlayerNotification :CMD_SCAN : STAT_COMPLETED extra:").append(extra).toString());
        MtvChannelManager.rearrangeDefaultDBValues(this);
        mChannelGuideUiMsgHandler.removeCallbacks(RunnableChannelDetected);
        mChannelGuideUiMsgHandler.removeCallbacks(RunnableChannelNotDetected);
        runOnUiThread(new Runnable() {

            public void run()
            {
                if(MtvUiChannelGuide.mTabManager != null)
                    MtvUiChannelGuide.mTabManager.onUpdate(152, Integer.valueOf(extra), "channelguidelist");
                mTabHost.getTabWidget().setEnabled(true);
            }

            final MtvUiChannelGuide this$0;
            final int val$extra;

            
            {
                this$0 = MtvUiChannelGuide.this;
                extra = i;
                super();
            }
        }
);
        return;
_L12:
        runOnUiThread(new Runnable() {

            public void run()
            {
                if(MtvUiChannelGuide.mTabManager != null)
                    MtvUiChannelGuide.mTabManager.onUpdate(157, Integer.valueOf(extra), "channelguidelist");
                mTabHost.getTabWidget().setEnabled(true);
            }

            final MtvUiChannelGuide this$0;
            final int val$extra;

            
            {
                this$0 = MtvUiChannelGuide.this;
                extra = i;
                super();
            }
        }
);
        return;
_L7:
        switch(j)
        {
        case 24578: 
        case 24579: 
        default:
            return;

        case 24580: 
        case 24581: 
            MtvChannelManager.rearrangeDefaultDBValues(this);
            runOnUiThread(new Runnable() {

                public void run()
                {
                    if(MtvUiChannelGuide.mTabManager != null)
                        MtvUiChannelGuide.mTabManager.onUpdate(155, Integer.valueOf(extra), "channelguidelist");
                    mTabHost.getTabWidget().setEnabled(true);
                    if(mMtvPreferences.isSViewCoverClosed())
                    {
                        Intent intent1 = new Intent("com.samsung.cover.OPEN");
                        intent1.putExtra("coverOpen", false);
                        sendBroadcast(intent1);
                    }
                }

                final MtvUiChannelGuide this$0;
                final int val$extra;

            
            {
                this$0 = MtvUiChannelGuide.this;
                extra = i;
                super();
            }
            }
);
            return;

        case 24577: 
            break;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onPlayerNotification ...:CMD_STATUS_UPDT Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24586: 
            mChannelGuideUiMsgHandler.sendMessage(mChannelGuideUiMsgHandler.obtainMessage(351));
            runOnUiThread(RunnableShowNotification);
            runOnUiThread(RunnableUpdateProgramChannelInfo);
            return;

        case 24599: 
            Intent intent = new Intent();
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onPlayerNotification: STAT_DEL_FILE -> result: ").append(extra).toString());
            intent.putExtra("deleteTVFileConfirmation", true);
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED");
            sendBroadcast(intent);
            runOnUiThread(new Runnable() {

                public void run()
                {
                    if(MtvUiChannelGuide.mTabManager != null)
                        MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "No Need to post the update to UI");
                }

                final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
            }
);
            return;

        case 24588: 
            MtvUtilDebug.Low(TAG, "STATUS_FAIL_SIGNAL_ERROR");
            if(extra == mMtvPreferences.getLatestPChannel())
                if(mTabHost.getCurrentTab() == 0)
                {
                    IsLowSignalInOtherTab = false;
                    runOnUiThread(new Runnable() {

                        public void run()
                        {
                            if(MtvUiChannelGuide.mTabManager != null)
                                MtvUiChannelGuide.mTabManager.onUpdate(169, Integer.valueOf(extra), "channelguidelist");
                            mTabHost.getTabWidget().setEnabled(true);
                        }

                        final MtvUiChannelGuide this$0;
                        final int val$extra;

            
            {
                this$0 = MtvUiChannelGuide.this;
                extra = i;
                super();
            }
                    }
);
                    return;
                } else
                {
                    IsLowSignalInOtherTab = true;
                    return;
                }
            break;

        case 24602: 
            runOnUiThread(new Runnable() {

                public void run()
                {
                    if(noAreaSetAlertDialog == null || !noAreaSetAlertDialog.isShowing())
                        createDialog(0);
                }

                final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
            }
);
            return;

        case 24603: 
            if(!isProgramUpdated)
            {
                runOnUiThread(RunnableShowNotification);
                runOnUiThread(RunnableUpdateProgramChannelInfo);
                return;
            }
            break;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        switch(j)
        {
        default:
            return;

        case 24577: 
            continue; /* Loop/switch isn't completed */

        case 24581: 
            switch(extra)
            {
            default:
                return;

            case 3: // '\003'
                MtvUtilDebug.Low(TAG, "tvlink status update completed : populating the list ");
                break;
            }
            runOnUiThread(new Runnable() {

                public void run()
                {
                    if(MtvUiChannelGuide.mTabManager != null)
                        MtvUiChannelGuide.mTabManager.onUpdate(168, Integer.valueOf(extra), "tvlink");
                    mTabHost.getTabWidget().setEnabled(true);
                }

                final MtvUiChannelGuide this$0;
                final int val$extra;

            
            {
                this$0 = MtvUiChannelGuide.this;
                extra = i;
                super();
            }
            }
);
            break;
        }
        break; /* Loop/switch isn't completed */
        if(true) goto _L1; else goto _L26
_L26:
    }

    public boolean onPreparePanel(int i, View view, Menu menu)
    {
        if(mTabHost != null && mTabHost.getCurrentTab() == 3 && MtvBMLManager.getAvailableCProBMInfoAll() != null && MtvBMLManager.getAvailableCProBMInfoAll().length <= 0)
            return false;
        else
            return super.onPreparePanel(i, view, menu);
    }

    public void onProgramAttributeReset(int i)
    {
    }

    public void onProgramAttributeUpdated(int i)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onProgramAttributeUpdated: ").append(i).toString());
        switch(i)
        {
        default:
            return;

        case 2: // '\002'
            mChannelGuideUiMsgHandler.sendMessage(mChannelGuideUiMsgHandler.obtainMessage(351));
            break;
        }
        runOnUiThread(RunnableShowNotification);
        runOnUiThread(RunnableUpdateProgramChannelInfo);
    }

    protected void onResume()
    {
        super.onResume();
        bIsChannelChanged = false;
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getOp() != 20495) goto _L2; else goto _L1
_L1:
        finish();
_L4:
        return;
_L2:
        sendBroadcast(new Intent("intent.stop.app-in-app"));
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        if(MtvUtilAppService.isAppExiting())
        {
            MtvUtilDebug.Low(TAG, "isExiting...");
            finish();
            return;
        }
        if(MtvUtilAppService.isMiniModeRunning(this))
        {
            finish();
            return;
        }
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onResume Start..Time:").append(System.currentTimeMillis()).toString());
        initPlayer();
        if(!getIntent().hasExtra("is_areachanged") || !getIntent().getBooleanExtra("is_areachanged", false))
            break; /* Loop/switch isn't completed */
        getIntent().putExtra("is_areachanged", false);
        if(noAreaSetAlertDialog == null || !noAreaSetAlertDialog.isShowing())
        {
            MtvUtilDebug.Low(TAG, "created dialog called 1");
            createDialog(0);
            return;
        }
        if(true) goto _L4; else goto _L3
_L3:
        MtvArea mtvarea;
        Object obj;
        obj = null;
        mtvarea = MtvAreaManager.find(this, mMtvPreferences.getCurrentSlot());
        if(MtvAreaManager.getCount(getApplicationContext()) == 0)
        {
            noAreaSet = true;
            IsLowSignalInOtherTab = false;
        } else
        {
            noAreaSet = false;
        }
        if(mSelected == null) goto _L6; else goto _L5
_L5:
        MtvUtilDebug.Low(TAG, "selected another area... will change the slot and scan again...");
        MtvUtilDebug.Low(TAG, "Stopping other sound now...");
        mMtvAudMgr.setAvStreaming(true);
        mTabManager.onUpdate(159, Integer.valueOf(mSlotId), "channelguidelist");
        mTabManager.onUpdate(156, new MtvSearchParam(mSlotId, mSelected), "channelguidelist");
        mSelected = null;
_L13:
        MtvUtilAudioManager.getInstance(getApplicationContext()).registerMediaButtonReceiver();
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onResume END..Time:").append(System.currentTimeMillis()).toString());
        return;
_L6:
        int i;
        MtvArea amtvarea[];
        if(NoAreaDialogShowing)
        {
            if(currentTabId == 0 && (noAreaSetAlertDialog == null || !noAreaSetAlertDialog.isShowing()))
                createDialog(0);
            NoAreaDialogShowing = false;
            return;
        }
        if((mtvarea == null || mtvarea.mAreaId != -1) && !noAreaSet)
            break MISSING_BLOCK_LABEL_634;
        MtvUtilDebug.Low(TAG, "reset current area and came back without selecting any other area...");
        MtvUtilDebug.Low(TAG, "will select the next available area in the list now...");
        amtvarea = MtvAreaManager.getAllAreas(this);
        i = 0;
_L14:
        mtvarea = obj;
        if(i >= amtvarea.length) goto _L8; else goto _L7
_L7:
        if(amtvarea[i].mAreaId == -1) goto _L10; else goto _L9
_L9:
        mtvarea = amtvarea[i];
        mMtvPreferences.setCurrentSlot(i);
_L8:
        if(mtvarea == null || mtvarea.mAreaId == -1) goto _L12; else goto _L11
_L11:
        MtvUtilDebug.Low(TAG, "found next available area starting Tv...");
        mTabManager.onUpdate(160, Integer.valueOf(mMtvPreferences.getCurrentSlot()), "channelguidelist");
          goto _L13
_L10:
        i++;
          goto _L14
_L12:
        if(isFinishing()) goto _L13; else goto _L15
_L15:
        MtvUtilDebug.Low(TAG, "onResume : No AREA SET - Select Area Prompt");
        MtvChannelManager.deleteDB(this, null);
        MtvUtilAudioManager.getInstance(getApplicationContext()).setAudioMute(true);
        if(currentTabId == 0)
        {
            mMtvPreferences.setLatestVChannel(-1);
            mMtvPreferences.setLatestServiceID(0);
            mMtvPreferences.setLatestVChannelMultiChannel(0);
            if(noAreaSetAlertDialog == null || !noAreaSetAlertDialog.isShowing())
            {
                createDialog(0);
                return;
            }
        }
          goto _L4
        if(mMtvAudMgr != null)
        {
            MtvUtilDebug.Low(TAG, "Either launched from LivePlayer or came back from setArea without doing anything... ");
            MtvUtilDebug.Low(TAG, "Stopping other sound now...");
            mMtvAudMgr.stopOtherSound();
            mMtvAudMgr.setAvStreaming(true);
        }
          goto _L13
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        currentTabId = mTabHost.getCurrentTab();
        bundle.putInt("currenttabindex", currentTabId);
        if(noAreaSetAlertDialog != null)
            bundle.putBoolean("noareadialogontop", noAreaSetAlertDialog.isShowing());
        super.onSaveInstanceState(bundle);
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    void openChannel()
    {
        android.broadcast.helper.MtvURI mtvuri = prepareUri(mMtvPreferences.getLatestPChannelFromVChannel(), mMtvPreferences.getLatestServiceID(), true);
        mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
    }

    public void setCurrentTab(int i)
    {
        if(i >= 0 && i <= 3)
            currentTabId = i;
    }

    public void showPopupMenu()
    {
        MtvUtilDebug.Low(TAG, "showPopupMenu()");
        mPopupMenu = new PopupMenu(this, mMenuButton);
        mPopupMenu.setOnMenuItemClickListener(new android.widget.PopupMenu.OnMenuItemClickListener() {

            public boolean onMenuItemClick(MenuItem menuitem)
            {
                onMenuItemSelected(0, menuitem);
                return false;
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
);
        mPopupMenu.setOnDismissListener(new android.widget.PopupMenu.OnDismissListener() {

            public void onDismiss(PopupMenu popupmenu)
            {
                mIsPopupMenuShowing = false;
            }

            final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
        }
);
        if(mIsPopupMenuShowing)
            mPopupMenu.dismiss();
        mPopupMenu.getMenu().clear();
        if(onCreatePanelMenu(0, mPopupMenu.getMenu()))
        {
            mIsPopupMenuShowing = onPreparePanel(0, null, mPopupMenu.getMenu());
            if(mIsPopupMenuShowing)
                mPopupMenu.show();
        }
    }

    public static final int CHANNEL_GUIDE_CHANNEL_CHANGE = 4;
    public static final int CHANNEL_GUIDE_FINISH_ACTIVITY = 0;
    public static final int CHANNEL_GUIDE_FINISH_AND_LAUNCH_CHANNEL_NUM = 2;
    public static final int CHANNEL_GUIDE_LAUNCH_CHANGEAREA_DIALOG = 1;
    public static final int CHANNEL_GUIDE_LAUNCH_NOAREA_DIALOG = 3;
    private static final String CURRENT_TAB_INDEX = "currenttabindex";
    private static final int DIALOG_TYPE_NO_AREA_SET = 0;
    private static IntentFilter INTENT_FILTER;
    private static boolean IsLowSignalInOtherTab = false;
    private static boolean IsTabInitDone = false;
    public static final int MTV_CTRL_BACK_TO_LIVE_PLAYER = 0;
    private static final String NO_AREA_DIALOG_ON_TOP = "noareadialogontop";
    protected static final String TAB_CHANNEL_LIST = "channelguidelist";
    public static final int TAB_CHANNEL_LIST_ID = 0;
    private static final String TAB_SCHEDULE = "schedule";
    public static final int TAB_SCHEDULE_ID = 1;
    private static final String TAB_TV_FILES = "tvfiles";
    public static final int TAB_TV_FILES_ID = 2;
    protected static final String TAB_TV_LINKS = "tvlink";
    public static final int TAB_TV_LINKS_ID = 3;
    private static String TAG = "MtvUiChannelGuide";
    public static final String VIEW_PROGRAM_DETAILS = "view_program_details";
    private static boolean bIsChannelChanged = false;
    private static boolean isProgramUpdated = false;
    private static ArrayList mListener = new ArrayList();
    private static NotificationManager mNotificationManager = null;
    private static TabManager mTabManager;
    public static boolean noAreaSet = false;
    private static final String tvlinkInfoTag = "TvLinkInfo";
    private boolean NoAreaDialogShowing;
    final Runnable RunnableChannelDetected = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "Ch Guide runOnUiThread execute: Scan Update...");
            if(MtvUiChannelGuide.mTabManager != null)
            {
                MtvUiChannelGuide.mTabManager.onUpdate(153, null, "channelguidelist");
                return;
            } else
            {
                MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "Ch Guide runOnUiThread TAB mgr null");
                return;
            }
        }

        final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
    }
;
    final Runnable RunnableChannelNotDetected = new Runnable() {

        public void run()
        {
            MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "Ch Guide runOnUiThread execute: Scan Update...");
            if(MtvUiChannelGuide.mTabManager != null)
            {
                MtvUiChannelGuide.mTabManager.onUpdate(153, null, "channelguidelist");
                return;
            } else
            {
                MtvUtilDebug.Low(MtvUiChannelGuide.TAG, "Ch Guide runOnUiThread TAB mgr null");
                return;
            }
        }

        final MtvUiChannelGuide this$0;

            
            {
                this$0 = MtvUiChannelGuide.this;
                super();
            }
    }
;
    private Runnable RunnableRemoveWeakSignalDialogue;
    private Runnable RunnableShowNotification;
    private Runnable RunnableUpdateProgramChannelInfo;
    private Runnable RunnableUpdateTVFilesList;
    private int currentTabId;
    private Handler mChannelGuideUiMsgHandler;
    private MtvUiBmlSurfaceView mDummyBmlSurface;
    private BroadcastReceiver mIntentReceiver;
    private boolean mIsPopupMenuShowing;
    private ImageButton mMenuButton;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvUtilAudioManager mMtvAudMgr;
    private IMtvAppPlayerOneSeg mMtvPlayerOneSeg;
    private MtvPreferences mMtvPreferences;
    private PopupMenu mPopupMenu;
    int mSelected[];
    int mSlotId;
    private TabHost mTabHost;
    AlertDialog noAreaSetAlertDialog;

    static 
    {
        IsLowSignalInOtherTab = false;
        IsTabInitDone = false;
        isProgramUpdated = false;
        noAreaSet = false;
        bIsChannelChanged = false;
        INTENT_FILTER = new IntentFilter();
        INTENT_FILTER.addAction("com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED");
    }



/*
    static MtvPreferences access$002(MtvUiChannelGuide mtvuichannelguide, MtvPreferences mtvpreferences)
    {
        mtvuichannelguide.mMtvPreferences = mtvpreferences;
        return mtvpreferences;
    }

*/




/*
    static boolean access$1002(boolean flag)
    {
        IsLowSignalInOtherTab = flag;
        return flag;
    }

*/











/*
    static boolean access$402(MtvUiChannelGuide mtvuichannelguide, boolean flag)
    {
        mtvuichannelguide.mIsPopupMenuShowing = flag;
        return flag;
    }

*/

}
