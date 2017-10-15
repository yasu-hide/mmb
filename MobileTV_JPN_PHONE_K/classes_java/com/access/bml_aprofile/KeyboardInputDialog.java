// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.text.*;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.access.bml_aprofile:
//            DTVUtil, KeyboardInputResult, KeyboardInputStocker

class KeyboardInputDialog
{
    class CType
    {

        public static final int ALL = 0;
        public static final int ALPHABET = 2;
        public static final int HANKAKU = 3;
        public static final int HIRAGANA = 6;
        public static final int KATAKANA = 5;
        public static final int NUMBER = 1;
        public static final int ZENKAKU = 4;
        final KeyboardInputDialog this$0;

        CType()
        {
            this$0 = KeyboardInputDialog.this;
            super();
        }
    }

    class CustomOnDismissListener
        implements android.content.DialogInterface.OnDismissListener
    {

        public void onDismiss(DialogInterface dialoginterface)
        {
            alertDialog = null;
        }

        final KeyboardInputDialog this$0;

        CustomOnDismissListener()
        {
            this$0 = KeyboardInputDialog.this;
            super();
        }
    }

    class CustomOnShowListener
        implements android.content.DialogInterface.OnShowListener
    {

        public void onShow(DialogInterface dialoginterface)
        {
            status = 1;
        }

        final KeyboardInputDialog this$0;

        CustomOnShowListener()
        {
            this$0 = KeyboardInputDialog.this;
            super();
        }
    }

    class DialogResult
    {

        public static final int NO = 1;
        public static final int OK = 0;
        final KeyboardInputDialog this$0;

        DialogResult()
        {
            this$0 = KeyboardInputDialog.this;
            super();
        }
    }

    class Type
    {

        public static final int PASSWORD = 1;
        public static final int TEXT = 0;
        final KeyboardInputDialog this$0;

        Type()
        {
            this$0 = KeyboardInputDialog.this;
            super();
        }
    }


    public KeyboardInputDialog(Context context1, KeyboardInputStocker keyboardinputstocker)
    {
        status = 0;
        keyboardInputStocker = keyboardinputstocker;
        context = context1;
    }

    private String getAppResString(String s)
    {
        int i = context.getResources().getIdentifier(s, "string", context.getPackageName());
        return context.getString(i);
    }

    private boolean setDialogButton(android.app.AlertDialog.Builder builder)
    {
        if(builder == null)
        {
            DTVUtil.logW("Arguments are null.");
            return false;
        } else
        {
            builder.setPositiveButton(getAppResString("button_ok"), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(keyboardInputStocker == null)
                    {
                        return;
                    } else
                    {
                        setResult(0, keyboardInputStocker);
                        return;
                    }
                }

                final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
            }
);
            builder.setNegativeButton(getAppResString("button_cancel"), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(keyboardInputStocker == null)
                    {
                        return;
                    } else
                    {
                        setResult(1, keyboardInputStocker);
                        return;
                    }
                }

                final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
            }
);
            return true;
        }
    }

    private boolean setLayout(int i, int j, int k, String s, android.app.AlertDialog.Builder builder)
    {
        if(builder == null)
        {
            DTVUtil.logW("Arguments are null.");
            return false;
        }
        View view = LayoutInflater.from(context).inflate(context.getResources().getIdentifier("keyboard_input_dialog", "layout", context.getPackageName()), null);
        inputEditText = (EditText)view.findViewById(context.getResources().getIdentifier("inputEditText", "id", context.getPackageName()));
        if(inputEditText == null)
        {
            DTVUtil.logW("inputEditText is null.");
            return false;
        }
        builder.setView(view);
        i;
        JVM INSTR tableswitch 0 1: default 124
    //                   0 131
    //                   1 199;
           goto _L1 _L2 _L3
_L1:
        DTVUtil.logW("Invalid arguments.");
        return false;
_L2:
        i = 0;
_L12:
        InputFilter ainputfilter[];
        String s1;
        ainputfilter = new InputFilter[2];
        s1 = getAppResString("input_text");
        j;
        JVM INSTR tableswitch 0 6: default 192
    //                   0 206
    //                   1 307
    //                   2 326
    //                   3 354
    //                   4 373
    //                   5 392
    //                   6 411;
           goto _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L4:
        DTVUtil.logW("Invalid arguments.");
        return false;
_L3:
        i = 128;
          goto _L12
_L5:
        i |= 1;
        ainputfilter[0] = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int l, int i1, Spanned spanned, int j1, int k1)
            {
                return charsequence;
            }

            final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
        }
