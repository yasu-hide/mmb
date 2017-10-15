// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.*;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.samsung.sec.mtv.utility.MtvUtilMemoryStatus;

public class MtvUiMemInfoFrag extends DialogFragment
{

    public MtvUiMemInfoFrag()
    {
    }

    private Dialog buildDialog(View view)
    {
        view = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070258).setView(view).setNegativeButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dismiss();
            }

            final MtvUiMemInfoFrag this$0;

            
            {
                this$0 = MtvUiMemInfoFrag.this;
                super();
            }
        }
).create();
        view.requestWindowFeature(1);
        view.getWindow().setFlags(1024, 1024);
        view.setCanceledOnTouchOutside(false);
        return view;
    }

    private View constructDetails()
    {
        LinearLayout linearlayout = (LinearLayout)getActivity().getLayoutInflater().inflate(0x7f03003a, null);
        ((TextView)linearlayout.findViewById(0x7f0a0141)).setText((new StringBuilder()).append(getString(0x7f0702a1)).append(" :").toString());
        ((TextView)linearlayout.findViewById(0x7f0a0142)).setText(getString(0x7f070257));
        long l = MtvUtilMemoryStatus.getAvailableInternalMemorySize();
        ((TextView)linearlayout.findViewById(0x7f0a0143)).setText(MtvUtilMemoryStatus.formatSize(l, getActivity()));
        ((TextView)linearlayout.findViewById(0x7f0a0144)).setText(getString(0x7f0702b2));
        ((TextView)linearlayout.findViewById(0x7f0a0145)).setText(formatRemainTime(MtvUtilMemoryStatus.ConvertByteToTime(l)));
        l = MtvUtilMemoryStatus.getAvailableExternalMemorySize();
        if(l >= 0L)
        {
            linearlayout.findViewById(0x7f0a0146).setVisibility(0);
            ((TextView)linearlayout.findViewById(0x7f0a0147)).setText((new StringBuilder()).append(getString(0x7f070275)).append(" :").toString());
            ((TextView)linearlayout.findViewById(0x7f0a0148)).setText(getString(0x7f070257));
            ((TextView)linearlayout.findViewById(0x7f0a0149)).setText(MtvUtilMemoryStatus.formatSize(l, getActivity()));
            ((TextView)linearlayout.findViewById(0x7f0a014a)).setText(getString(0x7f0702b2));
            ((TextView)linearlayout.findViewById(0x7f0a014b)).setText(formatRemainTime(MtvUtilMemoryStatus.ConvertByteToTime(l)));
        }
        return linearlayout;
    }

    private String formatRemainTime(long l)
    {
        if(l < 1L)
            return String.format(getString(0x7f0702b5), new Object[] {
                Integer.valueOf(0)
            });
        long l1 = l / 60L;
        l = l1 / 60L;
        l1 %= 60L;
        if(l > 1L && l1 > 1L)
            return String.format(getString(0x7f0702b4), new Object[] {
                Long.valueOf(l), Long.valueOf(l1)
            });
        if(l1 > 1L)
            return String.format(getString(0x7f0702b5), new Object[] {
                Long.valueOf(l1)
            });
        if(l > 1L)
            return String.format(getString(0x7f0702b3), new Object[] {
                Long.valueOf(l)
            });
        else
            return String.format(getString(0x7f0702b5), new Object[] {
                Integer.valueOf(0)
            });
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        return buildDialog(constructDetails());
    }

    public static final String TAG = "MtvUiMemInfoFrag";
}
