// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;


public class TDTVDialogParameter
{

    public TDTVDialogParameter(int i, int j, String s, String s1, int k)
    {
        err_code = i;
        err_subcode = j;
        msg1 = s;
        msg2 = s1;
        result = k;
    }

    int err_code;
    int err_subcode;
    String msg1;
    String msg2;
    int result;
}
