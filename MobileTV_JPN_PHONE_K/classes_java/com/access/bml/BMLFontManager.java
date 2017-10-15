// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.content.res.AssetManager;
import android.graphics.Paint;
import android.graphics.Typeface;
import java.util.Vector;

// Referenced classes of package com.access.bml:
//            BMLFont

class BMLFontManager
{

    public BMLFontManager()
    {
        fontLib = new Vector();
    }

    public int addFontToLib(BMLFont bmlfont)
    {
        fontLib.add(bmlfont);
        return fontLib.size() - 1;
    }

    public final BMLFont createFont(String s, int i, boolean flag, boolean flag1)
    {
        return new BMLFont(s, i, flag, flag1);
    }

    public int findFont(BMLFont bmlfont)
    {
        return fontLib.indexOf(bmlfont);
    }

    public final BMLFont getFont(int i)
    {
        if(fontLib.size() == 0)
            fontLib.add(createFont("", 0, false, false));
        int j = i;
        if(i >= fontLib.size())
            j = 0;
        return (BMLFont)fontLib.elementAt(j);
    }

    public int getFontId(BMLFont bmlfont)
    {
        int j = findFont(bmlfont);
        int i = j;
        if(j < 0)
            i = addFontToLib(bmlfont);
        return i;
    }

    public Paint getPaint(int i)
    {
        return getFont(i).getPaint();
    }

    public void setFont(AssetManager assetmanager, String s)
    {
        BMLFont.setFont(assetmanager, s);
    }

    public void setFont(Typeface typeface)
    {
        BMLFont.setFont(typeface);
    }

    public void setFontPath(String s)
    {
        BMLFont.setFontPath(s);
    }

    private Vector fontLib;
}
