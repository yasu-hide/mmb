// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.bml;

import android.broadcast.IMtvOneSegBmlViewControl;
import android.broadcast.IMtvOneSegBmlViewListener;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.oneseg.MtvOneSegFactory;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import com.access.bml.BMLNativeView;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContext;
import com.samsung.sec.mtv.app.context.MtvAppProgramComponents;
import com.samsung.sec.mtv.utility.MtvPreferences;
import com.samsung.sec.mtv.utility.MtvUtilMemoryStatus;
import java.io.*;
import java.util.GregorianCalendar;

// Referenced classes of package com.samsung.sec.mtv.app.bml:
//            IMtvAppBmlDialogListener, IMtvAppBmlSurfaceListener, IMtvAppBmlAnimationListener

public class MtvAppBml
    implements IMtvOneSegBmlViewListener
{

    private MtvAppBml(Context context)
    {
        mMtvAppPlaybackContext = null;
        mBmlViewControl = null;
        mPreferences = null;
        mBmlSurfaceListener = null;
        mBmlDialogListener = null;
        mBmlAnimationListener = null;
        mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_BASIC;
        isBMLDialogMsgSet = false;
        mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_NONE;
        mDialgDisplayed = false;
        mBmlUIMsgHandler = new Handler() {

            public void handleMessage(Message message)
            {
                MtvUtilDebug.Mid("MtvAppBml", (new StringBuilder()).append("handleMessage : ").append(message.what).toString());
                static class _cls2
                {

                    static final int $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[];
                    static final int $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[];

                    static 
                    {
                        $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages = new int[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.values().length];
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_HTTP.ordinal()] = 1;
                        }
                        catch(NoSuchFieldError nosuchfielderror75) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_SSL_BEGIN.ordinal()] = 2;
                        }
                        catch(NoSuchFieldError nosuchfielderror74) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_SSL_END.ordinal()] = 3;
                        }
                        catch(NoSuchFieldError nosuchfielderror73) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SERVER_CERT_CONFIRM_DIALOG.ordinal()] = 4;
                        }
                        catch(NoSuchFieldError nosuchfielderror72) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION.ordinal()] = 5;
                        }
                        catch(NoSuchFieldError nosuchfielderror71) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_NOMEMORY.ordinal()] = 6;
                        }
                        catch(NoSuchFieldError nosuchfielderror70) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_MIXEDSECURETYPE.ordinal()] = 7;
                        }
                        catch(NoSuchFieldError nosuchfielderror69) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_BADURL.ordinal()] = 8;
                        }
                        catch(NoSuchFieldError nosuchfielderror68) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_BADMIMETYPE.ordinal()] = 9;
                        }
                        catch(NoSuchFieldError nosuchfielderror67) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_ERROR_TOTAL_SIZEOVER.ordinal()] = 10;
                        }
                        catch(NoSuchFieldError nosuchfielderror66) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_TRANSMITTEXTDATA.ordinal()] = 11;
                        }
                        catch(NoSuchFieldError nosuchfielderror65) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP.ordinal()] = 12;
                        }
                        catch(NoSuchFieldError nosuchfielderror64) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray.ordinal()] = 13;
                        }
                        catch(NoSuchFieldError nosuchfielderror63) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard.ordinal()] = 14;
                        }
                        catch(NoSuchFieldError nosuchfielderror62) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard.ordinal()] = 15;
                        }
                        catch(NoSuchFieldError nosuchfielderror61) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM.ordinal()] = 16;
                        }
                        catch(NoSuchFieldError nosuchfielderror60) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo.ordinal()] = 17;
                        }
                        catch(NoSuchFieldError nosuchfielderror59) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp.ordinal()] = 18;
                        }
                        catch(NoSuchFieldError nosuchfielderror58) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo.ordinal()] = 19;
                        }
                        catch(NoSuchFieldError nosuchfielderror57) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo.ordinal()] = 20;
                        }
                        catch(NoSuchFieldError nosuchfielderror56) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo.ordinal()] = 21;
                        }
                        catch(NoSuchFieldError nosuchfielderror55) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos.ordinal()] = 22;
                        }
                        catch(NoSuchFieldError nosuchfielderror54) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID.ordinal()] = 23;
                        }
                        catch(NoSuchFieldError nosuchfielderror53) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond.ordinal()] = 24;
                        }
                        catch(NoSuchFieldError nosuchfielderror52) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEBOOKMARK.ordinal()] = 25;
                        }
                        catch(NoSuchFieldError nosuchfielderror51) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST.ordinal()] = 26;
                        }
                        catch(NoSuchFieldError nosuchfielderror50) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEPERSISTENTARRAY.ordinal()] = 27;
                        }
                        catch(NoSuchFieldError nosuchfielderror49) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY.ordinal()] = 28;
                        }
                        catch(NoSuchFieldError nosuchfielderror48) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION.ordinal()] = 29;
                        }
                        catch(NoSuchFieldError nosuchfielderror47) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX.ordinal()] = 30;
                        }
                        catch(NoSuchFieldError nosuchfielderror46) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS.ordinal()] = 31;
                        }
                        catch(NoSuchFieldError nosuchfielderror45) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT.ordinal()] = 32;
                        }
                        catch(NoSuchFieldError nosuchfielderror44) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN.ordinal()] = 33;
                        }
                        catch(NoSuchFieldError nosuchfielderror43) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ.ordinal()] = 34;
                        }
                        catch(NoSuchFieldError nosuchfielderror42) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT.ordinal()] = 35;
                        }
                        catch(NoSuchFieldError nosuchfielderror41) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT.ordinal()] = 36;
                        }
                        catch(NoSuchFieldError nosuchfielderror40) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN.ordinal()] = 37;
                        }
                        catch(NoSuchFieldError nosuchfielderror39) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON.ordinal()] = 38;
                        }
                        catch(NoSuchFieldError nosuchfielderror38) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE.ordinal()] = 39;
                        }
                        catch(NoSuchFieldError nosuchfielderror37) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_CACHE_NONE.ordinal()] = 40;
                        }
                        catch(NoSuchFieldError nosuchfielderror36) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA.ordinal()] = 41;
                        }
                        catch(NoSuchFieldError nosuchfielderror35) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_INVAL.ordinal()] = 42;
                        }
                        catch(NoSuchFieldError nosuchfielderror34) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL.ordinal()] = 43;
                        }
                        catch(NoSuchFieldError nosuchfielderror33) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER.ordinal()] = 44;
                        }
                        catch(NoSuchFieldError nosuchfielderror32) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND.ordinal()] = 45;
                        }
                        catch(NoSuchFieldError nosuchfielderror31) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT.ordinal()] = 46;
                        }
                        catch(NoSuchFieldError nosuchfielderror30) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_DOMAIN.ordinal()] = 47;
                        }
                        catch(NoSuchFieldError nosuchfielderror29) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_FILE_OPEN.ordinal()] = 48;
                        }
                        catch(NoSuchFieldError nosuchfielderror28) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_FILE_READ.ordinal()] = 49;
                        }
                        catch(NoSuchFieldError nosuchfielderror27) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_GENERIC.ordinal()] = 50;
                        }
                        catch(NoSuchFieldError nosuchfielderror26) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_NO_CONTENT.ordinal()] = 51;
                        }
                        catch(NoSuchFieldError nosuchfielderror25) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED.ordinal()] = 52;
                        }
                        catch(NoSuchFieldError nosuchfielderror24) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT.ordinal()] = 53;
                        }
                        catch(NoSuchFieldError nosuchfielderror23) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER.ordinal()] = 54;
                        }
                        catch(NoSuchFieldError nosuchfielderror22) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER.ordinal()] = 55;
                        }
                        catch(NoSuchFieldError nosuchfielderror21) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT.ordinal()] = 56;
                        }
                        catch(NoSuchFieldError nosuchfielderror20) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT.ordinal()] = 57;
                        }
                        catch(NoSuchFieldError nosuchfielderror19) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_SSL.ordinal()] = 58;
                        }
                        catch(NoSuchFieldError nosuchfielderror18) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TCP.ordinal()] = 59;
                        }
                        catch(NoSuchFieldError nosuchfielderror17) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT.ordinal()] = 60;
                        }
                        catch(NoSuchFieldError nosuchfielderror16) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH.ordinal()] = 61;
                        }
                        catch(NoSuchFieldError nosuchfielderror15) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_HTTP_E_AUTH_NOHEADER.ordinal()] = 62;
                        }
                        catch(NoSuchFieldError nosuchfielderror14) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE.ordinal()] = 63;
                        }
                        catch(NoSuchFieldError nosuchfielderror13) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_NOTIFY_CONTENT_ERROR_UNKNOWN.ordinal()] = 64;
                        }
                        catch(NoSuchFieldError nosuchfielderror12) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_SYSTEMCONTINUE.ordinal()] = 65;
                        }
                        catch(NoSuchFieldError nosuchfielderror11) { }
                        try
                        {
                            $SwitchMap$android$broadcast$oneseg$MtvOneSegBmlParams$DialogMessages[android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED.ordinal()] = 66;
                        }
                        catch(NoSuchFieldError nosuchfielderror10) { }
                        $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents = new int[MtvAppBmlConstants.AppBmlUIEvents.values().length];
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT.ordinal()] = 1;
                        }
                        catch(NoSuchFieldError nosuchfielderror9) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_ANIMATION.ordinal()] = 2;
                        }
                        catch(NoSuchFieldError nosuchfielderror8) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_STOP_ANIMATION.ordinal()] = 3;
                        }
                        catch(NoSuchFieldError nosuchfielderror7) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM.ordinal()] = 4;
                        }
                        catch(NoSuchFieldError nosuchfielderror6) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE.ordinal()] = 5;
                        }
                        catch(NoSuchFieldError nosuchfielderror5) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SHOW_DIALOGUE.ordinal()] = 6;
                        }
                        catch(NoSuchFieldError nosuchfielderror4) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG.ordinal()] = 7;
                        }
                        catch(NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD.ordinal()] = 8;
                        }
                        catch(NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_TVLINK_TAB.ordinal()] = 9;
                        }
                        catch(NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents[MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_KEYPAD_CHANGED.ordinal()] = 10;
                        }
                        catch(NoSuchFieldError nosuchfielderror)
                        {
                            return;
                        }
                    }
                }

                _cls2..SwitchMap.com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlUIEvents[uiEvents[message.what].ordinal()];
                JVM INSTR tableswitch 1 10: default 96
            //                           1 97
            //                           2 138
            //                           3 172
            //                           4 206
            //                           5 244
            //                           6 278
            //                           7 422
            //                           8 473
            //                           9 535
            //                           10 569;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
                return;
