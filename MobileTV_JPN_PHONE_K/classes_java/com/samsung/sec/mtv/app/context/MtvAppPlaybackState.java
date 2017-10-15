// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.context;

import android.broadcast.helper.MtvUtilDebug;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.samsung.sec.mtv.app.context:
//            IMtvAppPlaybackStateListener

public final class MtvAppPlaybackState
{
    private static class Notification
    {

        final int command;
        final int extra;
        final int status;

        Notification(int i, int j, int k)
        {
            command = i;
            status = j;
            extra = k;
        }
    }

    public static final class State extends Enum
    {

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/samsung/sec/mtv/app/context/MtvAppPlaybackState$State, s);
        }

        public static State[] values()
        {
            return (State[])$VALUES.clone();
        }

        private static final State $VALUES[];
        public static final State INITIALIZED;
        public static final State NONE;
        public static final State OPENED;
        public static final State PAUSED;
        public static final State PLAYING;
        public static final State RECORDER_OPENED;

        static 
        {
            NONE = new State("NONE", 0);
            INITIALIZED = new State("INITIALIZED", 1);
            RECORDER_OPENED = new State("RECORDER_OPENED", 2);
            OPENED = new State("OPENED", 3);
            PLAYING = new State("PLAYING", 4);
            PAUSED = new State("PAUSED", 5);
            $VALUES = (new State[] {
                NONE, INITIALIZED, RECORDER_OPENED, OPENED, PLAYING, PAUSED
            });
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }


    MtvAppPlaybackState()
    {
        this;
        JVM INSTR monitorenter ;
        msgQ = new LinkedList();
        init();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void init()
    {
        state = State.NONE;
        op = 0;
        cb = null;
        if(!msgQ.isEmpty())
            msgQ.clear();
    }

    public int getOp()
    {
        this;
        JVM INSTR monitorenter ;
        int i = op;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public State getState()
    {
        this;
        JVM INSTR monitorenter ;
        State state1 = state;
        this;
        JVM INSTR monitorexit ;
        return state1;
        Exception exception;
        exception;
        throw exception;
    }

    public void registerListener(IMtvAppPlaybackStateListener imtvappplaybackstatelistener)
    {
        this;
        JVM INSTR monitorenter ;
        MtvUtilDebug.High("MtvAppPlaybackState", (new StringBuilder()).append("New Listerner regiestered : ").append(imtvappplaybackstatelistener).toString());
        cb = imtvappplaybackstatelistener;
        this;
        JVM INSTR monitorexit ;
        return;
        imtvappplaybackstatelistener;
        throw imtvappplaybackstatelistener;
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        init();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setOp(int i)
    {
        this;
        JVM INSTR monitorenter ;
        op = i;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setState(State state1)
    {
        this;
        JVM INSTR monitorenter ;
        State state2;
        IMtvAppPlaybackStateListener imtvappplaybackstatelistener;
        state2 = state;
        state = state1;
        imtvappplaybackstatelistener = cb;
        this;
        JVM INSTR monitorexit ;
        if(imtvappplaybackstatelistener != null)
            imtvappplaybackstatelistener.onStateChanged(state2, state1);
        return;
        state1;
        this;
        JVM INSTR monitorexit ;
        throw state1;
    }

    public void triggerNotification(int i, int j, int k)
    {
        this;
        JVM INSTR monitorenter ;
        IMtvAppPlaybackStateListener imtvappplaybackstatelistener = cb;
        this;
        JVM INSTR monitorexit ;
        if(imtvappplaybackstatelistener != null)
            imtvappplaybackstatelistener.onPlayerNotification(i, j, k);
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void triggerNotification(int i, int j, int k, boolean flag)
    {
        Object obj;
        if(!flag)
        {
            triggerNotification(i, j, k);
            return;
        }
        obj = new Notification(i, j, k);
        j = 0;
        this;
        JVM INSTR monitorenter ;
        IMtvAppPlaybackStateListener imtvappplaybackstatelistener = cb;
        if(imtvappplaybackstatelistener == null)
            break MISSING_BLOCK_LABEL_52;
        if(msgQ.isEmpty())
            break MISSING_BLOCK_LABEL_99;
        j = 1;
        if(msgQ.offer(obj))
            break MISSING_BLOCK_LABEL_99;
        MtvUtilDebug.Error("MtvAppPlaybackState", (new StringBuilder()).append("SERIOUS ERROR: Couldnt add cmd [").append(i).append("] to msgQ").toString());
        j = 0;
        this;
        JVM INSTR monitorexit ;
_L4:
        if(imtvappplaybackstatelistener == null)
            break MISSING_BLOCK_LABEL_259;
        if(j == 0)
            break MISSING_BLOCK_LABEL_232;
        this;
        JVM INSTR monitorenter ;
        obj = (Notification)msgQ.peek();
        imtvappplaybackstatelistener = cb;
        this;
        JVM INSTR monitorexit ;
        if(imtvappplaybackstatelistener == null || obj == null) goto _L2; else goto _L1
_L1:
        imtvappplaybackstatelistener.onPlayerNotification(((Notification) (obj)).command, ((Notification) (obj)).status, ((Notification) (obj)).extra);
        this;
        JVM INSTR monitorenter ;
        msgQ.poll();
        if(!msgQ.isEmpty())
            i = 1;
        else
            i = 0;
        this;
        JVM INSTR monitorexit ;
_L5:
        j = i;
        if(i != 0) goto _L4; else goto _L3
_L3:
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L2:
        i = 0;
          goto _L5
        imtvappplaybackstatelistener.onPlayerNotification(((Notification) (obj)).command, ((Notification) (obj)).status, ((Notification) (obj)).extra);
        i = j;
          goto _L5
        MtvUtilDebug.Error("MtvAppPlaybackState", "ERROR: Infinte Loop Possibility Found!!! Cb is null. Break Now!");
        return;
    }

    public void unregisterListener(IMtvAppPlaybackStateListener imtvappplaybackstatelistener)
    {
        this;
        JVM INSTR monitorenter ;
        if(cb != null && cb.equals(imtvappplaybackstatelistener))
            cb = null;
        this;
        JVM INSTR monitorexit ;
        return;
        imtvappplaybackstatelistener;
        throw imtvappplaybackstatelistener;
    }

    private static final String TAG = "MtvAppPlaybackState";
    private IMtvAppPlaybackStateListener cb;
    private Queue msgQ;
    private int op;
    private State state;
}
