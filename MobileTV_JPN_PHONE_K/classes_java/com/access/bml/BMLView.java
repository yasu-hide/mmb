// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.graphics.*;
import android.location.*;
import android.os.*;
import android.telephony.*;
import android.util.Log;
import android.view.*;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import java.io.File;
import java.util.*;
import java.util.concurrent.*;

// Referenced classes of package com.access.bml:
//            BMLFontManager, BMLHandleCommandProc, BMLFont

public class BMLView extends FrameLayout
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
                (new Thread(new Runnable() {

                    public void run()
                    {
                        try
                        {
                            available.acquire();
                            onTimer(in_id);
                            available.release();
                            processEvent();
                            return;
                        }
                        catch(InterruptedException interruptedexception)
                        {
                            interruptedexception.printStackTrace();
                        }
                    }

                    final Timer this$1;

            
            {
                this$1 = Timer.this;
                super();
            }
                }
)).start();
                return;
            }
        }

        public void start(int i)
        {
            handler.postDelayed(this, i);
        }

        public void stop()
        {
            handler.removeCallbacks(this);
        }

        private int in_id;
        final BMLView this$0;



        public Timer(int i)
        {
            this$0 = BMLView.this;
            super();
            in_id = i;
        }
    }

    public class eventInfo
    {

        int actionType;
        int eventType;
        int keyChar;
        int keyCode;
        final BMLView this$0;
        int x;
        int y;

        public eventInfo()
        {
            this$0 = BMLView.this;
            super();
        }
    }


    protected BMLView(Context context)
    {
        super(context);
        mBitmap = null;
        mCanvas = null;
        screenWidth = 480;
        screenHeight = 800;
        bitMapLeft = 0.0F;
        bitMapTop = 0.0F;
        gContentsRect = new Rect();
        gScreenRect = new Rect();
        downX = 0.0F;
        downY = 0.0F;
        lastX = 0.0F;
        lastY = 0.0F;
        m_bSuppressNotiPopup = false;
        paint_filter = new Paint();
        BML_MagValue = 1.0F;
        mRcvStrength = 0;
        mRcvCount = 0.0D;
        mCmdProc = null;
        mBMLBrowserRect = new Rect(0, 0, 0, 0);
        mNeedReshape = false;
        posProvider = "";
        mPosCount = 0.0D;
        mPosResult = -1;
        mLock_OnOff = false;
        fDoRequestContent = false;
        fDoContinue = false;
        bQuit = false;
        fontManager = new BMLFontManager();
        dirtyRect = new Rect();
        locationListener = new LocationListener() {

            public void onLocationChanged(Location location)
            {
                if(location != null)
                {
                    mLocation = location;
                    mPosResult = 0;
                    return;
                } else
                {
                    mLocation = null;
                    mPosResult = -2;
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

            final BMLView this$0;

            
            {
                this$0 = BMLView.this;
                super();
            }
        }
;
        phoneStateListener = new PhoneStateListener() {

            public void onServiceStateChanged(ServiceState servicestate)
            {
                if(servicestate.getState() == 1)
                    mRcvStrength = 0;
            }

            public void onSignalStrengthsChanged(SignalStrength signalstrength)
            {
                int i;
                if(signalstrength.isGsm())
                {
                    i = signalstrength.getGsmSignalStrength();
                    if(i == 99)
                        i = 0;
                    else
                    if(i >= 14 && i <= 31)
                        i = 3;
                    else
                    if(i >= 8)
                        i = 2;
                    else
                    if(i >= 4)
                        i = 1;
                    else
                        i = -1;
                } else
                {
                    i = signalstrength.getCdmaDbm();
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
                        i = 0;
                }
                mRcvStrength = i;
            }

            final BMLView this$0;

            
            {
                this$0 = BMLView.this;
                super();
            }
        }
;
        mProgressBar = null;
        mContext = context;
        mCmdProc = new BMLHandleCommandProc(context, this);
        handler = new Handler();
        timers = new Vector();
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        screenWidth = display.getWidth();
        screenHeight = display.getHeight();
        mBitmap = Bitmap.createBitmap(screenWidth, screenHeight, android.graphics.Bitmap.Config.RGB_565);
        mCanvas = new Canvas(mBitmap);
        setBackgroundColor(mBgColor);
        bckupBitmap = Bitmap.createBitmap(mBitmap);
        bckupCanvas = new Canvas(bckupBitmap);
        mTelephonyManager = (TelephonyManager)context.getSystemService("phone");
        eventInitialize();
        paint_filter.setFilterBitmap(true);
    }

    private native float BML_SetResolution(int i, int j);

    private native int BML_demux_incoming_packet(byte abyte0[]);

    private native int BML_demux_incoming_section(int i, byte abyte0[], int j);

    private void SetResolution(int i, int j)
    {
        BML_MagValue = BML_SetResolution(i, j);
    }

    private int eventInitialize()
    {
        queue = new ArrayBlockingQueue(5);
        return queue != null ? 1 : -1;
    }

    private eventInfo getEventInfo()
    {
        eventInfo eventinfo = (eventInfo)queue.poll();
        if(eventinfo == null);
        return eventinfo;
    }

    private void processEvent()
    {
        Object obj = getEventInfo();
_L4:
        if(obj == null)
            return;
        available.acquire();
        ((eventInfo) (obj)).eventType;
        JVM INSTR tableswitch 1 2: default 147
    //                   1 64
    //                   2 100;
           goto _L1 _L2 _L3
_L1:
        available.release();
_L5:
        obj = getEventInfo();
          goto _L4
_L2:
        Browser_processMouseEvent(w, ((eventInfo) (obj)).x, ((eventInfo) (obj)).y, ((eventInfo) (obj)).actionType);
          goto _L1
        obj;
        ((InterruptedException) (obj)).printStackTrace();
          goto _L5
_L3:
        int i;
        int j;
        int k;
        i = w;
        j = ((eventInfo) (obj)).keyCode;
        k = ((eventInfo) (obj)).keyChar;
        boolean flag;
        if(((eventInfo) (obj)).actionType == 0)
            flag = true;
        else
            flag = false;
        Browser_processKeyEvent(i, j, k, flag);
          goto _L1
    }

    public native int BML_Affiliation_Delete(int i, int j);

    public native int BML_Affiliation_DeleteAll();

    public native void BML_BookmarkInitialize();

    public native int BML_Bookmark_ActionDelete(int i);

    public native int BML_Bookmark_ActionDeleteAll();

    public native int BML_Bookmark_ActionGoto(int i);

    public int BML_CB_BookmarkAddBookmarkEntry(Object obj)
    {
        return 0;
    }

    public void BML_CB_BookmarkClearList()
    {
    }

    public int BML_CB_BookmarkStartBookmarkList()
    {
        return 0;
    }

    public int BML_CB_CancelModalStateProc()
    {
        return 0;
    }

    public void BML_CB_NotifyEnterUnloadProc(boolean flag)
    {
    }

    public void BML_CB_NotifyTransitionDoneProc()
    {
    }

    public void BML_CB_NotifyUnhalt()
    {
        Browser_SetRect(w, Math.round((float)mBMLBrowserRect.width() * BML_MagValue), Math.round((float)mBMLBrowserRect.height() * BML_MagValue), Math.round((float)mBMLBrowserRect.left * BML_MagValue), Math.round((float)mBMLBrowserRect.top * BML_MagValue));
    }

    public void BML_CB_WakeUpUsingHandler()
    {
        handler.post(new Runnable() {

            public void run()
            {
                try
                {
                    available.acquire();
                    BML_WakeUp();
                    available.release();
                    return;
                }
                catch(InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            }

            final BMLView this$0;

            
            {
                this$0 = BMLView.this;
                super();
            }
        }
);
    }

    public native void BML_CompleteHalt(int i);

    public native boolean BML_CustomizeEngine(int i);

    public native int BML_DsmccAPI_DetectEIT();

    public native int BML_DsmccAPI_SetChannel(BMLDtvType.TDSMCCTransmissionLine tdsmcctransmissionline, int i, BMLDtvType.TDSMCCFirstView tdsmccfirstview, BMLDtvType.TDSMCCPMTData tdsmccpmtdata);

    public native boolean BML_EscapeHalt();

    public native void BML_Finalize();

    public native int BML_GetAffiliationSubAreaInfo(int i, int ai[]);

    public native int BML_GetApplicationMode();

    public native int BML_GetBufferingKeyEventCount();

    public native boolean BML_GetDTVEvent();

    public native int BML_GetHaltStatus();

    public native int BML_GetLinkStatus();

    public int BML_GetProperty(String s, byte abyte0[])
    {
        Properties properties = System.getProperties();
        byte abyte1[] = new byte[255];
        s = properties.getProperty(s);
        if(s != null)
        {
            s = s.getBytes();
            System.arraycopy(s, 0, abyte0, 0, s.length);
            return 0;
        } else
        {
            return -1;
        }
    }

    public native boolean BML_HasFocusOrBlurEventInQueue();

    public native boolean BML_Initialize(int i);

    public native boolean BML_IsHalt();

    public native boolean BML_IsTuneByBookmark();

    public native int BML_NVRAM_DeleteAll();

    public native boolean BML_NotifyBroadcastStatus(int i);

    public native boolean BML_NotifyReturnToEntry();

    public native boolean BML_NotifyServiceChanged(int i, int j, int k, int l);

    public native boolean BML_NotifyServiceChangedByBookmark(int i, int j, int k, int l, String s, int ai[]);

    public native boolean BML_PostDTVBEvent_DataEventChanged(int i);

    public native boolean BML_PostDTVBEvent_EventMessageFired(int i);

    public native boolean BML_PostDTVBEvent_MainAudioStreamChanged(int i);

    public native boolean BML_PostDTVBEvent_MediaStopped(int i, byte abyte0[]);

    public native boolean BML_PostDTVBEvent_ModuleLocked(int i);

    public native boolean BML_PostDTVBEvent_ModuleUpdated(int i);

    public native boolean BML_RequestHalt(int i);

    public native void BML_RestoreEngine();

    public native void BML_SetBrowserWindow(int i);

    public native void BML_WakeUp();

    public native boolean BML_WindowDisplayImage(int i);

    public native void BML_WindowRenovate(int i);

    public native void BML_WindowSetDisplayImage(int i, boolean flag);

    public native void BML_appExIMEEndPeer(boolean flag, byte abyte0[], int i);

    public int Browser_CB_CommandHandler_HandleCommandProc(BMLCommandType.TBrowserCmdType tbrowsercmdtype, BMLCommandType.TBrowserReplyType tbrowserreplytype)
    {
        return mCmdProc.CommandHandler_HandleCommandProc(tbrowsercmdtype, tbrowserreplytype, mActivityHandler);
    }

    public void Browser_Finalize()
    {
        try
        {
            available.acquire();
            Browser_WindowDelete(w);
            BML_SetBrowserWindow(0);
            BML_CompleteHalt(0);
            BML_RestoreEngine();
            BML_Finalize();
            Browser_StandardFinalize();
            available.release();
        }
        catch(InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        BMLFont.Finalize();
        mCmdProc.finalize();
        mContext = null;
    }

    public Rect Browser_GetRect()
    {
        return mBMLBrowserRect;
    }

    public void Browser_Initialize(int i, int j, int k, int l)
    {
        Browser_StandardInitialize(mContext.getFilesDir().getPath());
        BML_Initialize(0);
        BML_CustomizeEngine(0);
        Browser_MainRun();
        w = Browser_WindowNew();
        bitMapLeft = i;
        bitMapTop = j;
        BML_SetBrowserWindow(w);
        SetResolution(k, l);
    }

    public native boolean Browser_MainRun();

    public boolean Browser_ReplyToCommand(int i, BMLCommandType.TBrowserReplyType tbrowserreplytype)
    {
        return Browser_ReplyToCommand(i, tbrowserreplytype);
    }

    public native boolean Browser_ReplyToCommand(int i, Object obj);

    public native void Browser_SetPref_Mag(int i);

    public native void Browser_SetRect(int i, int j, int k, float f, float f1);

    public void Browser_SetRect(int i, int j, int k, int l)
    {
        screenWidth = k;
        screenHeight = l;
        BML_MagValue = 480F / (float)k;
        gContentsRect.left = 0;
        gContentsRect.top = 0;
        gContentsRect.right = Math.round((float)screenWidth * BML_MagValue);
        gContentsRect.bottom = Math.round((float)screenHeight * BML_MagValue);
        gScreenRect.left = 0;
        gScreenRect.top = 0;
        gScreenRect.right = screenWidth;
        gScreenRect.bottom = screenHeight;
        mBitmap = Bitmap.createBitmap(gScreenRect.right, gScreenRect.bottom, android.graphics.Bitmap.Config.RGB_565);
        mCanvas = new Canvas(mBitmap);
        bitMapLeft = i;
        bitMapTop = j;
        int i1 = BML_GetHaltStatus();
        if(i1 == 0 || i1 == -1)
            try
            {
                available.acquire();
                Browser_SetRect(w, Math.round((float)k * BML_MagValue), Math.round((float)l * BML_MagValue), Math.round((float)i * BML_MagValue), Math.round((float)j * BML_MagValue));
                available.release();
            }
            catch(InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        mBMLBrowserRect.left = i;
        mBMLBrowserRect.top = j;
        mBMLBrowserRect.right = i + k;
        mBMLBrowserRect.bottom = j + l;
        if(mProgressBar != null)
        {
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(60, 60, 0);
            layoutparams.topMargin = (mBMLBrowserRect.height() - 60) / 2;
            layoutparams.leftMargin = (mBMLBrowserRect.width() - 60) / 2;
            removeView(mProgressBar);
            mProgressBar.setVisibility(8);
            mProgressBar = null;
            mProgressBar = new ProgressBar(mContext);
            addView(mProgressBar, layoutparams);
        }
    }

    public native void Browser_StandardFinalize();

    public native boolean Browser_StandardInitialize(String s);

    public native void Browser_WindowDelete(int i);

    public native int Browser_WindowNew();

    public native boolean Browser_WindowSetLocation(int i, String s, int j);

    public native int Browser_processKeyEvent(int i, int j, int k, boolean flag);

    public native void Browser_processMouseEvent(int i, int j, int k, int l);

    public void ClearBackGround()
    {
        mCanvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
        bckupCanvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
    }

    public void DismissDialog()
    {
        mCmdProc.DialogDestroy();
    }

    public boolean GetLockMode()
    {
        return mLock_OnOff;
    }

    public int PushDemuxIncomingPacket(byte abyte0[])
    {
        return BML_demux_incoming_packet(abyte0);
    }

    public int PushDemuxIncomingSection(int i, byte abyte0[], int j)
    {
        return BML_demux_incoming_section(i, abyte0, j);
    }

    public void ResetContext(Context context)
    {
        Log.d("BMLView", (new StringBuilder("ResetContext PREV: ")).append(mContext).append(" NEW: ").append(context).toString());
        mContext = context;
        mCmdProc.ResetContext(context);
    }

    public void SetLockMode(boolean flag)
    {
        mLock_OnOff = flag;
    }

    public void SuppressNotiPoup(boolean flag)
    {
        m_bSuppressNotiPopup = flag;
    }

    protected void addDirtyRect(Rect rect)
    {
        if(dirtyRect.isEmpty())
        {
            dirtyRect.set(rect);
            return;
        } else
        {
            dirtyRect.union(rect);
            return;
        }
    }

    public boolean appExIMEStartPeer(byte abyte0[], boolean flag, boolean flag1)
    {
        return true;
    }

    public void bitBlt(int ai[], int i, int j, int k, int l, int i1, int j1, 
            int k1, int l1, boolean flag)
    {
        if(k - i < k1)
            k1 = k - i;
        if(l - j < l1)
            l1 = l - j;
        Rect rect;
        Rect rect1;
        if(flag)
            ai = Bitmap.createBitmap(ai, k, l, android.graphics.Bitmap.Config.ARGB_8888);
        else
            ai = Bitmap.createBitmap(ai, k, l, android.graphics.Bitmap.Config.RGB_565);
        rect = new Rect(i, j, i + k1, j + l1);
        rect1 = new Rect(i1, j1, i1 + k1, j1 + l1);
        mCanvas.drawBitmap(ai, rect, rect1, null);
        addDirtyRect(rect1);
    }

    public void copyArea(int i, int j, int k, int l, int i1, int j1)
    {
        int k1;
        int l1;
        int i2;
        int j2;
        Rect rect;
        if(i1 >= 0)
        {
            l1 = i;
            k1 = i + i1;
            i1 = k - i1;
        } else
        {
            l1 = i - i1;
            k1 = i;
            i1 = k + i1;
        }
        if(j1 >= 0)
        {
            j2 = j;
            i2 = j + j1;
            j1 = l - j1;
        } else
        {
            j2 = j - j1;
            i2 = j;
            j1 = l + j1;
        }
        rect = new Rect(k1, i2, k1 + i1, i2 + j1);
        try
        {
            Bitmap bitmap = Bitmap.createBitmap(mBitmap, l1, j2, i1, j1);
            mCanvas.drawBitmap(bitmap, null, rect, null);
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
        }
        addDirtyRect(new Rect(i, j, i + k, j + l));
    }

    public void drawLine(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1, int i2)
    {
        Rect rect = new Rect(i1, j1, i1 + k1, j1 + l1);
        Paint paint = new Paint();
        paint.setColor(i2 | 0xff000000);
        Rect rect1 = mCanvas.getClipBounds();
        mCanvas.clipRect(rect, android.graphics.Region.Op.REPLACE);
        mCanvas.drawLine(i, j, k, l, paint);
        mCanvas.clipRect(rect1, android.graphics.Region.Op.REPLACE);
        addDirtyRect(rect);
    }

    public void drawText(int i, int j, String s, int k, int l)
    {
        Paint paint = fontManager.getPaint(l);
        paint.setColor(k | 0xff000000);
        BMLFont bmlfont = fontManager.getFont(l);
        mCanvas.drawText(s, i, bmlfont.getIntAscent() + j, paint);
    }

    public void drawText(int i, int j, String s, int k, int l, int i1, int j1, 
            int k1, int l1)
    {
        Rect rect = new Rect(i1, j1, i1 + k1, j1 + l1);
        Rect rect1 = mCanvas.getClipBounds();
        mCanvas.clipRect(rect, android.graphics.Region.Op.REPLACE);
        drawText(i, j, s, k, l);
        mCanvas.clipRect(rect1, android.graphics.Region.Op.REPLACE);
        addDirtyRect(rect);
    }

    public void fillRect(int i, int j, int k, int l, int i1)
    {
        Paint paint = new Paint();
        paint.setColor(i1 | 0xff000000);
        Rect rect = new Rect(i, j, i + k, j + l);
        mCanvas.drawRect(rect, paint);
        addDirtyRect(rect);
    }

    public int findFont(String s, int i, boolean flag, boolean flag1)
    {
        int j = s.indexOf(",");
        String s1 = s;
        if(j >= 0)
            s1 = s.substring(0, j);
        s = fontManager.createFont(s1, i, flag, flag1);
        return fontManager.getFontId(s);
    }

    public float getBitMapLeft()
    {
        return bitMapLeft;
    }

    public float getBitMapTop()
    {
        return bitMapTop;
    }

    public BMLFont getFont(int i)
    {
        return fontManager.getFont(i);
    }

    public int getLastMouseX()
    {
        return (int)lastX;
    }

    public int getLastMouseY()
    {
        return (int)lastY;
    }

    public int getScreenHeight()
    {
        return screenHeight;
    }

    public int getScreenWidth()
    {
        return screenWidth;
    }

    public int getTextWidth(String s, int i)
    {
        return fontManager.getFont(i).measureTextWidth(s);
    }

    public int getTimer(int i)
    {
        int j = 0;
_L6:
        if(j < timers.size()) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        k = j;
        if(((Timer)timers.elementAt(j)).getId() == i) goto _L4; else goto _L3
_L3:
        j++;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void killTimer(int i)
    {
        i = getTimer(i);
        if(i < 0)
            break MISSING_BLOCK_LABEL_32;
        ((Timer)timers.elementAt(i)).stop();
        timers.removeElementAt(i);
        return;
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception;
        arrayindexoutofboundsexception;
        arrayindexoutofboundsexception.printStackTrace();
        return;
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        Log.d("BMLView", "Configuration changed");
        super.onConfigurationChanged(configuration);
        mCmdProc.SetPreventPopup(true);
        DismissDialog();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        canvas.drawBitmap(bckupBitmap, gContentsRect, gScreenRect, paint_filter);
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
    }

    public native void onTimer(int i);

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f2;
        float f3;
        int i;
        i = 0;
        f2 = motionevent.getX() - bitMapLeft;
        f3 = motionevent.getY() - bitMapTop;
        Math.round(f2);
        Math.round(f3);
        if(GetLockMode())
            return false;
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 80
    //                   0 125
    //                   1 240
    //                   2 149
    //                   3 304;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        float f;
        float f1;
        f = f3;
        f1 = f2;
_L6:
        lastX = f1;
        lastY = f;
        setEventInfo(1, i, Math.round(BML_MagValue * f1), Math.round(BML_MagValue * f), 0, 0);
        return true;
_L2:
        downX = f2;
        downY = f3;
        i = 0;
        f1 = f2;
        f = f3;
        continue; /* Loop/switch isn't completed */
_L4:
        if(Math.abs(Math.round(lastX - f2)) < 12 && Math.abs(Math.round(lastY - f3)) < 12)
            return true;
        if((float)Math.abs(Math.round(lastY - f3)) * BML_MagValue > 10F)
        {
            setEventInfo(1, 1, 0, Math.round(BML_MagValue * f3), 0, 0);
            lastY = f3;
        }
        return true;
_L3:
        f1 = f2;
        f = f3;
        if(Math.abs(Math.round(downX - f2)) < 12)
        {
            f1 = f2;
            f = f3;
            if(Math.abs(Math.round(downY - f3)) < 12)
            {
                f1 = downX;
                f = downY;
            }
        }
        i = 2;
        if(true) goto _L6; else goto _L5
_L5:
        return true;
    }

    public void refreshScreen()
    {
        if(!dirtyRect.isEmpty())
        {
            bckupCanvas.drawBitmap(mBitmap, dirtyRect, dirtyRect, null);
            postInvalidate();
        }
        dirtyRect.setEmpty();
    }

    public void resetBMLPref()
    {
        mCmdProc.resetBMLPref();
    }

    public void setActivityHandler(Handler handler1)
    {
        mActivityHandler = handler1;
    }

    public void setEventInfo(int i, int j, int k, int l, int i1, int j1)
    {
        if(!BML_IsHalt()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        obj = new eventInfo();
        obj.eventType = i;
        obj.actionType = j;
        obj.x = k;
        obj.y = l;
        obj.keyCode = i1;
        obj.keyChar = j1;
        i = 0;
_L9:
        if(i < 100)
            break MISSING_BLOCK_LABEL_98;
        if(!queue.offer(obj, 10L, TimeUnit.MILLISECONDS)) goto _L1; else goto _L3
_L3:
        BML_CB_WakeUpUsingHandler();
        return;
        obj;
        ((InterruptedException) (obj)).printStackTrace();
        return;
        if(!available.tryAcquire(0L, TimeUnit.SECONDS)) goto _L5; else goto _L4
_L4:
        ((eventInfo) (obj)).eventType;
        JVM INSTR tableswitch 1 2: default 237
    //                   1 148
    //                   2 188;
           goto _L6 _L7 _L8
_L6:
        available.release();
        return;
_L7:
        Browser_processMouseEvent(w, ((eventInfo) (obj)).x, ((eventInfo) (obj)).y, ((eventInfo) (obj)).actionType);
          goto _L6
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
_L5:
        i++;
          goto _L9
_L8:
        j = w;
        k = ((eventInfo) (obj)).keyCode;
        l = ((eventInfo) (obj)).keyChar;
        boolean flag;
        if(((eventInfo) (obj)).actionType == 0)
            flag = true;
        else
            flag = false;
        Browser_processKeyEvent(j, k, l, flag);
          goto _L6
    }

    public void setFont(AssetManager assetmanager, String s)
    {
        fontManager.setFont(assetmanager, s);
    }

    public void setFont(Typeface typeface)
    {
        fontManager.setFont(typeface);
    }

    public void setFontPath(String s)
    {
        fontManager.setFontPath(s);
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

    public void startLocationService(String s)
    {
        if(s.compareTo("CB") != 0) goto _L2; else goto _L1
_L1:
        posProvider = "network";
_L6:
        mPosCount = 0.0D;
        mLocationManager = (LocationManager)mContext.getSystemService("location");
        if(!mLocationManager.getAllProviders().contains(posProvider))
            break MISSING_BLOCK_LABEL_135;
        Looper.prepare();
        mLocationManager.requestLocationUpdates(posProvider, 1000L, 0.0F, locationListener);
        mLocation = mLocationManager.getLastKnownLocation(posProvider);
        if(mLocation == null)
            break; /* Loop/switch isn't completed */
        mPosResult = 0;
_L4:
        return;
_L2:
        if(s.compareTo("GPS") != 0) goto _L4; else goto _L3
_L3:
        posProvider = "gps";
        if(true) goto _L6; else goto _L5
_L5:
        mPosResult = -2;
        return;
        mPosResult = -1;
        return;
    }

    public void startTelephonyService(int i)
    {
        mTelephonyManager.listen(phoneStateListener, i);
        mRcvStrength = -2;
        mRcvCount = 0.0D;
    }

    public void stopLocationService()
    {
        mLocationManager = (LocationManager)mContext.getSystemService("location");
        mLocationManager.removeUpdates(locationListener);
    }

    public void stopTelephonyService()
    {
        mTelephonyManager.listen(phoneStateListener, 0);
    }

    public static final boolean DEBUG = false;
    static final String TAG = "BMLView";
    public static int mBgColor = 0xff000000;
    private float BML_MagValue;
    public final int EVENT_ACTION_KEY_PRESS = 1;
    public final int EVENT_ACTION_KEY_RELEASE = 2;
    public final int EVENT_ACTION_MOUSE_DOWN = 0;
    public final int EVENT_ACTION_MOUSE_MOVE = 1;
    public final int EVENT_ACTION_MOUSE_UP = 2;
    public final int EVENT_ACTION_MOUSE_WHEEL = 3;
    public final int EVENT_TYPE_KEY = 2;
    public final int EVENT_TYPE_MOUSE = 1;
    public final int EVENT_TYPE_NIL = 0;
    public final Semaphore available = new Semaphore(1, true);
    private boolean bQuit;
    private Bitmap bckupBitmap;
    private Canvas bckupCanvas;
    private float bitMapLeft;
    private float bitMapTop;
    private Rect dirtyRect;
    private float downX;
    private float downY;
    public int fAudioStream_Channel;
    public int fAudioStream_ComponentTag;
    public int fAudioStream_EventType;
    public short fAudioStream_Status;
    public boolean fDoContinue;
    public boolean fDoRequestContent;
    public int fEventChanged_ComponentTag;
    public int fEventChanged_EventType;
    public short fEventChanged_Status;
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
    public int fModuleLocked_ComponentTag;
    public int fModuleLocked_EventType;
    public int fModuleLocked_ModuleID;
    public short fModuleLocked_Status;
    public int fModuleUpdated_ComponentTag;
    public int fModuleUpdated_EventType;
    public int fModuleUpdated_ModuleID;
    public short fModuleUpdated_Status;
    public int fRequestID;
    private BMLFontManager fontManager;
    Rect gContentsRect;
    Rect gScreenRect;
    private Handler handler;
    private float lastX;
    private float lastY;
    LocationListener locationListener;
    private Handler mActivityHandler;
    private Rect mBMLBrowserRect;
    private Bitmap mBitmap;
    private Canvas mCanvas;
    private BMLHandleCommandProc mCmdProc;
    private Context mContext;
    private final int mEngineDrawPixel = 480;
    public Location mLocation;
    private LocationManager mLocationManager;
    private boolean mLock_OnOff;
    private boolean mNeedReshape;
    public double mPosCount;
    public int mPosResult;
    protected ProgressBar mProgressBar;
    public double mRcvCount;
    public int mRcvStrength;
    public TelephonyManager mTelephonyManager;
    public boolean m_bSuppressNotiPopup;
    public int nativeEngine;
    Paint paint_filter;
    PhoneStateListener phoneStateListener;
    private String posProvider;
    private BlockingQueue queue;
    private int screenHeight;
    private int screenWidth;
    private Vector timers;
    public int w;

    static 
    {
        System.loadLibrary("BML");
    }




}