_L2:
                if(mBmlAnimationListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT;
                    mBmlAnimationListener.setBmlAnimationText((MtvAppBmlConstants.BmlAppAnimMessages)message.obj);
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L3:
                if(mBmlAnimationListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_ANIMATION;
                    mBmlAnimationListener.startBmlAnimation();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L4:
                if(mBmlAnimationListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_STOP_ANIMATION;
                    mBmlAnimationListener.stopBmlAnimation();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L5:
                if(mBmlDialogListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM;
                    mBmlDialogListener.setDialogBtnNum(message.arg1);
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L6:
                if(mBmlDialogListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE;
                    mBmlDialogListener.destroyBMLDialog();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L7:
                if(mBmlDialogListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SHOW_DIALOGUE;
                    if(mdialogMessege == android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages.BML_QUERY_SETLOCATION_HTTP)
                    {
                        if(mPreferences.getBroadcastDataNotifyMode() == 2)
                        {
                            mBmlDialogListener.showBMLDialog(message.arg1);
                            return;
                        }
                        if(mPreferences.getBroadcastDataNotifyMode() == 1)
                        {
                            sendDialogReply(MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_YES, message.arg1);
                            return;
                        }
                        if(mPreferences.getBroadcastDataNotifyMode() == 0)
                        {
                            mBmlDialogListener.showBMLDialog(message.arg1);
                            return;
                        }
                    } else
                    {
                        mBmlDialogListener.showBMLDialog(message.arg1);
                        return;
                    }
                }
                if(true) goto _L1; else goto _L8
_L8:
                if(mBmlDialogListener != null && message.obj != MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_SRTING_NONE)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG;
                    mBmlDialogListener.setDialogMessege((MtvAppBmlConstants.AppBmlDialogMessages)message.obj);
                    return;
                }
                if(true)
                    continue; /* Loop/switch isn't completed */
_L9:
                message = (MtvAppBmlConstants.AppBmlIMEInputParams)message.obj;
                if(mBmlDialogListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD;
                    mBmlDialogListener.IMEStartPeer(((MtvAppBmlConstants.AppBmlIMEInputParams) (message)).text, ((MtvAppBmlConstants.AppBmlIMEInputParams) (message)).isPassword, ((MtvAppBmlConstants.AppBmlIMEInputParams) (message)).isMultiLine, ((MtvAppBmlConstants.AppBmlIMEInputParams) (message)).mode, ((MtvAppBmlConstants.AppBmlIMEInputParams) (message)).maxlength);
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L10:
                if(mBmlSurfaceListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_TVLINK_TAB;
                    mBmlSurfaceListener.startTvLinkTab();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L11:
                if(mBmlSurfaceListener != null)
                {
                    mCuurUIEvt = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_KEYPAD_CHANGED;
                    mBmlSurfaceListener.bmlControlTypeChanged();
                    return;
                }
                if(true) goto _L1; else goto _L12
_L12:
            }

            final MtvAppBml this$0;
            MtvAppBmlConstants.AppBmlUIEvents uiEvents[];

            
            {
                this$0 = MtvAppBml.this;
                super();
                uiEvents = MtvAppBmlConstants.AppBmlUIEvents.values();
            }
        }
;
        mContext = context;
    }

    public static String byteArrayToString(byte abyte0[])
    {
        try
        {
            abyte0 = new String(abyte0, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            MtvUtilDebug.Low("MtvAppBml", "UnsupportedEncodingException");
            return "";
        }
        return abyte0;
    }

    public static MtvAppBml getInstance(Context context)
    {
        if(mMtvAppBml == null)
            mMtvAppBml = new MtvAppBml(context);
        mContext = context;
        return mMtvAppBml;
    }

    public void appExIMEEndPeer(boolean flag, byte abyte0[])
    {
        if(mBmlViewControl != null)
            mBmlViewControl.appExIMEEndPeer(flag, abyte0);
    }

    public void cb_appIMEStartPeer(byte abyte0[], boolean flag, boolean flag1, int i, int j)
    {
        int k;
        boolean flag2;
        flag2 = false;
        k = ((flag2) ? 1 : 0);
        i;
        JVM INSTR tableswitch 0 12: default 76
    //                   0 154
    //                   1 80
    //                   2 80
    //                   3 80
    //                   4 80
    //                   5 160
    //                   6 166
    //                   7 173
    //                   8 180
    //                   9 187
    //                   10 194
    //                   11 201
    //                   12 208;
           goto _L1 _L2 _L3 _L3 _L3 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        k = ((flag2) ? 1 : 0);
_L13:
        MtvAppBmlConstants.AppBmlIMEInputParams appbmlimeinputparams = new MtvAppBmlConstants.AppBmlIMEInputParams();
        appbmlimeinputparams.isMultiLine = flag1;
        appbmlimeinputparams.isPassword = flag;
        appbmlimeinputparams.maxlength = j;
        appbmlimeinputparams.mode = k;
        appbmlimeinputparams.text = abyte0;
        abyte0 = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(abyte0.ordinal(), appbmlimeinputparams));
        return;
_L2:
        k = 0;
        continue; /* Loop/switch isn't completed */
_L4:
        k = 5;
        continue; /* Loop/switch isn't completed */
_L5:
        k = 6;
        continue; /* Loop/switch isn't completed */
_L6:
        k = 7;
        continue; /* Loop/switch isn't completed */
_L7:
        k = 8;
        continue; /* Loop/switch isn't completed */
_L8:
        k = 9;
        continue; /* Loop/switch isn't completed */
_L9:
        k = 10;
        continue; /* Loop/switch isn't completed */
_L10:
        k = 11;
        continue; /* Loop/switch isn't completed */
_L11:
        k = 12;
        if(true) goto _L13; else goto _L12
_L12:
    }

    public void cb_bmlControlTypeChanged()
    {
        MtvAppBmlConstants.AppBmlUIEvents appbmluievents = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_KEYPAD_CHANGED;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(appbmluievents.ordinal()));
    }

    public void cb_bmlHaltExecuted()
    {
        if(mBmlDialogListener != null)
            mBmlDialogListener.halt();
    }

    public void cb_destroyBMLDialog()
    {
        MtvAppBmlConstants.AppBmlUIEvents appbmluievents = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(appbmluievents.ordinal()));
    }

    public void cb_mailToPeer(byte abyte0[], byte abyte1[], byte abyte2[])
    {
        abyte0 = byteArrayToString(abyte0);
        abyte1 = byteArrayToString(abyte1);
        abyte2 = byteArrayToString(abyte2);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            abyte2
        });
        intent.putExtra("android.intent.extra.SUBJECT", abyte0);
        intent.putExtra("android.intent.extra.TEXT", abyte1);
        mContext.startActivity(Intent.createChooser(intent, "Send mail..."));
    }

    public void cb_phoneToPeer(String s)
    {
        MtvUtilDebug.Mid("MtvAppBml", "BML_CB_XDPA_PhoneToPeer:");
        s = new Intent("android.intent.action.CALL", Uri.parse((new StringBuilder()).append("tel:").append(s).toString()));
        mContext.startActivity(s);
    }

    public boolean cb_processCommand(int i, int j, String s)
    {
        if(mBmlViewControl == null)
            return false;
        i;
        JVM INSTR lookupswitch 2: default 36
    //                   0: 38
    //                   152: 118;
           goto _L1 _L2 _L3
_L1:
        return true;
_L2:
        if(mPreferences.getBroadcastDataNotifyMode() == 1)
        {
            mBmlViewControl.setDailogNeed(false);
            mBmlViewControl.setReplyToEngine(true);
        } else
        if(mPreferences.getBroadcastDataNotifyMode() == 0 && mBmlViewControl.allowConnection(i))
        {
            mBmlViewControl.setDailogNeed(false);
            mBmlViewControl.setReplyToEngine(true);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if(s.compareTo("X_DPA_getCurPos") == 0)
        {
            if(mPreferences.getBroadcastDataLocationMode() == 0)
            {
                if(mBmlViewControl.allowLocation(i))
                {
                    mBmlViewControl.setDailogNeed(false);
                    mBmlViewControl.setReplyToEngine(true);
                }
            } else
            if(mPreferences.getBroadcastDataLocationMode() == 1)
            {
                mBmlViewControl.setDailogNeed(false);
                mBmlViewControl.setReplyToEngine(true);
            }
        } else
        if(s.compareTo("X_DPA_getIRDID") == 0)
            if(mPreferences.getBroadcastDataManufactureMode() == 1)
            {
                mBmlViewControl.setDailogNeed(false);
                mBmlViewControl.setReplyToEngine(false);
            } else
            {
                mBmlViewControl.setDailogNeed(false);
                mBmlViewControl.setReplyToEngine(true);
            }
        if(true) goto _L1; else goto _L4
_L4:
    }

    public void cb_setBMLFullView()
    {
        if(mBmlSurfaceListener != null)
            mBmlSurfaceListener.setBMLFullView(true);
    }

    public void cb_setBmlAnimationText(android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages animmessages)
    {
        MtvAppBmlConstants.BmlAppAnimMessages bmlappanimmessages = MtvAppBmlConstants.BmlAppAnimMessages.MTV_APP_BML_ANIM_MSG_NONE;
        if(animmessages != android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RECEIVING) goto _L2; else goto _L1
_L1:
        bmlappanimmessages = MtvAppBmlConstants.BmlAppAnimMessages.MTV_APP_BML_RECEIVING;
_L4:
        animmessages = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(animmessages.ordinal(), bmlappanimmessages));
        return;
_L2:
        if(animmessages == android.broadcast.oneseg.MtvOneSegBmlParams.AnimMessages.BML_RETREIVING)
            bmlappanimmessages = MtvAppBmlConstants.BmlAppAnimMessages.MTV_APP_BML_RETREIVING;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void cb_setDialogBtnNum(int i)
    {
        MtvAppBmlConstants.AppBmlUIEvents appbmluievents = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(appbmluievents.ordinal(), i, 0));
    }

    public void cb_setDialogMessege(android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages dialogmessages)
    {
        MtvAppBmlConstants.AppBmlDialogMessages appbmldialogmessages;
        appbmldialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_SRTING_NONE;
        mdialogMessege = dialogmessages;
        _cls2..SwitchMap.android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages[dialogmessages.ordinal()];
        JVM INSTR tableswitch 1 66: default 296
    //                   1 341
    //                   2 348
    //                   3 355
    //                   4 362
    //                   5 369
    //                   6 376
    //                   7 383
    //                   8 390
    //                   9 397
    //                   10 404
    //                   11 411
    //                   12 418
    //                   13 425
    //                   14 432
    //                   15 439
    //                   16 446
    //                   17 453
    //                   18 460
    //                   19 467
    //                   20 474
    //                   21 481
    //                   22 488
    //                   23 495
    //                   24 502
    //                   25 509
    //                   26 516
    //                   27 523
    //                   28 530
    //                   29 537
    //                   30 544
    //                   31 551
    //                   32 558
    //                   33 565
    //                   34 572
    //                   35 579
    //                   36 586
    //                   37 593
    //                   38 600
    //                   39 607
    //                   40 614
    //                   41 621
    //                   42 628
    //                   43 635
    //                   44 642
    //                   45 649
    //                   46 656
    //                   47 663
    //                   48 670
    //                   49 677
    //                   50 684
    //                   51 691
    //                   52 698
    //                   53 705
    //                   54 712
    //                   55 719
    //                   56 726
    //                   57 733
    //                   58 740
    //                   59 747
    //                   60 754
    //                   61 761
    //                   62 768
    //                   63 775
    //                   64 782
    //                   65 789
    //                   66 796;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41 _L42 _L43 _L44 _L45 _L46 _L47 _L48 _L49 _L50 _L51 _L52 _L53 _L54 _L55 _L56 _L57 _L58 _L59 _L60 _L61 _L62 _L63 _L64 _L65 _L66 _L67
_L67:
        break MISSING_BLOCK_LABEL_796;
_L1:
        dialogmessages = appbmldialogmessages;
_L68:
        MtvAppBmlConstants.AppBmlUIEvents appbmluievents;
        if(mContext == null)
            isBMLDialogMsgSet = false;
        else
            isBMLDialogMsgSet = true;
        appbmluievents = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(appbmluievents.ordinal(), dialogmessages));
        return;
