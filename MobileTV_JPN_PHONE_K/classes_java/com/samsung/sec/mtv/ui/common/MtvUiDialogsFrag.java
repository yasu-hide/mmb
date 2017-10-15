// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.*;
import android.view.Window;
import android.widget.*;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.ui.channelguide.MtvUiChangeArea;
import com.samsung.sec.mtv.utility.*;
import java.util.*;

public class MtvUiDialogsFrag extends DialogFragment
{
    public static class EPGErrorDialogFragment extends DialogFragment
    {

        public static EPGErrorDialogFragment newInstance(int i, int j)
        {
            EPGErrorDialogFragment epgerrordialogfragment = new EPGErrorDialogFragment();
            epgerrordialogfragment.myStringId = i;
            epgerrordialogfragment.myTitleID = j;
            return epgerrordialogfragment;
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
            {
                myStringId = bundle.getInt("myStringId");
                myTitleID = bundle.getInt("myTitleID");
            }
            bundle = (new android.app.AlertDialog.Builder(getActivity())).setIcon(0x7f020073).setTitle(getString(myTitleID)).setIcon(0x7f020073).setMessage(getString(myStringId)).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dismiss();
                }

                final EPGErrorDialogFragment this$0;

            
            {
                this$0 = EPGErrorDialogFragment.this;
                super();
            }
            }
).create();
            bundle.getWindow().addFlags(1024);
            bundle.setCanceledOnTouchOutside(false);
            return bundle;
        }

        public void onDismiss(DialogInterface dialoginterface)
        {
            if(getActivity() instanceof MtvUiFrag.IMtvFragEventListener)
                ((MtvUiFrag.IMtvFragEventListener)getActivity()).onFragEvent(256, Boolean.valueOf(true));
            super.onDismiss(dialoginterface);
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putInt("myStringId", myStringId);
            bundle.putInt("myTitleID", myTitleID);
            super.onSaveInstanceState(bundle);
        }

        public static final String TAG = "EPGErrorDialogFragment";
        private int myStringId;
        private int myTitleID;

        public EPGErrorDialogFragment()
        {
        }
    }

    private class ProgramNameInputFilter
        implements InputFilter
    {

        public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
        {
            k = 50 - (spanned.length() - (l - k));
            if(i != 0 || j != 0)
            {
                if(j > 0 && k <= 0)
                {
                    charsequence = getResources().getString(0x7f0702a8);
                    showToast(String.format(charsequence, new Object[] {
                        Integer.valueOf(50)
                    }));
                    return "";
                }
                if(k < j - i)
                {
                    spanned = getResources().getString(0x7f0702a8);
                    showToast(String.format(spanned, new Object[] {
                        Integer.valueOf(50)
                    }));
                    return charsequence.subSequence(i, i + k);
                }
            }
            return null;
        }

        final MtvUiDialogsFrag this$0;

        private ProgramNameInputFilter()
        {
            this$0 = MtvUiDialogsFrag.this;
            super();
        }

    }


    public MtvUiDialogsFrag()
    {
        mPreferences = null;
        mListener = null;
        dialogGravity = 17;
        mRenameString = null;
    }

    private AlertDialog createDialogByType(final int fileIndex, final Bundle reserve)
    {
        final Object area;
        final Object fileName;
        fileName = null;
        area = fileName;
        fileIndex;
        JVM INSTR tableswitch 1 20: default 104
    //                   1 122
    //                   2 285
    //                   3 394
    //                   4 492
    //                   5 899
    //                   6 964
    //                   7 1059
    //                   8 1316
    //                   9 1486
    //                   10 1556
    //                   11 1837
    //                   12 1911
    //                   13 108
    //                   14 1990
    //                   15 1626
    //                   16 1761
    //                   17 1702
    //                   18 2065
    //                   19 2137
    //                   20 582;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21
_L14:
        break; /* Loop/switch isn't completed */
_L1:
        area = fileName;
_L26:
        if(area != null)
            ((AlertDialog) (area)).setCanceledOnTouchOutside(false);
        return ((AlertDialog) (area));
_L2:
        area = MtvAreaManager.getAllAreas(getActivity());
        fileName = new CharSequence[area.length];
        fileIndex = 0;
        while(fileIndex < area.length) 
        {
            if(area[fileIndex].mAreaName.equals("Empty"))
                reserve = (new StringBuilder()).append(getString(0x7f0701e9)).append(" ").append(fileIndex + 1).toString();
            else
                reserve = MtvAreaStationInfo.getStringByResourceName(getActivity(), area[fileIndex].mAreaName);
            fileName[fileIndex] = reserve;
            fileIndex++;
        }
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0702d4).setSingleChoiceItems(((CharSequence []) (fileName)), mPreferences.getCurrentSlot(), new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MtvUtilDebug.Mid("MtvUiDialogsFrag", (new StringBuilder()).append("which button = ").append(i).append(" areaId=").append(area[i].mAreaId).toString());
                if(area[i].mAreaId == -1)
                {
                    mListener.onFragEvent(502, Integer.valueOf(i));
                } else
                {
                    MtvUtilDebug.Mid("MtvUiDialogsFrag", (new StringBuilder()).append("changeArea SlotID=").append(i).append(" - already updated").toString());
                    mListener.onFragEvent(503, Integer.valueOf(i));
                    mListener = null;
                }
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;
            final MtvArea val$area[];

            
            {
                this$0 = MtvUiDialogsFrag.this;
                area = amtvarea;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L3:
        area = new Intent(getActivity(), com/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea);
        ((Intent) (area)).putExtra("slotId", reserve.getInt("SlotID"));
        area = (new android.app.AlertDialog.Builder(getActivity())).setIcon(0x7f020073).setTitle(0x7f07021b).setMessage(0x7f070216).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                mListener.onFragEvent(501, intent);
            }

            final MtvUiDialogsFrag this$0;
            final Intent val$intent;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                intent = intent1;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L4:
        reserve = reserve.getString("title");
        area = new ArrayList(Arrays.asList(getResources().getStringArray(0x7f050009)));
        area = (String[])((List) (area)).toArray(new String[((List) (area)).size()]);
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(reserve).setItems(((CharSequence []) (area)), new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                switch(i)
                {
                default:
                    return;

                case 0: // '\0'
                    mListener.onFragEvent(255, null);
                    return;

                case 1: // '\001'
                    mListener.onFragEvent(251, null);
                    return;

                case 2: // '\002'
                    mListener.onFragEvent(261, null);
                    return;

                case 3: // '\003'
                    mListener.onFragEvent(268, null);
                    break;
                }
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L5:
        area = reserve.getString("filePath");
        fileIndex = reserve.getInt("index");
        final int fileType = reserve.getInt("fileType");
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070237).setMessage(0x7f070250).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if(fileType != 2)
                    mListener.onFragEvent(263, null);
                dialoginterface.dismiss();
                MtvFileManager.deleteTvFile(fileIndex, filePath, MtvAppPlayerOneSeg.getInstance());
                if(mPreferences.getSelectedFileIndex() != mPreferences.getLatestFileIndex()) goto _L2; else goto _L1
_L1:
                mPreferences.setLatestFileIndex(0);
_L4:
                mListener.onFragEvent(252, null);
                return;
_L2:
                if(mPreferences.getSelectedFileIndex() < mPreferences.getLatestFileIndex())
                    mPreferences.setLatestFileIndex(mPreferences.getLatestFileIndex() - 1);
                if(true) goto _L4; else goto _L3
_L3:
            }

            final MtvUiDialogsFrag this$0;
            final int val$fileIndex;
            final String val$filePath;
            final int val$fileType;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                fileType = i;
                fileIndex = j;
                filePath = s;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).show();
        continue; /* Loop/switch isn't completed */
