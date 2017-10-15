// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.app.AlertDialog;
import android.content.*;
import android.content.res.Resources;
import android.graphics.Rect;
import android.location.*;
import android.os.*;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.widget.*;
import java.io.UnsupportedEncodingException;
import java.util.List;

// Referenced classes of package com.access.bml:
//            BMLView

public class BMLHandleCommandProc
{

    public BMLHandleCommandProc(Context context, BMLView bmlview)
    {
        mToast = null;
        mPackageName = null;
        mPrefs = null;
        mAlertDial = null;
        mPos_Info = null;
        mPosProvider = "";
        mPrefsSettings = null;
        posProvider = "";
        mNotifyConnection = 255;
        mLocationInfo = 255;
        mPopupPrevent = false;
        locationListener = new LocationListener() {

            public void onLocationChanged(Location location)
            {
                if(location != null)
                {
                    mBmlView.mLocation = location;
                    mBmlView.mPosResult = 0;
                    return;
                } else
                {
                    mBmlView.mLocation = null;
                    mBmlView.mPosResult = -2;
                    return;
                }
            }

            public void onProviderDisabled(String s)
            {
            }

            public void onProviderEnabled(String s)
            {
            }

            public void onStatusChanged(String s, int i, Bundle bundle)
            {
                mLocationManager.removeUpdates(locationListener);
                mLocationManager.requestLocationUpdates(s, 1000L, 0.0F, locationListener);
            }

            final BMLHandleCommandProc this$0;

            
            {
                this$0 = BMLHandleCommandProc.this;
                super();
            }
        }
;
        mContext = context;
        mBmlView = bmlview;
        mPackageName = mContext.getPackageName();
        mPrefs = mContext.getSharedPreferences(mPackageName, 0);
        mPrefsSettings = mContext.getSharedPreferences("com.samsung.sec.mtv.utility", 1);
    }

    private int GetConnectionSettingPref()
    {
        return mPrefsSettings.getInt("pref_broadcast_notify", 1);
    }

    private int GetIRDIDSettingPref()
    {
        return mPrefsSettings.getInt("pref_broadcast_manufacture", 1);
    }

    private int GetLocationSettingPref()
    {
        return mPrefsSettings.getInt("pref_broadcast_location", 1);
    }

    private void NotifyContentError(int i, BMLCommandType.TBrowserCommand_ContentError tbrowsercommand_contenterror)
    {
        String s;
        Object obj;
        obj = null;
        s = obj;
        tbrowsercommand_contenterror.fErrorCode;
        JVM INSTR lookupswitch 37: default 316
    //                   -1200: 830
    //                   -1199: 820
    //                   -1198: 840
    //                   -1100: 790
    //                   -1099: 800
    //                   -1098: 810
    //                   -600: 780
    //                   -599: 518
    //                   -598: 440
    //                   -597: 770
    //                   -596: 323
    //                   -200: 370
    //                   -199: 370
    //                   -198: 370
    //                   -197: 370
    //                   -196: 380
    //                   -195: 380
    //                   -194: 380
    //                   -193: 380
    //                   -192: 390
    //                   -191: 390
    //                   -190: 390
    //                   -189: 390
    //                   -188: 400
    //                   -187: 380
    //                   -186: 410
    //                   -185: 420
    //                   -184: 430
    //                   -183: 430
    //                   -182: 430
    //                   -181: 440
    //                   -180: 498
    //                   -179: 508
    //                   -178: 508
    //                   -176: 440
    //                   -6: 360
    //                   -1: 350;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L13 _L13 _L13 _L14 _L14 _L14 _L14 _L15 _L15 _L15 _L15 _L16 _L14 _L17 _L18 _L19 _L19 _L19 _L10 _L20 _L21 _L21 _L10 _L22 _L23
_L4:
        break MISSING_BLOCK_LABEL_840;
_L12:
        break; /* Loop/switch isn't completed */
_L1:
        s = getAppResString("unknown_error");
_L24:
        if(s != null)
            noti(s);
        if(tbrowsercommand_contenterror.fErrorCode == -1099)
        {
            Reply_Popup(i, false, null);
            return;
        } else
        {
            Reply_Popup(i, true, null);
            return;
        }
_L23:
        s = getAppResString("unknown_error");
          goto _L24
_L22:
        s = getAppResString("unknown_error");
          goto _L24
_L13:
        s = getAppResString("connection_failed");
          goto _L24
_L14:
        s = getAppResString("connection_interrupted");
          goto _L24
_L15:
        s = getAppResString("error_ssl_connect");
          goto _L24
_L16:
        s = getAppResString("timeout");
          goto _L24
_L17:
        s = getAppResString("error_cache_none");
          goto _L24
_L18:
        s = getAppResString("error_cache_expire");
          goto _L24
_L19:
        s = getAppResString("error_auth_unknown");
          goto _L24
_L10:
        switch(tbrowsercommand_contenterror.fStatusCode)
        {
        default:
            s = getAppResString("syntax_error");
            break;

        case 301: 
            s = getAppResString("error_invalid_data_301");
            break;

        case 302: 
            s = getAppResString("error_invalid_data_302");
            break;
        }
        if(true) goto _L24; else goto _L25
_L25:
_L20:
        s = getAppResString("loading_canceled");
          goto _L24
_L21:
        s = getAppResString("error_sizeover");
          goto _L24
_L9:
        s = obj;
        switch(tbrowsercommand_contenterror.fStatusCode)
        {
        default:
            s = getAppResString("syntax_error");
            break;

        case 204: 
            s = getAppResString("error_no_content_204");
            break;

        case 205: 
            s = getAppResString("error_no_content_205");
            break;

        case 400: 
            s = getAppResString("error_bad_request");
            break;

        case 403: 
            s = getAppResString("error_auth_connection");
            break;

        case 404: 
            s = getAppResString("error_content_notfound");
            break;

        case 405: 
            s = getAppResString("error_method_notallowed");
            break;

        case 408: 
            s = getAppResString("error_no_response");
            break;

        case 411: 
            s = getAppResString("error_length_required");
            break;

        case 412: 
            s = getAppResString("error_precondition_failed");
            break;

        case 413: 
            s = getAppResString("error_too_large");
            break;

        case 504: 
            s = getAppResString("error_gateway_timeout");
            break;

        case 505: 
            s = getAppResString("error_http_version");
            break;

        case 401: 
            break;
        }
        if(true) goto _L24; else goto _L26
_L26:
_L11:
        s = getAppResString("error_too_many_auth");
          goto _L24
_L8:
        s = getAppResString("error_total_sizeover");
          goto _L24
_L5:
        s = getAppResString("error_aribdc_open");
          goto _L24
_L6:
        s = getAppResString("error_aribdc_read");
          goto _L24
_L7:
        s = getAppResString("timeout");
          goto _L24
_L3:
        s = getAppResString("error_domain");
          goto _L24
_L2:
        s = getAppResString("error_crossmedia");
          goto _L24
        if(mBmlView.BML_IsTuneByBookmark())
            s = getAppResString("error_broadcast_transition_tvlink");
        else
            s = getAppResString("error_broadcast_transition");
          goto _L24
    }

