// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.bml;

import android.app.Activity;
import android.app.AlertDialog;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.method.NumberKeyListener;
import android.text.method.PasswordTransformationMethod;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import com.samsung.sec.mtv.app.bml.IMtvAppBmlDialogListener;
import com.samsung.sec.mtv.app.bml.MtvAppBml;
import com.samsung.sec.mtv.ui.channelguide.MtvUiChannelGuide;
import com.samsung.sec.mtv.ui.common.MtvUiFrag;
import com.samsung.sec.mtv.ui.common.MtvUiFragHandler;
import com.samsung.sec.mtv.ui.tvlink.MtvUiTvLinks;
import java.io.UnsupportedEncodingException;

public class MtvUiBmlDialogFrag extends MtvUiFrag
    implements IMtvAppBmlDialogListener, com.samsung.sec.mtv.ui.channelguide.MtvUiChannelGuide.onChannelChangedListener
{
    private class InputDialogListener
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            boolean flag;
            byte abyte0[];
            MtvAppBml mtvappbml;
            try
            {
                abyte0 = edit.getText().toString().getBytes("UTF-8");
            }
            catch(UnsupportedEncodingException unsupportedencodingexception)
            {
                MtvUtilDebug.Low("MtvUiBmlDialog", "InputDialogListener - text input fail!!");
                unsupportedencodingexception = null;
            }
            MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("OnClick : [Button] ").append(i).toString());
            mtvappbml = MtvUiBmlDialogFrag.mBmlApp;
            if(i == -1)
                flag = true;
            else
                flag = false;
            mtvappbml.appExIMEEndPeer(flag, abyte0);
            mBMLdiag = null;
            dialoginterface.dismiss();
            byteCopy = null;
            MtvUiBmlDialogFrag.mEditDialogShowing = false;
            MtvUiBmlDialogFrag.savedDialogState = null;
            isBMLDialogParameterSet = false;
            if(MtvUiBmlDialogFrag.mFragHandler != null)
                MtvUiBmlDialogFrag.mFragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE);
        }

        private EditText edit;
        final MtvUiBmlDialogFrag this$0;

        public InputDialogListener(EditText edittext)
        {
            this$0 = MtvUiBmlDialogFrag.this;
            super();
            edit = edittext;
        }
    }


    public MtvUiBmlDialogFrag()
    {
        mbtnNum = 0;
        mdialogMessege = null;
        adb = null;
        mBMLdiag = null;
        isBMLDialogParameterSet = false;
        mInputManager = null;
        mContext = null;
        byteCopy = null;
        isPasswordCopy = false;
        isMultiLineCopy = false;
        modeCopy = 0;
        maxlengthCopy = 0;
        editText = null;
        edit = null;
    }

    public static MtvUiBmlDialogFrag getInstance()
    {
        if(BmlDialogFrag == null)
            BmlDialogFrag = new MtvUiBmlDialogFrag();
        return BmlDialogFrag;
    }

    public void IMEStartPeer(byte abyte0[], boolean flag, boolean flag1, int i, int j)
    {
        maxlengthCopy = j;
        byteCopy = (byte[])abyte0.clone();
        isPasswordCopy = flag;
        isMultiLineCopy = flag1;
        View view = ((LayoutInflater)mContext.getSystemService("layout_inflater")).inflate(0x7f030012, null);
        abyte0 = MtvAppBml.byteArrayToString(abyte0);
        edit = (EditText)view.findViewById(0x7f0a0067);
        if(editText != null)
            edit.setText(editText, android.widget.TextView.BufferType.EDITABLE);
        else
            edit.setText(abyte0, android.widget.TextView.BufferType.EDITABLE);
        MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("BML_CB_appExIMEStartPeer [mode] - ").append(i).append(" [textString] : ").append(abyte0).toString());
        mInputManager = (InputMethodManager)mContext.getSystemService("input_method");
        mInputManager.forceHideSoftInput();
        if(i >= 5 && i <= 12)
        {
            abyte0 = new android.text.InputFilter.LengthFilter(j);
            edit.setFilters(new InputFilter[] {
                abyte0
            });
        }
        i;
        JVM INSTR tableswitch 0 12: default 252
    //                   0 252
    //                   1 252
    //                   2 252
    //                   3 252
    //                   4 252
    //                   5 434
    //                   6 464
    //                   7 492
    //                   8 520
    //                   9 533
    //                   10 563
    //                   11 591
    //                   12 604;
           goto _L1 _L1 _L1 _L1 _L1 _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
        if(!flag1)
            edit.setSingleLine();
        if(flag)
            edit.setTransformationMethod(PasswordTransformationMethod.getInstance());
        edit.setSelectAllOnFocus(true);
        if(mFragHandler != null)
            mFragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE, -1L, false, new int[0]);
        adb = new android.app.AlertDialog.Builder(mContext);
        adb.setTitle(0x7f070042);
        adb.setView(view);
        abyte0 = new InputDialogListener(edit);
        adb.setPositiveButton(0x7f070298, abyte0);
        adb.setNegativeButton(0x7f07020b, abyte0);
        mBMLdiag = adb.create();
        if(mContext.getResources().getConfiguration().orientation == 1)
            mBMLdiag.show();
        mEditDialogShowing = true;
        return;
