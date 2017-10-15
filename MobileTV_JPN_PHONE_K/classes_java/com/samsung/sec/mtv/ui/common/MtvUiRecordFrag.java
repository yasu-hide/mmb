// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.os.*;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiFrag, MtvUiGenericPlayer

public class MtvUiRecordFrag extends MtvUiFrag
    implements android.view.View.OnClickListener, android.view.View.OnLongClickListener
{

    public MtvUiRecordFrag()
    {
        mRecDuration = null;
        mStopIcon = null;
        mRecScrDisp = null;
        mRecMainLayout = null;
        mPopupMenu = null;
        mIsPopupMenuShowing = false;
        mMenuButton = null;
        mMtvAudMgr = null;
        mRecMainLayoutVisibility = 0;
        mRecDurationVisibility = 0;
        mRecordFragHandler = new Handler() {

            public void handleMessage(Message message)
            {
                MtvUtilDebug.Mid("MtvUiRecordFrag", (new StringBuilder()).append("handleMessage : ").append(message.what).toString());
            }

            final MtvUiRecordFrag this$0;

            
            {
                this$0 = MtvUiRecordFrag.this;
                super();
            }
        }
;
        RunnableRemoveRecordTimer = new Runnable() {

            public void run()
            {
                mRecDuration.setVisibility(4);
            }

            final MtvUiRecordFrag this$0;

            
            {
                this$0 = MtvUiRecordFrag.this;
                super();
            }
        }
;
    }

    private void initializeUI()
    {
        mRecMainLayout = (RelativeLayout)mLayoutView.findViewById(0x7f0a00d7);
        mRecDuration = (TextView)mLayoutView.findViewById(0x7f0a00d6);
        mMenuButton = (ImageButton)mLayoutView.findViewById(0x7f0a0008);
        if(mMenuButton != null)
            mMenuButton.setOnClickListener(this);
        if(mRecMainLayout != null)
        {
            mRecMainLayout.setOnClickListener(this);
            mRecMainLayout.setOnLongClickListener(this);
        } else
        {
            MtvUtilDebug.Low("MtvUiRecordFrag", "initializeUI:mRecMainLayout : null ");
        }
        mStopIcon = (Button)mLayoutView.findViewById(0x7f0a00d8);
        if(mStopIcon != null)
            mStopIcon.setOnClickListener(this);
        else
            MtvUtilDebug.Low("MtvUiRecordFrag", "mStopIcon : null ");
        mRecScrDisp = (ImageButton)mLayoutView.findViewById(0x7f0a00da);
        if(mRecScrDisp != null)
            mRecScrDisp.setOnClickListener(this);
        else
            MtvUtilDebug.Low("MtvUiRecordFrag", "mRecScrDisp : null ");
        if(1 == MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext()) && mRecScrDisp != null)
        {
            mRecScrDisp.setOnClickListener(this);
            if(mPreferences.getDisplaySize() == 0)
                mRecScrDisp.setImageResource(0x7f020024);
            else
                mRecScrDisp.setImageResource(0x7f020025);
        }
        mRecordFragHandler.postDelayed(RunnableRemoveRecordTimer, 3000L);
    }

    private boolean isPhoneLocked()
    {
        boolean flag = false;
        if(getActivity() instanceof MtvUiGenericPlayer)
            flag = ((MtvUiGenericPlayer)getActivity()).isPhoneLocked();
        MtvUtilDebug.Low("MtvUiRecordFrag", (new StringBuilder()).append("isPhoneLocked : ").append(flag).toString());
        return flag;
    }

    private void updateRecordComponents(boolean flag, boolean flag1)
    {
        MtvUtilDebug.Low("MtvUiRecordFrag", (new StringBuilder()).append("updateRecordComponents: ").append(flag).toString());
        int i;
        int j;
        if(flag)
            i = 0;
        else
            i = 8;
        j = MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext());
        if(j == 1)
        {
            mRecMainLayout.setVisibility(i);
        } else
        {
            mRecMainLayout.setVisibility(0);
            if(mMenuButton != null)
                mMenuButton.setEnabled(flag);
            updateStopIcon();
        }
        if(!flag1)
            mRecDuration.setVisibility(i);
        else
        if(!flag && j == 1)
            mRecDuration.setVisibility(8);
        else
            mRecDuration.setVisibility(0);
        mRecMainLayoutVisibility = mRecMainLayout.getVisibility();
        mRecDurationVisibility = mRecDuration.getVisibility();
        if(mRecMainLayoutVisibility == 0 && j == 1)
            mListener.onFragEvent(231, null);
    }

    private void updateRecordComponentsVisibility()
    {
        mRecMainLayout.setVisibility(mRecMainLayoutVisibility);
        mRecDuration.setVisibility(mRecDurationVisibility);
        if(mRecMainLayoutVisibility == 0)
            mListener.onFragEvent(231, null);
    }

    private void updateStopIcon()
    {
        if(mStopIcon != null)
        {
            MtvUtilDebug.Low("MtvUiRecordFrag", "updateStopIcon ");
            if(!isPhoneLocked())
            {
                mStopIcon.setEnabled(true);
                return;
            } else
            {
                mStopIcon.setEnabled(false);
                return;
            }
        } else
        {
            MtvUtilDebug.Low("MtvUiRecordFrag", "updateStopIcon : View is NULL. Check & init again.!");
            return;
        }
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
        MtvUtilDebug.Low("MtvUiRecordFrag", "recScreen  onClick");
        switch(view.getId())
        {
        default:
            return;

        case 2131362011: 
        case 2131362012: 
        case 2131362013: 
        case 2131362014: 
            mListener.onFragEvent(221, null);
            return;

        case 2131362010: 
            MtvUtilDebug.Low("MtvUiRecordFrag", "recScreenDisp");
            if(mPreferences.getDisplaySize() == 0)
            {
                mListener.onFragEvent(201, Integer.valueOf(1));
                mPreferences.setDisplaySize(1);
                onUpdate(234, Integer.valueOf(1));
                return;
            } else
            {
                mListener.onFragEvent(201, Integer.valueOf(0));
                mPreferences.setDisplaySize(0);
                onUpdate(234, Integer.valueOf(0));
                return;
            }

        case 2131362008: 
            mListener.onFragEvent(230, null);
            return;

        case 2131361800: 
            showPopupMenu();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mContext = getActivity().getApplicationContext();
        mPreferences = new MtvPreferences(mContext);
        mMtvAudMgr = MtvUtilAudioManager.getInstance(mContext);
        mMtvPreferences = new MtvPreferences(getActivity());
        setRetainInstance(true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiRecordFrag", "onCreateView...");
        if(mMtvPreferences.isSViewCoverClosed())
            mLayoutView = layoutinflater.inflate(0x7f030028, null);
        else
            mLayoutView = layoutinflater.inflate(0x7f030027, null);
        initializeUI();
        updateRecordComponentsVisibility();
        return mLayoutView;
    }

    public void onDestroy()
    {
        mPreferences = null;
        super.onDestroy();
    }

    public void onDetach()
    {
        if(mIsPopupMenuShowing && mPopupMenu != null)
            mPopupMenu.dismiss();
        super.onDetach();
    }

    public boolean onLongClick(View view)
    {
        boolean flag = true;
        switch(view.getId())
        {
        case 2131362008: 
        case 2131362009: 
        case 2131362010: 
        default:
            flag = false;
            // fall through

        case 2131362007: 
            return flag;

        case 2131362011: 
        case 2131362012: 
        case 2131362013: 
        case 2131362014: 
            mMtvAudMgr.volumeMute();
            break;
        }
        mListener.onFragEvent(220, null);
        return true;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        if(!getActivity().isFinishing())
        {
            bundle.putInt("recMainLayoutVisibility", mRecMainLayoutVisibility);
            bundle.putInt("recDurationVisibility", mRecDurationVisibility);
        }
        super.onSaveInstanceState(bundle);
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
        MtvUtilDebug.Low("MtvUiRecordFrag", (new StringBuilder()).append("onUpdate: what[").append(i).append("]").toString());
        i;
        JVM INSTR lookupswitch 13: default 148
    //                   106: 148
    //                   107: 148
    //                   108: 148
    //                   111: 162
    //                   112: 177
    //                   125: 247
    //                   128: 375
    //                   129: 412
    //                   134: 419
    //                   135: 500
    //                   136: 566
    //                   234: 192
    //                   325: 155;
           goto _L1 _L1 _L1 _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
        super.onUpdate(i, obj);
        return;
_L11:
        updateStopIcon();
        continue; /* Loop/switch isn't completed */
_L2:
        updateRecordComponents(((Boolean)obj).booleanValue(), false);
        continue; /* Loop/switch isn't completed */
_L3:
        updateRecordComponents(((Boolean)obj).booleanValue(), true);
        continue; /* Loop/switch isn't completed */
_L10:
        int j;
        ImageButton imagebutton;
        if(obj != null)
            j = ((Integer)obj).intValue();
        else
            j = 0;
        imagebutton = (ImageButton)mLayoutView.findViewById(0x7f0a00da);
        if(j == 0)
            imagebutton.setImageResource(0x7f020024);
        else
            imagebutton.setImageResource(0x7f020025);
        continue; /* Loop/switch isn't completed */
_L4:
        int k = ((Integer)obj).intValue();
        if(k < 3600)
        {
            mRecDuration.setText(String.format("%02d:%02d:%02d", new Object[] {
                Integer.valueOf(k / 3600), Integer.valueOf(k / 60), Integer.valueOf(k % 60)
            }));
        } else
        {
            int j1 = k / 60;
            mRecDuration.setText(String.format("%02d:%02d:%02d", new Object[] {
                Integer.valueOf(k / 3600), Integer.valueOf(j1 % 60), Integer.valueOf(k % 60)
            }));
        }
        updateStopIcon();
        continue; /* Loop/switch isn't completed */
_L5:
        boolean flag = ((Boolean)obj).booleanValue();
        TextView textview = mRecDuration;
        int l;
        if(flag)
            l = 0;
        else
            l = 8;
        textview.setVisibility(l);
        continue; /* Loop/switch isn't completed */
_L6:
        showPopupMenu();
        continue; /* Loop/switch isn't completed */
_L7:
        if(mRecDuration != null)
            if(mRecDuration.isShown())
            {
                mRecDuration.setVisibility(4);
            } else
            {
                mRecDuration.setVisibility(0);
                if(mRecordFragHandler != null && obj != null)
                {
                    mRecordFragHandler.removeCallbacks(RunnableRemoveRecordTimer);
                    mRecordFragHandler.postDelayed(RunnableRemoveRecordTimer, ((Integer)obj).intValue());
                }
            }
        continue; /* Loop/switch isn't completed */
_L8:
        if(mRecDuration != null)
        {
            mRecDuration.setVisibility(0);
            if(mRecordFragHandler != null && obj != null)
            {
                int i1 = ((Integer)obj).intValue();
                mRecordFragHandler.removeCallbacks(RunnableRemoveRecordTimer);
                if(i1 > 0)
                    mRecordFragHandler.postDelayed(RunnableRemoveRecordTimer, i1);
            }
        }
        continue; /* Loop/switch isn't completed */
_L9:
        mListener.onFragEvent(136, null);
        if(true) goto _L1; else goto _L12
_L12:
    }

    public void redraw()
    {
        super.redraw();
    }

    public void showPopupMenu()
    {
        MtvUtilDebug.Low("MtvUiRecordFrag", "showPopupMenu()");
        mPopupMenu = new PopupMenu(getActivity(), mMenuButton);
        mPopupMenu.setOnMenuItemClickListener(new android.widget.PopupMenu.OnMenuItemClickListener() {

            public boolean onMenuItemClick(MenuItem menuitem)
            {
                ((MtvUiLivePlayer)getActivity()).onMenuItemSelected(0, menuitem);
                return false;
            }

            final MtvUiRecordFrag this$0;

            
            {
                this$0 = MtvUiRecordFrag.this;
                super();
            }
        }
);
        mPopupMenu.setOnDismissListener(new android.widget.PopupMenu.OnDismissListener() {

            public void onDismiss(PopupMenu popupmenu)
            {
                mIsPopupMenuShowing = false;
            }

            final MtvUiRecordFrag this$0;

            
            {
                this$0 = MtvUiRecordFrag.this;
                super();
            }
        }
);
        if(mIsPopupMenuShowing)
            mPopupMenu.dismiss();
        mPopupMenu.getMenu().clear();
        ((MtvUiLivePlayer)getActivity()).onCreatePanelMenu(0, mPopupMenu.getMenu());
        ((MtvUiLivePlayer)getActivity()).onPreparePanel(0, null, mPopupMenu.getMenu());
        mIsPopupMenuShowing = true;
        mPopupMenu.show();
    }

    public static final String RECORD_DURATION_VISIBILITY = "recDurationVisibility";
    public static final String RECORD_MAIN_LAYOUT_VISIBILITY = "recMainLayoutVisibility";
    public static final String RECORD_TIME = "recordTime";
    private static final String TAG = "MtvUiRecordFrag";
    private Runnable RunnableRemoveRecordTimer;
    private Context mContext;
    private boolean mIsPopupMenuShowing;
    private View mLayoutView;
    private MtvUiFrag.IMtvFragEventListener mListener;
    private ImageButton mMenuButton;
    private MtvUtilAudioManager mMtvAudMgr;
    private MtvPreferences mMtvPreferences;
    private PopupMenu mPopupMenu;
    private MtvPreferences mPreferences;
    private TextView mRecDuration;
    private int mRecDurationVisibility;
    private RelativeLayout mRecMainLayout;
    private int mRecMainLayoutVisibility;
    private ImageButton mRecScrDisp;
    private Handler mRecordFragHandler;
    private Button mStopIcon;


/*
    static boolean access$002(MtvUiRecordFrag mtvuirecordfrag, boolean flag)
    {
        mtvuirecordfrag.mIsPopupMenuShowing = flag;
        return flag;
    }

*/

}