_L21:
        final Button renameButton;
        area = reserve.getString("filePath");
        fileName = reserve.getString("fileName");
        fileIndex = reserve.getInt("index");
        renameButton = new ProgramNameInputFilter();
        reserve = new EditText(getActivity());
        if(mRenameString == null)
            mRenameString = ((String) (fileName));
        reserve.setText(mRenameString);
        reserve.setSelectAllOnFocus(true);
        reserve.setFilters(new InputFilter[] {
            renameButton
        });
        renameButton = new LinearLayout(getActivity());
        renameButton.setOrientation(1);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        layoutparams.setMargins(80, 0, 100, 0);
        renameButton.addView(reserve, layoutparams);
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0702b6).setView(renameButton).setPositiveButton(0x7f0702b6, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                boolean flag1 = false;
                mListener.onFragEvent(269, null);
                dialoginterface.dismiss();
                MtvUtilDebug.Low("MtvUiDialogsFrag", (new StringBuilder()).append(" mRenameString[").append(mRenameString).append("]").toString());
                boolean flag = flag1;
                if(mRenameString != null)
                {
                    flag = flag1;
                    if(mRenameString.getBytes().length < 120)
                    {
                        flag = flag1;
                        if(mRenameString.getBytes().length > 0)
                            flag = MtvFileManager.renameTvFile(fileIndex, filePath, MtvAppPlayerOneSeg.getInstance(), mRenameString);
                    }
                }
                if(flag)
                    MtvUtilDebug.Low("MtvUiDialogsFrag", (new StringBuilder()).append("Success in updating RenameString[").append(mRenameString).append("] ").toString());
                else
                    showToast(0x7f0702b7);
                mListener.onFragEvent(270, null);
            }

            final MtvUiDialogsFrag this$0;
            final int val$fileIndex;
            final String val$filePath;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                fileIndex = i;
                filePath = s;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).show();
        renameButton = ((AlertDialog) (area)).getButton(-1);
        MtvUtilDebug.Low("MtvUiDialogsFrag", (new StringBuilder()).append("At initialize mRenameString[").append(mRenameString).append("] fileName[").append(((String) (fileName))).append("]").toString());
        if(!TextUtils.isEmpty(mRenameString) && !mRenameString.equals(fileName)) goto _L23; else goto _L22
