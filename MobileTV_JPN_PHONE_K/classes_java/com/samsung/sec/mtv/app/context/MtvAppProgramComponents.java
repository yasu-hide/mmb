// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.context;

import android.broadcast.*;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.oneseg.MtvOneSegFactory;
import android.graphics.Bitmap;
import android.text.SpannableStringBuilder;

public class MtvAppProgramComponents
{
    public static class MtvAppPrgAudioComponent
    {

        private void init()
        {
            isEnabled = false;
            iface = null;
        }

        public void disable()
        {
            isEnabled = false;
            if(iface != null)
                iface.disableAudio();
        }

        public void enable()
        {
            isEnabled = true;
            if(iface != null)
                iface.enableAudio();
        }

        public IMtvOneSegAudioControl getControlInterface()
        {
            if(isEnabled)
                return iface;
            else
                return null;
        }

        public boolean isEnabled()
        {
            return isEnabled;
        }

        public void reset()
        {
            init();
        }

        public void setControlInterface(IMtvOneSegAudioControl imtvonesegaudiocontrol)
        {
            iface = imtvonesegaudiocontrol;
        }

        private IMtvOneSegAudioControl iface;
        private boolean isEnabled;

        MtvAppPrgAudioComponent()
        {
            init();
        }
    }

    public static class MtvAppPrgBmlComponent
    {

        private void init()
        {
            isEnabled = false;
            iface = null;
        }

        public void disable()
        {
            isEnabled = false;
            if(iface != null)
                iface.disableBml();
        }

        public void enable()
        {
            isEnabled = true;
            if(iface != null)
                iface.enableBml();
        }

        public IMtvOneSegBmlViewControl getControlInterface()
        {
            this;
            JVM INSTR monitorenter ;
            IMtvOneSegBmlViewControl imtvonesegbmlviewcontrol;
            if(!isEnabled)
                break MISSING_BLOCK_LABEL_18;
            imtvonesegbmlviewcontrol = iface;
_L1:
            this;
            JVM INSTR monitorexit ;
            return imtvonesegbmlviewcontrol;
            imtvonesegbmlviewcontrol = null;
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public boolean isEnabled()
        {
            return isEnabled;
        }

        public void reset()
        {
            init();
        }

        public void setControlInterface(IMtvOneSegBmlViewControl imtvonesegbmlviewcontrol)
        {
            this;
            JVM INSTR monitorenter ;
            iface = imtvonesegbmlviewcontrol;
            this;
            JVM INSTR monitorexit ;
            return;
            imtvonesegbmlviewcontrol;
            throw imtvonesegbmlviewcontrol;
        }

        private IMtvOneSegBmlViewControl iface;
        private boolean isEnabled;

        MtvAppPrgBmlComponent()
        {
            init();
        }
    }

    public static class MtvAppPrgCaptionComponent
    {

        private void init()
        {
            isEnabled = false;
            iface = null;
            captBuffer = null;
        }

        public void disable()
        {
            isEnabled = false;
            if(iface != null)
                iface.disableCaption();
        }

        public void enable()
        {
            isEnabled = true;
            if(iface != null)
                iface.enableCaption();
        }

