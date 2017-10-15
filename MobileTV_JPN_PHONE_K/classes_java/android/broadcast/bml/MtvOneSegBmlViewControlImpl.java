// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.bml;

import android.broadcast.IMtvOneSegBmlViewControl;
import android.broadcast.IMtvOneSegBmlViewListener;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.view.KeyEvent;
import com.access.bml.BMLNativeView;

// Referenced classes of package android.broadcast.bml:
//            IMtvNativeBmlViewListener, MtvNativeBmlEngineImpl

public class MtvOneSegBmlViewControlImpl
    implements IMtvOneSegBmlViewControl, IMtvNativeBmlViewListener
{

    private MtvOneSegBmlViewControlImpl()
    {
        curSecure = false;
    }

    public static MtvOneSegBmlViewControlImpl getInstance()
    {
        if(mViewControl == null)
            mViewControl = new MtvOneSegBmlViewControlImpl();
        return mViewControl;
    }

    public boolean allowConnection(int i)
    {
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("allowConnection: CMD").append(i).toString());
        if(mBmlEngine == null)
            return false;
        else
            return mAllowConnection;
    }

    public boolean allowLocation(int i)
    {
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("allowConnection: CMD").append(i).toString());
        if(mBmlEngine == null)
            return false;
        else
            return mAllowLocation;
    }

    public void appExIMEEndPeer(boolean flag, byte abyte0[])
    {
        if(mBmlEngine != null)
            mBmlEngine.BML_appExIMEEndPeer(flag, abyte0);
    }

    public void attachViewListener(IMtvOneSegBmlViewListener imtvonesegbmlviewlistener)
    {
        mAppViewListener = imtvonesegbmlviewlistener;
        if(mBmlEngine != null)
            mBmlEngine.attachViewListener(this);
    }

    public void cb_KeyPadTypeChanged()
    {
        if(mAppViewListener != null)
            mAppViewListener.cb_bmlControlTypeChanged();
    }

    public void cb_appIMEStartPeer(byte abyte0[], boolean flag, boolean flag1, int i, int j)
    {
        if(mAppViewListener != null)
            mAppViewListener.cb_appIMEStartPeer(abyte0, flag, flag1, i, j);
    }

    public void cb_haltExecuted(int i)
    {
        curSecure = false;
        if(mAppViewListener != null)
        {
            mAppViewListener.cb_destroyBMLDialog();
            mAppViewListener.cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RECEIVING);
            if(i == 1)
                mAppViewListener.cb_startBmlAnimation();
            else
            if(i == 0)
            {
                mAppViewListener.cb_stopBmlAnimation();
                return;
            }
        }
    }

    public void cb_mailToPeer(byte abyte0[], byte abyte1[], byte abyte2[])
    {
        if(mAppViewListener != null)
            mAppViewListener.cb_mailToPeer(abyte0, abyte1, abyte2);
    }

    public void cb_phoneToPeer(String s)
    {
        if(mAppViewListener != null)
            mAppViewListener.cb_phoneToPeer(s);
    }

    public boolean cb_processCommand(int i, int j)
    {
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("getDialogInfo : Cmd ").append(i).toString());
        isDailogNeed = true;
        replyToEngine = true;
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("getDialogInfo : isDailogNeed ").append(isDailogNeed).toString());
        if(mAppViewListener == null || mBmlEngine == null)
            return false;
        i;
        JVM INSTR lookupswitch 15: default 204
    //                   0: 337
    //                   4: 616
    //                   6: 653
    //                   7: 690
    //                   18: 841
    //                   21: 287
    //                   23: 1955
    //                   26: 889
    //                   150: 1116
    //                   152: 1139
    //                   153: 1620
    //                   154: 1750
    //                   155: 1773
    //                   156: 1873
    //                   157: 1887;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L1:
        isDailogNeed = false;
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : SLIM_BRCOMMAND_NOTIFY_CONTENT_ERROR yesdefault ").append(isDailogNeed).toString());
_L18:
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("getDialogInfo return: Dialog ").append(isDailogNeed).append(" reply ").append(replyToEngine).toString());
        if(i == 18 || i == 21)
            return isDialogWaiting;
        break; /* Loop/switch isn't completed */