_L22:
        if(renameButton != null)
            renameButton.setEnabled(false);
_L24:
        reserve.addTextChangedListener(new TextWatcher() {

            public void afterTextChanged(Editable editable)
            {
                mRenameString = editable.toString().trim();
                if(TextUtils.isEmpty(mRenameString) || mRenameString.equals(fileName))
                {
                    if(renameButton != null)
                        renameButton.setEnabled(false);
                } else
                if(renameButton != null)
                {
                    renameButton.setEnabled(true);
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            final MtvUiDialogsFrag this$0;
            final String val$fileName;
            final Button val$renameButton;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                fileName = s;
                renameButton = button;
                super();
            }
        }
);
        continue; /* Loop/switch isn't completed */
_L23:
        if(renameButton != null)
            renameButton.setEnabled(true);
        if(true) goto _L24; else goto _L6
_L6:
        area = reserve.getString("title");
        fileIndex = reserve.getInt("db_id");
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(((CharSequence) (area))).setItems(0x7f05000d, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                switch(i)
                {
                default:
                    return;

                case 0: // '\0'
                    mListener.onFragEvent(253, Integer.valueOf(id));
                    break;
                }
            }

            final MtvUiDialogsFrag this$0;
            final int val$id;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                id = i;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L7:
        fileIndex = reserve.getInt("db_id");
        reserve = MtvReservationManager.find(getActivity(), fileIndex);
        area = fileName;
        if(reserve != null)
        {
            area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070237).setMessage(0x7f0702ce).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    MtvUtilSetReservationAlarm.setReservationAlarm(getActivity(), reserve.mTimeStart, false, true);
                }

                final MtvUiDialogsFrag this$0;
                final MtvReservation val$reserve;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                reserve = mtvreservation;
                super();
            }
            }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                }

                final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
            }
).create();
            ((AlertDialog) (area)).getWindow().addFlags(1024);
        }
        continue; /* Loop/switch isn't completed */