    private void Reply_Popup(int i, boolean flag, Object obj)
    {
        i;
        JVM INSTR lookupswitch 14: default 124
    //                   0: 152
    //                   2: 518
    //                   3: 456
    //                   4: 188
    //                   6: 320
    //                   7: 487
    //                   10: 394
    //                   11: 425
    //                   23: 580
    //                   27: 147
    //                   151: 549
    //                   152: 219
    //                   153: 363
    //                   154: 289;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L11:
        break; /* Loop/switch isn't completed */
_L1:
        obj = new BMLCommandType.TBrowserReplyType();
        obj.fCommandID = i;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
_L17:
        setAlertDialogToNull();
        return;
_L2:
        obj = new BMLCommandType.TBrowserReply_SetLocation();
        obj.fCommandID = i;
        obj.fDoRequestContent = flag;
        SetNotifyConnectUsersSelection(flag);
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L5:
        obj = new BMLCommandType.TBrowserReply_RedirectDialog();
        obj.fCommandID = i;
        obj.fDoRedirect = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L13:
        BMLCommandType.TBrowserReply_PermitFunction tbrowserreply_permitfunction = new BMLCommandType.TBrowserReply_PermitFunction();
        Log.d("HandleCommandProc", "Reply_Popup - PermitFunction.\n");
        if("X_DPA_getCurPos".equalsIgnoreCase((String)obj) && flag)
        {
            SetLocationInfo(flag);
            StartLocationService();
        }
        tbrowserreply_permitfunction.fCommandID = i;
        tbrowserreply_permitfunction.fDoPermit = flag;
        mBmlView.Browser_ReplyToCommand(i, tbrowserreply_permitfunction);
        continue; /* Loop/switch isn't completed */
_L15:
        obj = new BMLCommandType.TBrowserReply_WritePersistentArray();
        obj.fCommandID = i;
        obj.fDoWrite = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L6:
        if(obj != null)
        {
            obj = (BMLCommandType.TBrowserReply_AuthDialog)obj;
        } else
        {
            obj = new BMLCommandType.TBrowserReply_AuthDialog();
            obj.fCommandID = i;
            obj.fConfirmed = false;
        }
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L14:
        obj = new BMLCommandType.TBrowserReply_WriteBookmark();
        obj.fCommandID = i;
        obj.fDoWrite = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L8:
        obj = new BMLCommandType.TBrowserReply_JSConfirmDialog();
        obj.fCommandID = i;
        obj.fConfirmed = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L9:
        obj = new BMLCommandType.TBrowserReply_JSPromptDialog();
        obj.fCommandID = i;
        obj.fConfirmed = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L4:
        obj = new BMLCommandType.TBrowserReply_CookieDialog();
        obj.fCommandID = i;
        obj.fAcceptCookie = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L7:
        obj = new BMLCommandType.TBrowserReply_ServerCertConfirmDialog();
        obj.fCommandID = i;
        obj.fConfirmed = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L3:
        obj = new BMLCommandType.TBrowserReply_HistoryBackForw();
        obj.fCommandID = i;
        obj.fDoHistoryBackForw = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L12:
        obj = new BMLCommandType.TBrowserReply_SystemRecover();
        obj.fCommandID = i;
        obj.fSelectedAction = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        continue; /* Loop/switch isn't completed */
_L10:
        obj = new BMLCommandType.TBrowserReply_ContentError();
        obj.fCommandID = i;
        obj.fErrorRecovery = flag;
        mBmlView.Browser_ReplyToCommand(i, ((BMLCommandType.TBrowserReplyType) (obj)));
        if(true) goto _L17; else goto _L16
_L16:
    }

    private void SetLocationInfo(boolean flag)
    {
        int i = 1;
        if(GetLocationSettingPref() == 1)
        {
            if(!flag)
                i = 0;
            mLocationInfo = i;
        }
    }

    private void SetNotifyConnectUsersSelection(boolean flag)
    {
        int i = 1;
        if(GetConnectionSettingPref() == 1)
        {
            if(!flag)
                i = 0;
            mNotifyConnection = i;
        }
    }

