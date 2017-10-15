// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.conflict;

import android.app.ActivityManager;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.os.*;
import com.nttdocomo.mmb.android.mmbsv.library.*;
import java.util.Iterator;
import java.util.List;

public class MtvConflictHandler extends ContextWrapper
{
    private static final class MESSAGE_ID extends Enum
    {

        public static MESSAGE_ID valueOf(String s)
        {
            return (MESSAGE_ID)Enum.valueOf(com/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID, s);
        }

        public static MESSAGE_ID[] values()
        {
            return (MESSAGE_ID[])$VALUES.clone();
        }

        private static final MESSAGE_ID $VALUES[];
        public static final MESSAGE_ID HANDLE_ASSIGN_RESOURCE;
        public static final MESSAGE_ID RESOURCE_INTENT_RELEASE_RESULT;

        static 
        {
            HANDLE_ASSIGN_RESOURCE = new MESSAGE_ID("HANDLE_ASSIGN_RESOURCE", 0);
            RESOURCE_INTENT_RELEASE_RESULT = new MESSAGE_ID("RESOURCE_INTENT_RELEASE_RESULT", 1);
            $VALUES = (new MESSAGE_ID[] {
                HANDLE_ASSIGN_RESOURCE, RESOURCE_INTENT_RELEASE_RESULT
            });
        }

        private MESSAGE_ID(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface MtvConflictListener
    {

        public abstract void onCommunicationError();

        public abstract void onConflictWithTmm();

        public abstract void onTunerResourceAssignProcessing();

        public abstract void onTunerResourceAssignStarted();

        public abstract void onTunerResourceAssignTimedOut(boolean flag);

        public abstract void onTunerResourceAssigned();

        public abstract void onTunerResourceAssignmentException();

        public abstract void onTunerResourceBusy(boolean flag);
    }


    private MtvConflictHandler(Context context)
    {
        super(context);
        mContext = null;
        myMsgHandler = null;
        isMmbServiceOpened = false;
        isMmbServiceCloseReq = false;
        isMmbServiceConnected = false;
        isProcessingConflict = false;
        isTunerResourceAssigned = false;
        mConflictListener = null;
        assignTryCount = 0;
        tunerStatusBroadcastReciever = new BroadcastReceiver() {

            public void onReceive(Context context1, Intent intent)
            {
                MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("Entered onRecieve... ").append(intent.getAction()).toString());
                context1 = intent.getAction();
                if(context1 != null && context1.equals("com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE_TMM"))
                {
                    MtvUtilDebug.Low("MtvConflictHandler", "ACTION_TUNER_RELEASE_TMM action.. recieved...");
                    int i = intent.getIntExtra("ReleaseResult", 0);
                    MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("onRecieve() :: Tmm Resource releaseStatus = ").append(i).toString());
                    myMsgHandler.sendMessage(myMsgHandler.obtainMessage(MESSAGE_ID.RESOURCE_INTENT_RELEASE_RESULT.ordinal(), Integer.valueOf(i)));
                }
            }

            final MtvConflictHandler this$0;

            
            {
                this$0 = MtvConflictHandler.this;
                super();
            }
        }
;
        myMsgHandler = new Handler() {

            public void handleMessage(Message message)
            {
                MESSAGE_ID message_id;
                MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("messageId = ").append(message.what).toString());
                if(message.what < 0 || message.what >= MtvConflictHandler.MESSAGE_ID_INT.length)
                    throw new IllegalArgumentException("Invalid Message Id !");
                message_id = MtvConflictHandler.MESSAGE_ID_INT[message.what];
                static class _cls4
                {

                    static final int $SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID[];

                    static 
                    {
                        $SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID = new int[MESSAGE_ID.values().length];
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID[MESSAGE_ID.HANDLE_ASSIGN_RESOURCE.ordinal()] = 1;
                        }
                        catch(NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID[MESSAGE_ID.RESOURCE_INTENT_RELEASE_RESULT.ordinal()] = 2;
                        }
                        catch(NoSuchFieldError nosuchfielderror)
                        {
                            return;
                        }
                    }
                }

