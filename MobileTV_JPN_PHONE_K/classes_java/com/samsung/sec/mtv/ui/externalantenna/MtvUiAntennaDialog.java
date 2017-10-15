// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.externalantenna;

import android.app.AlertDialog;
import android.broadcast.helper.MtvUtilDebug;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.ui.common.MtvBaseActivity;
import com.samsung.sec.mtv.ui.conflict.MtvUiLauncher;
import com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer;
import com.samsung.sec.mtv.utility.*;

public class MtvUiAntennaDialog extends MtvBaseActivity
{

    public MtvUiAntennaDialog()
    {
        antenaSetDialog = null;
        mMtvPreferences = null;
        TAG = "MtvUiAntennaDialog";
        mMtvAppPlaybackContext = null;
    }

    private void startUiPlayer()
    {
        MtvUtilDebug.High(TAG, (new StringBuilder()).append(" is conflict handler enabled : ").append(MtvUtilAppService.isConflictHandlerEnabled(getApplicationContext())).toString());
        Intent intent;
        if(MtvUtilAppService.isConflictHandlerEnabled(getApplicationContext()))
            intent = new Intent(this, com/samsung/sec/mtv/ui/conflict/MtvUiLauncher);
        else
            intent = new Intent(this, com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer);
        if(System.currentTimeMillis() - (new MtvPreferences(getApplicationContext())).getLastLivePlayBackDestroyTime() < 800L)
            try
            {
                Thread.sleep(800L);
            }
            catch(Exception exception)
            {
                MtvUtilDebug.Low(TAG, "Exception !!!!");
            }
        startActivity(intent);
    }

    public void onBackPressed()
    {
        finish();
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.High(TAG, "Oncreate :");
        MtvUtilAppService.setAppExiting(false);
        if(MtvUtilAppService.updateBatteryInfo(this))
        {
            MtvUtilDebug.Error(TAG, "Battery is low to Launch MobileTV... ");
            showLowBatteryPopup();
        } else
        {
            if(MtvUtilMemoryStatus.isLowMemoryToLaunch())
            {
                MtvUtilDebug.Error(TAG, "Memory is low to Launch MobileTV... ");
                showLowMemoryPopup();
                return;
            }
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            mMtvPreferences = new MtvPreferences(getApplicationContext());
            if(!MtvUtilAppService.isAllowedBy3LMPolicy() && MtvFeatures.is3LMEnabled())
            {
                Toast.makeText(this, 0x7f070299, 0).show();
                finish();
                return;
            }
            if(!MtvFeatures.hasExternalAntenna() || !mMtvPreferences.getIsAntenaDialogRequired() || mMtvPreferences.getIsLivePlayMiniMode() || mMtvPreferences.getIsFilePlayMiniMode() || mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED)
            {
                startUiPlayer();
                return;
            }
            setContentView(new View(getApplicationContext()));
            bundle = new android.app.AlertDialog.Builder(this, 3);
            View view = View.inflate(getApplicationContext(), 0x7f030016, null);
            antennaCheckbox = (CheckBox)view.findViewById(0x7f0a0078);
            antennaCheckbox.setButtonDrawable(0x7f02004b);
            antennaCheckbox.setTextColor(0xff888888);
            antennaCheckbox.setText(0x7f07023c);
            antennaCheckbox.setPadding(10, 0, 0, 0);
            antennaCheckbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

                public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
                {
                    if(antennaCheckbox.isChecked())
                    {
                        antennaCheckbox.setButtonDrawable(0x7f02004a);
                        return;
                    } else
                    {
                        antennaCheckbox.setButtonDrawable(0x7f02004b);
                        return;
                    }
                }

                final MtvUiAntennaDialog this$0;

            
            {
                this$0 = MtvUiAntennaDialog.this;
                super();
            }
            }
);
            bundle.setTitle(0x7f0701e5);
            bundle.setMessage(0x7f0701e4);
            bundle.setView(view);
            bundle.setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(antennaCheckbox.isChecked())
                        mMtvPreferences.setIsAntenaDialogRequired(false);
                    else
                        mMtvPreferences.setIsAntenaDialogRequired(true);
                    startUiPlayer();
                    dialoginterface.dismiss();
                }

                final MtvUiAntennaDialog this$0;

            
            {
                this$0 = MtvUiAntennaDialog.this;
                super();
            }
            }
);
            bundle.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                public void onDismiss(DialogInterface dialoginterface)
                {
                    finish();
                }

                final MtvUiAntennaDialog this$0;

            
            {
                this$0 = MtvUiAntennaDialog.this;
                super();
            }
            }
);
            antenaSetDialog = bundle.create();
            antenaSetDialog.getWindow().addFlags(1024);
            antenaSetDialog.show();
            bundle = new android.view.WindowManager.LayoutParams();
            bundle.gravity = 17;
            bundle.copyFrom(antenaSetDialog.getWindow().getAttributes());
            antenaSetDialog.getWindow().setAttributes(bundle);
            if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            {
                getWindow().addFlags(8192);
                return;
            }
        }
    }

    protected void onDestroy()
    {
        finish();
        super.onDestroy();
    }

    protected void onPause()
    {
        finish();
        super.onPause();
    }

    private String TAG;
    private AlertDialog antenaSetDialog;
    CheckBox antennaCheckbox;
    MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvPreferences mMtvPreferences;


}