_L8:
        area = reserve.getString("dialog_msg");
        fileIndex = reserve.getInt("reserve_type");
        final boolean isbRecordStop = reserve.getBoolean("reserve_end_exit");
        reserve = MtvReservationManager.find(getActivity(), mPreferences.getReservationAlertID());
        if(fileIndex == 0 && isbRecordStop)
            isbRecordStop = true;
        else
            isbRecordStop = false;
        MtvUtilDebug.Mid("MtvUiDialogsFrag", (new StringBuilder()).append("mReservationType   :").append(fileIndex).append("isbRecordStop ").append(isbRecordStop).toString());
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0701e0).setMessage(((CharSequence) (area))).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(254, getArguments());
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if(end_reserve != null)
                {
                    if(end_reserve.mPgmStatus == 6)
                        MtvReservationManager.UpdateStatus(getActivity(), end_reserve, 1);
                    else
                        MtvUtilDebug.Low("MtvUiDialogsFrag", "Picture not yet started ah ? What you do now?!!! Reservation not Updated.");
                } else
                {
                    MtvUtilDebug.Low("MtvUiDialogsFrag", "reserve is NULL, then what are you ending!!!");
                }
                if(isbRecordStop)
                    mListener.onFragEvent(230, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;
            final MtvReservation val$end_reserve;
            final boolean val$isbRecordStop;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                end_reserve = mtvreservation;
                isbRecordStop = flag;
                super();
            }
        }
).create();
        if(mPreferences.isSViewCoverClosed())
        {
            dialogGravity = 48;
            MtvUtilDebug.High("MtvUiDialogsFrag", (new StringBuilder()).append("dialogGravity TOP ").append(dialogGravity).toString());
        } else
        {
            dialogGravity = 17;
            MtvUtilDebug.High("MtvUiDialogsFrag", (new StringBuilder()).append("dialogGravity CENTER ").append(dialogGravity).toString());
        }
        ((AlertDialog) (area)).getWindow().setGravity(dialogGravity);
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L9:
        fileIndex = reserve.getInt("mSlotID");
        area = reserve.getIntArray("mSlotMap");
        reserve = "";
        if(area != null)
        {
            reserve = MtvAreaStationInfo.getStringByResourceName(getActivity(), MtvAreaStationInfo.AREA_LOCAL[area[0]][area[1]][area[2]]);
            area = (new StringBuilder()).append(getString(0x7f0701e9)).append(" ").append(fileIndex + 1).toString();
            reserve = String.format(getString(0x7f070217), new Object[] {
                area, reserve
            });
        }
        area = (new android.app.AlertDialog.Builder(getActivity())).setIcon(0x7f020073).setTitle(0x7f07021b).setMessage(reserve).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L10:
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070249).setMessage(0x7f070255).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(256, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L11:
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070249).setMessage(0x7f0702c2).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(257, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L16:
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070249).setMessage(0x7f07024a).setIcon(0x7f020073).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(256, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L18:
        area = new ProgressDialog(getActivity());
        ((ProgressDialog) (area)).setTitle(0x7f0701e6);
        ((ProgressDialog) (area)).setMessage(getString(0x7f0701f5));
        ((ProgressDialog) (area)).setCancelable(false);
        ((ProgressDialog) (area)).setIndeterminate(true);
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L17:
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070249).setMessage(0x7f0702c3).setIcon(0x7f020073).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(257, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0701e0);
                if(MtvFeatures.hasExternalAntenna())
                    i = 0x7f0701e2;
                else
                    i = 0x7f0701e1;
                dialoginterface.setMessage(i).setIcon(0x7f020073).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                    }

                    final _cls22 this$1;

            
            {
                this$1 = _cls22.this;
                super();
            }
                }
).create().show();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L12:
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0702e3).setMessage(getString(0x7f0702c0)).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MtvUtilDebug.Low("MtvUiDialogsFrag", (new StringBuilder()).append("MtvUiDialogsFrag isVisible?").append(isVisible()).toString());
                mListener.onFragEvent(258, null);
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                dialoginterface = new Bundle();
                dialoginterface.putInt("dialogType", 12);
                MtvUiDialogsFrag.newInstance(dialoginterface).show(getFragmentManager(), "signal_alert_terminate");
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L13:
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f07028c).setMessage(getString(0x7f07028b)).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(256, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(258, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).show();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L15:
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070237).setMessage(0x7f070250).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(260, null);
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).show();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L19:
        fileIndex = reserve.getInt("itemListIndex");
        reserve = reserve.getCharSequenceArray("channelNameList");
        area = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0702d1).setSingleChoiceItems(reserve, fileIndex, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                mListener.onFragEvent(267, Integer.valueOf(i));
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, null).show();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        continue; /* Loop/switch isn't completed */
_L20:
        reserve = getString(0x7f0702fe);
        area = getString(0x7f0702fd);
        android.app.AlertDialog.Builder builder;
        android.content.DialogInterface.OnClickListener onclicklistener;
        if(mPreferences.getAutoPlayNext())
            fileIndex = 0;
        else
            fileIndex = 1;
        builder = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0701ee);
        onclicklistener = new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                i;
                JVM INSTR tableswitch 0 1: default 24
            //                           0 31
            //                           1 45;
                   goto _L1 _L2 _L3