                _cls4..SwitchMap.com.samsung.sec.mtv.ui.conflict.MtvConflictHandler.MESSAGE_ID[message_id.ordinal()];
                JVM INSTR tableswitch 1 2: default 96
            //                           1 97
            //                           2 105;
                   goto _L1 _L2 _L3
_L1:
                return;
_L2:
                handleAssignResource();
                return;
_L3:
                if(message.obj instanceof Integer)
                    message = ((Message) (message.obj));
                else
                    message = Integer.valueOf(-1);
                message = (Integer)(Integer)message;
                if(message.intValue() != 0)
                    continue; /* Loop/switch isn't completed */
                MtvUtilDebug.Low("MtvConflictHandler", "ONE-SEG sucessfully Obtained/Released Tuner Resource ! ");
                MtvUtilDebug.Low("MtvConflictHandler", "Querying the current User Again... To check if at all anyone acquired the resource after release...");
                message = MmbFwServiceContextSv.getResourceUser(1);
                if(message == null) goto _L5; else goto _L4
_L4:
                try
                {
                    MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("resourceUser getPackageName").append(message.getPackageName()).toString());
                    MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("resourceUser getTmmStatus").append(message.getTmmStatus()).toString());
                }
                // Misplaced declaration of an exception variable
                catch(Message message)
                {
                    MtvUtilDebug.Error("MtvConflictHandler", "RemoteException occured whyle performing getResourceUser...");
                    message.printStackTrace();
                }
_L7:
                MtvUtilDebug.Low("MtvConflictHandler", "calling handleAssignResource again... so that Resource will be assigned to us and we can setApplicationMode as ONE_SEG");
                handleAssignResource();
                return;
_L5:
                MtvUtilDebug.Error("MtvConflictHandler", "null resourceUser returned");
                if(true) goto _L7; else goto _L6
_L6:
                if(message.intValue() != 1) goto _L1; else goto _L8
_L8:
                if(assignTryCount < 5)
                {
                    int i = ((MmbFwResourceUserSv) (this)).getTmmStatus;
                    MtvUtilDebug.Error("MtvConflictHandler", (new StringBuilder()).append("ONE-SEG resource assign request Timed Out... Trying ").append(assignTryCount).append("th time...").toString());
                    mConflictListener.onTunerResourceAssignTimedOut(true);
                    handleAssignResource();
                    return;
                } else
                {
                    isProcessingConflict = false;
                    unRegisterTunerReciever();
                    mConflictListener.onTunerResourceAssignTimedOut(false);
                    MtvUtilDebug.Low("MtvConflictHandler", "ONE-SEG resource assign request Timed Out... Closing OneSeg");
                    MtvUtilDebug.Low("MtvConflictHandler", "Resetting assignTryCount...");
                    assignTryCount = 0;
                    return;
                }
            }

            final MtvConflictHandler this$0;

            
            {
                this$0 = MtvConflictHandler.this;
                super();
            }
        }
;
        mMBServiceListener = new MmbFwServiceListenerSv() {

            public void onFatalExeption()
            {
                MtvUtilDebug.Low("MtvConflictHandler", "onFatalException called...");
                if(mConflictListener != null)
                {
                    mConflictListener.onCommunicationError();
                    return;
                } else
                {
                    MtvUtilDebug.Low("MtvConflictHandler", "mConflictListener is null");
                    return;
                }
            }

            public void onServiceConnected()
            {
                MtvUtilDebug.Low("MtvConflictHandler", "mMBServiceListener :: onServiceConnected");
                isMmbServiceConnected = true;
                if(isMmbServiceCloseReq)
                {
                    MtvUtilDebug.Low("MtvConflictHandler", "mMBServiceListener :: Close was Requested when Service Connection not established !");
                    MtvUtilDebug.Low("MtvConflictHandler", "mMBServiceListener :: Processing it now... !");
                    closeService();
                    return;
                } else
                {
                    checkConflict();
                    return;
                }
            }

            public void onServiceDisconnected()
            {
                MtvUtilDebug.Low("MtvConflictHandler", "mMBServiceListener :: onServiceDisconnected");
                isMmbServiceConnected = false;
                isMmbServiceOpened = false;
            }

            final MtvConflictHandler this$0;

            
            {
                this$0 = MtvConflictHandler.this;
                super();
            }
        }