_L7:
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("SLIM_BRCOMMAND_NOTIFY_WINDOW_STATE").append(mBmlEngine.fWindowState_State).toString());
        if(mBmlEngine.fWindowState_State == 2)
            mAppViewListener.cb_stopBmlAnimation();
        continue; /* Loop/switch isn't completed */
_L2:
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("fSetLocation_URL : ").append(mBmlEngine.fSetLocation_URL).toString());
        if(mAppViewListener != null && !mAppViewListener.cb_processCommand(i, j, mBmlEngine.fFuncName))
        {
            isDailogNeed = false;
            replyToEngine = true;
        }
        if(mBmlEngine.fSetLocation_URL.startsWith("https"))
        {
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_SSL_BEGIN);
            mAppViewListener.cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RETREIVING);
            mAppViewListener.cb_setDialogBtnNum(2);
            curSecure = true;
        } else
        if(mBmlEngine.fSetLocation_URL.startsWith("http"))
        {
            if(curSecure)
                mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_SSL_END);
            else
                mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_HTTP);
            mAppViewListener.cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RETREIVING);
            mAppViewListener.cb_setDialogBtnNum(2);
            curSecure = false;
        } else
        {
            mAppViewListener.cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RECEIVING);
            if(curSecure)
            {
                mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_SSL_END);
                mAppViewListener.cb_setDialogBtnNum(1);
                curSecure = false;
            } else
            {
                isDailogNeed = false;
                replyToEngine = true;
                MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : SLIM_BRCOMMAND_QUERY_SETLOCATION ").append(isDailogNeed).toString());
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        isDailogNeed = false;
        replyToEngine = true;
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : SLIM_BRCOMMAND_QUERY_REDIRECT_DIALOG ").append(isDailogNeed).toString());
        continue; /* Loop/switch isn't completed */
_L4:
        isDailogNeed = false;
        replyToEngine = true;
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : SLIM_BRCOMMAND_QUERY_AUTH_DIALOG ").append(isDailogNeed).toString());
        continue; /* Loop/switch isn't completed */
_L5:
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("fServerCert_VerifyResult : ").append(mBmlEngine.fServerCert_VerifyResult).toString());
        switch(mBmlEngine.fServerCert_VerifyResult)
        {
        case 1: // '\001'
        case 2: // '\002'
        case 4: // '\004'
        case 8: // '\b'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION);
            mAppViewListener.cb_setDialogBtnNum(2);
            break;

        case 65536: 
        case 134217728: 
        case 268435456: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SERVER_CERT_CONFIRM_DIALOG);
            mAppViewListener.cb_setDialogBtnNum(1);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L6:
        if(mAppViewListener != null)
            mAppViewListener.cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RETREIVING);
        if(mBmlEngine.fStreamState_State == 22 && mAppViewListener != null)
            mAppViewListener.cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RECEIVING);
        continue; /* Loop/switch isn't completed */
_L9:
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("fErrorCode : ").append(mBmlEngine.fErrorCode).toString());
        switch(mBmlEngine.fErrorCode)
        {
        default:
            isDailogNeed = false;
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : default ").append(isDailogNeed).toString());
            break;

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_NOMEMORY);
            mAppViewListener.cb_setDialogBtnNum(1);
            break;

        case 3: // '\003'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_TOTAL_SIZEOVER);
            mAppViewListener.cb_setDialogBtnNum(1);
            break;

        case 4: // '\004'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_BADURL);
            mAppViewListener.cb_setDialogBtnNum(1);
            break;

        case 5: // '\005'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_BADMIMETYPE);
            mAppViewListener.cb_setDialogBtnNum(1);
            break;

        case 6: // '\006'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_MIXEDSECURETYPE);
            mAppViewListener.cb_setDialogBtnNum(1);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L10:
        mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_TRANSMITTEXTDATA);
        mAppViewListener.cb_setDialogBtnNum(1);
        continue; /* Loop/switch isn't completed */