_L2:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SETLOCATION_HTTP;
          goto _L68
_L3:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SETLOCATION_SSL_BEGIN;
          goto _L68
_L4:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SETLOCATION_SSL_END;
          goto _L68
_L5:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SERVER_CERT_CONFIRM_DIALOG;
          goto _L68
_L6:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION;
          goto _L68
_L7:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_NOMEMORY;
          goto _L68
_L8:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_MIXEDSECURETYPE;
          goto _L68
_L9:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_BADURL;
          goto _L68
_L10:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_BADMIMETYPE;
          goto _L68
_L11:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_ERROR_TOTAL_SIZEOVER;
          goto _L68
_L12:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_TRANSMITTEXTDATA;
          goto _L68
_L13:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP;
          goto _L68
_L14:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray;
          goto _L68
_L15:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard;
          goto _L68
_L16:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard;
          goto _L68
_L17:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM;
          goto _L68
_L18:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo;
          goto _L68
_L19:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp;
          goto _L68
_L20:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo;
          goto _L68
_L21:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo;
          goto _L68
_L22:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo;
          goto _L68
_L23:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos;
          goto _L68
_L24:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID;
          goto _L68
_L25:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond;
          goto _L68
_L26:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK;
          goto _L68
_L27:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST;
          goto _L68