_L2:
        edit.setInputType(4096);
        abyte0 = new NumberKeyListener() {

            protected char[] getAcceptedChars()
            {
                return (new char[] {
                    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
                    'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
                    'U', 'V', 'W', 'X', 'Y', 'Z', '.'
                });
            }

            public int getInputType()
            {
                return 4096;
            }

            final MtvUiBmlDialogFrag this$0;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                super();
            }
        }
;
        edit.setKeyListener(abyte0);
        continue; /* Loop/switch isn't completed */
_L3:
        edit.setInputType(1);
        abyte0 = new NumberKeyListener() {

            protected char[] getAcceptedChars()
            {
                return (new char[] {
                    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 
                    'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
                    'u', 'v', 'w', 'x', 'y', 'z', '.'
                });
            }

            public int getInputType()
            {
                return 1;
            }

            final MtvUiBmlDialogFrag this$0;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                super();
            }
        }
;
        edit.setKeyListener(abyte0);
        continue; /* Loop/switch isn't completed */
_L4:
        edit.setInputType(3);
        abyte0 = new NumberKeyListener() {

            protected char[] getAcceptedChars()
            {
                return (new char[] {
                    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
                });
            }

            public int getInputType()
            {
                return 3;
            }

            final MtvUiBmlDialogFrag this$0;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                super();
            }
        }
;
        edit.setKeyListener(abyte0);
        continue; /* Loop/switch isn't completed */
_L5:
        edit.setInputType(8194);
        continue; /* Loop/switch isn't completed */
_L6:
        edit.setInputType(28673);
        abyte0 = new NumberKeyListener() {

            protected char[] getAcceptedChars()
            {
                return (new char[] {
                    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
                    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
                    'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
                    'U', 'V', 'W', 'X', 'Y', 'Z', '.'
                });
            }

            public int getInputType()
            {
                return 28673;
            }

            final MtvUiBmlDialogFrag this$0;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                super();
            }
        }
;
        edit.setKeyListener(abyte0);
        continue; /* Loop/switch isn't completed */
_L7:
        edit.setInputType(1);
        abyte0 = new NumberKeyListener() {

            protected char[] getAcceptedChars()
            {
                return (new char[] {
                    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
                    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 
                    'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
                    'u', 'v', 'w', 'x', 'y', 'z', '.'
                });
            }

            public int getInputType()
            {
                return 1;
            }

            final MtvUiBmlDialogFrag this$0;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                super();
            }
        }
;
        edit.setKeyListener(abyte0);
        continue; /* Loop/switch isn't completed */
_L8:
        edit.setInputType(24577);
        continue; /* Loop/switch isn't completed */
_L9:
        edit.setInputType(1);
        if(true) goto _L1; else goto _L10
