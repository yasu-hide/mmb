// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.fileplayer;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.ui.common.MtvUiFrag;
import com.samsung.sec.mtv.utility.MtvFeatures;
import com.samsung.sec.mtv.utility.MtvPreferences;

public class MtvUiFilePlayerImgFrag extends MtvUiFrag
    implements android.view.View.OnClickListener
{

    public MtvUiFilePlayerImgFrag()
    {
        isLocked = false;
        mPopupMenu = null;
        mIsPopupMenuShowing = false;
        mMenuButton = null;
        previousFile = "";
        nextFile = "";
    }

    public MtvUiFilePlayerImgFrag(int i)
    {
        boolean flag = true;
        MtvUiFilePlayerImgFrag();
        if(i != 1)
            flag = false;
        isLocked = flag;
    }

    private void initializeUI()
    {
        prevButton = (ImageButton)mLayoutView.findViewById(0x7f0a0091);
        prevButton.setOnClickListener(this);
        nextButton = (ImageButton)mLayoutView.findViewById(0x7f0a0092);
        nextButton.setOnClickListener(this);
    }

    private void initilizePopupForHoverEvents()
    {
        if(prevButton != null)
        {
            prevButton.setHoverPopupType(1);
            prevButton.getHoverPopupWindow().setHoverDetectTime(300);
            prevButton.getHoverPopupWindow().setPopupGravity(12337);
            prevButton.getHoverPopupWindow().setPopupPosOffset(0, -10);
        }
        if(nextButton != null)
        {
            nextButton.setHoverPopupType(1);
            nextButton.getHoverPopupWindow().setHoverDetectTime(300);
            nextButton.getHoverPopupWindow().setPopupGravity(12337);
            nextButton.getHoverPopupWindow().setPopupPosOffset(0, -10);
        }
        nextFile = mPreferences.getNextFileInfo();
        if(nextButton != null)
            nextButton.setContentDescription(nextFile);
        previousFile = mPreferences.getPreFileInfo();
        if(prevButton != null)
            prevButton.setContentDescription(previousFile);
    }

    private void updateFragmentsBasedOnLockState(boolean flag)
    {
        if(prevButton != null)
            prevButton.setEnabled(flag);
        if(nextButton != null)
            nextButton.setEnabled(flag);
        if(mMenuButton != null)
            mMenuButton.setEnabled(flag);
    }

    public void onAttach(Activity activity)
    {
        onAttach(activity);
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
        switch(view.getId())
        {
        default:
            return;

        case 2131361937: 
            mListener.onFragEvent(277, null);
            return;

        case 2131361938: 
            mListener.onFragEvent(276, null);
            break;
        }
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        mPreferences = new MtvPreferences(getActivity().getApplicationContext());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        mLayoutView = layoutinflater.inflate(0x7f03001a, null);
        initializeUI();
        if(MtvFeatures.isHoverEnabled())
            initilizePopupForHoverEvents();
        return mLayoutView;
    }

    public void onDetach()
    {
        if(mIsPopupMenuShowing && mPopupMenu != null)
            mPopupMenu.dismiss();
        onDetach();
    }

    public void onResume()
    {
        onResume();
        boolean flag;
        if(!isLocked)
            flag = true;
        else
            flag = false;
        updateFragmentsBasedOnLockState(flag);
    }

    public void onUpdate(int i, Object obj)
    {
        boolean flag1;
        flag1 = true;
        MtvUtilDebug.Low("MtvUiFilePlayerImgFrag", (new StringBuilder()).append("onUpdate: what[").append(i).append("]").toString());
        i;
        JVM INSTR lookupswitch 2: default 60
    //                   112: 67
    //                   237: 110;
           goto _L1 _L2 _L3
_L1:
        onUpdate(i, obj);
        return;
_L2:
        if(obj != null)
        {
            boolean flag2;
            if(!((Boolean)obj).booleanValue())
                flag2 = true;
            else
                flag2 = false;
            isLocked = flag2;
            updateFragmentsBasedOnLockState(((Boolean)obj).booleanValue());
        }
        continue; /* Loop/switch isn't completed */
_L3:
        boolean flag3 = MtvFeatures.isHoverEnabled();
        boolean flag;
        if(nextButton != null)
            flag = true;
        else
            flag = false;
        if(prevButton == null)
            flag1 = false;
        if(flag & flag3 & flag1)
        {
            nextButton.setContentDescription(mPreferences.getNextFileInfo());
            prevButton.setContentDescription(mPreferences.getPreFileInfo());
        }
        if(true) goto _L1; else goto _L4
_L4:
    }

    private static final String TAG = "MtvUiFilePlayerImgFrag";
    private boolean isLocked;
    private boolean mIsPopupMenuShowing;
    private View mLayoutView;
    private com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener mListener;
    private ImageButton mMenuButton;
    private PopupMenu mPopupMenu;
    private MtvPreferences mPreferences;
    private ImageButton nextButton;
    private String nextFile;
    private ImageButton prevButton;
    private String previousFile;
}