_L28:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEPERSISTENTARRAY;
          goto _L68
_L29:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY;
          goto _L68
_L30:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION;
          goto _L68
_L31:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX;
          goto _L68
_L32:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS;
          goto _L68
_L33:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT;
          goto _L68
_L34:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN;
          goto _L68
_L35:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ;
          goto _L68
_L36:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT;
          goto _L68
_L37:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT;
          goto _L68
_L38:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN;
          goto _L68
_L39:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON;
          goto _L68
_L40:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE;
          goto _L68
_L41:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_CACHE_NONE;
          goto _L68
_L42:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA;
          goto _L68
_L43:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_INVAL;
          goto _L68
_L44:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL;
          goto _L68
_L45:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER;
          goto _L68
_L46:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND;
          goto _L68
_L47:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT;
          goto _L68
_L48:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_DOMAIN;
          goto _L68
_L49:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_FILE_OPEN;
          goto _L68
_L50:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_FILE_READ;
          goto _L68
_L51:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_GENERIC;
          goto _L68
_L52:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_NO_CONTENT;
          goto _L68
_L53:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED;
          goto _L68
_L54:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT;
          goto _L68
_L55:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER;
          goto _L68
_L56:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER;
          goto _L68
_L57:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT;
          goto _L68
