// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.location.*;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.*;
import android.view.SurfaceHolder;
import java.util.Vector;
import java.util.concurrent.Semaphore;

// Referenced classes of package com.access.bml:
//            BMLNativeView

public abstract class BMLNativeCallbacks
{
    public class Timer
        implements Runnable
    {

        public int getId()
        {
            return in_id;
        }

        public void run()
        {
            if(bQuit)
            {
                return;
            } else
            {
                onTimer(in_id);
                return;
            }
        }

        public void start(int i)
        {
            in_delay = i;
            handler.postDelayed(this, i);
        }

        public void stop()
        {
            handler.removeCallbacks(this);
        }

        private int in_delay;
        private int in_id;
        final BMLNativeCallbacks this$0;

        public Timer(int i)
        {
            this$0 = BMLNativeCallbacks.this;
            super();
            in_id = i;
        }
    }


    public BMLNativeCallbacks(Context context)
    {
        bQuit = false;
        phoneStateListener = new PhoneStateListener() {

            public void onServiceStateChanged(ServiceState servicestate)
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", "phoneStateListener : onServiceStateChanged");
                if(servicestate.getState() == 1)
                    rStrength = -1;
            }

            public void onSignalStrengthsChanged(SignalStrength signalstrength)
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", "phoneStateListener : onSignalStrengthsChanged");
                int i;
                if(!signalstrength.isGsm())
                {
                    i = signalstrength.getCdmaDbm();
                    MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("CDMA dBm = ").append(i).toString());
                    if(i >= -75)
                        i = 3;
                    else
                    if(i >= -85)
                        i = 3;
                    else
                    if(i >= -95)
                        i = 2;
                    else
                    if(i >= -100)
                        i = 1;
                    else
                        i = -1;
                } else
                {
                    i = signalstrength.getGsmSignalStrength();
                    MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("GSM Signal Strength = ").append(i).toString());
                    if(i < 0 || i >= 99)
                        i = -1;
                    else
                    if(i >= 16)
                        i = 3;
                    else
                    if(i >= 8)
                        i = 3;
                    else
                    if(i >= 4)
                        i = 2;
                    else
                        i = 1;
                }
                rStrength = i;
            }

            final BMLNativeCallbacks this$0;

            
            {
                this$0 = BMLNativeCallbacks.this;
                super();
            }
        }
;
        locationListener = new LocationListener() {

            public void onLocationChanged(Location location1)
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", "locationListener : Location Changed!!!");
                if(location1 != null)
                {
                    fLatitude = (new Double(location1.getLatitude())).toString();
                    fLongitude = (new Double(location1.getLongitude())).toString();
                    posResult = 0;
                    if(!MtvUtilDebug.isReleaseMode())
                        MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("location info found: fLatitude:").append(fLatitude).append(", fLongitude:").append(fLongitude).append(", posResult:").append(posResult).toString());
                } else
                {
                    fLatitude = "0";
                    fLongitude = "0";
                    posResult = -2;
                    if(!MtvUtilDebug.isReleaseMode())
                    {
                        MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("location info not found : fLatitude:").append(fLatitude).append(", fLongitude:").append(fLongitude).append(", posResult:").append(posResult).toString());
                        return;
                    }
                }
            }

            public void onProviderDisabled(String s)
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("onProviderDisabled: ").append(s).toString());
            }

            public void onProviderEnabled(String s)
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("onProviderEnabled: ").append(s).toString());
            }

            public void onStatusChanged(String s, int i, Bundle bundle)
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", "locationListener : Status Changed!!!");
                locationManager.removeUpdates(locationListener);
                locationManager.requestLocationUpdates(s, 1000L, 0.0F, locationListener);
            }

            final BMLNativeCallbacks this$0;

            
            {
                this$0 = BMLNativeCallbacks.this;
                super();
            }
        }
