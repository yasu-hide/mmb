// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.ProgressDialog;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.os.Bundle;
import android.view.Window;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvBaseActivity

public class MtvUiProgressDialog extends MtvBaseActivity
{

    public MtvUiProgressDialog()
    {
        mProgDialog = null;
        titleResId = -1;
        messageId = -1;
        dialogGravity = 17;
    }

    private void createProgressDialog()
    {
        mProgDialog = new ProgressDialog(this);
        if(messageId != -1)
            mProgDialog.setMessage((new StringBuilder()).append("    ").append(getString(messageId)).append("    ").toString());
        mProgDialog.setCancelable(false);
    }

    public static void dismissProgressDialog()
    {
        if(mCurrentProgressDialog != null)
        {
            mCurrentProgressDialog.finish();
            return;
        } else
        {
            MtvUtilDebug.High("MtvUiLiveRecorderPopup", "No Progress Dialog Displayed !");
            return;
        }
    }

    public static boolean isProgressDialogShowing()
    {
        return mCurrentProgressDialog != null && mCurrentProgressDialog.mProgDialog != null && mCurrentProgressDialog.mProgDialog.isShowing();
    }

    public static void showProgressDialog(Context context, int i, int j)
    {
        if(context == null)
        {
            throw new IllegalArgumentException("context cannot be null !");
        } else
        {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(context.getPackageName(), com/samsung/sec/mtv/ui/common/MtvUiProgressDialog.getName()));
            intent.putExtra("KEY_TITLE_ID", i);
            intent.putExtra("KEY_MESSAGE_ID", j);
            context.startActivity(intent);
            return;
        }
    }

    private void suppressCoverUI(boolean flag)
    {
        MtvUtilDebug.Low("MtvUiLiveRecorderPopup", (new StringBuilder()).append("sending broadcast s cover state change, mSuppress = ").append(flag).toString());
        Intent intent = new Intent();
        intent.setAction("com.samsung.cover.STATE_CHANGE");
        intent.putExtra("suppressCoverUI", flag);
        intent.putExtra("sender", getPackageName());
        sendBroadcast(intent);
    }

    public void onBackPressed()
    {
        MtvUtilDebug.Low("MtvUiLiveRecorderPopup", "onBackPressed...");
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mCurrentProgressDialog = this;
        requestWindowFeature(1);
        setContentView(0x7f030006);
        titleResId = getIntent().getIntExtra("KEY_TITLE_ID", -1);
        messageId = getIntent().getIntExtra("KEY_MESSAGE_ID", -1);
        MtvUtilDebug.Low("MtvUiLiveRecorderPopup", (new StringBuilder()).append("titleResId = ").append(titleResId).append("messageId = ").append(messageId).toString());
        createProgressDialog();
        mPreferences = new MtvPreferences(getApplicationContext());
        if(!mProgDialog.isShowing())
        {
            if(mPreferences.isSViewCoverClosed())
            {
                suppressCoverUI(true);
                dialogGravity = 48;
                MtvUtilDebug.High("MtvUiLiveRecorderPopup", (new StringBuilder()).append("dialogGravity TOP ").append(dialogGravity).toString());
            } else
            {
                suppressCoverUI(false);
                dialogGravity = 17;
                MtvUtilDebug.High("MtvUiLiveRecorderPopup", (new StringBuilder()).append("dialogGravity CENTER ").append(dialogGravity).toString());
            }
            mProgDialog.getWindow().setGravity(dialogGravity);
            mProgDialog.setCanceledOnTouchOutside(false);
            mProgDialog.show();
        }
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    protected void onDestroy()
    {
        mCurrentProgressDialog = null;
        if(mProgDialog != null && mProgDialog.isShowing())
            mProgDialog.dismiss();
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        if(MtvUtilAppService.isAppExiting() && !isFinishing())
            finish();
    }

    private static final String KEY_MESSAGE_ID = "KEY_MESSAGE_ID";
    private static final String KEY_TITLE_ID = "KEY_TITLE_ID";
    private static final String TAG = "MtvUiLiveRecorderPopup";
    private static MtvUiProgressDialog mCurrentProgressDialog = null;
    private int dialogGravity;
    private MtvPreferences mPreferences;
    private ProgressDialog mProgDialog;
    private int messageId;
    private int titleResId;

}