_L58:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT;
          goto _L68
_L59:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_SSL;
          goto _L68
_L60:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_TCP;
          goto _L68
_L61:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT;
          goto _L68
_L62:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH;
          goto _L68
_L63:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_HTTP_E_AUTH_NOHEADER;
          goto _L68
_L64:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE;
          goto _L68
_L65:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_NOTIFY_CONTENT_ERROR_UNKNOWN;
          goto _L68
_L66:
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_SYSTEMCONTINUE;
          goto _L68
        dialogmessages = MtvAppBmlConstants.AppBmlDialogMessages.MTV_APP_BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED;
          goto _L68
    }

    public boolean cb_showBMLDialog(int i)
    {
        if(mBmlViewControl.isDailogNeed() && mContext != null && mContext.getResources().getConfiguration().orientation != 2 && isBMLDialogMsgSet)
        {
            MtvAppBmlConstants.AppBmlUIEvents appbmluievents = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_SHOW_DIALOGUE;
            if(mBmlUIMsgHandler != null)
            {
                mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(appbmluievents.ordinal(), i, 0));
                isBMLDialogMsgSet = false;
                return true;
            }
        }
        return false;
    }

    public void cb_startBmlAnimation()
    {
        MtvAppBmlConstants.AppBmlUIEvents appbmluievents = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_ANIMATION;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(appbmluievents.ordinal()));
    }

    public int cb_startResidentAppPeer(byte abyte0[], int i, byte abyte1[], String as[])
    {
        char c;
        boolean flag;
        c = '\uFC16';
        abyte0 = byteArrayToString(abyte0);
        i = 0;
        flag = false;
        if(as != null)
            i = as.length;
        if(!"ComBrowser".equals(abyte0))
            break MISSING_BLOCK_LABEL_177;
        if(i >= 3) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Mid("MtvAppBml", "XDPA>StartResidentAppPeer: Few ex_info !:");
        c = '\uFC15';
_L4:
        return c;
_L2:
        i = ((flag) ? 1 : 0);
        if(as != null)
            i = Integer.parseInt(as[1]);
        if(i == android.broadcast.oneseg.MtvOneSegBmlParams.DTVBMLXDPABrowserType.BML_START_RESIDENT_APP_C_PROFILE_BROWSER.ordinal())
        {
            MtvUtilDebug.Mid("MtvAppBml", "BML_START_RESIDENT_APP_C_PROFILE_BROWSER is not supported !:");
            return -1002;
        }
        if(i != android.broadcast.oneseg.MtvOneSegBmlParams.DTVBMLXDPABrowserType.BML_START_RESIDENT_APP_FULL_BROWSER.ordinal())
            continue; /* Loop/switch isn't completed */
        MtvUtilDebug.Mid("MtvAppBml", "BML_START_RESIDENT_APP_FULL_BROWSER !:");
_L5:
        if(as != null)
            try
            {
                abyte0 = new Intent("android.intent.action.VIEW");
                abyte0.setData(Uri.parse(as[0]));
                mContext.startActivity(abyte0);
            }
            // Misplaced declaration of an exception variable
            catch(byte abyte0[])
            {
                abyte0.printStackTrace();
            }
_L6:
        return 0;
        if(i != android.broadcast.oneseg.MtvOneSegBmlParams.DTVBMLXDPABrowserType.BML_START_RESIDENT_APP_LIVE_BROWSER.ordinal()) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Mid("MtvAppBml", "BML_START_RESIDENT_APP_LIVE_BROWSER !:");
          goto _L5
        if("BookmarkList".equals(abyte0))
        {
            abyte0 = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_TVLINK_TAB;
            if(mBmlUIMsgHandler != null)
                mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(abyte0.ordinal()));
        } else
        {
            MtvUtilDebug.Mid("MtvAppBml", "BML_CB_XDPA_StartResidentAppPeer: Unknown application name");
        }
          goto _L6
    }

    public void cb_stopBmlAnimation()
    {
        MtvAppBmlConstants.AppBmlUIEvents appbmluievents = MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_STOP_ANIMATION;
        if(mBmlUIMsgHandler != null)
            mBmlUIMsgHandler.sendMessage(mBmlUIMsgHandler.obtainMessage(appbmluievents.ordinal()));
    }

    public int cb_storeImage(byte abyte0[], boolean flag, byte abyte1[])
    {
        Object obj;
        MtvUtilDebug.Mid("MtvAppBml", "BML_CB_Control_SaveImageToMemoryCardPeer:");
        Bitmap bitmap = BitmapFactory.decodeByteArray(abyte1, 0, abyte1.length);
        if(bitmap == null)
            MtvUtilDebug.Mid("MtvAppBml", "BML_CB_Control_SaveImageToMemoryCardPeer: in_data is null");
        String s = new String(abyte0);
        if(mPreferences.getBroadcastImageLocationStorage() == 0 && MtvUtilMemoryStatus.isExternalMemoryAvailable())
        {
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Mid("MtvAppBml", (new StringBuilder()).append("SaveImageTo Memorycard  ").append(s).toString());
            abyte0 = "/mnt/extSdCard/";
        } else
        {
            if(mPreferences.getBroadcastImageLocationStorage() == 0 && !MtvUtilMemoryStatus.isExternalMemoryAvailable())
                return -1050;
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Mid("MtvAppBml", (new StringBuilder()).append("SaveImageTo Phone  ").append(s).toString());
            abyte0 = "/sdcard/";
        }
        abyte1 = new File(new File(abyte0), s);
        if(!abyte1.exists()) goto _L2; else goto _L1
_L1:
        if(!flag) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Mid("MtvAppBml", "Overrite the image ! ");
        abyte1.delete();
_L2:
        abyte1.createNewFile();
_L5:
        abyte0 = null;
        obj = null;
        abyte1 = new FileOutputStream(abyte1);
        if(bitmap == null)
            break MISSING_BLOCK_LABEL_198;
        if(bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, abyte1))
            MtvUtilDebug.Error("MtvAppBml", (new StringBuilder()).append("ImageFile is saved :/sdcard/image/").append(s).toString());
        try
        {
            abyte1.close();
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            MtvUtilDebug.Error("MtvAppBml", (new StringBuilder()).append("saveFile FileOutputStream.close() IOException [").append(abyte0).append("]").toString());
            abyte0.printStackTrace();
        }