;
_L14:
        j = i;
        if((i & 1) == 1)
            j = i | 0x40000;
        inputEditText.setInputType(j);
        if(k >= 0)
            ainputfilter[1] = new android.text.InputFilter.LengthFilter(k);
        inputEditText.setFilters(ainputfilter);
        if(s != null)
        {
            inputEditText.setText(s);
            inputEditText.setSelection(inputEditText.length());
        }
        builder.setMessage(s1);
        return true;
_L6:
        i |= 2;
        ainputfilter[0] = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int l, int i1, Spanned spanned, int j1, int k1)
            {
                spanned = charsequence.toString().replaceAll("[^0-9]", "");
                if(charsequence instanceof Spanned)
                {
                    SpannableString spannablestring = new SpannableString(spanned);
                    TextUtils.copySpansFrom((Spanned)charsequence, l, spanned.length(), null, spannablestring, 0);
                    return spannablestring;
                } else
                {
                    return spanned;
                }
            }

            final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
        }
;
        continue; /* Loop/switch isn't completed */
_L7:
        inputEditText.setPrivateImeOptions("defaultInputmode=english;symbol=true");
        i |= 1;
        ainputfilter[0] = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int l, int i1, Spanned spanned, int j1, int k1)
            {
                spanned = charsequence.toString().replaceAll("[^ -/:-~]", "");
                if(charsequence instanceof Spanned)
                {
                    SpannableString spannablestring = new SpannableString(spanned);
                    TextUtils.copySpansFrom((Spanned)charsequence, l, spanned.length(), null, spannablestring, 0);
                    return spannablestring;
                } else
                {
                    return spanned;
                }
            }

            final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
        }
;
        continue; /* Loop/switch isn't completed */
_L8:
        i |= 1;
        ainputfilter[0] = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int l, int i1, Spanned spanned, int j1, int k1)
            {
                spanned = charsequence.toString().replaceAll("[^ -~]", "");
                if(charsequence instanceof Spanned)
                {
                    SpannableString spannablestring = new SpannableString(spanned);
                    TextUtils.copySpansFrom((Spanned)charsequence, l, spanned.length(), null, spannablestring, 0);
                    return spannablestring;
                } else
                {
                    return spanned;
                }
            }

            final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
        }
;
        continue; /* Loop/switch isn't completed */
_L9:
        i |= 1;
        ainputfilter[0] = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int l, int i1, Spanned spanned, int j1, int k1)
            {
                spanned = charsequence.toString().replaceAll("[^ぁ-わをんァ-ワヲンＡ-Ｚａ-ｚ０-９　、。・ー―「」]", "");
                if(charsequence instanceof Spanned)
                {
                    SpannableString spannablestring = new SpannableString(spanned);
                    TextUtils.copySpansFrom((Spanned)charsequence, l, spanned.length(), null, spannablestring, 0);
                    return spannablestring;
                } else
                {
                    return spanned;
                }
            }

            final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
        }
;
        continue; /* Loop/switch isn't completed */
_L10:
        i |= 1;
        ainputfilter[0] = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int l, int i1, Spanned spanned, int j1, int k1)
            {
                spanned = new StringBuffer(charsequence.toString());
                i1 = 0;
                do
                {
                    if(i1 >= spanned.length())
                    {
                        spanned = spanned.toString().replaceAll("[^ァ-ワヲン　、。・ー―「」]", "");
                        if(charsequence instanceof Spanned)
                        {
                            SpannableString spannablestring = new SpannableString(spanned);
                            TextUtils.copySpansFrom((Spanned)charsequence, l, spanned.length(), null, spannablestring, 0);
                            return spannablestring;
                        } else
                        {
                            return spanned;
                        }
                    }
                    j1 = spanned.charAt(i1);
                    if(12352 <= j1 && j1 <= 12447)
                        spanned.setCharAt(i1, (char)((j1 - 12352) + 12448));
                    i1++;
                } while(true);
            }

            final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
        }