_L11:
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("fFuncName : ").append(mBmlEngine.fFuncName).toString());
        mAppViewListener.cb_setDialogBtnNum(2);
        if(mBmlEngine.fFuncName.compareTo("transmitTextDataOverIP") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP);
        else
        if(mBmlEngine.fFuncName.compareTo("writePersistentArray") == 0)
        {
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray);
            isDailogNeed = false;
            replyToEngine = true;
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION ").append(isDailogNeed).toString());
        } else
        if(mBmlEngine.fFuncName.compareTo("saveImageToMemoryCard") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard);
        else
        if(mBmlEngine.fFuncName.compareTo("saveHttpServerImageToMemoryCard") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard);
        else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_writeCproBM") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM);
        else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_mailTo") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo);
        else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_startResidentApp") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp);
        else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_phoneTo") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo);
        else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_writeSchInfo") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo);
        else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_writeAddressBookInfo") == 0)
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo);
        else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_getCurPos") == 0)
        {
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos);
            mAppViewListener.cb_processCommand(i, j, mBmlEngine.fFuncName);
        } else
        if(mBmlEngine.fFuncName.compareTo("X_DPA_getIRDID") == 0)
        {
            mAppViewListener.cb_processCommand(i, j, mBmlEngine.fFuncName);
        } else
        {
            isDailogNeed = false;
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : X_DPA_getIRDID ").append(isDailogNeed).toString());
            replyToEngine = true;
        }
        continue; /* Loop/switch isn't completed */
_L12:
        switch(mBmlEngine.fAction)
        {
        case 0: // '\0'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEBOOKMARK);
            isDailogNeed = false;
            replyToEngine = true;
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("cb_processCommand : SLIM_DTV_WRITEBOOKMARK_NEW ").append(isDailogNeed).toString());
            break;

        case 1: // '\001'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED);
            mAppViewListener.cb_setDialogBtnNum(2);
            break;

        case 2: // '\002'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST);
            mAppViewListener.cb_setDialogBtnNum(2);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L13:
        mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEPERSISTENTARRAY);
        mAppViewListener.cb_setDialogBtnNum(2);
        continue; /* Loop/switch isn't completed */
_L14:
        mAppViewListener.cb_setDialogBtnNum(1);
        switch(mBmlEngine.fStatus)
        {
        case -12: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX);
            break;

        case -11: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY);
            break;

        case -7: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L15:
        mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_SYSTEMCONTINUE);
        if(true) goto _L18; else goto _L17
_L16:
        mAppViewListener.cb_setDialogBtnNum(1);
        switch(mBmlEngine.fErrorCode)
        {
        case 1: // '\001'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS);
            break;

        case 2: // '\002'
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT);
            break;
        }
        if(true) goto _L18; else goto _L19
_L19:
_L8:
        mAppViewListener.cb_setDialogBtnNum(1);
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("fContent_ErrorCode : ").append(mBmlEngine.fContent_ErrorCode).toString());
        switch(mBmlEngine.fContent_ErrorCode)
        {
        default:
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_UNKNOWN);
            break;

        case -1100: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN);
            break;

        case -1099: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ);
            break;

        case -1098: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT);
            break;

        case -182: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT);
            break;

        case -184: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN);
            break;

        case -1998: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON);
            break;

        case -185: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE);
            break;

        case -186: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_CACHE_NONE);
            break;

        case -1200: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA);
            break;

        case -200: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_INVAL);
            break;

        case -199: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER);
            break;

        case -197: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND);
            break;

        case -198: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT);
            break;

        case -1199: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DOMAIN);
            break;

        case -1: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_GENERIC);
            break;

        case -599: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_NO_CONTENT);
            break;

        case -180: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED);
            break;

        case -181: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT);
            break;

        case -178: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER);
            break;

        case -179: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER);
            break;

        case -188: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT);
            break;

        case -187: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT);
            break;

        case -192: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_SSL);
            break;

        case -191: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_SSL);
            break;

        case -190: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_SSL);
            break;

        case -189: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_SSL);
            break;

        case -196: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TCP);
            break;

        case -195: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TCP);
            break;

        case -194: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TCP);
            break;

        case -193: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TCP);
            break;

        case -598: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT);
            break;

        case -597: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH);
            break;

        case -183: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_HTTP_E_AUTH_NOHEADER);
            break;

        case -176: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE);
            break;

        case -596: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_BADMIMETYPE);
            break;

        case -600: 
            mAppViewListener.cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_TOTAL_SIZEOVER);
            break;
        }
        continue; /* Loop/switch isn't completed */
_L17:
        if(!isDailogNeed)
        {
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", "cb_processCommand: Dialogue not required.");
            setDialogReply(i, replyToEngine);
        } else
        {
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", "cb_processCommand: Show dialogue");
            isDialogWaiting = mAppViewListener.cb_showBMLDialog(i);
            mBmlEngine.setWaiting(isDialogWaiting);
        }
        return isDialogWaiting;
        if(true) goto _L18; else goto _L20
