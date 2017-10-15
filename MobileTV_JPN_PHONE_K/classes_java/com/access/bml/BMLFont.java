// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.content.res.AssetManager;
import android.graphics.Paint;
import android.graphics.Typeface;
import java.io.File;

class BMLFont
{

    public BMLFont(String s, int i, boolean flag, boolean flag1)
    {
        _family = s;
        _size = i;
        _isBold = flag;
        _isItalic = flag1;
        _paint = null;
        _ascent = 0.0F;
        _descent = 0.0F;
    }

    public static void Finalize()
    {
        mTypeface = null;
        mFontPath = null;
    }

    public static void setFont(AssetManager assetmanager, String s)
    {
        try
        {
            mTypeface = Typeface.createFromAsset(assetmanager, s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch(AssetManager assetmanager)
        {
            return;
        }
    }

    public static void setFont(Typeface typeface)
    {
        mTypeface = typeface;
    }

    public static void setFontPath(String s)
    {
        mFontPath = s;
        if(mFontPath != null && (new File(mFontPath)).exists())
            mTypeface = Typeface.createFromFile(mFontPath);
    }

    private void setProperPaintSize()
    {
        float f1 = 3.402823E+038F;
        float f = _size;
        do
        {
            if(f <= 0.0F)
                return;
            _paint.setTextSize(f);
            _ascent = Math.abs(_paint.ascent());
            _descent = Math.abs(_paint.descent());
            float f2 = Math.abs((float)_size - _ascent - _descent);
            if(f2 < f1)
            {
                f1 = f2;
                f -= 0.25F;
            } else
            {
                _paint.setTextSize(f + 0.25F);
                _ascent = Math.abs(_paint.ascent());
                _descent = Math.abs(_paint.descent());
                return;
            }
        } while(true);
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(obj instanceof BMLFont)
        {
            obj = (BMLFont)obj;
            flag = flag1;
            if(_family.equals(((BMLFont) (obj))._family))
            {
                flag = flag1;
                if(_size == ((BMLFont) (obj))._size)
                {
                    flag = flag1;
                    if(_isBold == ((BMLFont) (obj))._isBold)
                    {
                        flag = flag1;
                        if(_isItalic == ((BMLFont) (obj))._isItalic)
                            flag = true;
                    }
                }
            }
        }
        return flag;
    }

    public String getFamily()
    {
        return _family;
    }

    protected float getFloatAscent()
    {
        if(_paint == null)
            getPaint();
        return _ascent;
    }

    protected float getFloatDescent()
    {
        if(_paint == null)
            getPaint();
        return _descent;
    }

    public int getIntAscent()
    {
        if(_paint == null)
            getPaint();
        return Math.round(_ascent);
    }

    public int getIntDescent()
    {
        if(_paint == null)
            getPaint();
        return Math.round(_descent);
    }

    public int getIntHeight()
    {
        return getIntAscent() + getIntDescent();
    }

    public boolean getIsBold()
    {
        return _isBold;
    }

    public boolean getIsItalic()
    {
        return _isItalic;
    }

    public int getMaxCharWidth()
    {
        return measureTextWidth("W");
    }

    public int getMinCharWidth()
    {
        return measureTextWidth("i");
    }

    public Paint getPaint()
    {
        if(_paint == null)
        {
            _paint = new Paint();
            _paint.setAntiAlias(true);
            int i = 0;
            if(_isBold)
                i = false | true;
            int j = i;
            if(_isItalic)
                j = i | 2;
            if(mTypeface == null)
                mTypeface = Typeface.create(null, j);
            _paint.setTypeface(mTypeface);
            if(_isBold)
                _paint.setFakeBoldText(true);
            setProperPaintSize();
        }
        return _paint;
    }

    public int getSize()
    {
        return _size;
    }

    public int measureTextWidth(String s)
    {
        if(_paint == null)
            getPaint();
        return Math.round(_paint.measureText(s));
    }

    private static String mFontPath = null;
    private static Typeface mTypeface = null;
    private float _ascent;
    private float _descent;
    private String _family;
    private boolean _isBold;
    private boolean _isItalic;
    private Paint _paint;
    private int _size;

}