    private void ShowAuthPopup(final int cmdID, final String title, final BMLCommandType.TBrowserCommand_AuthDialog cmd)
    {
        if(handler == null)
        {
            Log.d("HandleCommandProc", "[ShowAuthPopup] handler is NULL\n");
            Reply_Popup(cmdID, false, null);
            return;
        } else
        {
            handler.post(new Runnable() {

                public void run()
                {
                    if(mContext == null)
                    {
                        return;
                    } else
                    {
                        LinearLayout linearlayout = new LinearLayout(mContext);
                        TextView textview = new TextView(mContext);
                        final EditText etUser = new EditText(mContext);
                        TextView textview1 = new TextView(mContext);
                        final EditText etPw = new EditText(mContext);
                        textview.setTextSize(2, 20F);
                        textview1.setTextSize(2, 20F);
                        linearlayout.addView(textview);
                        linearlayout.addView(etUser);
                        linearlayout.addView(textview1);
                        linearlayout.addView(etPw);
                        linearlayout.setOrientation(1);
                        etUser.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1, 0.0F));
                        etPw.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1, 0.0F));
                        etPw.setTransformationMethod(new PasswordTransformationMethod());
                        textview.setText(getAppResString("userid"));
                        etUser.setText(cmd.fUserName);
                        textview1.setText(getAppResString("password"));
                        etPw.setText(cmd.fPassword);
                        mAlertDial = (new android.app.AlertDialog.Builder(mContext)).setTitle(title).setView(linearlayout).setPositiveButton(getAppResString("button_ok"), cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                dialoginterface = new BMLCommandType.TBrowserReply_AuthDialog();
                                dialoginterface.fConfirmed = true;
                                dialoginterface.fUserName = etUser.getText().toString();
                                dialoginterface.fPassword = etPw.getText().toString();
                                Reply_Popup(cmdID, true, dialoginterface);
                            }

                            final _cls7 this$1;
                            private final int val$cmdID;
                            private final EditText val$etPw;
                            private final EditText val$etUser;

            
            {
                this$1 = final__pcls7;
                etUser = edittext;
                etPw = edittext1;
                cmdID = I.this;
                super();
            }
                        }
).setNegativeButton(getAppResString("button_cancel"), cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls7 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls7;
                cmdID = I.this;
                super();
            }
                        }
).setOnCancelListener(cmdID. new android.content.DialogInterface.OnCancelListener() {

                            public void onCancel(DialogInterface dialoginterface)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls7 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls7;
                cmdID = I.this;
                super();
            }
                        }
).show();
                        return;
                    }
                }

                final BMLHandleCommandProc this$0;
                private final BMLCommandType.TBrowserCommand_AuthDialog val$cmd;
                private final int val$cmdID;
                private final String val$title;


            
            {
                this$0 = BMLHandleCommandProc.this;
                cmd = tbrowsercommand_authdialog;
                title = s;
                cmdID = i;
                super();
            }
            }
);
            return;
        }
    }

    private void ShowOkCancelPopup(int i, String s, String s1)
    {
        ShowTwoButtonPopup(i, s, s1, getAppResString("button_ok"), getAppResString("button_cancel"));
    }

    private void ShowProgressPopup(final boolean bShow)
    {
        if(handler == null)
        {
            Log.d("HandleCommandProc", "[ShowProgressPopup] handler is NULL\n");
            return;
        } else
        {
            handler.post(new Runnable() {

                public void run()
                {
                    if(mContext != null) goto _L2; else goto _L1
_L1:
                    return;
_L2:
                    if(!bShow)
                        continue; /* Loop/switch isn't completed */
                    if(mBmlView.mProgressBar != null) goto _L1; else goto _L3
_L3:
                    Rect rect = mBmlView.Browser_GetRect();
                    android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(60, 60, 0);
                    layoutparams.topMargin = (rect.height() - 60) / 2;
                    layoutparams.leftMargin = (rect.width() - 60) / 2;
                    mBmlView.mProgressBar = new ProgressBar(mContext);
                    mBmlView.addView(mBmlView.mProgressBar, layoutparams);
                    return;
                    if(mBmlView.mProgressBar == null) goto _L1; else goto _L4
_L4:
                    mBmlView.removeView(mBmlView.mProgressBar);
                    mBmlView.mProgressBar.setVisibility(8);
                    mBmlView.mProgressBar = null;
                    return;
                }

                final BMLHandleCommandProc this$0;
                private final boolean val$bShow;

            
            {
                this$0 = BMLHandleCommandProc.this;
                bShow = flag;
                super();
            }
            }
);
            return;
        }
    }

    private void ShowThreeButtonPopup(final int cmdID, final String permissionID, final String title, final String msg, final String positiveBtn, final String negativeBtn, final String neutralBtn)
    {
        if(handler == null)
        {
            Log.d("HandleCommandProc", "[ShowThreeButtonPopup] handler is NULL\n");
            Reply_Popup(cmdID, false, null);
            return;
        } else
        {
            handler.post(new Runnable() {

                public void run()
                {
                    if(mContext == null)
                    {
                        return;
                    } else
                    {
                        mAlertDial = (new android.app.AlertDialog.Builder(mContext)).setTitle(title).setIconAttribute(0x1010355).setMessage(msg).setPositiveButton(positiveBtn, cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, true, null);
                            }

                            final _cls6 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls6;
                cmdID = I.this;
                super();
            }
                        }
).setNegativeButton(negativeBtn, cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls6 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls6;
                cmdID = I.this;
                super();
            }
                        }
).setNeutralButton(neutralBtn, cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                android.content.SharedPreferences.Editor editor = mPrefs.edit();
                                editor.putBoolean(permissionID, true);
                                editor.commit();
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, true, null);
                            }

                            final _cls6 this$1;
                            private final int val$cmdID;
                            private final String val$permissionID;

            
            {
                this$1 = final__pcls6;
                permissionID = s;
                cmdID = I.this;
                super();
            }
                        }
).setOnCancelListener(cmdID. new android.content.DialogInterface.OnCancelListener() {

                            public void onCancel(DialogInterface dialoginterface)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls6 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls6;
                cmdID = I.this;
                super();
            }
                        }
).show();
                        return;
                    }
                }

                final BMLHandleCommandProc this$0;
                private final int val$cmdID;
                private final String val$msg;
                private final String val$negativeBtn;
                private final String val$neutralBtn;
                private final String val$permissionID;
                private final String val$positiveBtn;
                private final String val$title;


            
            {
                this$0 = BMLHandleCommandProc.this;
                title = s;
                msg = s1;
                positiveBtn = s2;
                negativeBtn = s3;
                neutralBtn = s4;
                cmdID = i;
                permissionID = s5;
                super();
            }
            }
);
            return;
        }
    }

    private void ShowTwoButtonPopup(final int cmdID, final String title, final String msg, final String positiveBtn, final String negativeBtn)
    {
        if(handler == null)
        {
            Log.d("HandleCommandProc", "[ShowTwoButtonPopup] handler is NULL\n");
            Reply_Popup(cmdID, false, null);
            return;
        } else
        {
            handler.post(new Runnable() {

                public void run()
                {
                    if(mContext == null)
                    {
                        return;
                    } else
                    {
                        mAlertDial = (new android.app.AlertDialog.Builder(mContext)).setTitle(title).setIconAttribute(0x1010355).setMessage(msg).setPositiveButton(positiveBtn, cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, true, null);
                            }

                            final _cls4 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls4;
                cmdID = I.this;
                super();
            }
                        }
).setNegativeButton(negativeBtn, cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls4 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls4;
                cmdID = I.this;
                super();
            }
                        }
).setOnCancelListener(cmdID. new android.content.DialogInterface.OnCancelListener() {

                            public void onCancel(DialogInterface dialoginterface)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls4 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls4;
                cmdID = I.this;
                super();
            }
                        }
).show();
                        return;
                    }
                }

                final BMLHandleCommandProc this$0;
                private final int val$cmdID;
                private final String val$msg;
                private final String val$negativeBtn;
                private final String val$positiveBtn;
                private final String val$title;


            
            {
                this$0 = BMLHandleCommandProc.this;
                title = s;
                msg = s1;
                positiveBtn = s2;
                negativeBtn = s3;
                cmdID = i;
                super();
            }
            }
);
            return;
        }
    }

    private void ShowTwoButtonPopup(final int cmdID, final String permissionID, final String title, final String msg, final String positiveBtn, final String negativeBtn)
    {
        if(handler == null)
        {
            Log.d("HandleCommandProc", "[ShowTwoButtonPopup] handler is NULL\n");
            Reply_Popup(cmdID, false, null);
            return;
        } else
        {
            handler.post(new Runnable() {

                public void run()
                {
                    if(mContext == null)
                    {
                        return;
                    } else
                    {
                        mAlertDial = (new android.app.AlertDialog.Builder(mContext)).setTitle(title).setIconAttribute(0x1010355).setMessage(msg).setPositiveButton(positiveBtn, permissionID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, true, permissionID);
                            }

                            final _cls5 this$1;
                            private final int val$cmdID;
                            private final String val$permissionID;

            
            {
                this$1 = final__pcls5;
                cmdID = i;
                permissionID = String.this;
                super();
            }
                        }
).setNegativeButton(negativeBtn, cmdID. new android.content.DialogInterface.OnClickListener() {

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls5 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls5;
                cmdID = I.this;
                super();
            }
                        }
).setOnCancelListener(cmdID. new android.content.DialogInterface.OnCancelListener() {

                            public void onCancel(DialogInterface dialoginterface)
                            {
                                dialoginterface.dismiss();
                                Reply_Popup(cmdID, false, null);
                            }

                            final _cls5 this$1;
                            private final int val$cmdID;

            
            {
                this$1 = final__pcls5;
                cmdID = I.this;
                super();
            }
                        }
).show();
                        return;
                    }
                }

                final BMLHandleCommandProc this$0;
                private final int val$cmdID;
                private final String val$msg;
                private final String val$negativeBtn;
                private final String val$permissionID;
                private final String val$positiveBtn;
                private final String val$title;


            
            {
                this$0 = BMLHandleCommandProc.this;
                title = s;
                msg = s1;
                positiveBtn = s2;
                negativeBtn = s3;
                cmdID = i;
                permissionID = s4;
                super();
            }
            }
);
            return;
        }
    }

    private void ShowYesNoPopup(int i, String s, String s1)
    {
        ShowTwoButtonPopup(i, s, s1, getAppResString("button_yes"), getAppResString("button_no"));
    }

    private void ShowYesNoPopup(int i, String s, String s1, String s2)
    {
        ShowThreeButtonPopup(i, s, s1, s2, getAppResString("button_yes"), getAppResString("button_no"), getAppResString("button_alwaysyes"));
    }

    private void ShowYesNoPopupEX(int i, String s, String s1, String s2)
    {
        ShowTwoButtonPopup(i, s, s1, s2, getAppResString("button_yes"), getAppResString("button_no"));
    }

    private void StartLocationService()
    {
        if(mPos_Info.compareTo("CB") != 0) goto _L2; else goto _L1
_L1:
        mPosProvider = "network";
_L6:
        mBmlView.mPosCount = 0.0D;
        mLocationManager = (LocationManager)mContext.getSystemService("location");
        if(!mLocationManager.getAllProviders().contains(mPosProvider))
            break MISSING_BLOCK_LABEL_182;
        mLocationManager.requestLocationUpdates(mPosProvider, 1000L, 0.0F, locationListener);
        mBmlView.mLocation = mLocationManager.getLastKnownLocation(mPosProvider);
        if(mBmlView.mLocation == null)
            break; /* Loop/switch isn't completed */
        mBmlView.mPosResult = 0;
_L4:
        return;
_L2:
        if(mPos_Info.compareTo("GPS") != 0) goto _L4; else goto _L3
_L3:
        mPosProvider = "gps";
        if(true) goto _L6; else goto _L5
_L5:
        mBmlView.mPosResult = -2;
        Log.i("HandleCommandProc", (new StringBuilder("Init(location info not found) : posResult:")).append(mBmlView.mPosResult).toString());
        return;
        mBmlView.mPosResult = -1;
        return;
    }

    private String getAppResString(String s)
    {
        int i = mContext.getResources().getIdentifier(s, "string", mPackageName);
        return mContext.getString(i);
    }

    private void noti(final String msg)
    {
        while(msg == null || mBmlView.m_bSuppressNotiPopup) 
            return;
        if(handler == null)
        {
            Log.d("HandleCommandProc", "[noti] handler is NULL\n");
            return;
        } else
        {
            handler.post(new Runnable() {

                public void run()
                {
                    if(mContext == null)
                        return;
                    if(mToast == null)
                        mToast = Toast.makeText(mContext, msg, 0);
                    else
                        mToast.setText(msg);
                    mToast.show();
                }

                final BMLHandleCommandProc this$0;
                private final String val$msg;

            
            {
                this$0 = BMLHandleCommandProc.this;
                msg = s;
                super();
            }
            }
);
            return;
        }
    }

    private void setAlertDialogToNull()
    {
        mAlertDial = null;
    }

    public int CommandHandler_HandleCommandProc(BMLCommandType.TBrowserCmdType tbrowsercmdtype, BMLCommandType.TBrowserReplyType tbrowserreplytype, Handler handler1)
    {
        int i;
        boolean flag;
        handler = mBmlView.getHandler();
        flag = false;
        i = ((flag) ? 1 : 0);
        tbrowsercmdtype.fCommandID;
        JVM INSTR lookupswitch 26: default 240
    //                   0: 247
    //                   1: 1620
    //                   2: 1855
    //                   3: 1442
    //                   4: 1221
    //                   5: 1579
    //                   6: 1275
    //                   7: 1661
    //                   9: 2147
    //                   10: 2177
    //                   11: 2208
    //                   18: 2267
    //                   21: 452
    //                   23: 594
    //                   26: 1462
    //                   27: 2576
    //                   150: 1411
    //                   151: 1962
    //                   152: 615
    //                   153: 2360
    //                   154: 244
    //                   155: 1993
    //                   156: 1380
    //                   157: 1297
    //                   158: 244
    //                   159: 244;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L22 _L22
_L22:
        break; /* Loop/switch isn't completed */
_L1:
        i = ((flag) ? 1 : 0);
_L26:
        return i;
_L2:
        tbrowserreplytype = new BMLCommandType.TBrowserReply_SetLocation();
        i = GetConnectionSettingPref();
        Log.i("HandleCommandProc", (new StringBuilder(" SLIM_BRCOMMAND_QUERY_SETLOCATION value: ")).append(i).append(" UserSelection: ").append(mNotifyConnection).toString());
        if(i == 1)
        {
            if(mNotifyConnection == 1)
            {
                tbrowserreplytype.fCommandID = tbrowsercmdtype.fCommandID;
                tbrowserreplytype.fDoRequestContent = true;
                mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreplytype);
                i = ((flag) ? 1 : 0);
            } else
            {
                tbrowserreplytype = getAppResString("query_noti_connect");
                ShowYesNoPopupEX(tbrowsercmdtype.fCommandID, "X_DPA_writeCproBM", getAppResString("title_noti_connect"), tbrowserreplytype);
                i = -3;
            }
        } else
        if(i == 2)
        {
            tbrowserreplytype.fCommandID = tbrowsercmdtype.fCommandID;
            tbrowserreplytype.fDoRequestContent = true;
            mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreplytype);
            i = ((flag) ? 1 : 0);
        } else
        {
            tbrowserreplytype = getAppResString("query_noti_connect");
            ShowYesNoPopupEX(tbrowsercmdtype.fCommandID, "X_DPA_writeCproBM", getAppResString("title_noti_connect"), tbrowserreplytype);
            i = -3;
        }
          goto _L26