;
        continue; /* Loop/switch isn't completed */
_L11:
        i |= 1;
        ainputfilter[0] = new InputFilter() {

            public CharSequence filter(CharSequence charsequence, int l, int i1, Spanned spanned, int j1, int k1)
            {
                spanned = charsequence.toString().replaceAll("[^ぁ-わをん　、。・ー―「」]", "");
                if(charsequence instanceof Spanned)
                {
                    SpannableString spannablestring = new SpannableString(spanned);
                    TextUtils.copySpansFrom((Spanned)charsequence, l, spanned.length(), null, spannablestring, 0);
                    return spannablestring;
                } else
                {
                    return spanned;
                }
            }

            final KeyboardInputDialog this$0;

            
            {
                this$0 = KeyboardInputDialog.this;
                super();
            }
        }
;
        if(true) goto _L14; else goto _L13
_L13:
    }

    private void setResult(int i, KeyboardInputStocker keyboardinputstocker)
    {
        if(keyboardinputstocker != null)
        {
            KeyboardInputResult keyboardinputresult = new KeyboardInputResult();
            keyboardinputresult.inputText = inputEditText.getText().toString();
            keyboardinputresult.result = i;
            if(!keyboardinputstocker.setResult(keyboardinputresult))
            {
                DTVUtil.logW("Dialog result is already stored.");
                return;
            }
        }
    }

    public void dismiss()
    {
        this;
        JVM INSTR monitorenter ;
        AlertDialog alertdialog = alertDialog;
        if(alertdialog != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        alertDialog.dismiss();
        if(true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void finalize()
    {
        context = null;
    }

    public void setContext(Context context1)
    {
        context = context1;
    }

    public void show(int i, int j, int k, String s)
    {
        this;
        JVM INSTR monitorenter ;
        status = 0;
        if(context != null) goto _L2; else goto _L1
_L1:
        DTVUtil.logW("Context is null.");
        status = -1;
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if(alertDialog == null)
            break MISSING_BLOCK_LABEL_56;
        DTVUtil.logW("Dialog is already shown.");
        status = -1;
          goto _L3
        s;
        throw s;
        android.app.AlertDialog.Builder builder;
label0:
        {
            builder = new android.app.AlertDialog.Builder(context);
            if(setLayout(i, j, k, s, builder))
                break label0;
            status = -1;
        }
          goto _L3
label1:
        {
            if(setDialogButton(builder))
                break label1;
            status = -1;
        }
          goto _L3
        alertDialog = builder.create();
        alertDialog.setOnShowListener(new CustomOnShowListener());
        alertDialog.setOnDismissListener(new CustomOnDismissListener());
        alertDialog.setCancelable(false);
        alertDialog.show();
          goto _L3
    }

    public boolean syncShowResult()
    {
        int i = 0;
        do
        {
            if(i >= 50 || status != 0)
                switch(status)
                {
                default:
                    status = 0;
                    return false;

                case 1: // '\001'
                    status = 0;
                    return true;

                case -1: 
                    DTVUtil.logW("Failed to open dialog.");
                    status = 0;
                    return false;

                case 0: // '\0'
                    DTVUtil.logW("Timed out while waiting for dialog to be shown.");
                    status = 0;
                    return false;
                }
            try
            {
                Thread.sleep(100L);
            }
            catch(InterruptedException interruptedexception)
            {
                DTVUtil.logW("InterruptedException occurred while waiting for dialog to be shown.");
            }
            i++;
        } while(true);
    }

    private static final int FAIL = -1;
    private static final int SUCCESS = 1;
    private static final int WAITING = 0;
    private static final String ZENKAKU_ALPHABET = "Ａ-Ｚａ-ｚ";
    private static final String ZENKAKU_HIRAGANA = "ぁ-わをん";
    private static final String ZENKAKU_KATAKANA = "ァ-ワヲン";
    private static final String ZENKAKU_NUMBER = "０-９";
    private static final String ZENKAKU_SYMBOL = "　、。・ー―「」";
    private AlertDialog alertDialog;
    private Context context;
    private EditText inputEditText;
    private KeyboardInputStocker keyboardInputStocker;
    private int status;




}