_L20:
    }

    public void cb_setBMLFullView()
    {
        if(mAppViewListener != null)
            mAppViewListener.cb_setBMLFullView();
    }

    public int cb_startResidentAppPeer(byte abyte0[], int i, byte abyte1[], String as[])
    {
        if(mAppViewListener != null)
            return mAppViewListener.cb_startResidentAppPeer(abyte0, i, abyte1, as);
        else
            return 0;
    }

    public int cb_storeImage(byte abyte0[], boolean flag, byte abyte1[])
    {
        int i = mAppViewListener.cb_storeImage(abyte0, flag, abyte1);
        if(i == -1050)
            return -1050;
        return i != -1053 ? 0 : -1053;
    }

    public void cb_updateBMLSurfaceView()
    {
        if(mBmlEngine.BML_GetHaltStatus() != -1)
        {
            mAppViewListener.cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RECEIVING);
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", "updateBMLSurfaceView:  start BML animation  ");
            mAppViewListener.cb_startBmlAnimation();
        }
        mAppViewListener.cb_updateBMLSurfaceView();
    }

    public int cb_writeAddressBookInfoPeer(byte abyte0[], byte abyte1[], String s, String s1)
    {
        if(mAppViewListener != null)
            return mAppViewListener.cb_writeAddressBookInfoPeer(abyte0, abyte1, s, s1);
        else
            return 0;
    }

    public int cb_writeSchInfoPeer(short word0, int i, int j, int k, int l, int i1, int j1, 
            short word1, byte abyte0[], byte abyte1[], boolean flag)
    {
        if(mAppViewListener != null)
            return mAppViewListener.cb_writeSchInfoPeer(word0, i, j, k, l, i1, j1, word1, abyte0, abyte1, flag);
        else
            return 0;
    }

    public void dettachViewListener(IMtvOneSegBmlViewListener imtvonesegbmlviewlistener)
    {
        mAppViewListener = null;
        if(mBmlEngine != null)
            mBmlEngine.dettachViewListener(this);
        mAllowConnection = false;
        mAllowLocation = false;
    }

    public void disableBml()
    {
    }

    public void enableBml()
    {
    }

    public int getUserKeyPadType()
    {
        if(mBmlEngine != null)
            return mBmlEngine.getKeyPad_mask();
        else
            return 0;
    }

    public boolean getfAuth_KeepPassword()
    {
        if(mBmlEngine != null)
            return mBmlEngine.fAuth_KeepPassword;
        else
            return false;
    }

    public boolean getfAuth_KeepUserName()
    {
        if(mBmlEngine != null)
            return mBmlEngine.fAuth_KeepUserName;
        else
            return false;
    }

    public String getfAuth_Password()
    {
        if(mBmlEngine != null)
            return mBmlEngine.fAuth_Password;
        else
            return null;
    }

    public byte[] getfAuth_UserName()
    {
        if(mBmlEngine != null)
            return mBmlEngine.fAuth_UserName;
        else
            return null;
    }

    public boolean isDailogNeed()
    {
        return isDailogNeed;
    }

    public boolean isReplyToEngine()
    {
        return replyToEngine;
    }

    public boolean onKeyEvent(KeyEvent keyevent)
    {
        if(mBmlEngine == null)
            return false;
        if(!mBmlEngine.getAvailableKey(keyevent.getKeyCode()))
        {
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", "onKeyEvent: unavailable Key code ");
            return false;
        }
        if(mBmlEngine.BML_GetHaltStatus() != -1) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("onKeyEvent:get Key event Code : ").append(keyevent.getKeyCode()).append("window ").toString());
        if(keyevent.getAction() != 0) goto _L4; else goto _L3
_L3:
        if(keyevent.getKeyCode() == 4 && (mBmlEngine.fSetLocation_URL.startsWith("https") || mBmlEngine.fSetLocation_URL.startsWith("http")))
        {
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", "onKeyEvent: BACK Key is pressed Browser_WindowAbort()");
            mBmlEngine.Browser_WindowAbort();
            if(mAppViewListener != null)
                mAppViewListener.cb_stopBmlAnimation();
        }
        mBmlEngine.Browser_processKeyEvent(keyevent.getKeyCode(), keyevent.getUnicodeChar(), true);
