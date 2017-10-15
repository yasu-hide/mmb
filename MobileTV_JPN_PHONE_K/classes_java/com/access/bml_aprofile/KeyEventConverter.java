// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;


public class KeyEventConverter
{
    class DTVKeyCode
    {

        static final int KEY_0 = 5;
        static final int KEY_1 = 6;
        static final int KEY_10 = 15;
        static final int KEY_11 = 16;
        static final int KEY_12 = 17;
        static final int KEY_2 = 7;
        static final int KEY_3 = 8;
        static final int KEY_4 = 9;
        static final int KEY_5 = 10;
        static final int KEY_6 = 11;
        static final int KEY_7 = 12;
        static final int KEY_8 = 13;
        static final int KEY_9 = 14;
        static final int KEY_BACK = 19;
        static final int KEY_BLUE = 21;
        static final int KEY_BOOKMARK = 100;
        static final int KEY_DOWN = 2;
        static final int KEY_ENTER = 18;
        static final int KEY_GREEN = 23;
        static final int KEY_LEFT = 3;
        static final int KEY_NONE = -1;
        static final int KEY_RED = 22;
        static final int KEY_RIGHT = 4;
        static final int KEY_UP = 1;
        static final int KEY_YELLOW = 24;
        final KeyEventConverter this$0;

        DTVKeyCode()
        {
            this$0 = KeyEventConverter.this;
            super();
        }
    }

    class DTVKeyGroup
    {

        static final int BASIC = 1;
        static final int DATABUTTON = 2;
        static final int MISC = 256;
        static final int NONE = 0;
        static final int NUMERICTUNING = 4;
        static final int OTHERTUNING = 8;
        static final int SPECIAL1 = 16;
        static final int SPECIAL2 = 32;
        static final int SPECIAL3 = 64;
        static final int SPECIAL4 = 128;
        final KeyEventConverter this$0;

        DTVKeyGroup()
        {
            this$0 = KeyEventConverter.this;
            super();
        }
    }


    public KeyEventConverter()
    {
        mask = 0;
    }

    public int getDTVKeyCode(int i)
    {
        switch(i)
        {
        default:
            return -1;

        case 7: // '\007'
            return 5;

        case 8: // '\b'
            return 6;

        case 9: // '\t'
            return 7;

        case 10: // '\n'
            return 8;

        case 11: // '\013'
            return 9;

        case 12: // '\f'
            return 10;

        case 13: // '\r'
            return 11;

        case 14: // '\016'
            return 12;

        case 15: // '\017'
            return 13;

        case 16: // '\020'
            return 14;

        case 37: // '%'
            return 15;

        case 43: // '+'
            return 16;

        case 44: // ','
            return 17;

        case 19: // '\023'
            return 1;

        case 20: // '\024'
            return 2;

        case 21: // '\025'
            return 3;

        case 22: // '\026'
            return 4;

        case 66: // 'B'
            return 18;

        case 30: // '\036'
            return 21;

        case 35: // '#'
            return 23;

        case 46: // '.'
            return 22;

        case 53: // '5'
            return 24;

        case 67: // 'C'
            return 19;

        case 61: // '='
            return 100;
        }
    }

    public int getDTVKeyGroup(int i)
    {
        if(1 <= i && i <= 4 || i == 18 || i == 19)
            return 1;
        if(5 <= i && i <= 17)
            return 4;
        return i != 21 && i != 22 && i != 23 && i != 24 && i != 100 ? 8 : 2;
    }

    public boolean isDataButton(int i)
    {
        return 62 == i;
    }

    public boolean isMasked(int i)
    {
        i = getDTVKeyGroup(i);
        return (mask & i) == i;
    }

    public boolean isValidDTVKey(int i)
    {
        return -1 != i;
    }

    public void setMask(int i)
    {
        mask = i;
    }

    private int mask;
}
