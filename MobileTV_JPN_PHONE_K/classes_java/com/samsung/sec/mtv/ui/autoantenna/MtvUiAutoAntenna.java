// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.autoantenna;

import android.app.Activity;
import android.content.*;
import android.os.Bundle;
import android.view.Window;
import com.samsung.sec.mtv.app.context.IMtvAppPlaybackStateListener;
import com.samsung.sec.mtv.app.context.IMtvAppProgramAttributeListener;
import com.samsung.sec.mtv.ui.bml.IMtvUiBmlActivity;
import com.samsung.sec.mtv.utility.*;

public class MtvUiAutoAntenna extends Activity
    implements com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener, IMtvAppPlaybackStateListener, IMtvAppProgramAttributeListener, IMtvUiBmlActivity
{

    public MtvUiAutoAntenna()
    {
        mContext = null;
    }

    public boolean isBmlFullView()
    {
        return false;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mContext = this;
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onFragEvent(int i, Object obj)
    {
    }

    protected void onPause()
    {
        super.onPause();
    }

    public void onPlayerNotification(int i, int j, int k)
    {
    }

    public void onProgramAttributeReset(int i)
    {
    }

    public void onProgramAttributeUpdated(int i)
    {
    }

    protected void onResume()
    {
        super.onResume();
        if(MtvFeatures.isAutoAntennaEnabled())
        {
            if(mMtvPreferences == null)
                mMtvPreferences = new MtvPreferences(getApplicationContext());
            if(android.provider.Settings.System.getInt(mContext.getContentResolver(), "dtv_antenna_auto_start", 0) == 1 && !mMtvPreferences.getIsLivePlayMode())
            {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
                intent.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
                intent.putExtra("popup_type", 8);
                startActivity(intent);
                finish();
                return;
            } else
            {
                finish();
                return;
            }
        } else
        {
            finish();
            return;
        }
    }

    protected void onStart()
    {
        super.onStart();
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    protected void onStop()
    {
        super.onStop();
    }

    private static final String TAG = "MtvUiAutoAntenna";
    private Context mContext;
    private MtvPreferences mMtvPreferences;
}