_L10:
    }

    public void destroyBMLDialog()
    {
        MtvUtilDebug.Low("MtvUiBmlDialog", "destroyBMLDialog");
        if(mBMLdiag != null)
            mBMLdiag.dismiss();
        mBMLdiag = null;
    }

    public int getBtnNum()
    {
        return mbtnNum;
    }

    public int getCmd()
    {
        return cmd;
    }

    public String getDialogMessege()
    {
        return mdialogMessege;
    }

    public void halt()
    {
    }

    public boolean isDialogSet()
    {
        return isBMLDialogParameterSet;
    }

    public void onChannelChanged()
    {
        resetDailogValues();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUiChannelGuide.registerChannelChangedListener(this);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiBmlDialog", "onCreateView : Entered");
        if(bundle != null)
        {
            MtvUtilDebug.Low("MtvUiBmlDialog", "onCreateView :  not null savedInstanceState");
            savedDialogState = bundle;
        } else
        {
            editText = null;
        }
        return super.onCreateView(layoutinflater, viewgroup, bundle);
    }

    public void onDestroy()
    {
        savedDialogState = null;
        MtvUiChannelGuide.unregisterChannelChangedListener(this);
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        MtvUtilDebug.Low("MtvUiBmlDialog", "onResume");
        if(mBmlApp != null)
            mBmlApp.registerBmlDialogListener(getInstance());
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiBmlDialog", "onSaveInstanceState : Entered");
        if(!MtvUtilDebug.isReleaseMode() && byteCopy != null)
            MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("onSaveInstanceState [isDialogShowing] ").append(mDialogShowing).append("[isPasswordCopy]").append(isPasswordCopy).append(" [maxlengthCopy ]").append(maxlengthCopy).append("  [modeCopy] ").append(modeCopy).append(" [byteCopy]").append(MtvAppBml.byteArrayToString(byteCopy)).append(" [EDIT TEXT ] ").append("[mEditDialogShowing] ").append(mEditDialogShowing).toString());
        MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("onSaveInstanceState [BML_CMD] : ").append(getCmd()).toString());
        bundle.putBoolean("bml_dialog_popup", mDialogShowing);
        bundle.putBoolean("isPasswordCopy", isPasswordCopy);
        bundle.putBoolean("isMultiLineCopy", isMultiLineCopy);
        bundle.putInt("maxlengthCopy", maxlengthCopy);
        bundle.putInt("modeCopy", modeCopy);
        bundle.putByteArray("byteCopy", byteCopy);
        bundle.putBoolean("mEditDialogShowing", mEditDialogShowing);
        bundle.putInt("BML_CMD", getCmd());
        if(edit != null && edit.getText() != null)
            bundle.putString("editText", edit.getText().toString());
        super.onSaveInstanceState(bundle);
    }

    public void onStop()
    {
        MtvUtilDebug.Low("MtvUiBmlDialog", "onStop");
        if(mBmlApp != null)
            mBmlApp.registerBmlDialogListener(getInstance());
        super.onStop();
    }

    public void onUpdate(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("onUpdate: [what] : ").append(i).toString());
        i;
        JVM INSTR tableswitch 228 228: default 44
    //                   228 51;
           goto _L1 _L2
_L1:
        super.onUpdate(i, obj);
        return;
