// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.utility.*;
import java.util.StringTokenizer;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiFrag, MtvUiGenericPlayer

public class MtvUiMainFrag extends MtvUiFrag
    implements android.view.View.OnClickListener
{

    public MtvUiMainFrag()
    {
        mChUpButton = null;
        mChDownButton = null;
        mChminiModeButton = null;
        mChGuideButton = null;
        mControlLayout = null;
        mProgramChannelDetail = "";
        mChannelName = null;
        mMtvAppPlaybackContext = null;
    }

    private void initializeUI()
    {
        int i = MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext());
        mControlLayout = (RelativeLayout)mLayoutView.findViewById(0x7f0a0095);
        if(i != 0)
            mControlLayout.setBackgroundColor(0x7f06000a);
        mControlLayout.setOnTouchListener(new android.view.View.OnTouchListener() {

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            final MtvUiMainFrag this$0;

            
            {
                this$0 = MtvUiMainFrag.this;
                super();
            }
        }
);
        mChUpButton = (ImageButton)mLayoutView.findViewById(0x7f0a0098);
        mChDownButton = (ImageButton)mLayoutView.findViewById(0x7f0a0096);
        if(MtvFeatures.isMiniModeEnabled())
        {
            mChminiModeButton = (ImageButton)mLayoutView.findViewById(0x7f0a0099);
            mChminiModeButton.setOnClickListener(this);
        }
        mChGuideButton = (Button)mLayoutView.findViewById(0x7f0a0097);
        mChUpButton.setOnClickListener(this);
        mChDownButton.setOnClickListener(this);
        mChGuideButton.setOnClickListener(this);
        if(i == 0)
        {
            int j = mPreferences.getLatestChannelNumberForDisplay();
            if(j < 0)
            {
                mChGuideButton.setText("");
                return;
            } else
            {
                mChGuideButton.setText(Integer.toString(j));
                return;
            }
        } else
        {
            setChannelDetails(mProgramChannelDetail);
            return;
        }
    }

    private void initilizePopupForHoverEvents()
    {
        MtvUtilDebug.Low("MtvUiMainFrag", "initilizePopupForHoverEvents is called....:");
        channelNext = mPreferences.getNextChannelInfo();
        channelPre = mPreferences.getPreChannelInfo();
        if(mChDownButton != null)
        {
            mChDownButton.setHoverPopupType(1);
            mChDownButton.getHoverPopupWindow().setHoverDetectTime(300);
            mChDownButton.getHoverPopupWindow().setPopupGravity(12337);
            mChDownButton.getHoverPopupWindow().setPopupPosOffset(0, -10);
            mChDownButton.setContentDescription(channelPre);
        }
        if(mChUpButton != null)
        {
            mChUpButton.setHoverPopupType(1);
            mChUpButton.getHoverPopupWindow().setHoverDetectTime(300);
            mChUpButton.getHoverPopupWindow().setPopupGravity(12337);
            mChUpButton.getHoverPopupWindow().setPopupPosOffset(0, -10);
            mChUpButton.setContentDescription(channelNext);
        }
    }

    private void setChannelDetails(String s)
    {
        int i = mPreferences.getLatestChannelNumberForDisplay();
        String s1;
        if(i < 0)
            s1 = "";
        else
            s1 = Integer.toString(i);
        if(s != null)
        {
            StringTokenizer stringtokenizer = new StringTokenizer(new String(s), "\n");
            s = s1;
            if(stringtokenizer.hasMoreTokens())
                s = (new StringBuilder()).append(s1).append(" ").append(stringtokenizer.nextToken()).toString();
            setMainFragChannelDetails(s);
            return;
        } else
        {
            setMainFragChannelDetails(null);
            return;
        }
    }

    private void setMainFragChannelDetails(String s)
    {
        if(s != null)
        {
            mChannelName = s;
        } else
        {
            int i = mPreferences.getLatestChannelNumberForDisplay();
            if(i < 0)
                mChannelName = "";
            else
                mChannelName = Integer.toString(i);
        }
        if(mChGuideButton != null)
            mChGuideButton.setText(mChannelName);
    }

    private void updateComponentsOnLock(boolean flag)
    {
        mChUpButton.setEnabled(flag);
        mChDownButton.setEnabled(flag);
        if(MtvFeatures.isMiniModeEnabled())
            mChminiModeButton.setEnabled(flag);
        mChGuideButton.setEnabled(flag);
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

    public void onClick(View view)
    {
        switch(view.getId())
        {
        default:
            return;

        case 2131361944: 
            mListener.onFragEvent(232, null);
            return;

        case 2131361942: 
            mListener.onFragEvent(233, null);
            return;

        case 2131361943: 
            mListener.onFragEvent(235, null);
            return;

        case 2131361945: 
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            break;
        }
        StringBuilder stringbuilder = (new StringBuilder()).append("onClick Btn_AppInApp: ");
        boolean flag;
        if(mMtvAppPlaybackContext != null)
            view = (new StringBuilder()).append("State: ").append(mMtvAppPlaybackContext.getState().getState()).append(" Command: ").append(mMtvAppPlaybackContext.getState().getOp()).toString();
        else
            view = (new StringBuilder()).append(" mMtvAppPlaybackContext: ").append(mMtvAppPlaybackContext).toString();
        MtvUtilDebug.Low("MtvUiMainFrag", stringbuilder.append(view).toString());
        if(mMtvAppPlaybackContext != null && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == mMtvAppPlaybackContext.getState().getState() && 20480 == mMtvAppPlaybackContext.getState().getOp())
            flag = true;
        else
            flag = false;
        if(flag)
        {
            mListener.onFragEvent(236, null);
            return;
        } else
        {
            Toast.makeText(getActivity(), 0x7f07020e, 0).show();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiMainFrag", "onCreateView");
        mContext = getActivity().getApplicationContext();
        if(MtvFeatures.isMiniModeEnabled())
            mLayoutView = layoutinflater.inflate(0x7f03001c, null);
        else
            mLayoutView = layoutinflater.inflate(0x7f03001b, null);
        mPreferences = new MtvPreferences(mContext);
        initializeUI();
        if(MtvFeatures.isHoverEnabled())
            initilizePopupForHoverEvents();
        if((getActivity() instanceof MtvUiGenericPlayer) && ((MtvUiGenericPlayer)getActivity()).isPhoneLocked())
            updateComponentsOnLock(false);
        return mLayoutView;
    }

    public void onDetach()
    {
        super.onDetach();
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        mListener.onFragEvent(201, Integer.valueOf(mPreferences.getDisplaySize()));
    }

    public void onStart()
    {
        super.onStart();
    }

    public void onStop()
    {
        super.onStop();
    }

    public void onUpdate(int i, Object obj)
    {
        boolean flag1;
        flag1 = true;
        MtvUtilDebug.Low("MtvUiMainFrag", (new StringBuilder()).append("onUpdate: what[").append(i).append("]").toString());
        i;
        JVM INSTR lookupswitch 5: default 84
    //                   101: 112
    //                   112: 91
    //                   234: 84
    //                   237: 223
    //                   238: 335;
           goto _L1 _L2 _L3 _L1 _L4 _L5
_L1:
        super.onUpdate(i, obj);
        return;
_L3:
        if(obj instanceof Boolean)
            updateComponentsOnLock(((Boolean)obj).booleanValue());
        continue; /* Loop/switch isn't completed */
_L2:
        if(obj != null)
            mProgramChannelDetail = (String)obj;
        else
            mProgramChannelDetail = "";
        MtvUtilDebug.Low("MtvUiMainFrag", (new StringBuilder()).append("onUpdate: UPDATE_NOW_PROGRAM : mProgramChannelDetail= ").append(mProgramChannelDetail).toString());
        if(MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext()) == 0)
        {
            int j = mPreferences.getLatestChannelNumberForDisplay();
            if(j < 0)
                mChGuideButton.setText("");
            else
                mChGuideButton.setText(Integer.toString(j));
        } else
        {
            setChannelDetails(mProgramChannelDetail);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        MtvUtilDebug.Low("MtvUiMainFrag", (new StringBuilder()).append("MTV_UPDATE_FRAG_CMD_MAIN_CHANNEL_NEXT_PRE_HOVER :channelNext : ").append(channelNext).toString());
        boolean flag2 = MtvFeatures.isHoverEnabled();
        boolean flag;
        if(mChUpButton != null)
            flag = true;
        else
            flag = false;
        if(mChDownButton == null)
            flag1 = false;
        if(flag & flag2 & flag1)
        {
            channelNext = mPreferences.getNextChannelInfo();
            mChUpButton.setContentDescription(channelNext);
            channelPre = mPreferences.getPreChannelInfo();
            mChDownButton.setContentDescription(channelPre);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if(obj != null)
            if(((Boolean)obj).booleanValue())
                getActivity().findViewById(0x7f0a0099).setVisibility(0);
            else
                getActivity().findViewById(0x7f0a0099).setVisibility(4);
        if(true) goto _L1; else goto _L6
_L6:
    }

    public void redraw()
    {
        super.redraw();
    }

    private static final String TAG = "MtvUiMainFrag";
    private static String channelNext = "No Program Name";
    private static String channelPre = "No Program Name";
    private ImageButton mChDownButton;
    private Button mChGuideButton;
    private ImageButton mChUpButton;
    private String mChannelName;
    private ImageButton mChminiModeButton;
    private Context mContext;
    private RelativeLayout mControlLayout;
    private View mLayoutView;
    private MtvUiFrag.IMtvFragEventListener mListener;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvPreferences mPreferences;
    private String mProgramChannelDetail;

}
