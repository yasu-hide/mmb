// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.app.AlertDialog;
import android.content.*;
import android.content.res.Resources;
import android.location.Location;
import android.media.MediaPlayer;
import android.net.*;
import android.os.*;
import android.telephony.TelephonyManager;
import android.text.*;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.Window;
import android.widget.*;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.access.bml:
//            BMLView, BMLDtvControl, BMLFont

public abstract class BMLPeer
{
    class BMLDtvAudio
    {

        String mFileName;
        String mObjectID;
        int mStatus;
        final BMLPeer this$0;

        BMLDtvAudio()
        {
            this$0 = BMLPeer.this;
            super();
            mObjectID = null;
            mFileName = null;
        }
    }


    protected BMLPeer(Context context)
    {
        mPackageName = null;
        mAudioPlayerTbl = new Hashtable();
        mAudioPlayer = null;
        mRomSoundPlayer = null;
        mCurAudioPlayingId = 0;
        mImeAlertDialog = null;
        mEditInput = null;
        mContext = context;
        mPackageName = mContext.getPackageName();
    }

    private String convWapInput2RegularExpress(int i)
    {
        switch(i)
        {
        default:
            return "";

        case 65: // 'A'
            return "[\\p{Upper}\\p{Punct}$=+|^]";

        case 97: // 'a'
            return "[\\p{Lower}\\p{Punct}$=+|^]";

        case 78: // 'N'
            return "[\\p{Digit}]";

        case 110: // 'n'
            return "[\\p{Digit}\\p{Punct}$=+|^]";

        case 88: // 'X'
            return "[\\p{Upper}\\p{Digit}\\p{Punct}$=+|^]";

        case 120: // 'x'
            return "[\\p{Lower}\\p{Digit}\\p{Punct}$=+|^]";

        case 77: // 'M'
            return "[\\x00-\\xff\\u0000-\\uffff]";

        case 109: // 'm'
            return "[\\x00-\\xff\\u0000-\\uffff]";
        }
    }

    private int getAppResSound(String s)
    {
        return mContext.getResources().getIdentifier(s, "raw", mPackageName);
    }

    private String getAppResString(String s)
    {
        int i = mContext.getResources().getIdentifier(s, "string", mPackageName);
        return mContext.getString(i);
    }

    public void BMLPeer_Finalize()
    {
        BMLPeer_NativeFinalize();
        mContext = null;
    }

    public native void BMLPeer_Initialize();

    public native void BMLPeer_NativeFinalize();

    public native void BMLPeer_SetAreaBroadcastInfo(int i);

    public int DsmccPeer_NotifyIdleStatus(int i, int j)
    {
        return 0;
    }

    public void ResetContext(Context context)
    {
        Log.d("BMLPeer", (new StringBuilder("ResetContext PREV: ")).append(mContext).append(" NEW: ").append(context).toString());
        mContext = context;
        mBMLView.ResetContext(context);
    }