        public SpannableStringBuilder getBuffer()
        {
            this;
            JVM INSTR monitorenter ;
            SpannableStringBuilder spannablestringbuilder;
            if(!isEnabled)
                break MISSING_BLOCK_LABEL_18;
            spannablestringbuilder = captBuffer;
_L1:
            this;
            JVM INSTR monitorexit ;
            return spannablestringbuilder;
            spannablestringbuilder = null;
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public IMtvOneSegCaptionControl getControlInterface()
        {
            this;
            JVM INSTR monitorenter ;
            IMtvOneSegCaptionControl imtvonesegcaptioncontrol;
            if(!isEnabled)
                break MISSING_BLOCK_LABEL_18;
            imtvonesegcaptioncontrol = iface;
_L1:
            this;
            JVM INSTR monitorexit ;
            return imtvonesegcaptioncontrol;
            imtvonesegcaptioncontrol = null;
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public boolean isEnabled()
        {
            return isEnabled;
        }

        public void reset()
        {
            init();
        }

        public void setBuffer(SpannableStringBuilder spannablestringbuilder)
        {
            this;
            JVM INSTR monitorenter ;
            captBuffer = spannablestringbuilder;
            this;
            JVM INSTR monitorexit ;
            return;
            spannablestringbuilder;
            throw spannablestringbuilder;
        }

        public void setControlInterface(IMtvOneSegCaptionControl imtvonesegcaptioncontrol)
        {
            this;
            JVM INSTR monitorenter ;
            iface = imtvonesegcaptioncontrol;
            this;
            JVM INSTR monitorexit ;
            return;
            imtvonesegcaptioncontrol;
            throw imtvonesegcaptioncontrol;
        }

        private SpannableStringBuilder captBuffer;
        private IMtvOneSegCaptionControl iface;
        private boolean isEnabled;

        MtvAppPrgCaptionComponent()
        {
            init();
        }
    }

    public static class MtvAppPrgFileComponent
    {

        private void init()
        {
            iface = MtvOneSegFactory.getFileControl();
        }

        public boolean renameTVFile(int i, String s)
        {
            MtvUtilDebug.Low("MtvAppProgramComponents", (new StringBuilder()).append(" renameTVFile fileindex ").append(i).append(" renameString ").append(s).toString());
            if(iface != null)
            {
                return iface.renameTVFile(i, s);
            } else
            {
                MtvUtilDebug.Error("MtvAppProgramComponents", " iface is null");
                return false;
            }
        }

        public void reset()
        {
            init();
        }

        private IMtvOneSegFileControl iface;

        MtvAppPrgFileComponent()
        {
            init();
        }
    }

    public static class MtvAppPrgVideoComponent
    {

        private void init()
        {
            isEnabled = true;
            iface = null;
            captFrame = null;
            captFrameName = null;
        }

        public void disable()
        {
            isEnabled = false;
            if(iface != null)
                iface.disableVideo();
        }

        public void enable()
        {
            isEnabled = true;
            if(iface != null)
                iface.enableVideo();
        }

        public Bitmap getCaptFrame()
        {
            this;
            JVM INSTR monitorenter ;
            Bitmap bitmap;
            if(!isEnabled)
                break MISSING_BLOCK_LABEL_18;
            bitmap = captFrame;
_L1:
            this;
            JVM INSTR monitorexit ;
            return bitmap;
            bitmap = null;
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public String getCaptFrameName()
        {
            this;
            JVM INSTR monitorenter ;
            String s;
            if(!isEnabled)
                break MISSING_BLOCK_LABEL_18;
            s = captFrameName;
_L1:
            this;
            JVM INSTR monitorexit ;
            return s;
            s = null;
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public IMtvOneSegVideoControl getControlInterface()
        {
            this;
            JVM INSTR monitorenter ;
            IMtvOneSegVideoControl imtvonesegvideocontrol;
            if(!isEnabled)
                break MISSING_BLOCK_LABEL_18;
            imtvonesegvideocontrol = iface;
_L1:
            this;
            JVM INSTR monitorexit ;
            return imtvonesegvideocontrol;
            imtvonesegvideocontrol = null;
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public boolean isEnabled()
        {
            return isEnabled;
        }

        public void reset()
        {
            init();
        }

        public void setCaptFrame(Bitmap bitmap)
        {
            this;
            JVM INSTR monitorenter ;
            if(isEnabled)
            {
                if(captFrame != null)
                {
                    captFrame.recycle();
                    MtvUtilDebug.Low("MtvAppProgramComponents", "Previous Bitmap recycled...");
                }
                captFrame = bitmap;
            }
            this;
            JVM INSTR monitorexit ;
            return;
            bitmap;
            throw bitmap;
        }

        public void setCaptFrameName(String s)
        {
            this;
            JVM INSTR monitorenter ;
            if(isEnabled)
                captFrameName = s;
            this;
            JVM INSTR monitorexit ;
            return;
            s;
            throw s;
        }

        public void setControlInterface(IMtvOneSegVideoControl imtvonesegvideocontrol)
        {
            this;
            JVM INSTR monitorenter ;
            iface = imtvonesegvideocontrol;
            this;
            JVM INSTR monitorexit ;
            return;
            imtvonesegvideocontrol;
            throw imtvonesegvideocontrol;
        }

        private Bitmap captFrame;
        private String captFrameName;
        private IMtvOneSegVideoControl iface;
        private boolean isEnabled;

        MtvAppPrgVideoComponent()
        {
            init();
        }
    }


    MtvAppProgramComponents()
    {
        audio = new MtvAppPrgAudioComponent();
        video = new MtvAppPrgVideoComponent();
        caption = new MtvAppPrgCaptionComponent();
        bml = new MtvAppPrgBmlComponent();
        file = new MtvAppPrgFileComponent();
        availableComp = 0;
    }

    public void addComponent(int i)
    {
        int j = availableComp;
        availableComp = availableComp | i & 0xf;
        if((i & 0xf & j) != 0)
            MtvUtilDebug.High("MtvAppProgramComponents", (new StringBuilder()).append("COMPONENT ").append(i).append(" ALREADY EXISTS!!").toString());
    }

    public MtvAppPrgAudioComponent getAudio()
    {
        return audio;
    }

    public MtvAppPrgBmlComponent getBml()
    {
        return bml;
    }

    public MtvAppPrgCaptionComponent getCaption()
    {
        return caption;
    }

    public MtvAppPrgFileComponent getFile()
    {
        return file;
    }

    public MtvAppPrgVideoComponent getVideo()
    {
        return video;
    }

    public boolean hasValidAudio()
    {
        return (availableComp & 1) == 1;
    }

    public boolean hasValidBml()
    {
        return (availableComp & 8) == 8;
    }

    public boolean hasValidCaption()
    {
        return (availableComp & 4) == 4;
    }

    public boolean hasValidVideo()
    {
        return (availableComp & 2) == 2;
    }

    public void removeComponent(int i)
    {
        availableComp = availableComp ^ i & 0xf;
        if(availableComp == 0)
            reset();
    }

    public void reset()
    {
        availableComp = 0;
        audio.reset();
        video.reset();
        caption.reset();
        bml.reset();
        file.reset();
    }

    public static final int PRG_COMP_ALL = 15;
    public static final int PRG_COMP_AUDIO = 1;
    public static final int PRG_COMP_BML = 8;
    public static final int PRG_COMP_CAPTION = 4;
    public static final int PRG_COMP_NONE = 0;
    public static final int PRG_COMP_VIDEO = 2;
    private static final String TAG = "MtvAppProgramComponents";
    private MtvAppPrgAudioComponent audio;
    private int availableComp;
    private MtvAppPrgBmlComponent bml;
    private MtvAppPrgCaptionComponent caption;
    private MtvAppPrgFileComponent file;
    private MtvAppPrgVideoComponent video;
}
