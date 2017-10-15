// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.bml;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.os.Bundle;
import android.view.*;
import com.samsung.sec.mtv.app.bml.MtvAppBml;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.utility.MtvUtilAppService;
import java.util.HashMap;

// Referenced classes of package com.samsung.sec.mtv.ui.bml:
//            IMtvUiBmlActivity

public class MtvUiBmlNumKeyPadFragment extends MtvUiFrag
    implements android.view.View.OnClickListener, android.view.View.OnLongClickListener, android.view.View.OnTouchListener
{

    public MtvUiBmlNumKeyPadFragment()
    {
        mCntrlFragView = null;
        mListener = null;
    }

    public static void hide()
    {
        if(mFragHandler != null)
            mFragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLNUMIN);
    }

    public static void setAppcomponents(MtvAppBml mtvappbml, MtvUiFragHandler mtvuifraghandler)
    {
        mBmlApp = mtvappbml;
        mFragHandler = mtvuifraghandler;
    }

    public static void show()
    {
        if(mFragHandler != null)
            mFragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLNUMIN, -1L, false, new int[0]);
    }

    public void init()
    {
        MtvUtilDebug.Low("MtvUiBmlNumKeyPadFragment", "init: ");
        for(int i = 0; i < RSRC_NUMERIC_BUTTON_KEY.length; i++)
            mKeyMap.put(Integer.valueOf(RSRC_NUMERIC_BUTTON_KEY[i]), Integer.valueOf(i));

        for(int j = 0; j < RSRC_NUMERIC_BUTTON_KEY.length; j++)
            mCntrlFragView.findViewById(RSRC_NUMERIC_BUTTON_KEY[j]).setOnClickListener(this);

        for(int k = 0; k < RSRC_NUMERIC_BUTTON_KEY.length; k++)
            mCntrlFragView.findViewById(RSRC_NUMERIC_BUTTON_KEY[k]).setOnTouchListener(this);

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
        mCntrlFragView = layoutinflater.inflate(0x7f030021, viewgroup, false);
        init();
        return mCntrlFragView;
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public boolean onLongClick(View view)
    {
        return false;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        MtvUtilDebug.Low("MtvUiBmlNumKeyPadFragment", (new StringBuilder()).append("onSelected item=").append(menuitem).toString());
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
        MtvUtilDebug.Low("MtvUiBmlNumKeyPadFragment", "onCreateOptionsMenu");
        if(MtvUtilAppService.getCurrentOrientation(getActivity().getApplicationContext()) == 0)
        {
            MtvUtilDebug.Low("MtvUiBmlNumKeyPadFragment", "onCreateOptionsMenu portrait");
            if(((IMtvUiBmlActivity)getActivity()).isBmlFullView() && mFragHandler != null && mFragHandler.getActivityType() == 0)
            {
                MtvUtilDebug.Low("MtvUiBmlNumKeyPadFragment", "onCreateOptionsMenu: isBmlFullView TRUE ");
                menu.clear();
                menu.add(0, 14, 0, getActivity().getApplicationContext().getString(0x7f070305)).setIcon(0x7f0200ad);
                menu.add(0, 15, 0, getActivity().getApplicationContext().getString(0x7f070248)).setIcon(0x7f0200bc);
                menu.add(0, 13, 0, getActivity().getApplicationContext().getString(0x7f0701f1)).setIcon(0x7f0200b8);
            }
        }
        super.onPrepareOptionsMenu(menu);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if(!(getActivity() instanceof MtvUiGenericPlayer) || !((MtvUiGenericPlayer)getActivity()).isPhoneLocked()) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiBmlNumKeyPadFragment", "onTouch: Phone is locked return ");
_L17:
        return false;
_L2:
        view.getId();
        JVM INSTR tableswitch 2131361957 2131361968: default 100
    //                   2131361957 102
    //                   2131361958 156
    //                   2131361959 183
    //                   2131361960 210
    //                   2131361961 237
    //                   2131361962 264
    //                   2131361963 291
    //                   2131361964 318
    //                   2131361965 345
    //                   2131361966 372
    //                   2131361967 129
    //                   2131361968 399;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L15:
        continue; /* Loop/switch isn't completed */
_L3:
        return false;
_L4:
        if(mBmlApp == null) goto _L17; else goto _L16
_L16:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 8));
        return false;
_L14:
        if(mBmlApp == null) goto _L17; else goto _L18
_L18:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 7));
        return false;
_L5:
        if(mBmlApp == null) goto _L17; else goto _L19
_L19:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 9));
        return false;
_L6:
        if(mBmlApp == null) goto _L17; else goto _L20
_L20:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 10));
        return false;
_L7:
        if(mBmlApp == null) goto _L17; else goto _L21
_L21:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 11));
        return false;
_L8:
        if(mBmlApp == null) goto _L17; else goto _L22
_L22:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 12));
        return false;
_L9:
        if(mBmlApp == null) goto _L17; else goto _L23
_L23:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 13));
        return false;
_L10:
        if(mBmlApp == null) goto _L17; else goto _L24
_L24:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 14));
        return false;
_L11:
        if(mBmlApp == null) goto _L17; else goto _L25
_L25:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 15));
        return false;
_L12:
        if(mBmlApp == null) goto _L17; else goto _L26
_L26:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 16));
        return false;
_L13:
        if(mBmlApp == null) goto _L17; else goto _L27
_L27:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 17));
        return false;
        if(mBmlApp == null) goto _L17; else goto _L28
_L28:
        mBmlApp.onKeyEvent(new KeyEvent(motionevent.getAction(), 18));
        return false;
    }

    private static final int RSRC_NUMERIC_BUTTON_KEY[] = {
        0x7f0a00af, 0x7f0a00a5, 0x7f0a00a6, 0x7f0a00a7, 0x7f0a00a8, 0x7f0a00a9, 0x7f0a00aa, 0x7f0a00ab, 0x7f0a00ac, 0x7f0a00ad, 
        0x7f0a00ae, 0x7f0a00b0
    };
    private static final String TAG = "MtvUiBmlNumKeyPadFragment";
    private static MtvAppBml mBmlApp = null;
    private static MtvUiFragHandler mFragHandler = null;
    private View mCntrlFragView;
    private final HashMap mKeyMap = new HashMap();
    private com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener mListener;

}