    public boolean appExIMEStartPeer(final BMLDtvType.APPExIMEParam param)
    {
        Handler handler = mBMLView.getHandler();
        if(handler == null)
        {
            return false;
        } else
        {
            handler.post(new Runnable() {

                public void run()
                {
                    int k;
                    int l;
                    Object obj;
                    LinearLayout linearlayout;
                    TextView textview;
                    linearlayout = new LinearLayout(mContext);
                    textview = new TextView(mContext);
                    mEditInput = new EditText(mContext);
                    int i = mEditInput.getInputType();
                    obj = null;
                    k = param.fMaxLength;
                    k = i | 0x80000;
                    i = k;
                    if((param.fTextBoxCompoType & 1) == 1)
                        i = k | 0x20000;
                    l = i;
                    if((param.fTextBoxCompoType & 2) == 2)
                        l = i & 0xfffdffff;
                    if((param.fTextBoxCompoType & 4) == 4)
                        mEditInput.setTransformationMethod(new PasswordTransformationMethod());
                    k = l;
                    param.fTextBoxCompoUsage;
                    JVM INSTR tableswitch 65537 65539: default 184
                //                               65537 186
                //                               65538 724
                //                               65539 731;
                       goto _L1 _L2 _L3 _L4
_L2:
                    break MISSING_BLOCK_LABEL_186;
_L1:
                    k = l;
_L16:
                    if(param.fFormat == null) goto _L6; else goto _L5
_L5:
                    int j;
                    int k1;
                    Object obj1;
                    j = 0;
                    int i1 = 0;
                    obj = param.fFormat.getBytes();
                    l = 0;
                    obj1 = new StringBuilder();
                    if(Character.isDigit(obj[0]))
                    {
                        Object obj2 = new StringBuffer();
                        l = 0;
                        while(l < param.fFormat.length() && Character.isDigit(param.fFormat.charAt(l))) 
                        {
                            ((StringBuffer) (obj2)).append(param.fFormat.charAt(l));
                            l++;
                        }
                        obj2 = ((StringBuffer) (obj2)).toString();
                        j = i1;
                        if(obj2 != null)
                        {
                            j = Integer.parseInt(((String) (obj2)));
                            ((StringBuilder) (obj1)).append(convWapInput2RegularExpress(obj[l]));
                            ((StringBuilder) (obj1)).append((new StringBuilder("{0,")).append(j).append("}").toString());
                        }
                    } else
                    {
                        while(l < obj.length) 
                            if(Character.isDigit(obj[l]))
                            {
                                int j1 = Character.getNumericValue(obj[l]);
                                l++;
                                ((StringBuilder) (obj1)).append(convWapInput2RegularExpress(obj[l]));
                                ((StringBuilder) (obj1)).append((new StringBuilder("{0,")).append(j1).append("}").toString());
                                l++;
                                j += j1;
                            } else
                            if(obj[l] == 42)
                            {
                                j = l + 1;
                                ((StringBuilder) (obj1)).append(convWapInput2RegularExpress(obj[j]));
                                ((StringBuilder) (obj1)).append("*");
                                l = j + 1;
                                j = param.fMaxLength;
                            } else
                            {
                                ((StringBuilder) (obj1)).append(convWapInput2RegularExpress(obj[l]));
                                l++;
                                j++;
                            }
                    }
                    l = j;
                    if(j > param.fMaxLength)
                        l = param.fMaxLength;
                    obj1 = (new StringBuilder("^")).append(((StringBuilder) (obj1)).toString()).append("$").toString();
                    j = obj[0];
                    if(Character.isDigit(j)) goto _L8; else goto _L7
_L7:
                    i1 = j;
                    if(j != 42) goto _L9; else goto _L8
_L8:
                    i1 = obj[1];
_L9:
                    j = k;
                    k1 = l;
                    obj = obj1;
                    i1;
                    JVM INSTR lookupswitch 8: default 484
                //                               65: 948
                //                               77: 994
                //                               78: 964
                //                               88: 978
                //                               97: 493
                //                               109: 493
                //                               110: 493
                //                               120: 493;
                       goto _L10 _L11 _L12 _L13 _L14 _L15 _L15 _L15 _L15
_L15:
                    break; /* Loop/switch isn't completed */
_L10:
                    obj = obj1;
                    k1 = l;
                    j = k;
_L17:
                    mEditInput.setInputType(j);
                    if(obj != null)
                    {
                        mEditInput.setFilters(new InputFilter[] {
                            new android.text.InputFilter.LengthFilter(k1), new InputFilter() {

                                public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
                                {
                                    return null;
                                }

                                final _cls1 this$1;

            
            {
                this$1 = _cls1.this;
                super();
            }
                            }

                        });
                        mEditInput.addTextChangedListener(((_cls2) (obj)). new TextWatcher() {

                            public void afterTextChanged(Editable editable)
                            {
                            }

                            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
                            {
                            }

                            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
                            {
                                Matcher matcher = Pattern.compile(filterPattern).matcher(charsequence);
                                if(charsequence.length() > 0 && !matcher.matches())
                                {
                                    if(mImeAlertDialog != null)
                                        mImeAlertDialog.getButton(-1).setEnabled(false);
                                } else
                                if(mImeAlertDialog != null)
                                {
                                    mImeAlertDialog.getButton(-1).setEnabled(true);
                                    return;
                                }
                            }

                            final _cls1 this$1;
                            private final String val$filterPattern;

            
            {
                this$1 = final__pcls1;
                filterPattern = String.this;
                super();
            }
                        }
);
                    } else
                    {
                        mEditInput.setFilters(new InputFilter[] {
                            new android.text.InputFilter.LengthFilter(k1)
                        });
                    }
                    linearlayout.addView(textview);
                    linearlayout.addView(mEditInput);
                    linearlayout.setOrientation(1);
                    mEditInput.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1, 0.0F));
                    mEditInput.setText(param.fTemplate);
                    mImeAlertDialog = (new android.app.AlertDialog.Builder(mContext)).setView(linearlayout).setPositiveButton("OK", param. new android.content.DialogInterface.OnClickListener() {

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            dialoginterface.dismiss();
                            dialoginterface = null;
                            if(param.fCharset != 1) goto _L2; else goto _L1
_L1:
                            byte abyte0[];
                            try
                            {
                                abyte0 = mEditInput.getText().toString().getBytes("SJIS");
                            }
                            catch(UnsupportedEncodingException unsupportedencodingexception)
                            {
                                unsupportedencodingexception.printStackTrace();
                                continue; /* Loop/switch isn't completed */
                            }
                            dialoginterface = abyte0;
_L4:
                            mBMLView.BML_appExIMEEndPeer(true, dialoginterface, dialoginterface.length);
                            return;
_L2:
                            dialoginterface = mEditInput.getText().toString().getBytes();
                            if(true) goto _L4; else goto _L3
_L3:
                        }

                        final _cls1 this$1;
                        private final BMLDtvType.APPExIMEParam val$param;

            
            {
                this$1 = final__pcls1;
                param = BMLDtvType.APPExIMEParam.this;
                super();
            }
                    }
).setNegativeButton("Cancel", new android.content.DialogInterface.OnClickListener() {

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            dialoginterface.dismiss();
                            mBMLView.BML_appExIMEEndPeer(false, null, 0);
                        }

                        final _cls1 this$1;

            
            {
                this$1 = _cls1.this;
                super();
            }
                    }
).setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

                        public void onCancel(DialogInterface dialoginterface)
                        {
                            dialoginterface.dismiss();
                            mBMLView.BML_appExIMEEndPeer(false, null, 0);
                        }

                        final _cls1 this$1;

            
            {
                this$1 = _cls1.this;
                super();
            }
                    }
).show();
                    mEditInput.requestFocus();
                    mImeAlertDialog.getWindow().setSoftInputMode(5);
                    return;
