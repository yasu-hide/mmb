// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.bml;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.bml.MtvAppBml;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.utility.MtvUtilAppService;

// Referenced classes of package com.samsung.sec.mtv.ui.bml:
//            IMtvUiBmlActivity

public class MtvUiBmlBasicControlFrag extends MtvUiFrag
    implements android.view.View.OnClickListener, android.view.View.OnLongClickListener, android.view.View.OnTouchListener
{

    public MtvUiBmlBasicControlFrag()
    {
        mHandler = new Handler();
        mBtnCntrlUp = null;
        mBtnCntrlDown = null;
        mBtnCntrlSelect = null;
        mBtnCntrlBack = null;
        mCntrlFragView = null;
        mListener = null;
        mRunnableBMLCtrlUp = new Runnable() {

            public void run()
            {
                if(MtvUiBmlBasicControlFrag.mBmlApp != null)
                    MtvUiBmlBasicControlFrag.mBmlApp.onKeyEvent(new KeyEvent(0, 19));
                if(mHandler != null)
                    mHandler.postDelayed(mRunnableBMLCtrlUp, 200L);
            }

            final MtvUiBmlBasicControlFrag this$0;

            
            {
                this$0 = MtvUiBmlBasicControlFrag.this;
                super();
            }
        }
;
        mRunnableBMLCtrlDown = new Runnable() {

            public void run()
            {
                if(MtvUiBmlBasicControlFrag.mBmlApp != null)
                    MtvUiBmlBasicControlFrag.mBmlApp.onKeyEvent(new KeyEvent(0, 20));
                if(mHandler != null)
                    mHandler.postDelayed(mRunnableBMLCtrlDown, 200L);
            }

            final MtvUiBmlBasicControlFrag this$0;

            
            {
                this$0 = MtvUiBmlBasicControlFrag.this;
                super();
            }
        }
;
    }

    public static void hide()
    {
        if(mFragHandler != null)
            mFragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLBASIC);
    }

    public static void setAppcomponents(MtvAppBml mtvappbml, MtvUiFragHandler mtvuifraghandler)
    {
        mBmlApp = mtvappbml;
        mFragHandler = mtvuifraghandler;
    }

    public static void show()
    {
        if(mFragHandler != null)
            mFragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLBASIC, -1L, false, new int[0]);
    }

    public void cancelBMLLongClick()
    {
        if(mHandler != null)
        {
            mHandler.removeCallbacks(mRunnableBMLCtrlUp);
            MtvUtilDebug.Mid("MtvUiBmlBasicControlFrag", "ACTION_UP. removeCallbacks Left");
            mHandler.removeCallbacks(mRunnableBMLCtrlDown);
        }
    }

    public void init()
    {
        RelativeLayout relativelayout = (RelativeLayout)mCntrlFragView.findViewById(0x7f0a009c);
        if(relativelayout != null)
        {
            relativelayout.setOnTouchListener(this);
            relativelayout.setOnLongClickListener(this);
        }
        mBtnCntrlUp = (ImageButton)mCntrlFragView.findViewById(0x7f0a009d);
        if(mBtnCntrlUp != null)
        {
            mBtnCntrlUp.setOnTouchListener(this);
            mBtnCntrlUp.setOnLongClickListener(this);
        }
        mBtnCntrlDown = (ImageButton)mCntrlFragView.findViewById(0x7f0a009f);
        if(mBtnCntrlDown != null)
        {
            mBtnCntrlDown.setOnTouchListener(this);
            mBtnCntrlDown.setOnLongClickListener(this);
        }
        mBtnCntrlSelect = (Button)mCntrlFragView.findViewById(0x7f0a00a1);
        if(mBtnCntrlSelect != null)
            mBtnCntrlSelect.setOnTouchListener(this);
        mBtnCntrlBack = (Button)mCntrlFragView.findViewById(0x7f0a00a2);
        if(mBtnCntrlBack != null)
            mBtnCntrlBack.setOnTouchListener(this);
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
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        mCntrlFragView = layoutinflater.inflate(0x7f03001d, viewgroup, false);
        init();
        return mCntrlFragView;
    }

    public void onDestroy()
    {
        if(mHandler != null)
            mHandler = null;
        if(mBtnCntrlUp != null)
            mBtnCntrlUp = null;
        if(mBtnCntrlDown != null)
            mBtnCntrlDown = null;
        if(mBtnCntrlSelect != null)
            mBtnCntrlSelect = null;
        if(mBtnCntrlBack != null)
            mBtnCntrlBack = null;
        if(mCntrlFragView != null)
            mCntrlFragView = null;
        super.onDestroy();
    }

    public boolean onLongClick(View view)
    {
        if(0x7f0a009d != view.getId()) goto _L2; else goto _L1
_L1:
        mHandler.post(mRunnableBMLCtrlUp);
        MtvUtilDebug.Mid("MtvUiBmlBasicControlFrag", "mRunnableBMLCtrlUp RUN. ");
_L4:
        return true;
_L2:
        if(0x7f0a009f == view.getId())
        {
            mHandler.post(mRunnableBMLCtrlDown);
            MtvUtilDebug.Mid("MtvUiBmlBasicControlFrag", "mRunnableBMLCtrlDown RUN. ");
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        MtvUtilDebug.Low("MtvUiBmlBasicControlFrag", (new StringBuilder()).append("onSelected item=").append(menuitem).toString());
        char c;
        if(menuitem.getItemId() == 13)
            c = '\323';
        else
        if(menuitem.getItemId() == 14)
            c = '\324';
        else
        if(menuitem.getItemId() == 15)
            c = '\325';
        else
            return false;
        mListener.onFragEvent(c, null);
        return true;
    }

    public void onPrepareOptionsMenu(Menu menu)
    {
        MtvUtilDebug.Low("MtvUiBmlBasicControlFrag", "onCreateOptionsMenu");
        if(MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext()) == 0)
        {
            MtvUtilDebug.Low("MtvUiBmlBasicControlFrag", "onCreateOptionsMenu portrait");
            if(((IMtvUiBmlActivity)getActivity()).isBmlFullView() && mFragHandler != null && mFragHandler.getActivityType() == 0)
            {
                MtvUtilDebug.Low("MtvUiBmlBasicControlFrag", "onCreateOptionsMenu: isBmlFullView TRUE ");
                menu.clear();
                menu.add(0, 15, 0, getActivity().getApplicationContext().getString(0x7f070248)).setIcon(0x7f0200bc);
                menu.add(0, 14, 0, getActivity().getApplicationContext().getString(0x7f070305)).setIcon(0x7f0200ad);
                menu.add(0, 13, 0, getActivity().getApplicationContext().getString(0x7f0701f1)).setIcon(0x7f0200b8);
            }
        }
        super.onPrepareOptionsMenu(menu);
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i;
        i = view.getId();
        if((getActivity() instanceof MtvUiGenericPlayer) && ((MtvUiGenericPlayer)getActivity()).isPhoneLocked())
        {
            MtvUtilDebug.Low("MtvUiBmlBasicControlFrag", "onTouchEvent: Phone is locked return ");
            return true;
        }
        if((motionevent.getAction() == 3 || motionevent.getAction() == 1) && (0x7f0a009d == i || 0x7f0a009f == i))
            cancelBMLLongClick();
        i;
        JVM INSTR tableswitch 2131361949 2131361954: default 108
    //                   2131361949 110
    //                   2131361950 108
    //                   2131361951 138
    //                   2131361952 108
    //                   2131361953 193
    //                   2131361954 166;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L5
_L1:
        return false;
_L2:
        if(mBmlApp != null)
            mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 19));
        continue; /* Loop/switch isn't completed */
_L3:
        if(mBmlApp != null)
            mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 20));
        continue; /* Loop/switch isn't completed */
_L5:
        if(mBmlApp != null)
            mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 4));
        continue; /* Loop/switch isn't completed */
_L4:
        if(mBmlApp != null)
            mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 23));
        if(true) goto _L1; else goto _L6
_L6:
    }

    public void onUpdate(int i, Object obj)
    {
        super.onUpdate(i, obj);
    }

    public void redraw()
    {
    }

    private static final String TAG = "MtvUiBmlBasicControlFrag";
    private static MtvAppBml mBmlApp = null;
    private static MtvUiFragHandler mFragHandler = null;
    private Button mBtnCntrlBack;
    private ImageButton mBtnCntrlDown;
    private Button mBtnCntrlSelect;
    private ImageButton mBtnCntrlUp;
    private View mCntrlFragView;
    private Handler mHandler;
    private com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener mListener;
    private Runnable mRunnableBMLCtrlDown;
    private Runnable mRunnableBMLCtrlUp;





}