_L2:
        resetDailogValues();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void resetDailogValues()
    {
        MtvUtilDebug.High("MtvUiBmlDialog", "resetDailogValues()");
        if(mDialogShowing && mBmlApp != null)
        {
            MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("Sending reply NO to BML Engine : [CMD] ").append(getCmd()).toString());
            mBmlApp.sendDialogReply(com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_NO, getCmd());
        }
        if(mBMLdiag != null && mBMLdiag.isShowing())
            mBMLdiag.dismiss();
        mDialogShowing = false;
        mEditDialogShowing = false;
        isBMLDialogParameterSet = false;
        mBMLdiag = null;
        mdialogMessege = null;
        savedDialogState = null;
        setBtnNum(0);
        setCmd(0);
        if(mFragHandler != null && mFragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE) && isAdded())
            mFragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE);
    }

    public void setAppcomponents(MtvAppBml mtvappbml, MtvUiFragHandler mtvuifraghandler, Context context)
    {
        mBmlApp = mtvappbml;
        mFragHandler = mtvuifraghandler;
        mContext = context;
        MtvUtilDebug.Low("MtvUiBmlDialog", "setAppcomponents");
        if(mBmlApp != null)
            mBmlApp.registerBmlDialogListener(getInstance());
        if(savedDialogState != null)
        {
            MtvUtilDebug.Low("MtvUiBmlDialog", "setAppcomponents : Need to show dialog");
            mDialogShowing = savedDialogState.getBoolean("bml_dialog_popup");
            isPasswordCopy = savedDialogState.getBoolean("isPasswordCopy");
            isMultiLineCopy = savedDialogState.getBoolean("isMultiLineCopy");
            maxlengthCopy = savedDialogState.getInt("maxlengthCopy");
            modeCopy = savedDialogState.getInt("modeCopy");
            setCmd(savedDialogState.getInt("BML_CMD"));
            byteCopy = savedDialogState.getByteArray("byteCopy");
            editText = savedDialogState.getString("editText");
            if(!MtvUtilDebug.isReleaseMode() && byteCopy != null)
                MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("setAppcomponents [isDialogShowing] ").append(mDialogShowing).append("[isPasswordCopy]").append(isPasswordCopy).append(" [maxlengthCopy ]").append(maxlengthCopy).append("  [modeCopy] ").append(modeCopy).append(" [byteCopy]").append(MtvAppBml.byteArrayToString(byteCopy)).append(" [EDIT TEXT ] ").append("[mEditDialogShowing] ").append(mEditDialogShowing).append(" [BML_CMD] : ").append(getCmd()).toString());
            MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("setAppcomponents [BML_CMD] : ").append(getCmd()).toString());
            if(byteCopy != null && mEditDialogShowing)
                IMEStartPeer(byteCopy, isPasswordCopy, isMultiLineCopy, modeCopy, maxlengthCopy);
            else
            if(mDialogShowing)
            {
                showBMLDialog(getCmd());
                return;
            }
        }
    }

    public void setBtnNum(int i)
    {
        mbtnNum = i;
    }

    public void setCmd(int i)
    {
        cmd = i;
    }

    public void setDialogBtnNum(int i)
    {
        MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("setDialogBtnNum [BtnNum] : ").append(i).toString());
        setBtnNum(i);
    }

    public void setDialogMessege(com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages appbmldialogmessages)
    {
        int i;
        i = -1;
        mAvoidDialog = false;
        static class _cls9
        {

            static final int $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[];

            static 
            {
                $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages = new int[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.values().length];
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SETLOCATION_HTTP.ordinal()] = 1;
                }
                catch(NoSuchFieldError nosuchfielderror65) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SETLOCATION_SSL_BEGIN.ordinal()] = 2;
                }
                catch(NoSuchFieldError nosuchfielderror64) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SETLOCATION_SSL_END.ordinal()] = 3;
                }
                catch(NoSuchFieldError nosuchfielderror63) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SERVER_CERT_CONFIRM_DIALOG.ordinal()] = 4;
                }
                catch(NoSuchFieldError nosuchfielderror62) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION.ordinal()] = 5;
                }
                catch(NoSuchFieldError nosuchfielderror61) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_NOMEMORY.ordinal()] = 6;
                }
                catch(NoSuchFieldError nosuchfielderror60) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_MIXEDSECURETYPE.ordinal()] = 7;
                }
                catch(NoSuchFieldError nosuchfielderror59) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_BADURL.ordinal()] = 8;
                }
                catch(NoSuchFieldError nosuchfielderror58) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_BADMIMETYPE.ordinal()] = 9;
                }
                catch(NoSuchFieldError nosuchfielderror57) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_TOTAL_SIZEOVER.ordinal()] = 10;
                }
                catch(NoSuchFieldError nosuchfielderror56) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_TRANSMITTEXTDATA.ordinal()] = 11;
                }
                catch(NoSuchFieldError nosuchfielderror55) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP.ordinal()] = 12;
                }
                catch(NoSuchFieldError nosuchfielderror54) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray.ordinal()] = 13;
                }
                catch(NoSuchFieldError nosuchfielderror53) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard.ordinal()] = 14;
                }
                catch(NoSuchFieldError nosuchfielderror52) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard.ordinal()] = 15;
                }
                catch(NoSuchFieldError nosuchfielderror51) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM.ordinal()] = 16;
                }
                catch(NoSuchFieldError nosuchfielderror50) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo.ordinal()] = 17;
                }
                catch(NoSuchFieldError nosuchfielderror49) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp.ordinal()] = 18;
                }
                catch(NoSuchFieldError nosuchfielderror48) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo.ordinal()] = 19;
                }
                catch(NoSuchFieldError nosuchfielderror47) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo.ordinal()] = 20;
                }
                catch(NoSuchFieldError nosuchfielderror46) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo.ordinal()] = 21;
                }
                catch(NoSuchFieldError nosuchfielderror45) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos.ordinal()] = 22;
                }
                catch(NoSuchFieldError nosuchfielderror44) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID.ordinal()] = 23;
                }
                catch(NoSuchFieldError nosuchfielderror43) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond.ordinal()] = 24;
                }
                catch(NoSuchFieldError nosuchfielderror42) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK.ordinal()] = 25;
                }
                catch(NoSuchFieldError nosuchfielderror41) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST.ordinal()] = 26;
                }
                catch(NoSuchFieldError nosuchfielderror40) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEPERSISTENTARRAY.ordinal()] = 27;
                }
                catch(NoSuchFieldError nosuchfielderror39) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY.ordinal()] = 28;
                }
                catch(NoSuchFieldError nosuchfielderror38) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION.ordinal()] = 29;
                }
                catch(NoSuchFieldError nosuchfielderror37) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX.ordinal()] = 30;
                }
                catch(NoSuchFieldError nosuchfielderror36) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS.ordinal()] = 31;
                }
                catch(NoSuchFieldError nosuchfielderror35) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT.ordinal()] = 32;
                }
                catch(NoSuchFieldError nosuchfielderror34) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN.ordinal()] = 33;
                }
                catch(NoSuchFieldError nosuchfielderror33) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ.ordinal()] = 34;
                }
                catch(NoSuchFieldError nosuchfielderror32) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT.ordinal()] = 35;
                }
                catch(NoSuchFieldError nosuchfielderror31) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT.ordinal()] = 36;
                }
                catch(NoSuchFieldError nosuchfielderror30) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN.ordinal()] = 37;
                }
                catch(NoSuchFieldError nosuchfielderror29) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON.ordinal()] = 38;
                }
                catch(NoSuchFieldError nosuchfielderror28) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE.ordinal()] = 39;
                }
                catch(NoSuchFieldError nosuchfielderror27) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_CACHE_NONE.ordinal()] = 40;
                }
                catch(NoSuchFieldError nosuchfielderror26) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA.ordinal()] = 41;
                }
                catch(NoSuchFieldError nosuchfielderror25) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_INVAL.ordinal()] = 42;
                }
                catch(NoSuchFieldError nosuchfielderror24) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL.ordinal()] = 43;
                }
                catch(NoSuchFieldError nosuchfielderror23) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER.ordinal()] = 44;
                }
                catch(NoSuchFieldError nosuchfielderror22) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND.ordinal()] = 45;
                }
                catch(NoSuchFieldError nosuchfielderror21) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT.ordinal()] = 46;
                }
                catch(NoSuchFieldError nosuchfielderror20) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DOMAIN.ordinal()] = 47;
                }
                catch(NoSuchFieldError nosuchfielderror19) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_FILE_OPEN.ordinal()] = 48;
                }
                catch(NoSuchFieldError nosuchfielderror18) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_FILE_READ.ordinal()] = 49;
                }
                catch(NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_GENERIC.ordinal()] = 50;
                }
                catch(NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_NO_CONTENT.ordinal()] = 51;
                }
                catch(NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED.ordinal()] = 52;
                }
                catch(NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT.ordinal()] = 53;
                }
                catch(NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER.ordinal()] = 54;
                }
                catch(NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER.ordinal()] = 55;
                }
                catch(NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT.ordinal()] = 56;
                }
                catch(NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT.ordinal()] = 57;
                }
                catch(NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_SSL.ordinal()] = 58;
                }
                catch(NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_TCP.ordinal()] = 59;
                }
                catch(NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT.ordinal()] = 60;
                }
                catch(NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH.ordinal()] = 61;
                }
                catch(NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_HTTP_E_AUTH_NOHEADER.ordinal()] = 62;
                }
                catch(NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE.ordinal()] = 63;
                }
                catch(NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_UNKNOWN.ordinal()] = 64;
                }
                catch(NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_SYSTEMCONTINUE.ordinal()] = 65;
                }
                catch(NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED.ordinal()] = 66;
                }
                catch(NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls9..SwitchMap.com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlDialogMessages[appbmldialogmessages.ordinal()];
        JVM INSTR tableswitch 1 66: default 292
    //                   1 358
    //                   2 365
    //                   3 372
    //                   4 379
    //                   5 386
    //                   6 393
    //                   7 400
    //                   8 407
    //                   9 414
    //                   10 421
    //                   11 428
    //                   12 435
    //                   13 442
    //                   14 449
    //                   15 456
    //                   16 463
    //                   17 470
    //                   18 477
    //                   19 484
    //                   20 491
    //                   21 498
    //                   22 505
    //                   23 512
    //                   24 519
    //                   25 526
    //                   26 537
    //                   27 544
    //                   28 551
    //                   29 558
    //                   30 565
    //                   31 572
    //                   32 579
    //                   33 586
    //                   34 593
    //                   35 600
    //                   36 607
    //                   37 614
    //                   38 621
    //                   39 628
    //                   40 635
    //                   41 642
    //                   42 649
    //                   43 656
    //                   44 663
    //                   45 670
    //                   46 677
    //                   47 684
    //                   48 691
    //                   49 698
    //                   50 705
    //                   51 712
    //                   52 719
    //                   53 726
    //                   54 733
    //                   55 740
    //                   56 747
    //                   57 754
    //                   58 761
    //                   59 768
    //                   60 775
    //                   61 782
    //                   62 789
    //                   63 796
    //                   64 803
    //                   65 810
    //                   66 817;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41 _L42 _L43 _L44 _L45 _L46 _L47 _L48 _L49 _L50 _L51 _L52 _L53 _L54 _L55 _L56 _L57 _L58 _L59 _L60 _L61 _L62 _L63 _L64 _L65 _L66 _L67
_L1:
        break; /* Loop/switch isn't completed */
_L67:
        break MISSING_BLOCK_LABEL_817;
_L68:
        if(mContext != null)
        {
            mdialogMessege = mContext.getString(i);
            isBMLDialogParameterSet = true;
        } else
        {
            isBMLDialogParameterSet = false;
        }
        if(!MtvUtilDebug.isReleaseMode() && mdialogMessege != null)
            MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("Dialog Message set as : ").append(mdialogMessege).toString());
        return;