;
        mContext = context;
    }

    public static MtvConflictHandler getInstance(Context context)
    {
        if(context == null)
            throw new IllegalArgumentException("Context cannot be null!");
        if(mConflictHandler == null || mConflictHandler.mContext != context)
        {
            MtvUtilDebug.Low("MtvConflictHandler", "Creating new MtvConflictHandler...");
            context = new MtvConflictHandler(context);
            mConflictHandler = context;
            return context;
        } else
        {
            return mConflictHandler;
        }
    }

    private void registerTunerReciever()
    {
        getApplicationContext().registerReceiver(tunerStatusBroadcastReciever, TMM_TUNER_RELEASE_INTENT_FILTER);
    }

    public static void reset()
    {
        if(!mConflictHandler.isMmbServiceOpened())
        {
            mConflictHandler = null;
            MtvUtilDebug.Low("MtvConflictHandler", "reset()...");
            return;
        } else
        {
            MtvUtilDebug.Low("MtvConflictHandler", "reset()... MMb Service Opened... But not Closed Yet ! Not Resetting the Instance");
            return;
        }
    }

    private void unRegisterTunerReciever()
    {
        try
        {
            if(tunerStatusBroadcastReciever != null)
                getApplicationContext().unregisterReceiver(tunerStatusBroadcastReciever);
            return;
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void checkConflict()
    {
        MmbFwResourceUserSv mmbfwresourceusersv;
        MtvUtilDebug.High("MtvConflictHandler", "checkConflict() :: ");
        mmbfwresourceusersv = null;
        MmbFwResourceUserSv mmbfwresourceusersv1 = MmbFwServiceContextSv.getResourceUser(1);
        if(mmbfwresourceusersv1 == null) goto _L2; else goto _L1
_L1:
        mmbfwresourceusersv = mmbfwresourceusersv1;
        MtvUtilDebug.High("MtvConflictHandler", (new StringBuilder()).append("checkConflict() :: resourceUser getPackageName").append(mmbfwresourceusersv1.getPackageName()).toString());
        mmbfwresourceusersv = mmbfwresourceusersv1;
        MtvUtilDebug.High("MtvConflictHandler", (new StringBuilder()).append("checkConflict() :: resourceUser getTmmStatus").append(mmbfwresourceusersv1.getTmmStatus()).toString());
        mmbfwresourceusersv = mmbfwresourceusersv1;
_L6:
        if(mmbfwresourceusersv == null) goto _L4; else goto _L3
_L3:
        int i;
        i = mmbfwresourceusersv.getTmmStatus();
        if(i == 0)
        {
            MtvUtilDebug.Low("MtvConflictHandler", "Tmm is using the Tuner...");
            MtvUtilDebug.Low("MtvConflictHandler", "Display ONE_SEG POPUP to user...");
            mConflictListener.onConflictWithTmm();
            return;
        }
          goto _L5
_L2:
        mmbfwresourceusersv = mmbfwresourceusersv1;
        MtvUtilDebug.High("MtvConflictHandler", "null resourceUser returned");
        mmbfwresourceusersv = mmbfwresourceusersv1;
          goto _L6
        RemoteException remoteexception;
        remoteexception;
        MtvUtilDebug.High("MtvConflictHandler", "checkConflict() :: RemoteException occured whyle performing getResourceUser...");
        remoteexception.printStackTrace();
          goto _L6
_L5:
        i;
        JVM INSTR tableswitch -1 3: default 180
    //                   -1 222
    //                   0 180
    //                   1 192
    //                   2 202
    //                   3 212;
           goto _L7 _L8 _L7 _L9 _L10 _L11
_L7:
        MtvUtilDebug.Low("MtvConflictHandler", "NOTTV is not using Tuner...  Assigning  Tuner Resource to ONE_SEG...");
        handleAssignResource();
        return;
_L9:
        MtvUtilDebug.Low("MtvConflictHandler", "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_FILECASTING");
        continue; /* Loop/switch isn't completed */
_L10:
        MtvUtilDebug.Low("MtvConflictHandler", "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_META_MM");
        continue; /* Loop/switch isn't completed */
_L11:
        MtvUtilDebug.Low("MtvConflictHandler", "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_FC_COMPLEMENT");
        continue; /* Loop/switch isn't completed */
_L8:
        MtvUtilDebug.Low("MtvConflictHandler", "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_NOT_ACTION");
        if(true) goto _L7; else goto _L4
_L4:
        MtvUtilDebug.Error("MtvConflictHandler", "Not able to get User Status... ");
        mConflictListener.onCommunicationError();
        return;
    }

    public void closeService()
    {
        MtvUtilDebug.Low("MtvConflictHandler", "closeService() :: ");
        if(isTunerResourceAssigned)
        {
            Iterator iterator = ((ActivityManager)getSystemService("activity")).getRunningAppProcesses().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                if(!((android.app.ActivityManager.RunningAppProcessInfo)iterator.next()).processName.equals("com.nttdocomo.mmb.android.mmbsv.process"))
                    continue;
                MmbFwServiceContextSv.releaseResource(1, getPackageName());
                break;
            } while(true);
            isTunerResourceAssigned = false;
            MtvUtilDebug.High("MtvConflictHandler", "closeService() ::  releaseResource called... ");
        }
        if(!isMmbServiceOpened)
            break MISSING_BLOCK_LABEL_185;
        MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("closeService() :: isMmbServiceConnected").append(isMmbServiceConnected).toString());
        if(isMmbServiceConnected)
        {
            MtvUtilDebug.Low("MtvConflictHandler", "closeService() :: calling MmbFwServiceContextSv.closeService...");
            MmbFwServiceContextSv.closeService();
            isMmbServiceOpened = false;
            isMmbServiceConnected = false;
            isMmbServiceCloseReq = false;
            return;
        }
        try
        {
            MtvUtilDebug.Error("MtvConflictHandler", "MmbFwServiceContextSv open Requested but not connected yet !!");
            isMmbServiceCloseReq = true;
            return;
        }
        catch(RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
        }
        isTunerResourceAssigned = false;
        isMmbServiceOpened = false;
        isMmbServiceConnected = false;
    }

    public void handleAssignResource()
    {
        Object obj;
        isProcessingConflict = true;
        registerTunerReciever();
        obj = new MmbFwAssignUserSv();
        ((MmbFwAssignUserSv) (obj)).setPackageName(getPackageName());
        ((MmbFwAssignUserSv) (obj)).setResourceId(1);
        ((MmbFwAssignUserSv) (obj)).setTmmStatus(-1);
        int i;
        i = MmbFwServiceContextSv.assignResource(((MmbFwAssignUserSv) (obj))).intValue();
        MtvUtilDebug.Low("MtvConflictHandler", "assignoResource called... Checking the status...");
        MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("assignStatus = ").append(i).toString());
        obj = MmbFwServiceContextSv.getResourceUser(1);
        if(obj == null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("after assign resource resourceUser getPackageName").append(((MmbFwResourceUserSv) (obj)).getPackageName()).toString());
        MtvUtilDebug.Low("MtvConflictHandler", (new StringBuilder()).append("after assign resource resourceUser getTmmStatus").append(((MmbFwResourceUserSv) (obj)).getTmmStatus()).toString());
