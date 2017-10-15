// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.conflict;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.os.Bundle;
import android.view.Window;
import android.widget.Toast;
import com.samsung.sec.mtv.provider.MtvReservation;
import com.samsung.sec.mtv.provider.MtvReservationManager;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastListener;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastReciever;
import com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.conflict:
//            MtvConflictHandler

public class MtvUiLauncher extends Activity
    implements MtvConflictHandler.MtvConflictListener
{

    public MtvUiLauncher()
    {
        mProgressDailog = null;
        mAlertDialog = null;
        listener = new MtvLiveBroadcastListener() {

            public void onMtvAppFinishNotify(Object obj)
            {
                runOnUiThread(new Runnable() {

                    public void run()
                    {
                        if(MtvUtilAppService.isConflictHandlerEnabled(getApplicationContext()))
                        {
                            closeServiceAndFinish();
                            return;
                        } else
                        {
                            finish();
                            return;
                        }
                    }

                    final _cls1 this$1;

            
            {
                this$1 = _cls1.this;
                super();
            }
                }
);
            }

            public void onMtvAppLiveBroadcastNotify(int i, Object obj)
            {
                boolean flag;
                flag = true;
                MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append(" onMtvAppLiveBroadcastNotify...what ").append(i).toString());
                i;
                JVM INSTR lookupswitch 2: default 56
            //                           2: 127
            //                           10: 57;
                   goto _L1 _L2 _L3
_L1:
                return;
_L3:
                MtvUtilDebug.Low("MtvUiLauncher", "MtvLiveBroadcastListener.MTVAPP_ANDROID_SERVICE_RESERVATION_END...");
                obj = MtvReservationManager.find(getApplicationContext(), MtvUiLauncher.reservationID);
                MtvReservationManager.UpdateStatus(getApplicationContext(), ((MtvReservation) (obj)), 7);
                MtvUtilDebug.Low("MtvUiLauncher", "OneSeg Launch Cancelled !");
                if(MtvUtilAppService.isConflictHandlerEnabled(getApplicationContext()))
                {
                    closeServiceAndFinish();
                    return;
                } else
                {
                    finish();
                    return;
                }
_L2:
                if(obj != null)
                {
                    obj = (Intent)obj;
                    int j;
                    if(((Intent) (obj)).getIntExtra("status", 1) != 2)
                        flag = false;
                    i = ((Intent) (obj)).getIntExtra("scale", 100);
                    j = ((Intent) (obj)).getIntExtra("level", i);
                    MtvBatteryInfo.setBatteryCharging(flag);
                    MtvUtilDebug.High("MtvUiLauncher", (new StringBuilder()).append("  MTVAPP_ANDROID_SERVICE_BATTERYCHANGE level ").append(j).append(" isCharging ").append(flag).toString());
                    if(j < 15 && !flag)
                    {
                        MtvUtilDebug.High("MtvUiLauncher", (new StringBuilder()).append(" MTVAPP_ANDROID_SERVICE_BATTERYCHANGE isInForeGround ").append(MtvUtilAppService.isAppOnForeground(getApplicationContext())).toString());
                        if(MtvUtilAppService.isAppOnForeground(getApplicationContext()))
                        {
                            showLowBatteryPopup();
                            return;
                        } else
                        {
                            getApplicationContext().sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"));
                            return;
                        }
                    } else
                    {
                        MtvBatteryInfo.updateBatteryLevel(j, i);
                        return;
                    }
                }
                if(true) goto _L1; else goto _L4
_L4:
            }

            final MtvUiLauncher this$0;

            
            {
                this$0 = MtvUiLauncher.this;
                super();
            }
        }
;
    }

    private void createNOTTvRunningDialog()
    {
        MtvUtilDebug.Low("MtvUiLauncher", "createNOTTvRunningDialog ::");
        mAlertDialog = (new android.app.AlertDialog.Builder(this)).setIcon(0x7f020073).setTitle(getString(0x7f070249)).setMessage(getString(0x7f070292)).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MtvUtilDebug.Low("MtvUiLauncher", "User Wants OneSegLaunch...!");
                MtvConflictHandler.getInstance(getApplicationContext()).handleAssignResource();
            }

            final MtvUiLauncher this$0;

            
            {
                this$0 = MtvUiLauncher.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MtvUtilDebug.Low("MtvUiLauncher", "User Canceled OneSegLaunch...");
                if(MtvUiLauncher.reservationID != -1 || MtvUiLauncher.reminderReservationID != -1)
                {
                    if(MtvUiLauncher.reservationID == -1)
                        i = MtvUiLauncher.reminderReservationID;
                    else
                        i = MtvUiLauncher.reservationID;
                    MtvUtilDebug.Low("MtvUiLauncher", "Reservation fail due to  User Canceled OneSegLaunch...");
                    dialoginterface = MtvReservationManager.find(MtvUiLauncher.this, i);
                    MtvReservationManager.UpdateStatus(MtvUiLauncher.this, dialoginterface, 7);
                    (new MtvPreferences(MtvUiLauncher.this)).setComingReservationID(-1);
                }
                closeServiceAndFinish();
            }

            final MtvUiLauncher this$0;

            
            {
                this$0 = MtvUiLauncher.this;
                super();
            }
        }
).setCancelable(false).create();
        mAlertDialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            public void onDismiss(DialogInterface dialoginterface)
            {
                MtvUtilDebug.Low("MtvUiLauncher", "onDismiss of OneSeg Popup...");
            }

            final MtvUiLauncher this$0;

            
            {
                this$0 = MtvUiLauncher.this;
                super();
            }
        }
);
        mAlertDialog.getWindow().addFlags(1024);
        mAlertDialog.show();
    }

    private void dismissAlertDialog()
    {
        if(mAlertDialog != null && mAlertDialog.isShowing())
        {
            mAlertDialog.dismiss();
            return;
        } else
        {
            MtvUtilDebug.Low("MtvUiLauncher", "dismissAlertDialog : dialog null or not showing");
            return;
        }
    }

    private void dismissProgressDialog()
    {
        if(mProgressDailog != null && mProgressDailog.isShowing())
        {
            mProgressDailog.dismiss();
            return;
        } else
        {
            MtvUtilDebug.Low("MtvUiLauncher", "dismissDialog ::  dialog null or not showing");
            return;
        }
    }

    private void displayProgressDialog()
    {
        if(mProgressDailog != null && mProgressDailog.isShowing())
        {
            MtvUtilDebug.Low("MtvUiLauncher", "Already displaying Progress...");
            return;
        } else
        {
            mProgressDailog = new ProgressDialog(this);
            mProgressDailog.setTitle(0x7f0702fc);
            mProgressDailog.setMessage(getString(0x7f0702fb));
            mProgressDailog.setIndeterminate(true);
            mProgressDailog.setCancelable(false);
            mProgressDailog.show();
            return;
        }
    }

    private void requestOrientation(int i)
    {
        MtvUtilDebug.High("MtvUiLauncher", (new StringBuilder()).append("Requested Orientation in GenericPlayer [").append(i).append("] System Values [1:Port 0:Land -1:UnSpecified]: Mtv Values [0:Port 1:Land 3:Reverse Landscape] ").toString());
        setRequestedOrientation(i);
    }

    private void startMobileTVForEPG()
    {
        MtvUtilDebug.Low("MtvUiLauncher", "startMobileTVForEPG   :   ACTION_DTV_VIEW    : MObileTV running ....Start");
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).registerBaseListener(listener);
        Intent intent = getIntent();
        Intent intent1 = new Intent("ACTION_DTV_VIEW");
        intent1.putExtra("EXTRA_VIEW_CHANNEL_NO", intent.getIntExtra("EXTRA_VIEW_CHANNEL_NO", -1));
        intent1.putExtra("EXTRA_VIEW_SERVICE_ID", intent.getIntExtra("EXTRA_VIEW_SERVICE_ID", -1));
        intent1.putExtra("EXTRA_AREA_FLAG", intent.getIntExtra("EXTRA_AREA_FLAG", -1));
        MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append("startMobileTVForEPG   :   epgChNo = ").append(intent.getIntExtra("EXTRA_VIEW_CHANNEL_NO", -1)).append(", epgServiceId = ").append(intent.getIntExtra("EXTRA_VIEW_SERVICE_ID", -1)).append(" epgAreaId = ").append(intent.getIntExtra("EXTRA_AREA_FLAG", -1)).toString());
        intent1.setFlags(0x4000000);
        intent1.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
        startActivity(intent1);
        MtvUtilDebug.Low("MtvUiLauncher", "startMobileTVForEPG   :   ACTION_DTV_VIEW    : MObileTV running ....End");
        finish();
    }

    private void updateReservationVariables()
    {
        reservationID = getIntent().getIntExtra("dbId", -1);
        reminderReservationID = getIntent().getIntExtra("reminderDbId", -1);
        if(reservationID != -1)
            MtvUtilDebug.Low("MtvUiLauncher", "RESERVATION_START_ALARM raised... !! ONE-SEG laucnhed for starting reservation");
        else
        if(reminderReservationID != -1)
            MtvUtilDebug.Low("MtvUiLauncher", "RESERVATION_REMINDER_ALARM raised... !! ONE-SEG laucnhed for preparing reservation");
        else
            MtvUtilDebug.Low("MtvUiLauncher", "ONE-SEG not started for reservation... Probably launched manually !!");
        reservationAlertNeedToShow = getIntent().getBooleanExtra("youNeedToShowAlert", false);
    }

    protected void closeServiceAndFinish()
    {
        MtvUtilDebug.Low("MtvUiLauncher", "closeServiceAndFinish() :: ");
        MtvConflictHandler.getInstance(getApplicationContext()).closeService();
        MtvConflictHandler.reset();
        finish();
    }

    public void onBackPressed()
    {
        MtvUtilDebug.Low("MtvUiLauncher", "onBackPressed :: called ");
        closeServiceAndFinish();
    }

    public void onCommunicationError()
    {
        Toast.makeText(getApplicationContext(), 0x7f0702fa, 1).show();
        dismissProgressDialog();
        if(reservationID != -1)
        {
            MtvUtilDebug.Low("MtvUiLauncher", "Reservation failed due to Unknown Return Value from assignResource dismissing the dialog...");
            MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), reservationID);
            MtvReservationManager.UpdateStatus(getApplicationContext(), mtvreservation, 2);
        }
        closeServiceAndFinish();
    }

    public void onConflictWithTmm()
    {
        createNOTTvRunningDialog();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.High("MtvUiLauncher", "OnCreate");
        MtvConflictHandler.getInstance(getApplicationContext()).registerListener(this);
        if(MtvUtilAppService.getRotation(getApplicationContext()) == 1)
            requestOrientation(0);
        else
        if(MtvUtilAppService.getRotation(getApplicationContext()) == 3)
            requestOrientation(8);
        else
        if(MtvUtilAppService.getRotation(getApplicationContext()) == 0)
            requestOrientation(1);
        else
            requestOrientation(9);
        if(MtvFeatures.is3LMEnabled() && !MtvUtilAppService.isAllowedBy3LMPolicy())
        {
            MtvUtilDebug.High("MtvUiLauncher", "ONE_SEG launch blocked by 3LM !");
            Toast.makeText(this, 0x7f070299, 0).show();
            finish();
            return;
        }
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).registerListener(listener);
        updateReservationVariables();
        if(MtvUtilConfigSetting.EPGAPP_ENABLED)
        {
            bundle = getIntent();
            if(bundle.getAction() != null && bundle.getAction().equalsIgnoreCase("ACTION_DTV_VIEW"))
            {
                MtvUtilDebug.Low("MtvUiLauncher", "Called from EPG   :   ACTION_DTV_VIEW");
                isstartedFromEpg = true;
            }
        }
        if(MtvConflictHandler.getInstance(getApplicationContext()).isTunerResourceAssigned() && isstartedFromEpg)
        {
            MtvUtilDebug.Low("MtvUiLauncher", "Called from EPG   :   ACTION_DTV_VIEW    : MObileTV running ....");
            startMobileTVForEPG();
            return;
        } else
        {
            overridePendingTransition(0, 0);
            MtvConflictHandler.getInstance(getApplicationContext()).openService();
            requestWindowFeature(1);
            setContentView(0x7f030006);
            return;
        }
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low("MtvUiLauncher", "onDestroy");
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).unregisterListener(listener);
        dismissAlertDialog();
        dismissProgressDialog();
        if(isFinishing())
            isstartedFromEpg = false;
        if(MtvUtilAppService.isConflictHandlerEnabled(getApplicationContext()))
            MtvConflictHandler.getInstance(getApplicationContext()).unRegisterListener(this);
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        MtvUtilDebug.Low("MtvUiLauncher", "onNewIntent... Probably called as RESERVATION_REMINDER or RESERVATION_START alarm came");
        MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append(" previous reservationID id :").append(reservationID).toString());
        MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append(" previous reminderReservationID  id :").append(reminderReservationID).toString());
        if(intent.hasExtra("dbId"))
        {
            reservationID = intent.getIntExtra("dbId", -1);
            MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append("RESERVATION_START alarm came id : ").append(reservationID).toString());
            MtvUtilDebug.Low("MtvUiLauncher", "conflict_Pop-up is Showing Ignore the Intent");
        } else
        {
            reminderReservationID = intent.getIntExtra("reminderDbId", -1);
            if(reminderReservationID != -1)
            {
                MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append("Reminder Came For Some Other Reservation   :").append(reminderReservationID).append("   Cancel if there is Previous Reservation   :").append(reservationID).toString());
                if(reservationID != -1)
                {
                    MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append("Cancelling previous Reservation... ").append(reservationID).toString());
                    intent = MtvReservationManager.find(getApplicationContext(), reservationID);
                    MtvReservationManager.UpdateStatus(getApplicationContext(), intent, 7);
                }
                reservationID = -1;
                return;
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
    }

    public void onTunerResourceAssignProcessing()
    {
        displayProgressDialog();
    }

    public void onTunerResourceAssignStarted()
    {
        displayProgressDialog();
    }

    public void onTunerResourceAssignTimedOut(boolean flag)
    {
        if(flag)
        {
            MtvUtilDebug.Low("MtvUiLauncher", "onTunerResourceAssignTimedOut - retrying");
            return;
        }
        Toast.makeText(getApplicationContext(), 0x7f0702fa, 1).show();
        if(reservationID != -1)
        {
            MtvUtilDebug.Low("MtvUiLauncher", "Reservation Fail Due to TMM_RESOURCE_RELEASE_TIMEOUT");
            MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), reservationID);
            MtvReservationManager.UpdateStatus(getApplicationContext(), mtvreservation, 2);
        }
        dismissProgressDialog();
        closeServiceAndFinish();
    }

    public void onTunerResourceAssigned()
    {
        Intent intent;
        MtvUtilDebug.Low("MtvUiLauncher", "onTunerResourceAssigned() :: ");
        dismissProgressDialog();
        finish();
        intent = new Intent();
        if(reservationID == -1) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = MtvReservationManager.find(getApplicationContext(), reservationID);
        if(obj != null && ((MtvReservation) (obj)).mPgmType == 0 && ((MtvReservation) (obj)).mTimeEnd > System.currentTimeMillis())
        {
            MtvUtilDebug.Low("MtvUiLauncher", "Background Service Start by START ALARM!");
            obj = new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE");
            ((Intent) (obj)).putExtra("dbId", reservationID);
            ((Intent) (obj)).putExtra("COMMAND_KEY", 1);
            ((Intent) (obj)).putExtra("youNeedToShowAlert", reservationAlertNeedToShow);
            getApplicationContext().startService(((Intent) (obj)));
            return;
        }
        MtvUtilDebug.Low("MtvUiLauncher", "Reservation started afetr TMM_RESOURCE_ASSIGNED");
        intent.putExtra("dbId", reservationID);
        intent.putExtra("youNeedToShowAlert", reservationAlertNeedToShow);
        obj = intent;
_L4:
        ((Intent) (obj)).setFlags(0x4000000);
        ((Intent) (obj)).setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
        startActivity(((Intent) (obj)));
        return;
_L2:
        if(reminderReservationID != -1)
        {
            MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), reminderReservationID);
            obj = intent;
            if(mtvreservation != null)
            {
                obj = intent;
                if(mtvreservation.mPgmType == 0)
                {
                    obj = intent;
                    if(mtvreservation.mTimeStart > System.currentTimeMillis())
                    {
                        MtvUtilDebug.Low("MtvUiLauncher", "Background Service Start by REMINDER ALARM !");
                        obj = new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE");
                        ((Intent) (obj)).putExtra("reminderDbId", reminderReservationID);
                        ((Intent) (obj)).putExtra("COMMAND_KEY", 1);
                        getApplicationContext().startService(((Intent) (obj)));
                        return;
                    }
                }
            }
        } else
        {
            obj = intent;
            if(isstartedFromEpg)
            {
                MtvUtilDebug.Low("MtvUiLauncher", "Called from EPG   :   Starting MainPLayer with ACTION_DTV_VIEW....");
                Intent intent1 = getIntent();
                obj = new Intent("ACTION_DTV_VIEW");
                ((Intent) (obj)).putExtra("EXTRA_VIEW_CHANNEL_NO", intent1.getIntExtra("EXTRA_VIEW_CHANNEL_NO", -1));
                ((Intent) (obj)).putExtra("EXTRA_VIEW_SERVICE_ID", intent1.getIntExtra("EXTRA_VIEW_SERVICE_ID", -1));
                ((Intent) (obj)).putExtra("EXTRA_AREA_FLAG", intent1.getIntExtra("EXTRA_AREA_FLAG", -1));
                MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append("Called from EPG   :   Starting MainPLayer with ACTION_DTV_VIEW...., epgChNo = ").append(intent1.getIntExtra("EXTRA_VIEW_CHANNEL_NO", -1)).append(", epgServiceId = ").append(intent1.getIntExtra("EXTRA_VIEW_SERVICE_ID", -1)).append(" epgAreaId = ").append(intent1.getIntExtra("EXTRA_AREA_FLAG", -1)).toString());
                ((Intent) (obj)).setFlags(0x4000000);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onTunerResourceAssignmentException()
    {
    }

    public void onTunerResourceBusy(boolean flag)
    {
        if(flag)
        {
            displayProgressDialog();
            MtvUtilDebug.Low("MtvUiLauncher", "onTunerResourceBusy - retrying");
            return;
        }
        Toast.makeText(getApplicationContext(), 0x7f0702fa, 1).show();
        if(reservationID != -1)
        {
            MtvUtilDebug.Low("MtvUiLauncher", "Reservation fail due to TMM_RESOURCE_RELEASE_RUNNING 5 retry over");
            MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), reservationID);
            MtvReservationManager.UpdateStatus(getApplicationContext(), mtvreservation, 2);
        }
        dismissProgressDialog();
        finish();
    }

    protected void showLowBatteryPopup()
    {
        MtvUtilDebug.Low("MtvUiLauncher", (new StringBuilder()).append(" showLowBatteryPopup() :: isBatteryLowPopupAvailable ").append(MtvUiPopUpActivity.isBatteryLowPopupAvailable()).append(" isFinishing ").append(isFinishing()).append(" isAppExiting ").append(MtvUtilAppService.isAppExiting()).toString());
        if(!MtvUiPopUpActivity.isBatteryLowPopupAvailable() && !MtvUtilAppService.isAppExiting())
        {
            Intent intent;
            if(MtvUtilAppService.getRotation(getApplicationContext()) == 1)
                setRequestedOrientation(0);
            else
            if(MtvUtilAppService.getRotation(getApplicationContext()) == 3)
                setRequestedOrientation(8);
            else
                setRequestedOrientation(1);
            intent = new Intent();
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
            intent.putExtra("popup_type", 0);
            startActivity(intent);
        }
    }

    private static final String TAG = "MtvUiLauncher";
    private static boolean isstartedFromEpg = false;
    private static int reminderReservationID = -1;
    private static boolean reservationAlertNeedToShow = false;
    private static int reservationID = -1;
    private MtvLiveBroadcastListener listener;
    private AlertDialog mAlertDialog;
    private ProgressDialog mProgressDailog;



}