_L2:
        i = 0x7f07003f;
          goto _L68
_L3:
        i = 0x7f070040;
          goto _L68
_L4:
        i = 0x7f070041;
          goto _L68
_L5:
        i = 0x7f07003d;
          goto _L68
_L6:
        i = 0x7f07003e;
          goto _L68
_L7:
        i = 0x7f070026;
          goto _L68
_L8:
        i = 0x7f070025;
          goto _L68
_L9:
        i = 0x7f070024;
          goto _L68
_L10:
        i = 0x7f070023;
          goto _L68
_L11:
        i = 0x7f070027;
          goto _L68
_L12:
        i = 0x7f070038;
          goto _L68
_L13:
        i = 0x7f070035;
          goto _L68
_L14:
        i = 0x7f070036;
          goto _L68
_L15:
        i = 0x7f070034;
          goto _L68
_L16:
        i = 0x7f070033;
          goto _L68
_L17:
        i = 0x7f070031;
          goto _L68
_L18:
        i = 0x7f07002d;
          goto _L68
_L19:
        i = 0x7f07002f;
          goto _L68
_L20:
        i = 0x7f07002e;
          goto _L68
_L21:
        i = 0x7f070032;
          goto _L68
_L22:
        i = 0x7f070030;
          goto _L68
_L23:
        i = 0x7f07002a;
          goto _L68