_L6:
        return 0;
_L4:
        return -1053;
        abyte0;
        MtvUtilDebug.Error("MtvAppBml", (new StringBuilder()).append("saveFile File creation fail [").append(abyte0).append("]").toString());
        abyte0.printStackTrace();
          goto _L5
        abyte0;
        abyte1 = ((byte []) (obj));
        obj = abyte0;
_L9:
        abyte0 = abyte1;
        MtvUtilDebug.Error("MtvAppBml", (new StringBuilder()).append("saveFile FileNotFoundException [").append(obj).append("]").toString());
        abyte0 = abyte1;
        ((FileNotFoundException) (obj)).printStackTrace();
        try
        {
            abyte1.close();
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            MtvUtilDebug.Error("MtvAppBml", (new StringBuilder()).append("saveFile FileOutputStream.close() IOException [").append(abyte0).append("]").toString());
            abyte0.printStackTrace();
        }
          goto _L6
        abyte1;
_L8:
        try
        {
            abyte0.close();
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            MtvUtilDebug.Error("MtvAppBml", (new StringBuilder()).append("saveFile FileOutputStream.close() IOException [").append(abyte0).append("]").toString());
            abyte0.printStackTrace();
        }
        throw abyte1;
        obj;
        abyte0 = abyte1;
        abyte1 = ((byte []) (obj));
        if(true) goto _L8; else goto _L7