_L3:
                    k = l | 2;
                      goto _L16
_L4:
                    k = l | 1;
                      goto _L16
_L11:
                    j = k | 0x1000;
                    k1 = l;
                    obj = obj1;
                      goto _L17
_L13:
                    j = k | 2;
                    k1 = l;
                    obj = obj1;
                      goto _L17
_L14:
                    j = k | 0x1000;
                    k1 = l;
                    obj = obj1;
                      goto _L17
_L12:
                    j = k | 0x4000;
                    k1 = l;
                    obj = obj1;
                      goto _L17
_L6:
                    k1 = param.fMaxLength;
                    j = k;
                      goto _L17
                }

                final BMLPeer this$0;
                private final BMLDtvType.APPExIMEParam val$param;


            
            {
                this$0 = BMLPeer.this;
                param = appeximeparam;
                super();
            }
            }
);
            return true;
        }
    }

    public void bitBlt(int ai[], int i, int j, int k, int l, int i1, int j1, 
            int k1, int l1, boolean flag)
    {
        mBMLView.bitBlt(ai, i, j, k, l, i1, j1, k1, l1, flag);
    }

    public void copyArea(int i, int j, int k, int l, int i1, int j1)
    {
        mBMLView.copyArea(i, j, k, l, i1, j1);
    }

    public void drawLine(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1, int i2)
    {
        mBMLView.drawLine(i, j, k, l, i1, j1, k1, l1, i2);
    }

    public void drawText(int i, int j, String s, int k, int l)
    {
        mBMLView.drawText(i, j, s, k, l);
    }

    public void drawText(int i, int j, String s, int k, int l, int i1, int j1, 
            int k1, int l1)
    {
        mBMLView.drawText(i, j, s, k, l, i1, j1, k1, l1);
    }

    public void dtvAudio_ClosePeer(int i)
    {
        if(mAudioPlayer != null)
        {
            if(mAudioPlayer.isPlaying())
                mAudioPlayer.stop();
            if(mAudioPlayerTbl.isEmpty())
            {
                mAudioPlayer.release();
                mAudioPlayer = null;
            }
        }
        String s = ((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(i))).mFileName;
        mAudioPlayerTbl.remove(Integer.valueOf(i));
        if(s != null)
            (new File(mContext.getCacheDir(), s)).delete();
    }

    public void dtvAudio_FinalizePeer()
    {
        if(mAudioPlayerTbl.isEmpty()) goto _L2; else goto _L1
_L1:
        Enumeration enumeration = mAudioPlayerTbl.elements();
_L6:
        if(enumeration.hasMoreElements()) goto _L4; else goto _L3
_L3:
        mAudioPlayerTbl.clear();
_L2:
        if(mAudioPlayer != null)
        {
            if(mAudioPlayer.isPlaying())
                mAudioPlayer.stop();
            mAudioPlayer.release();
            mAudioPlayer = null;
        }
        mRomSoundPlayer = null;
        return;
_L4:
        (new File(mContext.getCacheDir(), ((BMLDtvAudio)enumeration.nextElement()).mFileName)).delete();
        if(true) goto _L6; else goto _L5
_L5:
    }

    public int dtvAudio_GetObjectIDPeer(int i, byte abyte0[])
    {
        if(mAudioPlayerTbl.containsKey(Integer.valueOf(i)))
        {
            byte abyte1[] = new byte[257];
            abyte1 = ((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(i))).mObjectID.getBytes();
            System.arraycopy(abyte1, 0, abyte0, 0, abyte1.length);
            return 0;
        } else
        {
            return -1;
        }
    }

    public int dtvAudio_GetStatusPeer(int i)
    {
        return ((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(i))).mStatus;
    }

    public int dtvAudio_InitializePeer(int i)
    {
        return 0;
    }

    public int dtvAudio_OpenPeer(byte abyte0[], int i, int j, byte abyte1[])
    {
        BMLDtvAudio bmldtvaudio;
        bmldtvaudio = new BMLDtvAudio();
        bmldtvaudio.mObjectID = new String(abyte1);
        bmldtvaudio.mFileName = (new StringBuilder(String.valueOf(bmldtvaudio.mObjectID))).append(".aac").toString();
        bmldtvaudio.mStatus = j;
        if(mAudioPlayerTbl.isEmpty()) goto _L2; else goto _L1
_L1:
        abyte1 = mAudioPlayerTbl.elements();
_L4:
        if(abyte1.hasMoreElements())
            continue; /* Loop/switch isn't completed */
_L2:
        abyte1 = new File(mContext.getCacheDir(), bmldtvaudio.mFileName);
        try
        {
            FileOutputStream fileoutputstream = new FileOutputStream(abyte1);
            fileoutputstream.write(abyte0);
            fileoutputstream.close();
            Runtime.getRuntime().exec((new StringBuilder("chmod 777 ")).append(abyte1.getAbsolutePath()).toString());
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        i = 0;
        do
        {
            int k = i + 1;
            if(mAudioPlayerTbl.containsKey(Integer.valueOf(k)))
                j = 0;
            else
                j = 1;
            i = k;
        } while(j == 0);
        mAudioPlayerTbl.put(Integer.valueOf(k), bmldtvaudio);
        return k;
        if(!bmldtvaudio.mFileName.equals(((BMLDtvAudio)abyte1.nextElement()).mFileName)) goto _L4; else goto _L3
_L3:
        return -1;
    }

    public int dtvAudio_SetStatusPeer(int i, int j)
    {
        int k;
        boolean flag;
        boolean flag1;
        String s;
        s = ((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(i))).mFileName;
        flag1 = false;
        flag = false;
        if(s == null)
            return -1;
        k = j;
        if(j == 2)
        {
            k = 0;
            flag = true;
        }
        if(k != 1) goto _L2; else goto _L1
_L1:
        if(mAudioPlayer != null)
        {
            if(mAudioPlayer.isPlaying())
                mAudioPlayer.stop();
            mAudioPlayer.reset();
        } else
        {
            mAudioPlayer = new MediaPlayer();
        }
        try
        {
            mAudioPlayer.setDataSource((new StringBuilder()).append(mContext.getCacheDir()).append("/").append(s).toString());
            mAudioPlayer.prepare();
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
        }
        catch(IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
        }
        catch(IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        mAudioPlayer.setLooping(false);
        mAudioPlayer.start();
        mCurAudioPlayingId = i;
        mAudioPlayer.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            public void onCompletion(MediaPlayer mediaplayer)
            {
                if(mAudioPlayerTbl.containsKey(Integer.valueOf(mCurAudioPlayingId)))
                {
                    ((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(mCurAudioPlayingId))).mStatus = 0;
                    mBMLView.BML_PostDTVBEvent_MediaStopped(0, ((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(mCurAudioPlayingId))).mObjectID.getBytes());
                }
            }

            final BMLPeer this$0;

            
            {
                this$0 = BMLPeer.this;
                super();
            }
        }
);
        j = ((flag1) ? 1 : 0);
_L4:
        ((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(i))).mStatus = k;
        return j;
_L2:
        j = ((flag1) ? 1 : 0);
        if(k == 0)
        {
            j = ((flag1) ? 1 : 0);
            if(mAudioPlayer != null)
            {
                j = ((flag1) ? 1 : 0);
                if(mCurAudioPlayingId == i)
                {
                    if(mAudioPlayer.isPlaying())
                        mAudioPlayer.stop();
                    j = ((flag1) ? 1 : 0);
                    if(((BMLDtvAudio)mAudioPlayerTbl.get(Integer.valueOf(i))).mStatus == 1)
                    {
                        j = ((flag1) ? 1 : 0);
                        if(!flag)
                            j = 1;
                    }
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void dtvControl_FinalizePeer()
    {
    }

    public abstract int dtvControl_GetAffiliateIDPeer(byte abyte0[]);

    public abstract void dtvControl_GetCurrentDatePeer(int i, BMLDtvType.DTVDate dtvdate, BMLDtvType.IntPtr intptr);

    public abstract int dtvControl_GetEventIDPeer();

    public void dtvControl_GetIRDIDPeer(int i, byte abyte0[])
    {
        byte abyte1[] = new byte[21];
        i;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 42
    //                   2 68
    //                   3 42;
           goto _L1 _L2 _L3 _L2
_L1:
        System.arraycopy(abyte1, 0, abyte0, 0, abyte1.length);
        return;
_L2:
        String s = mBMLView.mTelephonyManager.getDeviceId();
        if(s != null)
        {
            abyte1 = s.getBytes();
            continue; /* Loop/switch isn't completed */
        }
_L3:
        String s1 = mBMLView.mTelephonyManager.getSimSerialNumber();
        if(s1 != null)
            abyte1 = s1.getBytes();
        if(true) goto _L1; else goto _L4
_L4:
    }

    public int dtvControl_GetProgramRelativeTimePeer()
    {
        if(mBMLView.BML_DsmccAPI_DetectEIT() == 0)
            return -1;
        else
            return (int)((Calendar.getInstance().getTimeInMillis() - mDtvControl.getmServiceStart()) / 1000L);
    }

    public void dtvControl_GetUserAgentPeer(byte abyte0[], byte abyte1[])
    {
        byte abyte2[] = new byte[21];
        abyte2 = new byte[21];
        String s = Build.MODEL;
        if(s != null)
        {
            byte abyte3[] = s.getBytes();
            System.arraycopy(abyte3, 0, abyte0, 0, abyte3.length);
        }
        abyte0 = mBMLView.mTelephonyManager.getDeviceId();
        if(abyte0 != null)
        {
            abyte0 = abyte0.getBytes();
            System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
        }
    }

    public int dtvControl_InitializePeer(int i)
    {
        mDtvControl = new BMLDtvControl(i);
        return 0;
    }

    public void dtvControl_NotifyDocumentPeer(int i, int j, byte abyte0[])
    {
    }

    public void dtvControl_NotifyHaltPeer(int i)
    {
        mBMLView.DismissDialog();
        Handler handler = mBMLView.getHandler();
        if(handler != null)
            handler.post(new Runnable() {

                public void run()
                {
                    if(mBMLView.mProgressBar != null)
                    {
                        mBMLView.removeView(mBMLView.mProgressBar);
                        mBMLView.mProgressBar.setVisibility(8);
                        mBMLView.mProgressBar = null;
                    }
                    mBMLView.fillRect((int)mBMLView.getBitMapLeft(), (int)mBMLView.getBitMapTop(), mBMLView.getScreenWidth(), mBMLView.getScreenHeight(), BMLView.mBgColor);
                    mBMLView.refreshScreen();
                }

                final BMLPeer this$0;

            
            {
                this$0 = BMLPeer.this;
                super();
            }
            }
);
    }

    public void dtvControl_NotifyLocationPeer(byte abyte0[])
    {
    }

    public void dtvControl_NotifyServicePeer(int i, int j, int k)
    {
        long l = Calendar.getInstance().getTimeInMillis();
        mDtvControl.setmServiceStart(l);
    }

    public int dtvControl_PlayRomSoundPeer(int i)
    {
        boolean flag;
        String s;
        flag = false;
        if(i < 0 || i >= 16)
            break MISSING_BLOCK_LABEL_190;
        if(i < 10)
            s = (new StringBuilder("oneseg_0")).append(i).toString();
        else
            s = (new StringBuilder("oneseg_")).append(i).toString();
        s = (new StringBuilder("/system/etc/one-seg/")).append(s).append(".ogg").toString();
        if((new File(s)).exists()) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        mRomSoundPlayer = new MediaPlayer();
        try
        {
            mRomSoundPlayer.setDataSource(s);
            mRomSoundPlayer.prepare();
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
        }
        catch(IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
        }
        catch(IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        mRomSoundPlayer.setLooping(false);
        mRomSoundPlayer.start();
        i = ((flag) ? 1 : 0);
        if(mRomSoundPlayer == null) goto _L4; else goto _L3
_L3:
        mRomSoundPlayer.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            public void onCompletion(MediaPlayer mediaplayer)
            {
                mediaplayer.release();
            }

            final BMLPeer this$0;

            
            {
                this$0 = BMLPeer.this;
                super();
            }
        }
);
        return 0;
        return -1003;
    }

    public int dtvControl_SaveImageToMemoryCardPeer(int i, byte abyte0[], boolean flag, byte abyte1[])
    {
        if(!Environment.getExternalStorageState().equals("mounted")) goto _L2; else goto _L1
_L1:
        abyte0 = new String(abyte0);
        abyte0 = new File((new StringBuilder(String.valueOf(System.getenv("EXTERNAL_STORAGE")))).append("/").append(Environment.DIRECTORY_DOWNLOADS).toString(), abyte0);
        if(!flag && abyte0.exists())
            return -1053;
        abyte0 = new FileOutputStream(abyte0);
        abyte0.write(abyte1);
        abyte0.close();
        return 0;
        abyte0;
_L4:
        return -1;
_L2:
        return !Environment.getExternalStorageState().equals("mounted_ro") ? -1050 : -1051;
        abyte0;
        continue; /* Loop/switch isn't completed */
        abyte0;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void dtvControl_SaveImageToMemoryCard_CancelPeer()
    {
    }

    public void dtvControl_SetTitlePeer(byte abyte0[])
    {
    }

    public abstract void dtvEPG_FinalizePeer();

    public abstract int dtvEPG_GetEventDurationPeer(int i, int j, int k, int l, BMLDtvType.IntPtr intptr);

    public abstract int dtvEPG_GetEventStartTimePeer(int i, int j, int k, int l, BMLDtvType.DTVDate dtvdate);

    public abstract int dtvEPG_InitializePeer(int i);

    public abstract int dtvEvent_SetUsedKeyListPeer(int i);

    public abstract int dtvGraphic_SetFullDataDisplayAreaPeer(int i, int j);

    public int dtvNet_GetConnectionTypePeer()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if(networkinfo.isConnected())
        {
            int i = networkinfo.getType();
            if(i == 1)
                return 403;
            if(i == 0)
                return 300;
        }
        return 0;
    }

    public abstract int dtvNet_GetIPInfoPeer(byte abyte0[], byte abyte1[]);

    public int dtvNet_IsIPConnectedPeer()
    {
        Enumeration enumeration = NetworkInterface.getNetworkInterfaces();
_L2:
        if(!enumeration.hasMoreElements())
            return 0;
        Enumeration enumeration1 = ((NetworkInterface)enumeration.nextElement()).getInetAddresses();
        boolean flag;
        do
        {
            if(!enumeration1.hasMoreElements())
                continue; /* Loop/switch isn't completed */
            flag = ((InetAddress)enumeration1.nextElement()).isLoopbackAddress();
        } while(flag);
        break; /* Loop/switch isn't completed */
        if(true) goto _L2; else goto _L1
_L1:
        return 1;
        SocketException socketexception;
        socketexception;
        return -1;
    }

    public int dtvSystem_EnterStatusPeer(int i)
    {
        return 0;
    }

    public int dtvSystem_LeaveStatusPeer(int i)
    {
        return 0;
    }

    public int dtvSystem_NotifyErrorPeer(int i)
    {
        while(i == -8 || i == -10 || mBMLView.m_bSuppressNotiPopup) 
            return 0;
        mBMLView.getHandler().post(new Runnable() {

            public void run()
            {
                String s = getAppResString("unknown_error");
                Toast.makeText(mContext, s, 0).show();
            }

            final BMLPeer this$0;

            
            {
                this$0 = BMLPeer.this;
                super();
            }
        }
);
        return 0;
    }

    public void dtvXDPA_GetCurPosCancelPeer()
    {
        if(mBMLView.mPosResult == -3 || mBMLView.mPosResult == -2)
            mBMLView.mPosResult = -1;
        mBMLView.stopLocationService();
    }

    public int dtvXDPA_GetCurPosPeer(int i, BMLDtvType.TDTVCurPosInfo tdtvcurposinfo)
    {
        mBMLView.mPosCount = mBMLView.mPosCount + 162319D;
        if(mBMLView.mPosCount >= 2147483647D)
            mBMLView.mPosResult = -3;
        if(mBMLView.mPosResult == 0)
        {
            if(mBMLView.mLocation != null)
            {
                tdtvcurposinfo.fLongitude = Double.toString(mBMLView.mLocation.getLongitude());
                tdtvcurposinfo.fLatitude = Double.toString(mBMLView.mLocation.getLatitude());
                tdtvcurposinfo.fGeodeticSystem = 0;
                tdtvcurposinfo.fErrorRange = 4;
            } else
            {
                mBMLView.mPosResult = -1;
            }
            mBMLView.stopLocationService();
        }
        return mBMLView.mPosResult;
    }

    public void dtvXDPA_GetRcvCondCancelPeer()
    {
        if(mBMLView.mRcvStrength == -2 || mBMLView.mRcvStrength == -3)
            mBMLView.mRcvStrength = -1;
        mBMLView.stopTelephonyService();
    }

    public int dtvXDPA_GetRcvCondPeer()
    {
        mBMLView.mRcvCount = mBMLView.mRcvCount + 162319D;
        if(mBMLView.mTelephonyManager.getNetworkType() == 0)
        {
            mBMLView.mRcvStrength = 0;
            return mBMLView.mRcvStrength;
        }
        if(mBMLView.mRcvStrength != -2)
            mBMLView.stopTelephonyService();
        if(mBMLView.mRcvCount >= 2147483647D)
        {
            mBMLView.mRcvCount = 0.0D;
            mBMLView.mRcvStrength = -3;
            return mBMLView.mRcvStrength;
        } else
        {
            return mBMLView.mRcvStrength;
        }
    }

    public int dtvXDPA_MailToPeer(byte abyte0[], byte abyte1[], byte abyte2[])
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setType("text/csv");
        try
        {
            intent.putExtra("android.intent.extra.SUBJECT", new String(abyte0, "SJIS"));
            intent.putExtra("android.intent.extra.TEXT", new String(abyte1, "SJIS"));
            intent.putExtra("android.intent.extra.EMAIL", new String[] {
                new String(abyte2, "SJIS")
            });
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        mContext.startActivity(Intent.createChooser(intent, "Send Email"));
        return 0;
    }

    public void dtvXDPA_MailTo_CancelPeer()
    {
    }

    public int dtvXDPA_PhoneToPeer(String s)
    {
        s = new Intent("android.intent.action.CALL", Uri.parse((new StringBuilder("tel:")).append(s).toString()));
        s.addFlags(0x10000000);
        mContext.startActivity(s);
        return 0;
    }

    public void dtvXDPA_PhoneTo_CancelPeer()
    {
    }

    public int dtvXDPA_SaveExAppFilePeer(byte abyte0[], byte abyte1[], byte abyte2[], boolean flag)
    {
        return 0;
    }

    public void dtvXDPA_SaveExAppFile_CancelPeer()
    {
    }

    public int dtvXDPA_StartResidentAppPeer(byte abyte0[], int i, byte abyte1[], String as[])
    {
_L2:
        do
            return -1003;
        while(as.length < 3 || !as[1].equals("2") && !as[1].equals("1"));
        abyte0 = new Intent("android.intent.action.VIEW", Uri.parse(as[0]));
        mContext.startActivity(abyte0);
        return 0;
        abyte0 = new String(abyte0);
        if("ComBrowser".equals(abyte0))
            break MISSING_BLOCK_LABEL_19;
        if("BookmarkList".equals(abyte0))
        {
            mBMLView.BML_BookmarkInitialize();
            mBMLView.BML_CB_BookmarkStartBookmarkList();
            return 0;
        }
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void dtvXDPA_StartResidentApp_CancelPeer()
    {
    }

    public abstract int dtvXDPA_TuneWithRFPeer(int i, int j, int k, int l);

    public int dtvXDPA_WriteAddressBookInfoPeer(String s, String s1, String s2, String s3)
    {
        Intent intent = new Intent("android.intent.action.INSERT", android.provider.ContactsContract.Contacts.CONTENT_URI);
        Bundle bundle = new Bundle();
        bundle.putString("name", s);
        bundle.putString("phonetic_name", s1);
        bundle.putString("phone", s2);
        bundle.putString("phone_type", mContext.getString(android.provider.ContactsContract.CommonDataKinds.Phone.getTypeLabelResource(2)));
        bundle.putString("email", s3);
        bundle.putString("email_type", mContext.getString(android.provider.ContactsContract.CommonDataKinds.Email.getTypeLabelResource(4)));
        intent.putExtras(bundle);
        mContext.startActivity(intent);
        return 0;
    }

    public void dtvXDPA_WriteAddressBookInfo_CancelPeer()
    {
    }

    public int dtvXDPA_WriteSchInfoPeer(BMLDtvType.DTVDate dtvdate, String s, String s1, boolean flag)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(dtvdate.mYear, dtvdate.mMonth, dtvdate.mDay, dtvdate.mHour, dtvdate.mMinute, dtvdate.mSecond);
        calendar.set(14, 0);
        dtvdate = new Intent("android.intent.action.EDIT");
        dtvdate.setType("vnd.android.cursor.item/event");
        dtvdate.putExtra("beginTime", calendar.getTimeInMillis());
        dtvdate.putExtra("allDay", true);
        dtvdate.putExtra("title", s);
        dtvdate.putExtra("description", s1);
        mContext.startActivity(dtvdate);
        return 0;
    }

    public void dtvXDPA_WriteSchInfo_CancelPeer()
    {
    }

    public void fillRect(int i, int j, int k, int l, int i1)
    {
        mBMLView.fillRect(i, j, k, l, i1);
    }

    public int findFont(String s, int i, boolean flag, boolean flag1)
    {
        return mBMLView.findFont(s, i, flag, flag1);
    }

    public BMLFont getFont(int i)
    {
        return mBMLView.getFont(i);
    }

    public int getLastMouseX()
    {
        return mBMLView.getLastMouseX();
    }

    public int getLastMouseY()
    {
        return mBMLView.getLastMouseY();
    }

    public int getScreenHeight()
    {
        return mBMLView.getScreenHeight();
    }

    public int getScreenWidth()
    {
        return mBMLView.getScreenWidth();
    }

    public int getTextWidth(String s, int i)
    {
        return mBMLView.getTextWidth(s, i);
    }

    public void initView(BMLView bmlview)
    {
        mBMLView = bmlview;
    }

    public void refreshScreen()
    {
        mBMLView.refreshScreen();
    }

    private static final String TAG = "BMLPeer";
    private static final double TIMER_PERIOD = 162319D;
    private MediaPlayer mAudioPlayer;
    private Hashtable mAudioPlayerTbl;
    protected BMLView mBMLView;
    protected Context mContext;
    private int mCurAudioPlayingId;
    private BMLDtvControl mDtvControl;
    private EditText mEditInput;
    private AlertDialog mImeAlertDialog;
    private String mPackageName;
    private MediaPlayer mRomSoundPlayer;








}