_L24:
        i = 0x7f07002b;
          goto _L68
_L25:
        i = 0x7f07002c;
          goto _L68
_L26:
        mAvoidDialog = true;
        i = 0x7f070039;
          goto _L68
_L27:
        i = 0x7f07003b;
          goto _L68
_L28:
        i = 0x7f07003c;
          goto _L68
_L29:
        i = 0x7f070022;
          goto _L68
_L30:
        i = 0x7f070020;
          goto _L68
_L31:
        i = 0x7f070021;
          goto _L68
_L32:
        i = 0x7f07001f;
          goto _L68
_L33:
        i = 0x7f07001e;
          goto _L68
_L34:
        i = 0x7f070000;
          goto _L68
_L35:
        i = 0x7f070001;
          goto _L68
_L36:
        i = 0x7f070002;
          goto _L68
_L37:
        i = 0x7f070003;
          goto _L68
_L38:
        i = 0x7f070004;
          goto _L68
_L39:
        i = 0x7f070005;
          goto _L68
_L40:
        i = 0x7f070006;
          goto _L68
_L41:
        i = 0x7f070007;
          goto _L68
_L42:
        i = 0x7f070008;
          goto _L68
_L43:
        i = 0x7f070009;
          goto _L68
_L44:
        i = 0x7f07000a;
          goto _L68
_L45:
        i = 0x7f07000b;
          goto _L68
_L46:
        i = 0x7f07000c;
          goto _L68
_L47:
        i = 0x7f07000d;
          goto _L68