_L1:
                dialoginterface.dismiss();
                return;
_L2:
                mPreferences.setAutoPlayNext(true);
                continue; /* Loop/switch isn't completed */
_L3:
                mPreferences.setAutoPlayNext(false);
                if(true) goto _L1; else goto _L4
_L4:
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
;
        area = builder.setSingleChoiceItems(new String[] {
            reserve, area
        }, fileIndex, onclicklistener).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiDialogsFrag this$0;

            
            {
                this$0 = MtvUiDialogsFrag.this;
                super();
            }
        }
).create();
        ((AlertDialog) (area)).getWindow().addFlags(1024);
        if(true) goto _L26; else goto _L25
_L25:
    }

    public static MtvUiDialogsFrag newInstance(Bundle bundle)
    {
        MtvUiDialogsFrag mtvuidialogsfrag = new MtvUiDialogsFrag();
        mtvuidialogsfrag.setArguments(bundle);
        return mtvuidialogsfrag;
    }

    public static void removeDialog(FragmentManager fragmentmanager, String s)
    {
        if(s != null && fragmentmanager != null)
        {
            FragmentTransaction fragmenttransaction = fragmentmanager.beginTransaction();
            fragmentmanager = fragmentmanager.findFragmentByTag(s);
            if(fragmentmanager != null)
            {
                fragmenttransaction.remove(fragmentmanager);
                fragmenttransaction.commit();
            }
        }
    }

    private void showToast(int i)
    {
        if(mToast == null)
            mToast = Toast.makeText(getActivity(), null, 0);
        mToast.setText(getActivity().getString(i));
        mToast.show();
    }

    private void showToast(String s)
    {
        if(mToast == null)
            mToast = Toast.makeText(getActivity(), null, 0);
        mToast.setText(s);
        mToast.show();
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

    public void onCancel(DialogInterface dialoginterface)
    {
        super.onCancel(dialoginterface);
        switch(getArguments().getInt("dialogType"))
        {
        default:
            return;

        case 11: // '\013'
            dialoginterface = new Bundle();
            dialoginterface.putInt("dialogType", 12);
            newInstance(dialoginterface).show(getFragmentManager(), "signal_alert_terminate");
            return;

        case 12: // '\f'
            mListener.onFragEvent(258, null);
            break;
        }
        dialoginterface.dismiss();
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        if(bundle != null)
            mRenameString = bundle.getString("mRenameString");
        mPreferences = new MtvPreferences(getActivity().getApplicationContext());
        mListener = (MtvUiFrag.IMtvFragEventListener)getActivity();
        Bundle bundle1 = getArguments();
        bundle = null;
        if(bundle1 != null)
            bundle = createDialogByType(bundle1.getInt("dialogType"), bundle1);
        return bundle;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        bundle.putString("mRenameString", mRenameString);
        super.onSaveInstanceState(bundle);
    }

    private static final int MAX_ALLOWED_PROGRAM_NAME_LENGTH = 50;
    public static final String MTV_UI_DIALOG_AREA_SLOT_ID = "SlotID";
    public static final String MTV_UI_DIALOG_AUTO_PLAY_NEXT = "auto_play_next";
    public static final String MTV_UI_DIALOG_CHANGE_AREA_COMPLETE_STRING = "change_area_complete";
    public static final String MTV_UI_DIALOG_EXIT_CONFIRMATION = "exit_confirmation";
    public static final String MTV_UI_DIALOG_EXIT_CONFIRMATION_ANTENNA = "exit_confirmation_antenna";
    public static final String MTV_UI_DIALOG_MESSAGE = "dialog_msg";
    public static final String MTV_UI_DIALOG_RECORD_CONTINUATION = "record_confirmation";
    public static final String MTV_UI_DIALOG_RENAME = "rename_tvfile";
    public static final String MTV_UI_DIALOG_RESERVATION_DELETE_ID = "db_id";
    public static final String MTV_UI_DIALOG_RESERVATION_END_TAG = "reserve_end_dialog";
    public static final String MTV_UI_DIALOG_RESERVATION_TYPE = "reserve_type";
    public static final String MTV_UI_DIALOG_RESERVE_END_EXIT = "reserve_end_exit";
    public static final String MTV_UI_DIALOG_SAVE_AND_EXIT_CONFIRMATION = "save_exit_confirmation";
    public static final String MTV_UI_DIALOG_SAVE_AND_EXIT_CONFIRMATION_ANTENNA = "save_exit_confirmation_antenna";
    public static final String MTV_UI_DIALOG_SHOW_CHANNEL_LIST = "show_channel_list";
    public static final String MTV_UI_DIALOG_SIGNAL_ALERT_RETRY_EXIT = "signal_alert_retry_exit";
    public static final String MTV_UI_DIALOG_SIGNAL_ALERT_TERMINATE = "signal_alert_terminate";
    public static final String MTV_UI_DIALOG_TITLE = "title";
    public static final String MTV_UI_DIALOG_TVLIST_DELETE = "delete_tvfile";
    public static final String MTV_UI_DIALOG_TV_FILES_DELETE_OK_CANCEL = "tv_files_delete_ok_cancel";
    public static final String MTV_UI_DIALOG_TYPE = "dialogType";
    public static final int MTV_UI_DIALOG_TYPE_AUOT_PLAY_NEXT = 19;
    public static final int MTV_UI_DIALOG_TYPE_CHANGE_AREA = 1;
    public static final int MTV_UI_DIALOG_TYPE_CHANGE_AREA_COMPLETE = 8;
    public static final int MTV_UI_DIALOG_TYPE_CHANGE_SETTING_DIALOG = 2;
    public static final int MTV_UI_DIALOG_TYPE_EXIT_CONFIRMATION = 9;
    public static final int MTV_UI_DIALOG_TYPE_EXIT_CONFIRMATION_ANTENNA = 15;
    public static final int MTV_UI_DIALOG_TYPE_RECORD_CONTINUATION = 17;
    public static final int MTV_UI_DIALOG_TYPE_RENAME = 20;
    public static final int MTV_UI_DIALOG_TYPE_RESERVE_END = 7;
    public static final int MTV_UI_DIALOG_TYPE_RESERVE_LIST_DELETE = 6;
    public static final int MTV_UI_DIALOG_TYPE_RESERVE_LIST_LONGCLICK = 5;
    public static int MTV_UI_DIALOG_TYPE_RESET = 0;
    public static final int MTV_UI_DIALOG_TYPE_SAVE_AND_EXIT_CONFIRMATION = 10;
    public static final int MTV_UI_DIALOG_TYPE_SAVE_AND_EXIT_CONFIRMATION_ANTENNA = 16;
    public static final int MTV_UI_DIALOG_TYPE_SHOW_CHANNEL_LIST = 18;
    public static final int MTV_UI_DIALOG_TYPE_SIGNAL_ALERT_RETRY_EXIT = 11;
    public static final int MTV_UI_DIALOG_TYPE_SIGNAL_ALERT_TERMINATE = 12;
    public static final int MTV_UI_DIALOG_TYPE_TVLIST_DELETE = 4;
    public static final int MTV_UI_DIALOG_TYPE_TVLIST_LONGCLICK = 3;
    public static final int MTV_UI_DIALOG_TYPE_TV_FILES_DELETE_OK_CANCEL = 14;
    public static final String MTV_UI_TVLIST_FILEPATH = "filePath";
    public static final String MTV_UI_TVLIST_FILE_NAME = "fileName";
    public static final String MTV_UI_TVLIST_FILE_TYPE = "fileType";
    public static final String MTV_UI_TVLIST_INDEX = "index";
    public static final String MTV_UI_TVLIST_LONGCLICK_TITLE = "title";
    protected static final String TAG = "MtvUiDialogsFrag";
    private int dialogGravity;
    private MtvUiFrag.IMtvFragEventListener mListener;
    private MtvPreferences mPreferences;
    private String mRenameString;
    private Toast mToast;

    static 
    {
        MTV_UI_DIALOG_TYPE_RESET = 0;
    }



/*
    static MtvUiFrag.IMtvFragEventListener access$002(MtvUiDialogsFrag mtvuidialogsfrag, MtvUiFrag.IMtvFragEventListener imtvfrageventlistener)
    {
        mtvuidialogsfrag.mListener = imtvfrageventlistener;
        return imtvfrageventlistener;
    }

*/




/*
    static String access$302(MtvUiDialogsFrag mtvuidialogsfrag, String s)
    {
        mtvuidialogsfrag.mRenameString = s;
        return s;
    }

*/


}