_L14:
        ((BMLCommandType.TBrowserCommand_WindowState)tbrowsercmdtype).fState;
        JVM INSTR tableswitch 0 2: default 484
    //                   0 520
    //                   1 484
    //                   2 557;
           goto _L27 _L28 _L27 _L29
_L27:
        break; /* Loop/switch isn't completed */
_L29:
        break MISSING_BLOCK_LABEL_557;
_L30:
        tbrowserreplytype = new BMLCommandType.TBrowserReplyType();
        tbrowserreplytype.fCommandID = tbrowsercmdtype.fCommandID;
        mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreplytype);
        i = ((flag) ? 1 : 0);
          goto _L26
_L28:
        if(handler1 != null)
        {
            tbrowserreplytype = Message.obtain();
            tbrowserreplytype.what = 0;
            tbrowserreplytype.arg1 = 0;
            tbrowserreplytype.arg2 = 0;
            tbrowserreplytype.obj = null;
            handler1.sendMessage(tbrowserreplytype);
        }
          goto _L30
        if(handler1 != null)
        {
            tbrowserreplytype = Message.obtain();
            tbrowserreplytype.what = 1;
            tbrowserreplytype.arg1 = 0;
            tbrowserreplytype.arg2 = 0;
            tbrowserreplytype.obj = null;
            handler1.sendMessage(tbrowserreplytype);
        }
          goto _L30