_L48:
        i = 0x7f07000e;
          goto _L68
_L49:
        i = 0x7f07000f;
          goto _L68
_L50:
        i = 0x7f070010;
          goto _L68
_L51:
        i = 0x7f070011;
          goto _L68
_L52:
        i = 0x7f070012;
          goto _L68
_L53:
        i = 0x7f070013;
          goto _L68
_L54:
        i = 0x7f070014;
          goto _L68
_L55:
        i = 0x7f070016;
          goto _L68
_L56:
        i = 0x7f070017;
          goto _L68
_L57:
        i = 0x7f070015;
          goto _L68
_L58:
        i = 0x7f070018;
          goto _L68
_L59:
        i = 0x7f070019;
          goto _L68
_L60:
        i = 0x7f07001a;
          goto _L68
_L61:
        i = 0x7f07001c;
          goto _L68
_L62:
        i = 0x7f07001b;
          goto _L68
_L63:
        i = 0x7f070028;
          goto _L68
_L64:
        i = 0x7f070029;
          goto _L68
_L65:
        i = 0x7f07001d;
          goto _L68
_L66:
        i = 0x7f070037;
          goto _L68
        i = 0x7f07003a;
          goto _L68
    }

    public void setIsDialogSet(boolean flag)
    {
        isBMLDialogParameterSet = flag;
    }

    public boolean showBMLDialog(final int cmd)
    {
        MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("showDialogForBML : Entered [cmd] : ").append(cmd).toString());
        setCmd(cmd);
        if(mContext != null)
        {
            if(mContext.getResources().getConfiguration().orientation == 2)
            {
                MtvUtilDebug.Low("MtvUiBmlDialog", "showDialogForBML: Landscapemode no need to make dialog");
                return false;
            }
            if(mFragHandler != null)
                mFragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE, -1L, false, new int[0]);
            if(isDialogSet())
            {
                adb = new android.app.AlertDialog.Builder(mContext);
                adb.setTitle(0x7f070042);
                adb.setMessage(getDialogMessege());
                if(cmd == 6)
                {
                    View view = ((LayoutInflater)mContext.getSystemService("layout_inflater")).inflate(0x7f030011, null);
                    MtvUtilDebug.Low("MtvUiBmlDialog", "SLIM_BRCOMMAND_QUERY_AUTH_DIALOG");
                    adb.setView(view);
                    if(mBmlApp.isPrevUserNameNedded())
                    {
                        String s = "";
                        if(mBmlApp.getPrevUserName() != null)
                            s = new String(mBmlApp.getPrevUserName());
                        ((EditText)((Activity)mContext).findViewById(0x7f0a0062)).setText(s);
                    }
                    if(mBmlApp.isPrevUserPasswdNedded())
                        ((EditText)((Activity)mContext).findViewById(0x7f0a0064)).setText(mBmlApp.getPrevUserPassWd());
                }
                adb.setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        if(cmd == 6)
                        {
                            MtvUiBmlDialogFrag.mBmlApp.setUserName(((EditText)((Activity)mContext).findViewById(0x7f0a0062)).getText().toString().getBytes());
                            MtvUiBmlDialogFrag.mBmlApp.setPrevUserPassWd(((EditText)((Activity)mContext).findViewById(0x7f0a0064)).getText().toString());
                            if(((CheckBox)((Activity)mContext).findViewById(0x7f0a0065)).isChecked())
                            {
                                MtvUiBmlDialogFrag.mBmlApp.storeUserName(true);
                                MtvUiBmlDialogFrag.mBmlApp.storeUserPasswd(true);
                            }
                        }
                        dialoginterface.dismiss();
                        MtvUiBmlDialogFrag.mDialogShowing = false;
                        isBMLDialogParameterSet = false;
                        mBMLdiag = null;
                        MtvUiBmlDialogFrag.savedDialogState = null;
                        MtvUtilDebug.Low("MtvUiBmlDialog", "showDialogForBML: Yes is selected");
                        if(MtvUiBmlDialogFrag.mBmlApp != null)
                            MtvUiBmlDialogFrag.mBmlApp.sendDialogReply(com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_YES, cmd);
                        if(MtvUiBmlDialogFrag.mFragHandler != null && MtvUiBmlDialogFrag.mFragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE) && isAdded())
                            MtvUiBmlDialogFrag.mFragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE);
                    }

                    final MtvUiBmlDialogFrag this$0;
                    final int val$cmd;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                cmd = i;
                super();
            }
                }
);
                if(getBtnNum() == 2)
                    adb.setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            dialoginterface.dismiss();
                            MtvUiBmlDialogFrag.mDialogShowing = false;
                            isBMLDialogParameterSet = false;
                            if(MtvUiBmlDialogFrag.mFragHandler != null && MtvUiBmlDialogFrag.mFragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE) && isAdded())
                                MtvUiBmlDialogFrag.mFragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE);
                            mBMLdiag = null;
                            MtvUiBmlDialogFrag.savedDialogState = null;
                            MtvUtilDebug.Low("MtvUiBmlDialog", "showDialogForBML: Cancel is selected");
                            MtvUiBmlDialogFrag.mBmlApp.sendDialogReply(com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_NO, cmd);
                            if(mContext instanceof MtvUiTvLinks)
                                ((Activity)mContext).finish();
                        }

                        final MtvUiBmlDialogFrag this$0;
                        final int val$cmd;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                cmd = i;
                super();
            }
                    }
);
                adb.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        dialoginterface.dismiss();
                        MtvUiBmlDialogFrag.mDialogShowing = false;
                        isBMLDialogParameterSet = false;
                        mBMLdiag = null;
                        MtvUiBmlDialogFrag.savedDialogState = null;
                        MtvUtilDebug.Low("MtvUiBmlDialog", "showDialogForBML: Back is selected");
                        if(MtvUiBmlDialogFrag.mFragHandler != null && MtvUiBmlDialogFrag.mFragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE) && isAdded())
                            MtvUiBmlDialogFrag.mFragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE);
                        MtvUiBmlDialogFrag.mBmlApp.sendDialogReply(com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_NO, cmd);
                    }

                    final MtvUiBmlDialogFrag this$0;
                    final int val$cmd;

            
            {
                this$0 = MtvUiBmlDialogFrag.this;
                cmd = i;
                super();
            }
                }
);
                mBMLdiag = adb.create();
                if(mAvoidDialog)
                {
                    MtvUtilDebug.Low("MtvUiBmlDialog", (new StringBuilder()).append("Dialog Avoided [cmd] : ").append(cmd).toString());
                    mAvoidDialog = false;
                } else
                {
                    try
                    {
                        mBMLdiag.show();
                    }
                    catch(Exception exception)
                    {
                        exception.printStackTrace();
                    }
                    mDialogShowing = true;
                }
                mEditDialogShowing = false;
                return true;
            }
        }
        return false;
    }

    private static final String BML_DIALOG_POPUP = "bml_dialog_popup";
    private static MtvUiBmlDialogFrag BmlDialogFrag = null;
    private static final String TAG = "MtvUiBmlDialog";
    private static int cmd = 0;
    private static boolean mAvoidDialog = false;
    private static MtvAppBml mBmlApp = null;
    public static boolean mDialogShowing = false;
    public static boolean mEditDialogShowing = false;
    private static MtvUiFragHandler mFragHandler = null;
    private static Bundle savedDialogState = null;
    private android.app.AlertDialog.Builder adb;
    private byte byteCopy[];
    private EditText edit;
    private String editText;
    private boolean isBMLDialogParameterSet;
    private boolean isMultiLineCopy;
    private boolean isPasswordCopy;
    private AlertDialog mBMLdiag;
    private Context mContext;
    InputMethodManager mInputManager;
    private int maxlengthCopy;
    private int mbtnNum;
    private String mdialogMessege;
    private int modeCopy;





/*
    static boolean access$202(MtvUiBmlDialogFrag mtvuibmldialogfrag, boolean flag)
    {
        mtvuibmldialogfrag.isBMLDialogParameterSet = flag;
        return flag;
    }

*/


/*
    static AlertDialog access$302(MtvUiBmlDialogFrag mtvuibmldialogfrag, AlertDialog alertdialog)
    {
        mtvuibmldialogfrag.mBMLdiag = alertdialog;
        return alertdialog;
    }

*/


/*
    static Bundle access$402(Bundle bundle)
    {
        savedDialogState = bundle;
        return bundle;
    }

*/



/*
    static byte[] access$602(MtvUiBmlDialogFrag mtvuibmldialogfrag, byte abyte0[])
    {
        mtvuibmldialogfrag.byteCopy = abyte0;
        return abyte0;
    }

*/
}
