// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.context;

import android.broadcast.oneseg.MtvOneSegFactory;

// Referenced classes of package com.samsung.sec.mtv.app.context:
//            MtvAppPlaybackContext, MtvAppProgramComponents

public class MtvAppPlaybackContextManager
{

    private MtvAppPlaybackContextManager()
    {
        live = null;
        local = null;
        tvlink = null;
        scan = null;
        current = null;
    }

    public static MtvAppPlaybackContextManager getInstance()
    {
        return instance;
    }

    public MtvAppPlaybackContext getCurrentContext()
    {
        this;
        JVM INSTR monitorenter ;
        MtvAppPlaybackContext mtvappplaybackcontext = current;
        this;
        JVM INSTR monitorexit ;
        return mtvappplaybackcontext;
        Exception exception;
        exception;
        throw exception;
    }

    public MtvAppPlaybackContext getLiveTV()
    {
        this;
        JVM INSTR monitorenter ;
        MtvAppPlaybackContext mtvappplaybackcontext;
        if(live == null)
            live = new MtvAppPlaybackContext(MtvAppPlaybackContext.Type.LIVETV);
        mtvappplaybackcontext = live;
        this;
        JVM INSTR monitorexit ;
        return mtvappplaybackcontext;
        Exception exception;
        exception;
        throw exception;
    }

    public MtvAppPlaybackContext getLocalTV()
    {
        this;
        JVM INSTR monitorenter ;
        MtvAppPlaybackContext mtvappplaybackcontext;
        if(local == null)
            local = new MtvAppPlaybackContext(MtvAppPlaybackContext.Type.LOCALTV);
        local.getComponents().getAudio().setControlInterface(MtvOneSegFactory.getAudioControl());
        local.getComponents().getVideo().setControlInterface(MtvOneSegFactory.getVideoControl());
        mtvappplaybackcontext = local;
        this;
        JVM INSTR monitorexit ;
        return mtvappplaybackcontext;
        Exception exception;
        exception;
        throw exception;
    }

    public MtvAppPlaybackContext getScanner()
    {
        this;
        JVM INSTR monitorenter ;
        MtvAppPlaybackContext mtvappplaybackcontext;
        if(scan == null)
            scan = new MtvAppPlaybackContext(MtvAppPlaybackContext.Type.SCANNER);
        scan.getComponents().getAudio().setControlInterface(MtvOneSegFactory.getAudioControl());
        scan.getComponents().getVideo().setControlInterface(MtvOneSegFactory.getVideoControl());
        mtvappplaybackcontext = scan;
        this;
        JVM INSTR monitorexit ;
        return mtvappplaybackcontext;
        Exception exception;
        exception;
        throw exception;
    }

    public MtvAppPlaybackContext getTVLink()
    {
        this;
        JVM INSTR monitorenter ;
        MtvAppPlaybackContext mtvappplaybackcontext;
        if(tvlink == null)
            tvlink = new MtvAppPlaybackContext(MtvAppPlaybackContext.Type.TVLINK);
        mtvappplaybackcontext = tvlink;
        this;
        JVM INSTR monitorexit ;
        return mtvappplaybackcontext;
        Exception exception;
        exception;
        throw exception;
    }

    public void removeLiveTV()
    {
        this;
        JVM INSTR monitorenter ;
        if(live != null)
        {
            live.reset();
            live = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void removeLocalTV()
    {
        this;
        JVM INSTR monitorenter ;
        if(local != null)
        {
            local.reset();
            local = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void removeScanner()
    {
        this;
        JVM INSTR monitorenter ;
        if(scan != null)
        {
            scan.reset();
            scan = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void removeTVLink()
    {
        this;
        JVM INSTR monitorenter ;
        if(live != null)
        {
            live.reset();
            live = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        if(scan != null)
            scan.reset();
        if(tvlink != null)
            tvlink.reset();
        if(local != null)
            local.reset();
        if(live != null)
            live.reset();
        if(current != null)
            current.reset();
        live = null;
        local = null;
        tvlink = null;
        scan = null;
        current = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setCurrentContext(MtvAppPlaybackContext.Type type)
    {
        MtvAppPlaybackContext mtvappplaybackcontext = current;
        if(type == MtvAppPlaybackContext.Type.LIVETV)
            type = live;
        else
        if(type == MtvAppPlaybackContext.Type.LOCALTV)
            type = local;
        else
        if(type == MtvAppPlaybackContext.Type.SCANNER)
            type = scan;
        else
        if(type == MtvAppPlaybackContext.Type.TVLINK)
            type = tvlink;
        else
            type = null;
        if(mtvappplaybackcontext == null || mtvappplaybackcontext.equals(type)) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        current = type;
        this;
        JVM INSTR monitorexit ;
_L2:
        return;
        type;
        this;
        JVM INSTR monitorexit ;
        throw type;
    }

    public void setCurrentContext(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        MtvAppPlaybackContext mtvappplaybackcontext1 = current;
        if(mtvappplaybackcontext == null || mtvappplaybackcontext.equals(mtvappplaybackcontext1))
            break MISSING_BLOCK_LABEL_32;
        this;
        JVM INSTR monitorenter ;
        current = mtvappplaybackcontext;
        this;
        JVM INSTR monitorexit ;
        return;
        mtvappplaybackcontext;
        this;
        JVM INSTR monitorexit ;
        throw mtvappplaybackcontext;
    }

    private static final MtvAppPlaybackContextManager instance = new MtvAppPlaybackContextManager();
    private MtvAppPlaybackContext current;
    private MtvAppPlaybackContext live;
    private MtvAppPlaybackContext local;
    private MtvAppPlaybackContext scan;
    private MtvAppPlaybackContext tvlink;

}