_L15:
        tbrowsercmdtype = (BMLCommandType.TBrowserCommand_ContentError)tbrowsercmdtype;
        NotifyContentError(((BMLCommandType.TBrowserCommand_ContentError) (tbrowsercmdtype)).fCommandID, tbrowsercmdtype);
        i = ((flag) ? 1 : 0);
          goto _L26
_L20:
        tbrowserreplytype = (BMLCommandType.TBrowserCommand_DTV_PermitFunction)tbrowsercmdtype;
        handler1 = new BMLCommandType.TBrowserReply_PermitFunction();
        if(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fFuncName.equals("X_DPA_writeCproBM"))
        {
            if(mPrefs.getBoolean("X_DPA_writeCproBM", false))
            {
                handler1.fCommandID = tbrowsercmdtype.fCommandID;
                handler1.fDoPermit = true;
                mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, handler1);
                i = ((flag) ? 1 : 0);
            } else
            if(!mPopupPrevent)
            {
                tbrowsercmdtype = getAppResString("query_tvlink_save");
                ShowYesNoPopup(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fCommandID, "X_DPA_writeCproBM", getAppResString("caption_tvlink"), tbrowsercmdtype);
                i = -3;
            } else
            {
                Log.i("HandleCommandProc", "SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION - Popup Skip.");
                handler1.fCommandID = tbrowsercmdtype.fCommandID;
                handler1.fDoPermit = false;
                mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, handler1);
                i = ((flag) ? 1 : 0);
            }
        } else
        if(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fFuncName.equals("X_DPA_getCurPos"))
        {
            i = GetLocationSettingPref();
            Log.i("HandleCommandProc", (new StringBuilder(" SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION value: ")).append(i).append(" UserSelection: ").append(mLocationInfo).toString());
            if(i == 1)
            {
                if(mLocationInfo == 1)
                {
                    i = ((flag) ? 1 : 0);
                    if(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fArgStr.length > 0)
                    {
                        mPos_Info = new String(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fArgStr);
                        mBmlView.startLocationService(mPos_Info);
                        handler1.fCommandID = tbrowsercmdtype.fCommandID;
                        handler1.fDoPermit = true;
                        mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, handler1);
                        i = ((flag) ? 1 : 0);
                    }
                } else
                {
                    tbrowsercmdtype = getAppResString("query_location");
                    if(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fArgStr.length > 0)
                        mPos_Info = new String(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fArgStr);
                    ShowYesNoPopupEX(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fCommandID, "X_DPA_getCurPos", getAppResString("title_noti_location"), tbrowsercmdtype);
                    i = -3;
                }
            } else
            if(i == 2)
            {
                handler1.fCommandID = tbrowsercmdtype.fCommandID;
                handler1.fDoPermit = true;
                mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, handler1);
                i = ((flag) ? 1 : 0);
            } else
            {
                tbrowsercmdtype = getAppResString("query_location");
                if(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fArgStr.length > 0)
                    mPos_Info = new String(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fArgStr);
                ShowYesNoPopupEX(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fCommandID, "X_DPA_getCurPos", getAppResString("title_noti_location"), tbrowsercmdtype);
                i = -3;
            }
        } else
        if(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fFuncName.equals("X_DPA_getRcvCond"))
        {
            mBmlView.startTelephonyService(257);
            handler1.fCommandID = tbrowsercmdtype.fCommandID;
            handler1.fDoPermit = true;
            mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, handler1);
            i = ((flag) ? 1 : 0);
        } else
        if(((BMLCommandType.TBrowserCommand_DTV_PermitFunction) (tbrowserreplytype)).fFuncName.equals("X_DPA_getIRDID"))
        {
            i = GetIRDIDSettingPref();
            boolean flag1 = false;
            if(i == 1)
                flag1 = true;
            handler1.fCommandID = tbrowsercmdtype.fCommandID;
            handler1.fDoPermit = flag1;
            mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, handler1);
            i = ((flag) ? 1 : 0);
        } else
        {
            handler1.fCommandID = tbrowsercmdtype.fCommandID;
            handler1.fDoPermit = true;
            mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, handler1);
            i = ((flag) ? 1 : 0);
        }
          goto _L26
