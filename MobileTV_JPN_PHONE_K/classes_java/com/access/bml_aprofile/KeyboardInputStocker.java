// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;

import java.util.concurrent.ArrayBlockingQueue;

// Referenced classes of package com.access.bml_aprofile:
//            KeyboardInputResult

public class KeyboardInputStocker
{

    public KeyboardInputStocker()
    {
        queue = new ArrayBlockingQueue(1);
    }

    public void clear()
    {
        queue.clear();
    }

    public KeyboardInputResult peekResult()
    {
        return (KeyboardInputResult)queue.peek();
    }

    public KeyboardInputResult pollResult()
    {
        return (KeyboardInputResult)queue.poll();
    }

    public boolean setResult(KeyboardInputResult keyboardinputresult)
    {
        return queue.offer(keyboardinputresult);
    }

    private ArrayBlockingQueue queue;
}