_L7:
        i;
        JVM INSTR tableswitch 2 4: default 168
    //                   2 239
    //                   3 284
    //                   4 386;
           goto _L3 _L4 _L5 _L6
_L2:
        MtvUtilDebug.Error("MtvConflictHandler", "null resourceUser returned");
          goto _L7
        remoteexception;
        MtvUtilDebug.Error("MtvConflictHandler", "RemoteException occured whyle performing getResourceUser...");
        remoteexception.printStackTrace();
          goto _L7
_L3:
        RemoteException remoteexception;
        try
        {
            MtvUtilDebug.Low("MtvConflictHandler", "Unknown Return Value from assignResource dismissing the dialog...");
            mConflictListener.onCommunicationError();
            return;
        }
        catch(RemoteException remoteexception1)
        {
            remoteexception1.printStackTrace();
        }
        unRegisterTunerReciever();
        mConflictListener.onCommunicationError();
        MtvUtilDebug.Low("MtvConflictHandler", "RemoteException While Assigning Resource...");
        return;
_L4:
        mConflictListener.onTunerResourceAssignStarted();
        mConflictListener.onTunerResourceAssignProcessing();
        MtvUtilDebug.Low("MtvConflictHandler", "Tuner Resource Release Started Successfully... Waiting for tuner_release_tmm Intent...");
        MtvUtilDebug.Low("MtvConflictHandler", "Incrementing assignTryCount... Waiting for Tuner reource release Broadcast intent...");
        assignTryCount = assignTryCount + 1;
        return;
