// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.sdtv;

import android.broadcast.*;
import android.broadcast.helper.MtvUtilDebug;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

// Referenced classes of package android.broadcast.sdtv:
//            SDtvControl

public class SDtvCompControlImpl
    implements IMtvOneSegAudioControl, IMtvOneSegVideoControl, IMtvOneSegCaptionControl, IMtvOneSegFileControl
{

    private SDtvCompControlImpl()
    {
        MtvUtilDebug.High("SDtvCompControlImpl", "Successfully Instantiated Constrcutor");
    }

    private boolean getAudioEnable()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", (new StringBuilder()).append("Audio Enable[").append(isAudioEnable).append("]").toString());
        return isAudioEnable;
    }

    private boolean getCaptEnable()
    {
        return isCaptEnable;
    }

    public static SDtvCompControlImpl getCompControl()
    {
        if(mCompControl == null)
            mCompControl = new SDtvCompControlImpl();
        return mCompControl;
    }

    private boolean getVideoEnable()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", (new StringBuilder()).append("Video Enable[").append(isVideoEnable).append("]").toString());
        return isVideoEnable;
    }

    private void setAudioEnable(boolean flag)
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", (new StringBuilder()).append("Setting Audio with[").append(flag).append("]").toString());
        isAudioEnable = flag;
    }

    private void setCaptEnable(boolean flag)
    {
        isCaptEnable = flag;
    }

    private boolean setOrientation(int i)
    {
        return false;
    }

    private boolean setSurface(SurfaceHolder surfaceholder, int i, int j)
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Entered setSurface() ");
        if(mSurfaceHolder != surfaceholder)
        {
            MtvUtilDebug.Low("SDtvCompControlImpl", "Different Surface Holder passed ! ");
            SDtvControl.getInstance().SDtvSetDisplay(null, 0, 0);
        } else
        {
            MtvUtilDebug.Low("SDtvCompControlImpl", "Same Surface Holder passed ! Resetting ");
            SDtvControl.getInstance().SDtvSetDisplay(null, 0, 0);
        }
        SDtvControl.getInstance().SDtvSetDisplay(surfaceholder, i, j);
        mSurfaceHolder = surfaceholder;
        MtvUtilDebug.Low("SDtvCompControlImpl", "Exiting setSurface() ");
        return true;
    }

    private void setVideoEnable(boolean flag)
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", (new StringBuilder()).append("Setting Video with[").append(flag).append("]").toString());
        isVideoEnable = flag;
    }

    public void close()
    {
    }

    public boolean create()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Entered create() ");
        setAudioEnable(true);
        setVideoEnable(true);
        setCaptEnable(false);
        MtvUtilDebug.Low("SDtvCompControlImpl", "Exiting create() ");
        return true;
    }

    public void delete()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Entered delete() ");
        setAudioEnable(false);
        setVideoEnable(false);
        setCaptEnable(false);
        mCompControl = null;
        MtvUtilDebug.Low("SDtvCompControlImpl", "Exiting delete() ");
    }

    public boolean disableAudio()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "disabling audio");
        setAudioEnable(false);
        return true;
    }

    public boolean disableCaption()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Disbaling Captions");
        setCaptEnable(false);
        return true;
    }

    public boolean disableVideo()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Disabling Video");
        setVideoEnable(false);
        return true;
    }

    public boolean enableAudio()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Enabling Audio");
        setAudioEnable(true);
        return true;
    }

    public boolean enableCaption()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Enabling Captions");
        setCaptEnable(true);
        return true;
    }

    public boolean enableVideo()
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", "Enabling Video");
        setVideoEnable(true);
        return true;
    }

    public int getAudioSessionId()
    {
        if(getAudioEnable())
        {
            MtvUtilDebug.Low("SDtvCompControlImpl", "setAudioMode");
            return SDtvControl.getInstance().getAudioSessionId();
        } else
        {
            return -1;
        }
    }

    public boolean muteAudio()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(getAudioEnable())
        {
            flag = flag1;
            if(SDtvControl.getInstance() != null)
            {
                MtvUtilDebug.Low("SDtvCompControlImpl", "Muting Audio");
                SDtvControl.getInstance().setAudioEnable(1);
                flag = true;
            }
        }
        return flag;
    }

    public boolean registerSubSurface(SurfaceView surfaceview)
    {
        return false;
    }

    public boolean registerSurface(SurfaceView surfaceview)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if(surfaceview == null)
            break MISSING_BLOCK_LABEL_55;
        flag = flag1;
        if(!isVideoEnable)
            break MISSING_BLOCK_LABEL_55;
        MtvUtilDebug.Low("SDtvCompControlImpl", "Video is enabled - Getting Surface View ");
        surfaceview = surfaceview.getHolder();
        flag = flag1;
        if(surfaceview == null)
            break MISSING_BLOCK_LABEL_55;
        MtvUtilDebug.Low("SDtvCompControlImpl", "Got Surface holder");
        flag = setSurface(surfaceview, 320, 240);
        this;
        JVM INSTR monitorexit ;
        return flag;
        surfaceview;
        throw surfaceview;
    }

    public boolean renameTVFile(int i, String s)
    {
        MtvUtilDebug.Low("SDtvCompControlImpl", (new StringBuilder()).append(" renameTVFile renameString ").append(s).toString());
        return SDtvControl.getInstance().renameTVFile(i, s);
    }

    public boolean setAudioMode(int i)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(i >= 0)
        {
            flag = flag1;
            if(i <= 2)
            {
                flag = flag1;
                if(getAudioEnable())
                {
                    MtvUtilDebug.Low("SDtvCompControlImpl", "setAudioMode");
                    SDtvControl.getInstance().setAudioMode(i);
                    flag = true;
                }
            }
        }
        return flag;
    }

    public boolean setFrameRateChange(int i)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(getVideoEnable())
        {
            flag = flag1;
            if(SDtvControl.getInstance() != null)
            {
                SDtvControl.getInstance().setFrameRateChange(i);
                flag = true;
            }
        }
        return flag;
    }

    public boolean setRendererCreate(int i)
    {
        boolean flag = false;
        if(getVideoEnable())
            flag = setOrientation(i);
        return flag;
    }

    public boolean setSoundEffect(int i, int j)
    {
        boolean flag1 = false;
        MtvUtilDebug.High("SDtvCompControlImpl", "Entered setSoundEffect");
        boolean flag = flag1;
        if(i >= 0)
        {
            flag = flag1;
            if(i <= 1)
            {
                flag = flag1;
                if(j >= 0)
                {
                    flag = flag1;
                    if(j <= 6)
                    {
                        flag = flag1;
                        if(getAudioEnable())
                        {
                            SDtvControl.getInstance().setSoundEffect(i, j);
                            flag = true;
                        }
                    }
                }
            }
        }
        return flag;
    }

    public boolean setVolume(int i)
    {
        boolean flag = false;
        if(getAudioEnable())
            flag = true;
        return flag;
    }

    public boolean unmuteAudio()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(getAudioEnable())
        {
            flag = flag1;
            if(SDtvControl.getInstance() != null)
            {
                MtvUtilDebug.Low("SDtvCompControlImpl", "UnMuting Audio");
                SDtvControl.getInstance().setAudioEnable(0);
                flag = true;
            }
        }
        return flag;
    }

    public void unregisterSurface(SurfaceView surfaceview)
    {
        this;
        JVM INSTR monitorenter ;
        MtvUtilDebug.Low("SDtvCompControlImpl", "Entered unregisterSurface() and setting Surface as null");
        if(mSurfaceHolder != surfaceview.getHolder())
            break MISSING_BLOCK_LABEL_48;
        setSurface(null, 0, 0);
        mSurfaceHolder = null;
        MtvUtilDebug.Low("SDtvCompControlImpl", "Successfully unregistered Surface !");
_L1:
        MtvUtilDebug.Low("SDtvCompControlImpl", "Exiting unregisterSurface() ");
        this;
        JVM INSTR monitorexit ;
        return;
        MtvUtilDebug.High("SDtvCompControlImpl", "Cannot unregister this surface as it is not the currently used surface or it is already unregistered");
          goto _L1
        surfaceview;
        throw surfaceview;
    }

    public static final int DEFAULT_SCREEN_HEIGHT = 240;
    public static final int DEFAULT_SCREEN_WIDTH = 320;
    private static final String TAG = "SDtvCompControlImpl";
    private static boolean isAudioEnable = false;
    private static boolean isCaptEnable = false;
    private static boolean isVideoEnable = false;
    private static SDtvCompControlImpl mCompControl = null;
    private static volatile SurfaceHolder mSurfaceHolder = null;

    static 
    {
        System.loadLibrary("broadcastForOneSeg_jni");
    }
}
