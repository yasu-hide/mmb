// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;

import java.util.concurrent.ArrayBlockingQueue;

// Referenced classes of package com.access.bml_aprofile:
//            TDTVDialogParameter

public class NotifyStocker
{

    public NotifyStocker()
    {
        queue = new ArrayBlockingQueue(1);
    }

    public void clear()
    {
        queue.clear();
    }

    public TDTVDialogParameter peekResult()
    {
        return (TDTVDialogParameter)queue.peek();
    }

    public TDTVDialogParameter pollResult()
    {
        return (TDTVDialogParameter)queue.poll();
    }

    public boolean setResult(TDTVDialogParameter tdtvdialogparameter)
    {
        return queue.offer(tdtvdialogparameter);
    }

    private ArrayBlockingQueue queue;
}