_L6:
        tbrowsercmdtype = (BMLCommandType.TBrowserCommand_RedirectDialog)tbrowsercmdtype;
        if(((BMLCommandType.TBrowserCommand_RedirectDialog) (tbrowsercmdtype)).fStatusCode == 301 && (((BMLCommandType.TBrowserCommand_RedirectDialog) (tbrowsercmdtype)).fContentBy & 0x1000) == 0)
            noti(getAppResString("address_changed"));
        Reply_Popup(((BMLCommandType.TBrowserCommand_RedirectDialog) (tbrowsercmdtype)).fCommandID, true, null);
        i = ((flag) ? 1 : 0);
          goto _L26
_L8:
        tbrowsercmdtype = (BMLCommandType.TBrowserCommand_AuthDialog)tbrowsercmdtype;
        ShowAuthPopup(((BMLCommandType.TBrowserCommand_AuthDialog) (tbrowsercmdtype)).fCommandID, null, tbrowsercmdtype);
        i = -3;
          goto _L26
_L25:
        tbrowserreplytype = (BMLCommandType.TBrowserCommand_DTV_DrawError)tbrowsercmdtype;
        tbrowsercmdtype = null;
        ((BMLCommandType.TBrowserCommand_DTV_DrawError) (tbrowserreplytype)).fErrorCode;
        JVM INSTR tableswitch 1 2: default 1332
    //                   1 1358
    //                   2 1369;
           goto _L31 _L32 _L33
_L31:
        break; /* Loop/switch isn't completed */
_L33:
        break MISSING_BLOCK_LABEL_1369;
_L34:
        if(tbrowsercmdtype != null)
            noti(tbrowsercmdtype);
        Reply_Popup(((BMLCommandType.TBrowserCommand_DTV_DrawError) (tbrowserreplytype)).fCommandID, true, null);
        i = ((flag) ? 1 : 0);
          goto _L26
_L32:
        tbrowsercmdtype = getAppResString("drawerror_toomany_nests");
          goto _L34
        tbrowsercmdtype = getAppResString("drawerror_timeout");
          goto _L34
_L24:
        tbrowserreplytype = getAppResString("query_system_continue");
        ShowYesNoPopup(tbrowsercmdtype.fCommandID, getAppResString("data_broadcasting"), tbrowserreplytype);
        i = -3;
          goto _L26
_L18:
        tbrowserreplytype = getAppResString("query_ssl_transmit");
        ShowYesNoPopup(tbrowsercmdtype.fCommandID, getAppResString("data_broadcasting"), tbrowserreplytype);
        i = -3;
          goto _L26
_L5:
        Reply_Popup(((BMLCommandType.TBrowserCommand_CookieDialog)tbrowsercmdtype).fCommandID, true, null);
        i = ((flag) ? 1 : 0);
          goto _L26
_L16:
        tbrowserreplytype = (BMLCommandType.TBrowserCommand_Error)tbrowsercmdtype;
        ((BMLCommandType.TBrowserCommand_Error) (tbrowserreplytype)).fErrorCode;
        JVM INSTR tableswitch 0 5: default 1508
    //                   0 1537
    //                   1 1537
    //                   2 1537
    //                   3 1558
    //                   4 1508
    //                   5 1568;
           goto _L35 _L36 _L36 _L36 _L37 _L35 _L38
_L38:
        break MISSING_BLOCK_LABEL_1568;
_L35:
        tbrowsercmdtype = getAppResString("unknown_error");
_L39:
        noti(tbrowsercmdtype);
        Reply_Popup(((BMLCommandType.TBrowserCommand_Error) (tbrowserreplytype)).fCommandID, true, null);
        i = ((flag) ? 1 : 0);
          goto _L26
_L36:
        tbrowsercmdtype = getAppResString("error_memory_shortage");
        mBmlView.BML_RequestHalt(100);
          goto _L39
_L37:
        tbrowsercmdtype = getAppResString("error_total_sizeover");
          goto _L39
        tbrowsercmdtype = getAppResString("error_bad_mimetype");
          goto _L39