_L7:
        obj;
          goto _L9
    }

    public void cb_updateBMLSurfaceView()
    {
        if(mBmlSurfaceListener != null)
            mBmlSurfaceListener.updateBMLSurfaceView();
    }

    public int cb_writeAddressBookInfoPeer(byte abyte0[], byte abyte1[], String s, String s1)
    {
        abyte0 = byteArrayToString(abyte0);
        abyte1 = new Intent("android.intent.action.INSERT", android.provider.ContactsContract.Contacts.CONTENT_URI);
        abyte1.putExtra("name", abyte0);
        abyte1.putExtra("phone", s);
        abyte1.putExtra("email", s1);
        mContext.startActivity(abyte1);
        return 0;
    }

    public int cb_writeSchInfoPeer(short word0, int i, int j, int k, int l, int i1, int j1, 
            short word1, byte abyte0[], byte abyte1[], boolean flag)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvAppBml", (new StringBuilder()).append("writeSchInfoPeer: Y").append(word0).append("M").append(i).append("D").append(j).append("W").append(k).append("H").append(l).append("Mn").append(i1).append("Sc").append(j1).append("Msc").append(word1).toString());
        long l1 = (new GregorianCalendar(word0, i, j, l, i1, j1)).getTimeInMillis();
        abyte0 = byteArrayToString(abyte0);
        abyte1 = byteArrayToString(abyte1);
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setType("vnd.android.cursor.item/event");
        intent.putExtra("beginTime", l1);
        intent.putExtra("endTime", l1 + 0x36ee80L);
        intent.putExtra("title", abyte0);
        intent.putExtra("description", abyte1);
        if(flag)
            intent.putExtra("alarm", 0);
        mContext.startActivity(intent);
        return 0;
    }

    public void deInit()
    {
        if(mBmlViewControl != null)
        {
            mBmlViewControl.dettachViewListener(this);
            mBmlViewControl = null;
        }
        mContext = null;
        mPreferences = null;
        mBmlSurfaceListener = null;
        mBmlDialogListener = null;
        mBmlAnimationListener = null;
        mMtvAppPlaybackContext = null;
        mMtvAppBml = null;
    }

    public void enableBMLComponent(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        if(mtvappplaybackcontext == null)
            MtvUtilDebug.Error("MtvAppBml", "enableBMLComponent() :: Context is null !");
        else
        if(mtvappplaybackcontext.getComponents().getBml() != null)
        {
            mtvappplaybackcontext.getComponents().getBml().setControlInterface(MtvOneSegFactory.getBMLViewControl());
            mtvappplaybackcontext.getComponents().getBml().enable();
            return;
        }
    }

    public MtvAppBmlConstants.BmlControlType getBmlControlType()
    {
        if(mBmlViewControl == null)
            return MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_BASIC;
        int i = mBmlViewControl.getUserKeyPadType();
        if((i & 0x20) == 32 && (i & 1) == 1 && (i & 4) == 4 && (i & 0x10) != 16)
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 1st case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_KEYPAD;
        } else
        if((i & 0x20) == 32 && (i & 1) == 1 && (i & 4) == 4)
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 2nd case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_KEYPAD;
        } else
        if((i & 0x10) == 16 && (i & 1) == 1 && (i & 4) == 4)
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 3rd case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_KEYPAD;
        } else
        if((i & 4) == 4 && (i & 1) == 1)
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 4th case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_KEYPAD;
        } else
        if((i & 1) == 1)
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 5th case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_BASIC;
        } else
        if((i & 4) == 4)
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 6th case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_KEYPAD;
        } else
        if((i & 0x10) == 16)
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 7th case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_KEYPAD;
        } else
        {
            MtvUtilDebug.Low("MtvAppBml", "getBmlControlType: 8th case");
            mbmlCntrlType = MtvAppBmlConstants.BmlControlType.MTV_APP_BML_CONTROL_BASIC;
        }
        return mbmlCntrlType;
    }

    public MtvAppBmlConstants.AppBmlUIEvents getCurrentUIEvt()
    {
        return mCuurUIEvt;
    }

    public byte[] getPrevUserName()
    {
        return mBmlViewControl.getfAuth_UserName();
    }

    public String getPrevUserPassWd()
    {
        return mBmlViewControl.getfAuth_Password();
    }

    public void init(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mMtvAppPlaybackContext = mtvappplaybackcontext;
        if(mPreferences == null)
            mPreferences = new MtvPreferences(mContext);
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getComponents().getBml().setControlInterface(MtvOneSegFactory.getBMLViewControl());
            mMtvAppPlaybackContext.getComponents().getBml().enable();
            mBmlViewControl = mMtvAppPlaybackContext.getComponents().getBml().getControlInterface();
        }
    }

    public boolean isPrevUserNameNedded()
    {
        if(mBmlViewControl == null)
            return false;
        else
            return mBmlViewControl.getfAuth_KeepUserName();
    }

    public boolean isPrevUserPasswdNedded()
    {
        if(mBmlViewControl == null)
            return false;
        else
            return mBmlViewControl.getfAuth_KeepPassword();
    }

    public void onKeyEvent(KeyEvent keyevent)
    {
        if(keyevent == null || mBmlViewControl == null)
            MtvUtilDebug.Error("MtvAppBml", "onKeyEvent: keyEvent NULL ");
        else
        if(!mBmlViewControl.onKeyEvent(keyevent))
        {
            MtvUtilDebug.Low("MtvAppBml", "onKeyEvent:BML is Halted. Skip Key event");
            return;
        }
    }

    public void onResume(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mMtvAppPlaybackContext = mtvappplaybackcontext;
        MtvUtilDebug.Low("MtvAppBml", "onResume: entered ");
        if(mPreferences == null)
            mPreferences = new MtvPreferences(mContext);
        if(mMtvAppPlaybackContext != null)
            mBmlViewControl = mMtvAppPlaybackContext.getComponents().getBml().getControlInterface();
        if(mBmlViewControl != null)
            mBmlViewControl.attachViewListener(this);
    }

    public void openBMLHomePage()
    {
        if(mBmlViewControl != null)
        {
            MtvUtilDebug.Low("MtvAppBml", "setBMLHomePage: Setting BML home page");
            mBmlViewControl.openBMLHomePage();
        }
    }

    public void processMouseEvent(int i, int j, int k)
    {
        android.broadcast.oneseg.MtvOneSegBmlParams.action action = android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_DOWN;
        k;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 58
    //                   1 66
    //                   2 74;
           goto _L1 _L2 _L3 _L4
_L1:
        action = android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_DOWN;
_L6:
        if(mBmlViewControl != null)
            mBmlViewControl.processMouseEvent(i, j, action);
        return;
_L2:
        action = android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_DOWN;
        continue; /* Loop/switch isn't completed */
_L3:
        action = android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_MOVE;
        continue; /* Loop/switch isn't completed */
_L4:
        action = android.broadcast.oneseg.MtvOneSegBmlParams.action.ACTION_UP;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void refreshBMLScreen()
    {
        MtvUtilDebug.Low("MtvAppBml", "refreshBMLScreen:  refersh BML surface ");
        setBMLViewSize(-1, -1, 0, 0);
    }

    public void registerBmlAnimationListener(IMtvAppBmlAnimationListener imtvappbmlanimationlistener)
    {
        mBmlAnimationListener = imtvappbmlanimationlistener;
    }

    public void registerBmlDialogListener(IMtvAppBmlDialogListener imtvappbmldialoglistener)
    {
        mBmlDialogListener = imtvappbmldialoglistener;
    }

    public void registerBmlSurface(Context context, BMLNativeView bmlnativeview)
    {
        if(mBmlViewControl != null)
        {
            MtvUtilDebug.Low("MtvAppBml", (new StringBuilder()).append("registerBmlSurface() :: ").append(context).toString());
            mBmlViewControl.registerSurface(context, bmlnativeview);
        }
    }

    public void registerBmlSurfaceListener(IMtvAppBmlSurfaceListener imtvappbmlsurfacelistener)
    {
        mBmlSurfaceListener = imtvappbmlsurfacelistener;
    }

    public void sendDialogReply(MtvAppBmlConstants.BmlDialogReply bmldialogreply, int i)
    {
        if(mBmlViewControl != null)
        {
            if(bmldialogreply == MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_YES)
            {
                mBmlViewControl.replyToCommand(android.broadcast.oneseg.MtvOneSegBmlParams.onesegBmlDialogReply.MTV_ONESEG_BML_DIALOG_REPLAY_YES, i);
                return;
            }
            if(bmldialogreply == MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_NO)
            {
                mBmlViewControl.replyToCommand(android.broadcast.oneseg.MtvOneSegBmlParams.onesegBmlDialogReply.MTV_ONESEG_BML_DIALOG_REPLAY_NO, i);
                return;
            }
            if(bmldialogreply == MtvAppBmlConstants.BmlDialogReply.MTV_APP_BML_DIALOG_REPLAY_CANCEL)
            {
                mBmlViewControl.replyToCommand(android.broadcast.oneseg.MtvOneSegBmlParams.onesegBmlDialogReply.MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL, i);
                return;
            }
        }
    }

    public boolean setBMLViewSize(int i, int j, int k, int l)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Mid("MtvAppBml", (new StringBuilder()).append("setBMLViewSize: width:").append(i).append(" height:").append(j).append(" x:").append(k).append(" y:").append(l).toString());
        if(mBmlViewControl != null && !mBmlViewControl.setDisplaySize(i, j, k, l))
        {
            MtvUtilDebug.Low("MtvAppBml", "setBMLViewSize:BML is Halted. skip Browser_SetRect ");
            return false;
        } else
        {
            return true;
        }
    }

    public void setPrevUserPassWd(String s)
    {
        mBmlViewControl.setfPassword_Reply(s);
    }

    public void setUserName(byte abyte0[])
    {
        mBmlViewControl.setfUserName_Reply(abyte0);
    }

    public void storeUserName(boolean flag)
    {
        mBmlViewControl.setfKeepUserName_Reply(flag);
    }

    public void storeUserPasswd(boolean flag)
    {
        mBmlViewControl.setfKeepPassword_Reply(flag);
    }

    private static final String TAG = "MtvAppBml";
    private static Context mContext = null;
    private static MtvAppBml mMtvAppBml = null;
    private boolean isBMLDialogMsgSet;
    private IMtvAppBmlAnimationListener mBmlAnimationListener;
    private IMtvAppBmlDialogListener mBmlDialogListener;
    private IMtvAppBmlSurfaceListener mBmlSurfaceListener;
    private Handler mBmlUIMsgHandler;
    private IMtvOneSegBmlViewControl mBmlViewControl;
    private MtvAppBmlConstants.AppBmlUIEvents mCuurUIEvt;
    private boolean mDialgDisplayed;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvPreferences mPreferences;
    private MtvAppBmlConstants.BmlControlType mbmlCntrlType;
    android.broadcast.oneseg.MtvOneSegBmlParams.DialogMessages mdialogMessege;




/*
    static MtvAppBmlConstants.AppBmlUIEvents access$102(MtvAppBml mtvappbml, MtvAppBmlConstants.AppBmlUIEvents appbmluievents)
    {
        mtvappbml.mCuurUIEvt = appbmluievents;
        return appbmluievents;
    }

*/



}