_L5:
        MtvUtilDebug.Low("MtvConflictHandler", "Tuner Resource Release already running for some other application ... Will Check after sometime...");
        assignTryCount = assignTryCount + 1;
        if(assignTryCount <= 5)
        {
            mConflictListener.onTunerResourceBusy(true);
            myMsgHandler.sendMessageDelayed(myMsgHandler.obtainMessage(MESSAGE_ID.HANDLE_ASSIGN_RESOURCE.ordinal()), 600L);
            return;
        }
        isProcessingConflict = false;
        unRegisterTunerReciever();
        mConflictListener.onTunerResourceBusy(false);
        MtvUtilDebug.Low("MtvConflictHandler", "assignResource reached MAX tries... Giving Up !...");
        MtvUtilDebug.Low("MtvConflictHandler", "Resetting assignTryCount...");
        assignTryCount = 0;
        return;
_L6:
        MtvUtilDebug.Low("MtvConflictHandler", "TMM_RESOURCE_ASSIGNED...");
        MtvUtilDebug.Low("MtvConflictHandler", "Resetting assignTryCount...");
        assignTryCount = 0;
        MtvUtilDebug.Low("MtvConflictHandler", "Tuner Resource is assigned to ONE-SEG...");
        isProcessingConflict = false;
        unRegisterTunerReciever();
        isTunerResourceAssigned = true;
        mConflictListener.onTunerResourceAssigned();
        return;
    }

    public boolean isMmbServiceConnected()
    {
        return isMmbServiceConnected;
    }

    public boolean isMmbServiceOpened()
    {
        return isMmbServiceOpened;
    }

    public boolean isProcessingConflict()
    {
        return isProcessingConflict;
    }

    public boolean isTunerResourceAssigned()
    {
        return isTunerResourceAssigned;
    }

    public void openService()
    {
        MtvUtilDebug.Low("MtvConflictHandler", "openService() :: ");
        if(android.provider.Settings.System.getInt(getApplicationContext().getContentResolver(), "emergency_mode", 0) == 1)
        {
            mConflictListener.onTunerResourceAssigned();
            return;
        }
        isMmbServiceCloseReq = false;
        Exception exception;
        if(!isMmbServiceConnected)
            break MISSING_BLOCK_LABEL_110;
        MtvUtilDebug.Low("MtvConflictHandler", "openService() :: isMmbServiceConnected");
        if(isProcessingConflict)
        {
            mConflictListener.onTunerResourceAssignProcessing();
            return;
        }
        try
        {
            if(isTunerResourceAssigned)
            {
                mConflictListener.onTunerResourceAssigned();
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception)
        {
            exception.printStackTrace();
            mConflictListener.onCommunicationError();
            return;
        }
        checkConflict();
        return;
        if(isMmbServiceOpened)
        {
            MtvUtilDebug.Low("MtvConflictHandler", "openService() :: isMmbServiceOpened ");
            MtvUtilDebug.Error("MtvConflictHandler", "openService() :: mmbService opened already but not connected yet/now!");
            return;
        }
        MtvUtilDebug.Low("MtvConflictHandler", "openService() ::  service not opened... opening now...");
        isMmbServiceOpened = true;
        MmbFwServiceContextSv.openService(getApplicationContext(), mMBServiceListener);
        return;
    }

    public void registerListener(MtvConflictListener mtvconflictlistener)
    {
        MtvUtilDebug.Low("MtvConflictHandler", "registerListener() ::");
        mConflictListener = mtvconflictlistener;
    }

    public void unRegisterListener(MtvConflictListener mtvconflictlistener)
    {
        MtvUtilDebug.Low("MtvConflictHandler", "unRegisterListener() ::");
        if(mConflictListener != null && mConflictListener.equals(mtvconflictlistener))
        {
            mConflictListener = null;
            return;
        } else
        {
            MtvUtilDebug.High("MtvConflictHandler", "mismatch between current listener and the arguement ! Not unregistering current listener !");
            return;
        }
    }

    public static final String ACTION_TUNER_RELEASE = "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE";
    public static final String INTENT_TUNER_RELEASE = "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE";
    private static final int MAX_TRIES = 5;
    private static final MESSAGE_ID MESSAGE_ID_INT[] = MESSAGE_ID.values();
    private static final String TAG = "MtvConflictHandler";
    public static final String TMM_PROCESS_NAME = "com.nttdocomo.mmb.android.mmbsv.process";
    private static final IntentFilter TMM_TUNER_RELEASE_INTENT_FILTER = new IntentFilter("com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE_TMM");
    private static MtvConflictHandler mConflictHandler = null;
    private int assignTryCount;
    private boolean isMmbServiceCloseReq;
    private boolean isMmbServiceConnected;
    private boolean isMmbServiceOpened;
    private boolean isProcessingConflict;
    private boolean isTunerResourceAssigned;
    private MtvConflictListener mConflictListener;
    private Context mContext;
    private MmbFwServiceListenerSv mMBServiceListener;
    private Handler myMsgHandler;
    private BroadcastReceiver tunerStatusBroadcastReciever;

    static 
    {
        MtvUtilDebug.Low("MtvConflictHandler", "MtvConflictHandler...");
    }





/*
    static int access$202(MtvConflictHandler mtvconflicthandler, int i)
    {
        mtvconflicthandler.assignTryCount = i;
        return i;
    }

*/


/*
    static int access$208(MtvConflictHandler mtvconflicthandler)
    {
        int i = mtvconflicthandler.assignTryCount;
        mtvconflicthandler.assignTryCount = i + 1;
        return i;
    }

*/



/*
    static boolean access$402(MtvConflictHandler mtvconflicthandler, boolean flag)
    {
        mtvconflicthandler.isProcessingConflict = flag;
        return flag;
    }

*/



/*
    static boolean access$602(MtvConflictHandler mtvconflicthandler, boolean flag)
    {
        mtvconflicthandler.isMmbServiceConnected = flag;
        return flag;
    }

*/


/*
    static boolean access$702(MtvConflictHandler mtvconflicthandler, boolean flag)
    {
        mtvconflicthandler.isMmbServiceOpened = flag;
        return flag;
    }

*/

}