_L7:
        tbrowserreplytype = new BMLCommandType.TBrowserReply_PostDialog();
        tbrowserreplytype.fCommandID = tbrowsercmdtype.fCommandID;
        tbrowserreplytype.fDoPost = true;
        mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreplytype);
        i = ((flag) ? 1 : 0);
          goto _L26
_L3:
        tbrowserreplytype = new BMLCommandType.TBrowserReply_RequestInclusion();
        tbrowserreplytype.fCommandID = tbrowsercmdtype.fCommandID;
        tbrowserreplytype.fDoRequestContent = true;
        mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreplytype);
        i = ((flag) ? 1 : 0);
          goto _L26
_L9:
        tbrowserreplytype = (BMLCommandType.TBrowserCommand_ServerCertConfirmDialog)tbrowsercmdtype;
        i = ((BMLCommandType.TBrowserCommand_ServerCertConfirmDialog) (tbrowserreplytype)).fVerifyResult;
        if((0x10000 & i) > 0)
            tbrowsercmdtype = getAppResString("error_cert_session_failed");
        else
        if((0x20000 & i) > 0)
            tbrowsercmdtype = getAppResString("error_cert_session_failed");
        else
        if((0x8000000 & i) > 0)
            tbrowsercmdtype = getAppResString("error_cert_verify");
        else
        if((0x10000000 & i) > 0)
            tbrowsercmdtype = getAppResString("error_cert_invalid");
        else
        if((i & 1) > 0)
            tbrowsercmdtype = getAppResString("error_cert_no_issure");
        else
        if((i & 8) > 0)
            tbrowsercmdtype = getAppResString("error_cert_root_expired");
        else
        if((i & 2) > 0)
            tbrowsercmdtype = getAppResString("error_cert_invalid_cn");
        else
        if((i & 4) > 0)
            tbrowsercmdtype = getAppResString("error_cert_expired");
        else
            tbrowsercmdtype = getAppResString("error_cert_session_failed");
        noti(tbrowsercmdtype);
        Reply_Popup(((BMLCommandType.TBrowserCommand_ServerCertConfirmDialog) (tbrowserreplytype)).fCommandID, true, null);
        i = ((flag) ? 1 : 0);
          goto _L26
_L4:
        tbrowsercmdtype = (BMLCommandType.TBrowserCommand_HistoryBackForw)tbrowsercmdtype;
        if(!((BMLCommandType.TBrowserCommand_HistoryBackForw) (tbrowsercmdtype)).before_is_https && ((BMLCommandType.TBrowserCommand_HistoryBackForw) (tbrowsercmdtype)).after_is_https)
        {
            noti(getAppResString("msg_enter_ssl"));
            Reply_Popup(((BMLCommandType.TBrowserCommand_HistoryBackForw) (tbrowsercmdtype)).fCommandID, true, null);
            i = ((flag) ? 1 : 0);
        } else
        if(((BMLCommandType.TBrowserCommand_HistoryBackForw) (tbrowsercmdtype)).before_is_https && !((BMLCommandType.TBrowserCommand_HistoryBackForw) (tbrowsercmdtype)).after_is_https)
        {
            ShowYesNoPopup(((BMLCommandType.TBrowserCommand_HistoryBackForw) (tbrowsercmdtype)).fCommandID, getAppResString("data_broadcasting"), getAppResString("msg_leave_ssl"));
            i = -3;
        } else
        {
            Reply_Popup(((BMLCommandType.TBrowserCommand_HistoryBackForw) (tbrowsercmdtype)).fCommandID, true, null);
            i = ((flag) ? 1 : 0);
        }
          goto _L26
_L19:
        tbrowserreplytype = getAppResString("query_system_recover");
        ShowYesNoPopup(tbrowsercmdtype.fCommandID, getAppResString("data_broadcasting"), tbrowserreplytype);
        i = -3;
          goto _L26
_L23:
        handler1 = (BMLCommandType.TBrowserCommand_DTV_FailureAction)tbrowsercmdtype;
        tbrowserreplytype = null;
        tbrowsercmdtype = tbrowserreplytype;
        ((BMLCommandType.TBrowserCommand_DTV_FailureAction) (handler1)).fStatus;
        JVM INSTR tableswitch -12 -7: default 2044
    //                   -12 2136
    //                   -11 2072
    //                   -10 2046
    //                   -9 2046
    //                   -8 2046
    //                   -7 2104;
           goto _L40 _L41 _L42 _L43 _L43 _L43 _L44
_L41:
        break MISSING_BLOCK_LABEL_2136;
_L43:
        break; /* Loop/switch isn't completed */
_L40:
        tbrowsercmdtype = tbrowserreplytype;
_L45:
        if(tbrowsercmdtype != null)
            noti(tbrowsercmdtype);
        Reply_Popup(((BMLCommandType.TBrowserCommand_DTV_FailureAction) (handler1)).fCommandID, true, null);
        i = ((flag) ? 1 : 0);
          goto _L26
_L42:
        if(mBmlView.BML_IsTuneByBookmark())
            tbrowsercmdtype = getAppResString("msg_invalid_transition_return_tvlink");
        else
            tbrowsercmdtype = getAppResString("msg_invalid_transition_return");
          goto _L45
_L44:
        if(mBmlView.BML_IsTuneByBookmark())
            tbrowsercmdtype = getAppResString("msg_invalid_script_return_tvlink");
        else
            tbrowsercmdtype = getAppResString("msg_invalid_script_return");
          goto _L45
        tbrowsercmdtype = getAppResString("msg_failureaction_invalid_suffix");
          goto _L45
_L10:
        tbrowsercmdtype = (BMLCommandType.TBrowserCommand_JSAlertDialog)tbrowsercmdtype;
        noti(((BMLCommandType.TBrowserCommand_JSAlertDialog) (tbrowsercmdtype)).fMessage);
        Reply_Popup(((BMLCommandType.TBrowserCommand_JSAlertDialog) (tbrowsercmdtype)).fCommandID, true, null);
        i = ((flag) ? 1 : 0);
          goto _L26
