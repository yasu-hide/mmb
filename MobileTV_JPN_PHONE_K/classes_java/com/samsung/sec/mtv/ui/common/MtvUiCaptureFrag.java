// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegChannel;
import android.broadcast.helper.types.MtvOneSegProgram;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.provider.MtvFile;
import com.samsung.sec.mtv.provider.MtvFileManager;
import com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer;
import com.samsung.sec.mtv.utility.MtvPreferences;
import com.samsung.sec.mtv.utility.MtvUtilMemoryStatus;
import java.util.Date;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiFrag

public class MtvUiCaptureFrag extends MtvUiFrag
{

    public MtvUiCaptureFrag()
    {
    }

    private void captureAutoSave()
    {
        if(!MtvUtilMemoryStatus.isExternalMemoryAvailable() && !MtvUtilMemoryStatus.isInternalMemoryAvailable())
        {
            saved_file_toast = Toast.makeText(mContext, 0x7f0702ee, 0);
            saved_file_toast.show();
        } else
        {
            boolean flag1 = false;
            Bitmap bitmap = mReceivedImage.getBitmap();
            boolean flag = flag1;
            if(bitmap != null)
                if(!saveFile(bitmap))
                {
                    MtvUtilDebug.Error("MtvUiCaptureFrag", "Failed to save the file");
                    flag = flag1;
                } else
                {
                    flag = true;
                }
            if(flag)
            {
                saved_file_toast = Toast.makeText(mContext, 0x7f0702c5, 0);
                saved_file_toast.show();
                return;
            }
        }
    }

    private void initializeUI()
    {
        MtvUtilDebug.Low("MtvUiCaptureFrag", "initializeUI");
        mPreferences = new MtvPreferences(getActivity().getApplicationContext());
        mCaptureImgView = (ImageView)mLayoutView.findViewById(0x7f0a007d);
        mCaptureImgText = (TextView)mLayoutView.findViewById(0x7f0a007f);
        mCaptureRingView = (ImageView)mLayoutView.findViewById(0x7f0a007e);
        mCaptureImgText.setVisibility(8);
        mCaptureRingView.setVisibility(8);
        mCaptureImgView.setBackground(null);
        mCaptureImgView.setImageDrawable(null);
        mCaptureRingView.setImageDrawable(null);
    }

    private boolean saveFile(Bitmap bitmap)
    {
        boolean flag = false;
        Object obj = (MtvUiLivePlayer)getActivity();
        MtvUtilDebug.Low("MtvUiCaptureFrag", "saveFile");
        if(bitmap != null)
        {
            MtvFile mtvfile = new MtvFile();
            int j = mPreferences.getSaveToStorage();
            int i = j;
            if(j == 0)
            {
                i = j;
                if(!MtvUtilMemoryStatus.isExternalMemoryAvailable())
                    i = 1;
            }
            MtvOneSegChannel amtvonesegchannel[] = ((MtvUiLivePlayer) (obj)).getChannel();
            if(amtvonesegchannel != null)
                mtvfile.setChannelName(amtvonesegchannel[0].getServName());
            obj = ((MtvUiLivePlayer) (obj)).getCurrentProgramDetails();
            if(obj != null)
                mtvfile.setProgramName(((MtvOneSegProgram) (obj)).getProgName());
            mtvfile.setFileFormat(2);
            mtvfile.setCreationTime(new Date());
            MtvFileManager.saveFile(i, bitmap, mtvfile);
            mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse((new StringBuilder()).append("file://").append(mtvfile.getFilePath()).toString())));
            flag = true;
        }
        return flag;
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        try
        {
            mListener = (MtvUiFrag.IMtvFragEventListener)activity;
            return;
        }
        catch(ClassCastException classcastexception)
        {
            throw new ClassCastException((new StringBuilder()).append(activity.toString()).append(" must implement IMtvFragEventListener").toString());
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        mContext = getActivity().getApplicationContext();
        mLayoutView = layoutinflater.inflate(0x7f030018, null);
        initializeUI();
        return mLayoutView;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
    }

    public void onStart()
    {
        super.onStart();
    }

    public void onStop()
    {
        super.onStop();
    }

    public void onUpdate(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiCaptureFrag", (new StringBuilder()).append("onUpdate: what[").append(i).append("]").toString());
        i;
        JVM INSTR tableswitch 110 110: default 52
    //                   110 53;
           goto _L1 _L2
_L1:
        return;
_L2:
        this;
        JVM INSTR monitorenter ;
        MtvUtilDebug.Low("MtvUiCaptureFrag", "onUpdate: inside synchronized block");
        mReceivedImage = new BitmapDrawable(getResources(), (Bitmap)obj);
        mCaptureImgView.setBackground(mReceivedImage);
        mCaptureImgText.setVisibility(0);
        mCaptureRingView.setVisibility(0);
        if(obj == null) goto _L4; else goto _L3
_L3:
        captureAutoSave();
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L4:
        mListener.onFragEvent(229, null);
        saved_file_toast = Toast.makeText(mContext, 0x7f070211, 0);
        saved_file_toast.show();
          goto _L5
    }

    private static final String TAG = "MtvUiCaptureFrag";
    public static Toast saved_file_toast = null;
    private TextView mCaptureImgText;
    private ImageView mCaptureImgView;
    private ImageView mCaptureRingView;
    private Context mContext;
    private View mLayoutView;
    private MtvUiFrag.IMtvFragEventListener mListener;
    private MtvPreferences mPreferences;
    BitmapDrawable mReceivedImage;

}