;
        rcvCount = 0.0D;
        posCount = 0.0D;
        BaseStationLatitude = "0";
        BaseStationLongitude = "0";
        rStrength = 0;
        fSetLocation_URL = "";
        fDoRequestContent_Reply = false;
        fRedirectDialog_URL = "";
        fRedirectDialog_NewURL = "";
        fDoRedirect_Reply = false;
        fAuth_Password = "";
        fAuth_URL = "";
        fAuth_ProxyHost = "";
        fAuth_KeepUserName = false;
        fAuth_KeepPassword = false;
        fConfirmed_Reply = false;
        fPassword_Reply = "";
        fKeepUserName_Reply = false;
        fKeepPassword_Reply = false;
        fConfirmed_certReply = false;
        fStreamState_URL = "";
        fContent_URL = "";
        fInputFormatError_Format = "";
        fDoRequestContent = false;
        fFuncName = "";
        fDoPermit = false;
        fDoWrite = false;
        fBaseURIDirectory = "";
        fCurrentURI = "";
        fFailureAction_FuncName = "";
        fRequestURI = "";
        fDoContinue = false;
        fMakerId = "";
        fAppName = "";
        fMajorNo = "";
        fMinorNo = "";
        fAppDetail = "";
        fAppDetailLen = 0;
        fLatitude = "0";
        fLongitude = "0";
        fGeodeticSystem = 0;
        fErrorRange = 4;
        posResult = 0;
        mContext = context;
        init_timer();
        try
        {
            System.loadLibrary("BMLJNI");
            return;
        }
        // Misplaced declaration of an exception variable
        catch(Context context)
        {
            MtvUtilDebug.High("BMLNativeCallbacks", "can't find <BMLJNI> library file !");
        }
    }

    private void init_timer()
    {
        handler = new Handler();
        timers = new Vector();
    }

    private void setLocationProviderState(Context context, String s, boolean flag)
    {
        android.provider.Settings.Secure.setLocationProviderEnabled(context.getContentResolver(), s, flag);
    }

    public abstract void BML_CB_Audio_ClosePeer(int i);

    public abstract int BML_CB_Audio_GetStatusPeer(int i);

    public abstract int BML_CB_Audio_OpenPeer(byte abyte0[], int i, int j, byte abyte1[]);

    public abstract int BML_CB_Audio_SetStatusPeer(int i, int j);

    public abstract int BML_CB_CancelModalState();

    public abstract void BML_CB_Control_FinalizePeer();

    public void BML_CB_Control_GetResidentAppVersionPeer(String s)
    {
        fMakerId = "3F";
        fAppName = "NetFrontFOrDTV/WE";
        fMajorNo = "0320";
        fMinorNo = "0150";
        fAppDetail = "2010/07/15";
        fAppDetailLen = fAppDetail.length();
    }

    public abstract int BML_CB_Control_InitializePeer(int i);

    public abstract void BML_CB_Control_NotifyDocumentPeer(int i, int j, byte abyte0[]);

    public abstract void BML_CB_Control_NotifyHaltPeer(int i);

    public abstract void BML_CB_Control_NotifyLocationPeer(byte abyte0[]);

    public abstract void BML_CB_Control_NotifyServicePeer(int i, int j, int k);

    public abstract int BML_CB_Control_PlayRomSoundPeer(byte abyte0[]);

    public abstract int BML_CB_Control_SaveImageToMemoryCardPeer(int i, byte abyte0[], boolean flag, byte abyte1[]);

    public abstract void BML_CB_Control_SaveImageToMemoryCard_CancelPeer();

    public abstract void BML_CB_Control_SetTitlePeer(byte abyte0[]);

    public abstract void BML_CB_DTV_EVENT_DATAEVENTCHANGED(int i, int j, int k);

    public abstract void BML_CB_DTV_EVENT_HALT(int i);

    public abstract void BML_CB_DTV_EVENT_RETURNTOENTRY();

    public abstract void BML_CB_DTV_EVENT_SERVICECHANGED(int i, int j, int k, int l);

    public abstract int BML_CB_Engine_Halt();

    public abstract void BML_CB_Event_SetEventMaskPeer_MediaStopped(int i);

    public abstract int BML_CB_Event_SetUsedKeyListPeer(int i);

    public abstract int BML_CB_ExecuteHalt(int i);

    public abstract void BML_CB_NotifyEnterUnload(boolean flag);

    public abstract void BML_CB_NotifyTransitionDone();

    public abstract int BML_CB_SetFullDataDisplayArea(int i, int j);

    public abstract int BML_CB_System_EnterStatusPeer(int i);

    public abstract int BML_CB_System_LeaveStatusPeer(int i);

    public abstract int BML_CB_System_NotifyErrorPeer(int i);

    public void BML_CB_XDPA_GetCurPosCancelPeer()
    {
        if(posResult == -3 || posResult == -2)
        {
            fLatitude = "0";
            fLongitude = "0";
            posResult = -1;
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[BML_CB_XDPA_GetCurPosCancelPeer]Latitude:").append(fLatitude).append(", Longitude").append(fLongitude).append(", posResult").append(posResult).toString());
        } else
        {
            MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[BML_CB_XDPA_GetCurPosCancelPeer]posResult").append(posResult).toString());
            MtvUtilDebug.Low("BMLNativeCallbacks", "[Status] Outter Cancel routine!!");
        }
        stopLocationService();
    }

    public int BML_CB_XDPA_GetCurPosPeer(int i)
    {
        posCount = posCount + 324638D;
        if(posCount >= 2147483647D)
            posResult = -3;
        if(!MtvUtilDebug.isReleaseMode())
        {
            MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[BML_CB_XDPA_GetCurPosPeer] posCount : ").append(posCount).append(", in_pos_info : ").append(i).toString());
            MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[BML_CB_XDPA_GetCurPosPeer] Latitude : ").append(fLatitude).append(", Longitude : ").append(fLongitude).append(", posResult : ").append(posResult).toString());
            MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[BML_CB_XDPA_GetCurPosPeer] BaseStationLatitude : ").append(BaseStationLatitude).append(", BaseStationLongitude : ").append(BaseStationLongitude).toString());
        }
        if(posResult == 0)
        {
            MtvUtilDebug.Low("BMLNativeCallbacks", "Got location information successfully, stop service");
            stopLocationService();
        }
        return posResult;
    }

    public void BML_CB_XDPA_GetRcvCondCancelPeer()
    {
        if(rStrength == -3 || rStrength == -2)
        {
            rStrength = -1;
            MtvUtilDebug.Low("BMLNativeCallbacks", "[BML_CB_XDPA_GetRcvCondCancelPeer]");
            MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[Output] Result:").append(rStrength).toString());
            MtvUtilDebug.Low("BMLNativeCallbacks", "[Status] Inner Cancel routine!!");
        } else
        {
            MtvUtilDebug.Low("BMLNativeCallbacks", "[BML_CB_XDPA_GetRcvCondCancelPeer]");
            MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[Output] Result:").append(rStrength).toString());
            MtvUtilDebug.Low("BMLNativeCallbacks", "[Status] Outter Cancel routine!!");
        }
        stopTelephonyService();
    }

    public int BML_CB_XDPA_GetRcvCondPeer()
    {
        rcvCount = rcvCount + 324638D;
        MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("rcvCount = ").append(rcvCount).toString());
        if(rcvCount >= 2147483647D)
            rStrength = -3;
        MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("[BML_CB_XDPA_GetRcvCondPeer]Result:").append(rStrength).toString());
        if(rStrength == 3 || rStrength == 2 || rStrength == 1 || rStrength == -1 || rStrength == -1)
        {
            MtvUtilDebug.Low("BMLNativeCallbacks", "Got cell strength information successfully, stop service");
            stopTelephonyService();
        }
        return rStrength;
    }

    public abstract int BML_CB_XDPA_MailToPeer(byte abyte0[], byte abyte1[], byte abyte2[]);

    public abstract void BML_CB_XDPA_MailTo_CancelPeer();

    public abstract int BML_CB_XDPA_PhoneToPeer(String s);

    public abstract void BML_CB_XDPA_PhoneTo_CancelPeer();

    public abstract int BML_CB_XDPA_SaveExAppFilePeer(byte abyte0[], byte abyte1[], byte abyte2[], boolean flag);

    public abstract void BML_CB_XDPA_SaveExAppFile_CancelPeer();

    public abstract int BML_CB_XDPA_StartResidentAppPeer(byte abyte0[], int i, byte abyte1[], String as[]);

    public abstract void BML_CB_XDPA_StartResidentApp_CancelPeer();

    public abstract int BML_CB_XDPA_TuneWithRFPeer(int i, int j, int k, int l);

    public abstract int BML_CB_XDPA_WriteAddressBookInfoPeer(byte abyte0[], byte abyte1[], String s, String s1);

    public abstract void BML_CB_XDPA_WriteAddressBookInfo_CancelPeer();

    public abstract int BML_CB_XDPA_WriteSchInfoPeer(short word0, int i, int j, int k, int l, int i1, int j1, 
            short word1, byte abyte0[], byte abyte1[], boolean flag);

    public abstract void BML_CB_XDPA_WriteSchInfo_CancelPeer();

    public abstract boolean BML_CB_appExIMEStartPeer(byte abyte0[], boolean flag, boolean flag1, int i, int j);

    public native void BML_CompleteHalt(int i);

    public native boolean BML_CustomizeEngine(int i);

    public native boolean BML_EscapeHalt();

    public native void BML_Finalize();

    public native int BML_GetApplicationMode();

    public native int BML_GetBufferingKeyEventCount();

    public native boolean BML_GetDTVEvent();

    public native int BML_GetHaltStatus();

    public native int BML_GetLinkStatus();

    public native boolean BML_HasFocusOrBlurEventInQueue();

    public native boolean BML_Initialize(int i);

    public native boolean BML_IsHalt();

    public native boolean BML_NotifyBroadcastStatus(int i);

    public native boolean BML_NotifyReturnToEntry();

    public native boolean BML_NotifyServiceChanged(int i, int j, int k, int l);

    public native boolean BML_NotifyServiceChangedByBookmark(int i, int j, int k, int l, String s, int ai[]);

    public native boolean BML_PostDTVBEvent_DataEventChanged(int i);

    public native boolean BML_PostDTVBEvent_EventMessageFired(int i);

    public native boolean BML_PostDTVBEvent_MainAudioStreamChanged(int i);

    public native boolean BML_PostDTVBEvent_MediaStopped(int i);

    public native boolean BML_PostDTVBEvent_ModuleLocked(int i);

    public native boolean BML_PostDTVBEvent_ModuleUpdated(int i);

    public native boolean BML_RequestHalt(int i);

    public native void BML_RestoreEngine();

    public native void BML_SetBrowserWindow(int i);

    public native void BML_SetResolution(int i, int j);

    public native boolean BML_WindowDisplayImage(int i);

    public native void BML_WindowRenovate(int i);

    public native void BML_WindowSetDisplayImage(int i, boolean flag);

    public native void BML_appExIMEEndPeer(boolean flag, byte abyte0[]);

    public abstract int Browser_CB_CommandHandler_HandleCommandProc(int i, int j);

    public native boolean Browser_MainRun();

    public native void Browser_RefreshCanvas();

    public native void Browser_ReplyToCommand();

    public native void Browser_SetNativeRect(int i, int j, float f, float f1);

    public void Browser_SetRect(int i, int j, float f, float f1)
    {
        if(i >= 0 && j >= 0 && m_BMLView != null)
        {
            m_BMLView.screenWidth = i;
            m_BMLView.screenHeight = j;
        }
        Browser_SetNativeRect(i, j, f, f1);
    }

    public native void Browser_StandardFinalize();

    public native boolean Browser_StandardInitialize();

    public native void Browser_UpdateCanvasColor(int i);

    public native void Browser_WindowAbort();

    public native void Browser_WindowDelete();

    public native int Browser_WindowNew();

    public native boolean Browser_WindowSetLocation(int i, String s, int j);

    public native int Browser_processKeyEvent(int i, int j, boolean flag);

    public native void Browser_processMouseEvent(int i, int j, int k);

    public native boolean DTVNVRAMDB_DeleteAllAffiliationAreas();

    public native boolean DTVNVRAMDB_DeleteAllCproBMInfo();

    public native boolean DTVNVRAMDB_DeleteBroadcasterArea(int i, int j);

    public native boolean DTVNVRAMDB_DeleteCproBMInfo(int i);

    public int getLastMouseX()
    {
        return m_BMLView.getLastMouseX();
    }

    public int getLastMouseY()
    {
        return m_BMLView.getLastMouseY();
    }

    public int getTimer(int i)
    {
        for(int j = 0; j < timers.size(); j++)
            if(((Timer)timers.elementAt(j)).getId() == i)
                return j;

        return -1;
    }

    public int get_scr_height()
    {
        if(m_BMLView != null)
            return m_BMLView.get_scr_height();
        else
            return 800;
    }

    public int get_scr_width()
    {
        if(m_BMLView != null)
            return m_BMLView.get_scr_width();
        else
            return 480;
    }

    public void initView(BMLNativeView bmlnativeview)
    {
        m_BMLView = bmlnativeview;
        setSurfaceHolder(m_BMLView.getHolder());
    }

    public void killTimer(int i)
    {
        try
        {
            available.acquire();
            i = getTimer(i);
        }
        catch(InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
            return;
        }
        if(i < 0)
            break MISSING_BLOCK_LABEL_58;
        if(i >= timers.size())
            break MISSING_BLOCK_LABEL_58;
        ((Timer)timers.elementAt(i)).stop();
        timers.removeElementAt(i);
_L2:
        available.release();
        return;
        MtvUtilDebug.High("BMLNativeCallbacks", "Invalid timer index");
        if(true) goto _L2; else goto _L1
_L1:
    }

    public native void onTimer(int i);

    public void quit()
    {
        bQuit = true;
    }

    public void run()
    {
        if(!bQuit);
    }

    public void setSurfaceHolder(SurfaceHolder surfaceholder)
    {
        m_selected_surf_holder = surfaceholder;
    }

    public int setTimer(int i, int j)
    {
        int k = getTimer(i);
        Timer timer;
        if(k >= 0)
        {
            timer = (Timer)timers.elementAt(k);
            timer.stop();
        } else
        {
            timer = new Timer(i);
            timers.add(timer);
        }
        timer.start(j);
        return 1;
    }

    public void startLocationService()
    {
        String s = new String(fArgStr);
        if(s.compareTo("CB") == 0)
            s = "network";
        else
        if(s.compareTo("GPS") == 0)
        {
            s = "gps";
        } else
        {
            MtvUtilDebug.Mid("BMLNativeCallbacks", "Invalid provider!");
            return;
        }
        MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("startLocationService: ").append(s).toString());
        posCount = 0.0D;
        locationManager = (LocationManager)mContext.getSystemService("location");
        locationManager.requestLocationUpdates(s, 1000L, 0.0F, locationListener);
        location = locationManager.getLastKnownLocation(s);
        if(location != null)
        {
            fLatitude = (new Double(location.getLatitude())).toString();
            fLongitude = (new Double(location.getLongitude())).toString();
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("Init(location info found) : fLatitude:").append(fLatitude).append(", fLongitude:").append(fLongitude).append(", posResult:").append(posResult).toString());
            posResult = 0;
        } else
        {
            if(locationManager.isProviderEnabled(s))
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append(s).append(" is already enabled").toString());
            } else
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append(s).append(" is disabled, try to start service").toString());
                setLocationProviderState(mContext, s, true);
            }
            fLatitude = "0";
            fLongitude = "0";
            posResult = -2;
            if(!MtvUtilDebug.isReleaseMode())
            {
                MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("Init(location info not found) : fLatitude:").append(fLatitude).append(", fLongitude:").append(fLongitude).append(", posResult:").append(posResult).toString());
                return;
            }
        }
    }

    public void startTelephonyService(int i)
    {
        MtvUtilDebug.Low("BMLNativeCallbacks", "startTelephonyService");
        telephonyManager = (TelephonyManager)mContext.getSystemService("phone");
        telephonyManager.listen(phoneStateListener, i);
        rStrength = -2;
        rcvCount = 0.0D;
    }

    public void stopLocationService()
    {
        String s = new String(fArgStr);
        locationManager = (LocationManager)mContext.getSystemService("location");
        locationManager.removeUpdates(locationListener);
        if(s.compareTo("CB") == 0)
            s = "network";
        else
        if(s.compareTo("GPS") == 0)
        {
            s = "gps";
        } else
        {
            MtvUtilDebug.High("BMLNativeCallbacks", "Invalid provider!");
            return;
        }
        setLocationProviderState(mContext, s, false);
        MtvUtilDebug.Low("BMLNativeCallbacks", (new StringBuilder()).append("Trying to stopLocationService: ").append(s).toString());
    }

    public void stopTelephonyService()
    {
        MtvUtilDebug.Low("BMLNativeCallbacks", "stopTelephonyService");
        telephonyManager = (TelephonyManager)mContext.getSystemService("phone");
        telephonyManager.listen(phoneStateListener, 0);
    }

    private static final String TAG = "BMLNativeCallbacks";
    private static final double TIMER_PERIOD = 324638D;
    public String BaseStationLatitude;
    public String BaseStationLongitude;
    public final Semaphore available = new Semaphore(1, true);
    public boolean bQuit;
    public int fAction;
    public int fAffiliationID;
    public String fAppDetail;
    public int fAppDetailLen;
    public String fAppName;
    public byte fArgStr[];
    public int fAudioStream_Channel;
    public int fAudioStream_ComponentTag;
    public int fAudioStream_EventType;
    public short fAudioStream_Status;
    public byte fAuth_Challenge[];
    public boolean fAuth_KeepPassword;
    public boolean fAuth_KeepUserName;
    public String fAuth_Password;
    public String fAuth_ProxyHost;
    public int fAuth_ProxyPort;
    public byte fAuth_Realm[];
    public int fAuth_Target;
    public int fAuth_Type;
    public String fAuth_URL;
    public byte fAuth_UserName[];
    public String fBaseURIDirectory;
    public int fBlock;
    public int fBookmarkBlockNo;
    public byte fBookmarkTitle[];
    public int fCategory;
    public boolean fConfirmed_Reply;
    public boolean fConfirmed_certReply;
    public int fContent_By;
    public int fContent_ErrorCode;
    public boolean fContent_Inclusion;
    public int fContent_StatusCode;
    public String fContent_URL;
    public String fCurrentURI;
    public boolean fDoContinue;
    public boolean fDoPermit;
    public boolean fDoRedirect_Reply;
    public boolean fDoRequestContent;
    public boolean fDoRequestContent_Reply;
    public boolean fDoWrite;
    public int fDraw_ErrorCode;
    public int fErrorCode;
    public int fErrorRange;
    public int fEventChanged_ComponentTag;
    public int fEventChanged_EventType;
    public short fEventChanged_Status;
    public byte fFailureAction_ArgStr[];
    public String fFailureAction_FuncName;
    public String fFuncName;
    public int fGeodeticSystem;
    public String fInputFormatError_Format;
    public byte fInputFormatError_Value[];
    public boolean fKeepPassword_Reply;
    public boolean fKeepUserName_Reply;
    public String fLatitude;
    public String fLongitude;
    public String fMajorNo;
    public String fMakerId;
    public int fMediaStopped_EventType;
    public String fMediaStopped_ObjectID;
    public short fMediaStopped_Status;
    public int fMessageFired_ComponentTag;
    public int fMessageFired_EventType;
    public short fMessageFired_MessageGroupID;
    public short fMessageFired_MessageID;
    public short fMessageFired_MessageVersion;
    public String fMessageFired_PrivateData;
    public short fMessageFired_Status;
    public int fMessageFired_TimeMode;
    public int fMessageFired_fDay;
    public int fMessageFired_fDayOfWeek;
    public int fMessageFired_fHour;
    public short fMessageFired_fMillisecond;
    public int fMessageFired_fMinute;
    public int fMessageFired_fMonth;
    public int fMessageFired_fSecond;
    public short fMessageFired_fYear;
    public String fMinorNo;
    public int fModuleLocked_ComponentTag;
    public int fModuleLocked_EventType;
    public int fModuleLocked_ModuleID;
    public short fModuleLocked_Status;
    public int fModuleUpdated_ComponentTag;
    public int fModuleUpdated_EventType;
    public int fModuleUpdated_ModuleID;
    public short fModuleUpdated_Status;
    public String fPassword_Reply;
    public int fRedirectDialog_Method;
    public String fRedirectDialog_NewURL;
    public String fRedirectDialog_URL;
    public byte fReplacedBookmarkTitle[];
    public int fRequestID;
    public String fRequestURI;
    public int fServerCert_VerifyResult;
    public String fSetLocation_URL;
    public int fStatus;
    public int fStreamState_State;
    public String fStreamState_URL;
    public int fSubID;
    public byte fUserName_Reply[];
    public int fWindowState_State;
    public Handler handler;
    public Location location;
    LocationListener locationListener;
    public LocationManager locationManager;
    protected Context mContext;
    protected BMLNativeView m_BMLView;
    protected SurfaceHolder m_selected_surf_holder;
    public int nativeEngine;
    PhoneStateListener phoneStateListener;
    private double posCount;
    public int posResult;
    public int rStrength;
    private double rcvCount;
    public TelephonyManager telephonyManager;
    public Vector timers;
}