_L11:
        tbrowsercmdtype = (BMLCommandType.TBrowserCommand_JSConfirmDialog)tbrowsercmdtype;
        ShowYesNoPopup(((BMLCommandType.TBrowserCommand_JSConfirmDialog) (tbrowsercmdtype)).fCommandID, getAppResString("data_broadcasting"), ((BMLCommandType.TBrowserCommand_JSConfirmDialog) (tbrowsercmdtype)).fMessage);
        i = -3;
          goto _L26
_L12:
        tbrowsercmdtype = (BMLCommandType.TBrowserCommand_JSPromptDialog)tbrowsercmdtype;
        tbrowserreplytype = (new StringBuilder(String.valueOf(((BMLCommandType.TBrowserCommand_JSPromptDialog) (tbrowsercmdtype)).fMessage))).append("\n").append(((BMLCommandType.TBrowserCommand_JSPromptDialog) (tbrowsercmdtype)).fValue).toString();
        ShowOkCancelPopup(((BMLCommandType.TBrowserCommand_JSPromptDialog) (tbrowsercmdtype)).fCommandID, getAppResString("data_broadcasting"), tbrowserreplytype);
        i = -3;
          goto _L26
_L13:
        handler1 = (BMLCommandType.TBrowserCommand_StreamState)tbrowsercmdtype;
        tbrowserreplytype = null;
        tbrowsercmdtype = tbrowserreplytype;
        ((BMLCommandType.TBrowserCommand_StreamState) (handler1)).fState;
        JVM INSTR lookupswitch 4: default 2324
    //                   1: 2326
    //                   1024: 2338
    //                   2048: 2349
    //                   2097152: 2326;
           goto _L46 _L47 _L48 _L49 _L47
_L49:
        break MISSING_BLOCK_LABEL_2349;
_L47:
        break; /* Loop/switch isn't completed */
_L46:
        tbrowsercmdtype = tbrowserreplytype;
_L50:
        noti(tbrowsercmdtype);
        i = ((flag) ? 1 : 0);
          goto _L26
_L48:
        tbrowsercmdtype = getAppResString("ssl_handshaking");
          goto _L50
        tbrowsercmdtype = getAppResString("ssl_loading");
          goto _L50
_L21:
        BMLCommandType.TBrowserCommand_DTV_WriteBookmark tbrowsercommand_dtv_writebookmark;
        BMLCommandType.TBrowserReply_WriteBookmark tbrowserreply_writebookmark;
        tbrowsercommand_dtv_writebookmark = (BMLCommandType.TBrowserCommand_DTV_WriteBookmark)tbrowsercmdtype;
        tbrowserreply_writebookmark = new BMLCommandType.TBrowserReply_WriteBookmark();
        tbrowserreply_writebookmark.fCommandID = tbrowsercmdtype.fCommandID;
        tbrowsercommand_dtv_writebookmark.fAction;
        JVM INSTR tableswitch 0 2: default 2416
    //                   0 2523
    //                   1 2438
    //                   2 2477;
           goto _L51 _L52 _L53 _L54
_L51:
        tbrowserreply_writebookmark.fDoWrite = false;
        mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreply_writebookmark);
        return 0;
_L53:
        tbrowserreplytype = getAppResString("query_tvlink_overwrite_expired");
_L55:
        if(!mPopupPrevent)
        {
            ShowYesNoPopup(tbrowsercommand_dtv_writebookmark.fCommandID, getAppResString("caption_tvlink"), tbrowserreplytype);
            i = -3;
        } else
        {
            Log.i("HandleCommandProc", "SLIM_BRCOMMAND_QUERY_DTV_WRITEBOOKMARK - Popup Skip.");
            tbrowserreply_writebookmark.fDoWrite = false;
            mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreply_writebookmark);
            return 0;
        }
          goto _L26
_L54:
        tbrowserreplytype = getAppResString("query_tvlink_overwrite_oldest");
        handler1 = (new StringBuilder(String.valueOf(tbrowserreplytype))).append(new String(tbrowsercommand_dtv_writebookmark.fReplacedBookmarkTitle, "SJIS")).toString();
        tbrowserreplytype = handler1;
          goto _L55
_L52:
        tbrowserreply_writebookmark.fDoWrite = true;
        mBmlView.Browser_ReplyToCommand(tbrowsercmdtype.fCommandID, tbrowserreply_writebookmark);
        return 0;
_L17:
        noti(getAppResString("error_input_format"));
        i = ((flag) ? 1 : 0);
          goto _L26
        handler1;
          goto _L55
    }

    public void DialogDestroy()
    {
        if(mAlertDial != null)
        {
            Log.d("HandleCommandProc", "DialogDestroy\n");
            mAlertDial.cancel();
            mAlertDial = null;
        }
    }

    public void ResetContext(Context context)
    {
        Log.d("HandleCommandProc", (new StringBuilder("ResetContext PREV: ")).append(mContext).append(" NEW: ").append(context).toString());
        SetPreventPopup(false);
        mContext = context;
    }

    public void SetPreventPopup(boolean flag)
    {
        mPopupPrevent = flag;
    }

    public void finalize()
    {
        mContext = null;
        mBmlView = null;
        mNotifyConnection = 255;
        mLocationInfo = 255;
    }

    public void resetBMLPref()
    {
        android.content.SharedPreferences.Editor editor = mPrefs.edit();
        editor.putBoolean("X_DPA_writeCproBM", false);
        editor.commit();
    }

    public void stopLocationService()
    {
        mLocationManager = (LocationManager)mContext.getSystemService("location");
        mLocationManager.removeUpdates(locationListener);
    }

    public static final boolean DEBUG = false;
    static final String TAG = "HandleCommandProc";
    private Handler handler;
    LocationListener locationListener;
    private AlertDialog mAlertDial;
    private BMLView mBmlView;
    private Context mContext;
    private int mLocationInfo;
    private LocationManager mLocationManager;
    private int mNotifyConnection;
    private String mPackageName;
    private boolean mPopupPrevent;
    private String mPosProvider;
    private String mPos_Info;
    private SharedPreferences mPrefs;
    private SharedPreferences mPrefsSettings;
    private Toast mToast;
    private String posProvider;









}
