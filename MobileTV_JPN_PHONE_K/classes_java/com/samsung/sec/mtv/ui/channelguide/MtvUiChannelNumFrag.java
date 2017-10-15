// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.provider.MtvChannel;
import com.samsung.sec.mtv.provider.MtvChannelManager;
import com.samsung.sec.mtv.ui.common.MtvUiFrag;
import java.util.HashMap;

public class MtvUiChannelNumFrag extends MtvUiFrag
    implements android.view.View.OnClickListener
{

    public MtvUiChannelNumFrag()
    {
    }

    private void initializeUI()
    {
        for(int i = 0; i < RSRC_BUTTON_KEY.length; i++)
            mKeyMap.put(Integer.valueOf(RSRC_BUTTON_KEY[i]), Integer.valueOf(i));

        mInputEditText = (EditText)mLayoutView.findViewById(0x7f0a0082);
        mInputEditText.setInputType(0);
        mInputEditText.setCursorVisible(true);
        for(int j = 0; j < RSRC_BUTTON_KEY.length; j++)
            ((ImageButton)mLayoutView.findViewById(RSRC_BUTTON_KEY[j])).setOnClickListener(this);

        for(int k = 0; k < RSRC_BUTTON.length; k++)
            ((ImageButton)mLayoutView.findViewById(RSRC_BUTTON[k])).setOnClickListener(this);

    }

    private int isValidChannel(CharSequence charsequence)
    {
        if(charsequence == null || TextUtils.isEmpty(charsequence))
            return 1;
        int i = Integer.parseInt(mInputEditText.getText().toString().trim());
        if(i == 0 || i > 24)
            return 2;
        if(i > 0 && i <= 24)
        {
            charsequence = MtvChannelManager.findByVChannel(getActivity().getApplicationContext(), i);
            if(charsequence != null && ((MtvChannel) (charsequence)).mPhysicalNum < 0)
            {
                MtvUtilDebug.Low("MtvUiChannelNumFrag", "isValidChannel: not registered channel...");
                return 3;
            }
        }
        return 0;
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
        MtvUtilDebug.Low("MtvUiChannelNumFrag", (new StringBuilder()).append("OnClick id=").append(view.getId()).toString());
        view.getId();
        JVM INSTR tableswitch 2131361923 2131361934: default 92
    //                   2131361923 93
    //                   2131361924 93
    //                   2131361925 93
    //                   2131361926 93
    //                   2131361927 93
    //                   2131361928 93
    //                   2131361929 93
    //                   2131361930 93
    //                   2131361931 93
    //                   2131361932 222
    //                   2131361933 93
    //                   2131361934 376;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L3 _L2 _L4
_L1:
        return;
_L2:
        if(mInputEditText.length() < 3)
        {
            view = (Integer)mKeyMap.get(Integer.valueOf(view.getId()));
            mInputEditText.setTextSize(2, 22F);
            mInputEditText.setText(mInputEditText.getText().toString().trim());
            if(mInputEditText.length() < 2)
            {
                mInputEditText.setText((new StringBuilder()).append(mInputEditText.getText()).append(view.toString()).append(" ").toString());
                mInputEditText.setSelection(mInputEditText.getText().length());
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        switch(isValidChannel(mInputEditText.getText()))
        {
        default:
            return;

        case 0: // '\0'
            if(Integer.parseInt(mInputEditText.getText().toString().trim()) != 0);
            mListener.onFragEvent(228, mInputEditText.getText().toString().trim());
            return;

        case 1: // '\001'
        case 2: // '\002'
            mInputEditText.setText("");
            mInputEditText.setTextSize(2, 14F);
            Toast.makeText(getActivity(), 0x7f0702a3, 0).show();
            return;

        case 3: // '\003'
            mInputEditText.setText("");
            break;
        }
        mInputEditText.setTextSize(2, 14F);
        Toast.makeText(getActivity(), 0x7f0702f4, 0).show();
        return;
_L4:
        if(mInputEditText.length() > 0)
        {
            mInputEditText.setText(mInputEditText.getText().toString().trim());
            view = mInputEditText.getText().toString();
            mInputEditText.setText(view.substring(0, view.length() - 1));
            mInputEditText.setSelection(mInputEditText.getText().length());
        }
        if(mInputEditText.getText().length() == 0)
        {
            mInputEditText.setTextSize(2, 14F);
            return;
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        mLayoutView = layoutinflater.inflate(0x7f030019, null);
        initializeUI();
        return mLayoutView;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        if(mInputEditText != null && mInputEditText.getText().length() > 0)
            mInputEditText.setTextSize(2, 22F);
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
        MtvUtilDebug.Low("MtvUiChannelNumFrag", (new StringBuilder()).append("onUpdate: what[").append(i).append("]").toString());
        super.onUpdate(i, obj);
    }

    public void redraw()
    {
        super.redraw();
    }

    private static final int CHANNEL_INPUT_TEXT_EMPTY_ERROR = 1;
    private static final int CHANNEL_INPUT_TEXT_NOT_IN_RANGE = 2;
    private static final int CHANNEL_INPUT_TEXT_UNREGISTERED = 3;
    private static final int CHANNEL_INPUT_TEXT_VALID = 0;
    public static final int CHANNEL_MAX_LENGTH = 3;
    private static final int RSRC_BUTTON[] = {
        0x7f0a008c, 0x7f0a008e
    };
    private static final int RSRC_BUTTON_KEY[] = {
        0x7f0a008d, 0x7f0a0083, 0x7f0a0084, 0x7f0a0085, 0x7f0a0086, 0x7f0a0087, 0x7f0a0088, 0x7f0a0089, 0x7f0a008a, 0x7f0a008b
    };
    private static final String TAG = "MtvUiChannelNumFrag";
    private EditText mInputEditText;
    private final HashMap mKeyMap = new HashMap();
    private View mLayoutView;
    private com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener mListener;

}