_L5:
        return true;
_L4:
        if(keyevent.getAction() == 1)
            mBmlEngine.Browser_processKeyEvent(keyevent.getKeyCode(), keyevent.getUnicodeChar(), false);
        if(true) goto _L5; else goto _L2
_L2:
        MtvUtilDebug.Mid("MtvOneSegBmlViewControlImpl", "onKeyEvent:BML is Halted. Skip Key event");
        return false;
    }

    public void openBMLHomePage()
    {
        if(mBmlEngine != null)
            mBmlEngine.BML_NotifyReturnToEntry();
    }

    public void processMouseEvent(int i, int j, android.broadcast.oneseg.MtvOneSegBmlParams.action action)
    {
        static class _cls1
        {

            static final int $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$action[];

            static 
            {
                $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$action = new int[android.broadcast.oneseg.MtvOneSegBmlParams.action.values().length];
                try
                {
                    $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$action[android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_DOWN.ordinal()] = 1;
                }
                catch(NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$action[android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_MOVE.ordinal()] = 2;
                }
                catch(NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$action[android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_UP.ordinal()] = 3;
                }
                catch(NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.android.broadcast.oneseg.MtvOneSegBmlParams.action[action.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 56
    //                   2 62
    //                   3 68;
           goto _L1 _L2 _L3 _L4
_L1:
        int k = 0;
_L6:
        if(mBmlEngine != null)
            mBmlEngine.Browser_processMouseEvent(i, j, k);
        return;
_L2:
        k = 0;
        continue; /* Loop/switch isn't completed */
_L3:
        k = 1;
        continue; /* Loop/switch isn't completed */
_L4:
        k = 2;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void registerSurface(Context context, BMLNativeView bmlnativeview)
    {
        if(bmlnativeview != null && context != null)
        {
            mBmlEngine = MtvNativeBmlEngineImpl.getInstance(context);
            if(mBmlEngine != null)
            {
                bmlnativeview.initEngine(mBmlEngine);
                mBmlEngine.initView(bmlnativeview);
                return;
            }
        }
    }

    public void replyToCommand()
    {
        if(mBmlEngine != null)
            mBmlEngine.Browser_ReplyToCommand();
    }

    public void replyToCommand(android.broadcast.oneseg.MtvOneSegBmlParams.onesegBmlDialogReply onesegbmldialogreply, int i)
    {
        if(mBmlEngine != null)
        {
            if(i == 152 && onesegbmldialogreply == android.broadcast.oneseg.MtvOneSegBmlParams.onesegBmlDialogReply.MTV_ONESEG_BML_DIALOG_REPLAY_YES)
                if(mBmlEngine.fFuncName.compareTo("X_DPA_getCurPos") == 0)
                {
                    String s = new String(mBmlEngine.fArgStr);
                    if(s.compareTo("GPS") == 0)
                        mBmlEngine.startLocationService();
                    else
                    if(s.compareTo("CB") == 0)
                        mBmlEngine.startLocationService();
                    MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("showDialogForBML: Yes is selected startLocationService").append(s).toString());
                } else
                if(mBmlEngine.fFuncName.compareTo("X_DPA_getRcvCond") == 0)
                {
                    mBmlEngine.startTelephonyService(257);
                    MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", "showDialogForBML: Yes is selected startLocationService");
                }
            if(onesegbmldialogreply == android.broadcast.oneseg.MtvOneSegBmlParams.onesegBmlDialogReply.MTV_ONESEG_BML_DIALOG_REPLAY_YES)
            {
                saveUserChoice(i);
                setDialogReply(i, true);
            } else
            {
                setDialogReply(i, false);
            }
            mBmlEngine.Browser_ReplyToCommand();
        }
    }

    public void saveUserChoice(int i)
    {
        i;
        JVM INSTR lookupswitch 2: default 28
    //                   0: 29
    //                   152: 62;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        if(mBmlEngine.fSetLocation_URL.startsWith("http") || mBmlEngine.fSetLocation_URL.startsWith("https"))
        {
            mAllowConnection = true;
            return;
        }
          goto _L1
_L3:
        mAllowLocation = true;
        return;
    }

    public void setDailogNeed(boolean flag)
    {
        MtvUtilDebug.Mid("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("setDailogNeed: DailogNeed").append(flag).toString());
        isDailogNeed = flag;
    }

    public int setDialogReply(int i, boolean flag)
    {
        MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", (new StringBuilder()).append("setResultDialog: CMD").append(i).append(",Reply").append(flag).toString());
        if(mBmlEngine == null)
            return 0;
        i;
        JVM INSTR lookupswitch 7: default 112
    //                   0: 142
    //                   4: 160
    //                   7: 170
    //                   150: 180
    //                   152: 190
    //                   153: 200
    //                   154: 210;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        isDialogWaiting = false;
        isDailogNeed = false;
        curSecure = false;
        MtvUtilDebug.Mid("MtvOneSegBmlViewControlImpl", "setDialogReply: FALSE");
        mBmlEngine.setWaiting(false);
        return 0;
_L2:
        mBmlEngine.fDoRequestContent_Reply = flag;
        mAppViewListener.cb_startBmlAnimation();
        continue; /* Loop/switch isn't completed */
_L3:
        mBmlEngine.fDoRedirect_Reply = flag;
        continue; /* Loop/switch isn't completed */
_L4:
        mBmlEngine.fConfirmed_Reply = flag;
        continue; /* Loop/switch isn't completed */
_L5:
        mBmlEngine.fDoRequestContent = flag;
        continue; /* Loop/switch isn't completed */
_L6:
        mBmlEngine.fDoPermit = flag;
        continue; /* Loop/switch isn't completed */
_L7:
        mBmlEngine.fDoWrite = flag;
        continue; /* Loop/switch isn't completed */
_L8:
        mBmlEngine.fDoWrite = flag;
        if(true) goto _L1; else goto _L9
_L9:
    }

    public boolean setDisplaySize(int i, int j, int k, int l)
    {
label0:
        {
            if(mBmlEngine != null)
            {
                MtvNativeBmlEngineImpl mtvnativebmlengineimpl = mBmlEngine;
                if(MtvNativeBmlEngineImpl.BMLEngineInitStatus)
                    break label0;
            }
            StringBuilder stringbuilder = (new StringBuilder()).append("BML engine is not Initialized!!! BMLEngineInit status = ");
            MtvNativeBmlEngineImpl mtvnativebmlengineimpl1 = mBmlEngine;
            MtvUtilDebug.High("MtvOneSegBmlViewControlImpl", stringbuilder.append(MtvNativeBmlEngineImpl.BMLEngineInitStatus).toString());
            return false;
        }
        if(mBmlEngine.BML_GetHaltStatus() == -1)
        {
            mBmlEngine.Browser_SetRect(i, j, k, l);
            return true;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegBmlViewControlImpl", "setDisplaySize: BML is Halted. skip Browser_SetRect ");
            return false;
        }
    }

    public void setReplyToEngine(boolean flag)
    {
        replyToEngine = flag;
    }

    public void setfKeepPassword_Reply(boolean flag)
    {
        if(mBmlEngine != null)
            mBmlEngine.fKeepPassword_Reply = flag;
    }

    public void setfKeepUserName_Reply(boolean flag)
    {
        if(mBmlEngine != null)
            mBmlEngine.fKeepUserName_Reply = flag;
    }

    public void setfPassword_Reply(String s)
    {
        if(mBmlEngine != null)
            mBmlEngine.fPassword_Reply = s;
    }

    public void setfUserName_Reply(byte abyte0[])
    {
        if(mBmlEngine != null)
            mBmlEngine.fUserName_Reply = abyte0;
    }

    public void startLocationService()
    {
        if(mBmlEngine != null)
            mBmlEngine.startLocationService();
    }

    public void startTelephonyService(int i)
    {
        if(mBmlEngine != null)
            mBmlEngine.startTelephonyService(i);
    }

    private static final String TAG = "MtvOneSegBmlViewControlImpl";
    private static boolean isDailogNeed = true;
    private static boolean isDialogWaiting = false;
    public static boolean mAllowConnection = false;
    public static boolean mAllowLocation = false;
    private static IMtvOneSegBmlViewListener mAppViewListener = null;
    private static MtvNativeBmlEngineImpl mBmlEngine = null;
    private static MtvOneSegBmlViewControlImpl mViewControl = null;
    private static boolean replyToEngine = true;
    private boolean curSecure;

}
