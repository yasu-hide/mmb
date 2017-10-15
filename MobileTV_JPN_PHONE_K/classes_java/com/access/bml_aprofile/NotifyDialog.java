// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

// Referenced classes of package com.access.bml_aprofile:
//            DTVUtil, TDTVDialogParameter, NotifyStocker

class NotifyDialog
{
    class CustomOnCancelListener
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            if(notifyStocker == null)
                return;
            if(tdtvDialogParameter.result == 0)
            {
                setResult(0, tdtvDialogParameter, notifyStocker);
                return;
            } else
            {
                setResult(1, tdtvDialogParameter, notifyStocker);
                return;
            }
        }

        final NotifyDialog this$0;

        CustomOnCancelListener()
        {
            this$0 = NotifyDialog.this;
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

        final NotifyDialog this$0;

        CustomOnDismissListener()
        {
            this$0 = NotifyDialog.this;
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

        final NotifyDialog this$0;

        CustomOnShowListener()
        {
            this$0 = NotifyDialog.this;
            super();
        }
    }

    class DialogResult
    {

        public static final int NO = 1;
        public static final int OK = 0;
        final NotifyDialog this$0;

        DialogResult()
        {
            this$0 = NotifyDialog.this;
            super();
        }
    }

    class DialogType
    {

        public static final int OK_ONLY = 0;
        public static final int YES_NO_1 = 1;
        public static final int YES_NO_2 = 2;
        final NotifyDialog this$0;

        DialogType()
        {
            this$0 = NotifyDialog.this;
            super();
        }
    }

    static class ErrorCode
    {

        public static final int BB_ACS_01_001 = 1001;
        public static final int BB_ACS_01_002 = 1002;
        public static final int BB_ACS_04_001 = 4001;
        public static final int BB_ACS_04_002 = 4002;
        public static final int BB_ACS_04_003 = 4003;
        public static final int BB_ACS_04_004 = 4004;
        public static final int BB_ACS_04_005 = 4005;
        public static final int BB_ACS_04_006 = 4006;
        public static final int BB_ACS_04_007 = 4007;
        public static final int BB_ACS_04_008 = 4008;
        public static final int BB_ACS_04_009 = 4009;
        public static final int BB_ACS_04_010 = 4010;
        public static final int BB_ACS_04_011 = 4011;
        public static final int BB_ACS_04_012 = 4012;
        public static final int BB_ACS_04_013 = 4013;
        public static final int BB_ACS_13_001 = 1301;
        public static final int BB_ACS_13_002 = 1302;
        public static final int BB_ACS_13_003 = 1303;
        public static final int BB_ACS_13_004 = 1304;
        public static final int BB_ACS_13_005 = 1305;
        public static final int BB_ACS_13_006 = 1306;
        public static final int BB_ACS_13_007 = 1307;
        public static final int BB_ACS_13_008 = 1308;
        public static final int BB_ACS_15_001 = 1501;
        public static final int BB_ACS_15_002 = 1502;
        public static final int BB_ACS_15_003 = 1503;
        public static final int BB_ACS_15_004 = 1504;
        public static final int BB_ACS_15_005 = 1505;
        public static final int BB_ACS_15_006 = 1506;
        public static final int BB_ACS_90_001 = 9001;
        public static final int BB_ACS_90_002 = 9002;
        public static final int BB_ACS_90_003 = 9003;
        public static final int BB_ACS_90_004 = 9004;
        public static final int BB_ACS_90_010 = 9005;
        public static final int BB_ACS_99_000 = 9900;
        public static final int BB_ACS_99_001 = 9901;
        public static final int BB_ACS_99_002 = 9902;
        public static final int BB_ACS_99_003 = 9903;
        public static final int BB_ACS_99_004 = 9904;
        public static final int BB_ACS_99_005 = 9905;
        public static final int BB_ACS_99_006 = 9906;
        public static final int BB_ACS_99_007 = 9907;
        public static final int BB_ACS_99_008 = 9908;
        public static final int BB_ACS_99_009 = 9909;
        public static final int BB_ACS_NONE = 9910;

        ErrorCode()
        {
        }
    }


    public NotifyDialog(Context context1, NotifyStocker notifystocker)
    {
        status = 0;
        notifyStocker = notifystocker;
        context = context1;
        packageName = context1.getPackageName();
    }

    private String getAppResString(String s)
    {
        int i = context.getResources().getIdentifier(s, "string", packageName);
        return context.getString(i);
    }

    private String getMessage(int i)
    {
        switch(i)
        {
        default:
            return "";

        case 9001: 
            return getAppResString("BB_ACS_90_001_MSG");

        case 9002: 
            return getAppResString("BB_ACS_90_002_MSG");

        case 9003: 
            return getAppResString("BB_ACS_90_003_MSG");

        case 9004: 
            return getAppResString("BB_ACS_90_004_MSG");

        case 9005: 
            return getAppResString("BB_ACS_90_010_MSG");

        case 1501: 
            return getAppResString("BB_ACS_15_001_MSG");

        case 1502: 
            return getAppResString("BB_ACS_15_002_MSG");

        case 1503: 
            return getAppResString("BB_ACS_15_003_MSG");

        case 1504: 
            return getAppResString("BB_ACS_15_004_MSG");

        case 1505: 
            return getAppResString("BB_ACS_15_005_MSG");

        case 1506: 
            return getAppResString("BB_ACS_15_006_MSG");

        case 4001: 
            return getAppResString("BB_ACS_04_001_MSG");

        case 4002: 
            return getAppResString("BB_ACS_04_002_MSG");

        case 4003: 
            return getAppResString("BB_ACS_04_003_MSG");

        case 4004: 
            return getAppResString("BB_ACS_04_004_MSG");

        case 4005: 
            return getAppResString("BB_ACS_04_005_MSG");

        case 4006: 
            return getAppResString("BB_ACS_04_006_MSG");

        case 4007: 
            return getAppResString("BB_ACS_04_007_MSG");

        case 4008: 
            return getAppResString("BB_ACS_04_008_MSG");

        case 4009: 
            return getAppResString("BB_ACS_04_009_MSG");

        case 4010: 
            return getAppResString("BB_ACS_04_010_MSG");

        case 4011: 
            return getAppResString("BB_ACS_04_011_MSG");

        case 4012: 
            return getAppResString("BB_ACS_04_012_MSG");

        case 4013: 
            return getAppResString("BB_ACS_04_013_MSG");

        case 1001: 
            return getAppResString("BB_ACS_01_001_MSG");

        case 1002: 
            return getAppResString("BB_ACS_01_002_MSG");

        case 1301: 
            return getAppResString("BB_ACS_13_001_MSG");

        case 1302: 
            return getAppResString("BB_ACS_13_002_MSG");

        case 1303: 
            return getAppResString("BB_ACS_13_003_MSG");

        case 1304: 
            return getAppResString("BB_ACS_13_004_MSG");

        case 1305: 
            return getAppResString("BB_ACS_13_005_MSG");

        case 1306: 
            return getAppResString("BB_ACS_13_006_MSG");

        case 1307: 
            return getAppResString("BB_ACS_13_007_MSG");

        case 1308: 
            return getAppResString("BB_ACS_13_008_MSG");

        case 9900: 
            return getAppResString("BB_ACS_99_000_MSG");

        case 9901: 
            return getAppResString("BB_ACS_99_001_MSG");

        case 9902: 
            return getAppResString("BB_ACS_99_002_MSG");

        case 9903: 
            return getAppResString("BB_ACS_99_003_MSG");

        case 9904: 
            return getAppResString("BB_ACS_99_004_MSG");

        case 9905: 
            return getAppResString("BB_ACS_99_005_MSG");

        case 9906: 
            return getAppResString("BB_ACS_99_006_MSG");

        case 9907: 
            return getAppResString("BB_ACS_99_007_MSG");

        case 9908: 
            return getAppResString("BB_ACS_99_008_MSG");

        case 9909: 
            return getAppResString("BB_ACS_99_009_MSG");

        case 9910: 
            return getAppResString("BB_ACS_NONE_MSG");
        }
    }

    private void setDefaultButton(TDTVDialogParameter tdtvdialogparameter, AlertDialog alertdialog)
    {
        if(tdtvdialogparameter == null || alertdialog == null)
        {
            DTVUtil.logW("Arguments are null.");
        } else
        {
            if(1 == tdtvdialogparameter.result)
            {
                alertdialog.getButton(-1).requestFocus();
                return;
            }
            if(2 == tdtvdialogparameter.result)
            {
                alertdialog.getButton(-2).requestFocus();
                return;
            }
        }
    }

    private boolean setDialogButton(TDTVDialogParameter tdtvdialogparameter, android.app.AlertDialog.Builder builder)
    {
        if(tdtvdialogparameter == null || builder == null)
        {
            DTVUtil.logW("Arguments are null.");
            return false;
        }
        if(tdtvdialogparameter.result != 0 && 1 != tdtvdialogparameter.result && 2 != tdtvdialogparameter.result)
        {
            DTVUtil.logW("Invalid arguments.");
            return false;
        }
        if(tdtvdialogparameter.result == 0)
        {
            builder.setPositiveButton(getAppResString("button_ok"), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(notifyStocker == null)
                    {
                        return;
                    } else
                    {
                        setResult(0, tdtvDialogParameter, notifyStocker);
                        return;
                    }
                }

                final NotifyDialog this$0;

            
            {
                this$0 = NotifyDialog.this;
                super();
            }
            }
);
        } else
        {
            builder.setPositiveButton(getAppResString("button_yes"), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(notifyStocker == null)
                    {
                        return;
                    } else
                    {
                        setResult(0, tdtvDialogParameter, notifyStocker);
                        return;
                    }
                }

                final NotifyDialog this$0;

            
            {
                this$0 = NotifyDialog.this;
                super();
            }
            }
);
            builder.setNegativeButton(getAppResString("button_no"), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(notifyStocker == null)
                    {
                        return;
                    } else
                    {
                        setResult(1, tdtvDialogParameter, notifyStocker);
                        return;
                    }
                }

                final NotifyDialog this$0;

            
            {
                this$0 = NotifyDialog.this;
                super();
            }
            }
);
        }
        return true;
    }

    private boolean setLayout(TDTVDialogParameter tdtvdialogparameter, android.app.AlertDialog.Builder builder)
    {
        if(tdtvdialogparameter == null || builder == null)
        {
            DTVUtil.logW("Arguments are null.");
            return false;
        }
        if(9001 == tdtvdialogparameter.err_code)
        {
            View view = LayoutInflater.from(context).inflate(context.getResources().getIdentifier("auth_dialog", "layout", context.getPackageName()), null);
            userEditText = (EditText)view.findViewById(context.getResources().getIdentifier("userNameEditText", "id", context.getPackageName()));
            passEditText = (EditText)view.findViewById(context.getResources().getIdentifier("passwordEditText", "id", context.getPackageName()));
            builder.setView(view);
        }
        String s1 = getMessage(tdtvdialogparameter.err_code);
        String s = s1;
        if(tdtvdialogparameter.msg1 != null)
            s = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s1))).append(System.getProperty("line.separator")).toString()))).append(tdtvdialogparameter.msg1).toString();
        s1 = s;
        if(tdtvdialogparameter.msg2 != null)
            s1 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s))).append(System.getProperty("line.separator")).toString()))).append(tdtvdialogparameter.msg2).toString();
        builder.setMessage(s1);
        return true;
    }

    private void setResult(int i, TDTVDialogParameter tdtvdialogparameter, NotifyStocker notifystocker)
    {
        if(notifystocker != null)
        {
            if(9001 == tdtvdialogparameter.err_code)
            {
                tdtvdialogparameter.msg1 = userEditText.getText().toString();
                tdtvdialogparameter.msg2 = passEditText.getText().toString();
            }
            tdtvdialogparameter.result = i;
            if(!notifystocker.setResult(tdtvdialogparameter))
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

    public void show(TDTVDialogParameter tdtvdialogparameter)
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
        if(tdtvdialogparameter != null)
            break MISSING_BLOCK_LABEL_51;
        DTVUtil.logW("Dialog parameter is null.");
        status = -1;
          goto _L3
        tdtvdialogparameter;
        throw tdtvdialogparameter;
label0:
        {
            if(alertDialog == null)
                break label0;
            DTVUtil.logW("Dialog is already shown.");
            status = -1;
        }
          goto _L3
        android.app.AlertDialog.Builder builder;
label1:
        {
            tdtvDialogParameter = tdtvdialogparameter;
            builder = new android.app.AlertDialog.Builder(context);
            if(setLayout(tdtvdialogparameter, builder))
                break label1;
            status = -1;
        }
          goto _L3
label2:
        {
            if(setDialogButton(tdtvdialogparameter, builder))
                break label2;
            status = -1;
        }
          goto _L3
        alertDialog = builder.create();
        alertDialog.setOnShowListener(new CustomOnShowListener());
        alertDialog.setOnDismissListener(new CustomOnDismissListener());
        alertDialog.setOnCancelListener(new CustomOnCancelListener());
        alertDialog.setCancelable(true);
        alertDialog.show();
        setDefaultButton(tdtvdialogparameter, alertDialog);
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
    private AlertDialog alertDialog;
    private Context context;
    private NotifyStocker notifyStocker;
    private String packageName;
    private EditText passEditText;
    private int status;
    private TDTVDialogParameter tdtvDialogParameter;
    private EditText userEditText;





}
