// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.*;
import android.text.format.DateFormat;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContext;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContextManager;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.utility.*;
import java.io.*;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvBaseActivity, MtvUiDialogsFrag

public class MtvUiRemoveList extends MtvBaseActivity
    implements android.view.View.OnClickListener, MtvUiFrag.IMtvFragEventListener
{
    private class MtvFileAdapter extends ArrayAdapter
    {

        public int getCount()
        {
            if(mMtvFiles != null && mMtvFiles.length > 0)
                return mMtvFiles.length;
            else
                return 0;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            view = viewgroup;
            if(viewgroup == null)
                view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030038, null);
            mPreImageView = (ImageView)view.findViewById(0x7f0a0135);
            mPlayImageView = (ImageView)view.findViewById(0x7f0a0136);
            MtvFile mtvfile = mMtvFiles[i];
            if(mtvfile != null)
            {
                mSelectAllText.setVisibility(0);
                mAllCheck.setVisibility(0);
                TextView textview2 = (TextView)view.findViewById(0x7f0a013a);
                TextView textview = (TextView)view.findViewById(0x7f0a013b);
                TextView textview1 = (TextView)view.findViewById(0x7f0a013c);
                viewgroup = (CheckBox)view.findViewById(0x7f0a013d);
                viewgroup.setVisibility(0);
                viewgroup.setChecked(mItemsCheckedState[i]);
                viewgroup.setFocusable(false);
                viewgroup.setClickable(false);
                if(mtvfile.getProgramName() == null || mtvfile.getProgramName().isEmpty() || mtvfile.getProgramName().equals("No Program Name"))
                    viewgroup = getResources().getString(0x7f07028a);
                else
                    viewgroup = mtvfile.getProgramName();
                textview2.setText(viewgroup);
                if(DateFormat.is24HourFormat(getApplicationContext()))
                    viewgroup = (new SimpleDateFormat("M/d (EEE) H:mm")).format(mtvfile.getCreationTime());
                else
                    viewgroup = (new SimpleDateFormat("M/d (EEE) h:mm a")).format(mtvfile.getCreationTime());
                if(getResources().getConfiguration().orientation == 1)
                {
                    textview.setText(viewgroup);
                    textview1.setText(mtvfile.getChannelName());
                } else
                {
                    textview.setText((new StringBuilder()).append(viewgroup).append(" ").append(mtvfile.getChannelName()).toString());
                }
                view.setTag(mtvfile);
                setFileInfo(mtvfile);
                return view;
            } else
            {
                mSelectAllText.setVisibility(4);
                mAllCheck.setVisibility(4);
                return view;
            }
        }

        public void setChecked(int i, boolean flag)
        {
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mMtvFiles.length);
        }

        public void toggle(int i)
        {
            boolean flag;
            if(getItemCheckedState(i))
                flag = false;
            else
                flag = true;
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mMtvFiles.length);
        }

        final MtvUiRemoveList this$0;

        public MtvFileAdapter(Context context, int i)
        {
            this$0 = MtvUiRemoveList.this;
            super(context, i);
        }
    }

    public class ReserveAdapter extends ArrayAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            view = viewgroup;
            if(viewgroup == null)
                view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030034, null);
            startTime = (Long)mReserveList.get(i);
            if(startTime != null)
            {
                mSelectAllText.setVisibility(0);
                mAllCheck.setVisibility(0);
                MtvReservation mtvreservation = MtvReservationManager.find(mContext, startTime.longValue(), new boolean[0]);
                if(mtvreservation != null)
                {
                    String s;
                    MtvChannel mtvchannel;
                    if(DateFormat.is24HourFormat(mContext.getApplicationContext()))
                    {
                        viewgroup = (new StringBuilder()).append("").append((new SimpleDateFormat("M/d H:mm")).format(new Date(mtvreservation.mTimeStart))).toString();
                        viewgroup = (new StringBuilder()).append(viewgroup).append(" - ").append((new SimpleDateFormat("H:mm")).format(new Date(mtvreservation.mTimeEnd))).toString();
                    } else
                    {
                        viewgroup = (new StringBuilder()).append("").append((new SimpleDateFormat("M/d h:mm a")).format(new Date(mtvreservation.mTimeStart))).toString();
                        viewgroup = (new StringBuilder()).append(viewgroup).append(" - ").append((new SimpleDateFormat("h:mm a")).format(new Date(mtvreservation.mTimeEnd))).toString();
                    }
                    s = "";
                    mtvchannel = MtvChannelManager.findByVChannel(getApplicationContext(), mtvreservation.mVch, mtvreservation.mPgmServiceID);
                    if(mtvchannel != null)
                        s = mtvchannel.mChannelName;
                    else
                        MtvUtilDebug.Mid("MtvUiRemoveList", "channel is null");
                    ((TextView)view.findViewById(0x7f0a012d)).setText((new StringBuilder()).append(viewgroup).append(" ").append(s).toString());
                    ((TextView)view.findViewById(0x7f0a012c)).setText(mtvreservation.mPgmName);
                    ((ImageView)view.findViewById(0x7f0a0074)).setImageDrawable(mIcon[mtvreservation.mPgmType][selectStatusIconIndex(mtvreservation)]);
                }
                check = (CheckBox)view.findViewById(0x7f0a006a).findViewById(0x7f0a012e);
                check.setVisibility(0);
                check.setChecked(mItemsCheckedState[i]);
                check.setFocusable(false);
                check.setClickable(false);
                return view;
            } else
            {
                mSelectAllText.setVisibility(4);
                mAllCheck.setVisibility(4);
                return view;
            }
        }

        public int selectStatusIconIndex(MtvReservation mtvreservation)
        {
            if(mtvreservation.mPgmStatus == 0 && mtvreservation.mTimeStart < System.currentTimeMillis())
                return 1;
            return mtvreservation.mPgmStatus != 0 && mtvreservation.mPgmStatus != 6 && mtvreservation.mPgmStatus != 1 ? 1 : 0;
        }

        public void setChecked(int i, boolean flag)
        {
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mRemove_Reserve.length);
        }

        public void toggle(int i)
        {
            boolean flag;
            if(getItemCheckedState(i))
                flag = false;
            else
                flag = true;
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mRemove_Reserve.length);
        }

        private static final int ICON_FAIL = 1;
        private static final int ICON_NORMAL = 0;
        private CheckBox check;
        private Context mContext;
        private final Drawable mIcon[][] = (Drawable[][])Array.newInstance(android/graphics/drawable/Drawable, new int[] {
            2, 2
        });
        private Long startTime;
        final MtvUiRemoveList this$0;

        public ReserveAdapter(Context context, int i, ArrayList arraylist)
        {
            this$0 = MtvUiRemoveList.this;
            super(context, i, arraylist);
            mContext = context;
            mIcon[1][0] = context.getResources().getDrawable(0x7f02008d);
            mIcon[0][0] = context.getResources().getDrawable(0x7f02008a);
            mIcon[1][1] = context.getResources().getDrawable(0x7f02008e);
            mIcon[0][1] = context.getResources().getDrawable(0x7f02008b);
        }
    }

    public class StationDataAdapter extends ArrayAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            view = viewgroup;
            if(viewgroup == null)
                view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030010, null);
            viewgroup = mTitleName[i];
            mCount = MtvBMLManager.deleteStationData_GetNetworkItemCount(i);
            mNameText = (TextView)view.findViewById(0x7f0a005c);
            mCountText = (TextView)view.findViewById(0x7f0a005d);
            check = (CheckBox)view.findViewById(0x7f0a005e);
            check.setVisibility(0);
            check.setChecked(mItemsCheckedState[i]);
            mNameText.setSelected(mItemsCheckedState[i]);
            mCountText.setSelected(mItemsCheckedState[i]);
            check.setFocusable(false);
            check.setClickable(false);
            mNameText.setText(viewgroup);
            mCountText.setVisibility(8);
            mCountText.setText((new StringBuilder()).append(": ").append(mCount).toString());
            return view;
        }

        public void setChecked(int i, boolean flag)
        {
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mDeleteStationData.length);
        }

        public void toggle(int i)
        {
            boolean flag;
            if(getItemCheckedState(i))
                flag = false;
            else
                flag = true;
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mDeleteStationData.length);
        }

        private CheckBox check;
        private int mCount;
        private TextView mCountText;
        private TextView mNameText;
        private String mTitleName[];
        final MtvUiRemoveList this$0;

        public StationDataAdapter(Context context, int i)
        {
            this$0 = MtvUiRemoveList.this;
            super(context, i);
        }

        public StationDataAdapter(Context context, int i, String as[])
        {
            this$0 = MtvUiRemoveList.this;
            super(context, i, as);
            mTitleName = as;
        }
    }

    private class TvLinkAdapter extends ArrayAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = view;
            view = viewgroup;
            if(viewgroup == null)
                view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030013, null);
            viewgroup = mMtvLinks[i];
            if(viewgroup == null) goto _L2; else goto _L1
_L1:
            ImageView imageview;
            TextView textview;
            mSelectAllText.setVisibility(0);
            mAllCheck.setVisibility(0);
            imageview = (ImageView)view.findViewById(0x7f0a0068);
            textview = (TextView)view.findViewById(0x7f0a0069);
            view.findViewById(0x7f0a006a).setVisibility(0);
            check = (CheckBox)view.findViewById(0x7f0a006b);
            check.setChecked(mItemsCheckedState[i]);
            check.setFocusable(false);
            check.setClickable(false);
            viewgroup.getCproBMType();
            JVM INSTR tableswitch 0 4: default 176
        //                       0 210
        //                       1 220
        //                       2 220
        //                       3 230
        //                       4 230;
               goto _L3 _L4 _L5 _L5 _L6 _L6
_L3:
            textview.setText((new StringBuilder()).append(" ").append(viewgroup.getTitle()).toString());
            view.setTag(viewgroup);
            return view;
_L4:
            imageview.setImageResource(0x7f020088);
            continue; /* Loop/switch isn't completed */
_L5:
            imageview.setImageResource(0x7f020089);
            continue; /* Loop/switch isn't completed */
_L6:
            imageview.setImageResource(0x7f02008f);
            if(true) goto _L3; else goto _L2
_L2:
            mSelectAllText.setVisibility(4);
            mAllCheck.setVisibility(4);
            return view;
        }

        public void setChecked(int i, boolean flag)
        {
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mLinks.length);
        }

        public void toggle(int i)
        {
            boolean flag;
            if(getItemCheckedState(i))
                flag = false;
            else
                flag = true;
            setItemCheckedState(i, flag);
            mListView.setItemChecked(i, flag);
            notifyDataSetChanged();
            checkItemCount(mLinks.length);
        }

        private CheckBox check;
        private MtvCProBMInfo mMtvLinks[];
        final MtvUiRemoveList this$0;

        public TvLinkAdapter(Context context, int i)
        {
            this$0 = MtvUiRemoveList.this;
            super(context, i);
        }

        public TvLinkAdapter(Context context, int i, MtvCProBMInfo amtvcprobminfo[])
        {
            this$0 = MtvUiRemoveList.this;
            super(context, i, amtvcprobminfo);
            mMtvLinks = amtvcprobminfo;
        }
    }


    public MtvUiRemoveList()
    {
        mReserveList = new ArrayList();
        mMtvFiles = null;
        mLinks = null;
        mListView = null;
        mAllCheck = null;
        mMtvAppPlaybackContext = null;
        mProgressDialog = null;
        mDeleteStationData = new String[8];
        mStationDataAdapter = null;
        mDeleteStationDataListUp = null;
        mTVFilesCount = 0;
        mMtvPlayerOneSeg = null;
        cancelLayout = null;
        doneLayout = null;
        actionBarView = null;
        mUiHandler = new Handler() {

            public void handleMessage(Message message)
            {
                MtvUtilDebug.Low("MtvUiRemoveList", (new StringBuilder()).append("mUiHandler.handleMessage what=").append(message.what).toString());
                switch(message.what)
                {
                default:
                    return;

                case 0: // '\0'
                    mProgressDialog = new ProgressDialog(MtvUiRemoveList.this);
                    mProgressDialog.setTitle(0x7f070237);
                    mProgressDialog.setMessage(getString(0x7f0702a6));
                    mProgressDialog.setIndeterminate(true);
                    mProgressDialog.setCancelable(false);
                    mProgressDialog.setCanceledOnTouchOutside(false);
                    mProgressDialog.show();
                    return;

                case 1: // '\001'
                    finish();
                    break;
                }
            }

            final MtvUiRemoveList this$0;

            
            {
                this$0 = MtvUiRemoveList.this;
                super();
            }
        }
;
        mIntentReceiver = new BroadcastReceiver() ;
    }

    private void checkRemoveItemType()
    {
        mRemoveListType;
        JVM INSTR tableswitch 100 104: default 40
    //                   100 169
    //                   101 41
    //                   102 51
    //                   103 68
    //                   104 119;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L3:
        checkItemCount(mRemove_Channel.length);
        return;
_L4:
        if(mRemove_Reserve != null)
        {
            checkItemCount(mRemove_Reserve.length);
            return;
        }
          goto _L1
_L5:
        if(mMtvFiles == null)
            mMtvFiles = MtvFileManager.getAvailableTVRecFilesEx(false);
        if(mMtvFiles != null && mMtvFiles.length > 0 && !sIsDeleting)
        {
            checkItemCount(mMtvFiles.length);
            return;
        } else
        {
            finish();
            return;
        }
_L6:
        if(mLinks == null)
            mLinks = MtvBMLManager.getAvailableCProBMInfoAll();
        if(mLinks != null && mLinks.length > 0 && !sIsDeleting)
        {
            checkItemCount(mLinks.length);
            return;
        } else
        {
            finish();
            return;
        }
_L2:
        if(mDeleteStationData != null && mDeleteStationData.length > 0 && !sIsDeleting)
        {
            checkItemCount(mDeleteStationData.length);
            return;
        } else
        {
            finish();
            return;
        }
    }

    private void clearDeleteFileDialog()
    {
        MtvUtilDebug.Mid("MtvUiRemoveList", "clearDeleteFileDialog  called..");
        mUiHandler.sendEmptyMessage(1);
        requestSystemKeyEvent(3, false);
        requestSystemKeyEvent(4, false);
    }

    private void createTabList(int i)
    {
        i;
        JVM INSTR tableswitch 100 104: default 36
    //                   100 377
    //                   101 36
    //                   102 579
    //                   103 37
    //                   104 205;
           goto _L1 _L2 _L1 _L3 _L4 _L5
_L1:
        return;
_L4:
        if(mMtvFiles == null && !sIsDeleting)
            mMtvFiles = MtvFileManager.getAvailableTVRecFilesEx(false);
        if(mMtvFiles != null && mMtvFiles.length != 0)
        {
            mListView.setVisibility(0);
            if(mItemsCheckedState == null)
                mItemsCheckedState = new boolean[mMtvFiles.length];
            mTvFileAdapter = new MtvFileAdapter(this, 0x7f030038);
            mListView.setAdapter(mTvFileAdapter);
            mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                public void onItemClick(AdapterView adapterview, View view, int j, long l)
                {
                    mTvFileAdapter.toggle(j);
                }

                final MtvUiRemoveList this$0;

            
            {
                this$0 = MtvUiRemoveList.this;
                super();
            }
            }
);
            checkItemCount(mMtvFiles.length);
            return;
        }
        mTvFileAdapter = new MtvFileAdapter(this, 0x7f030038);
        mListView.setAdapter(mTvFileAdapter);
        mAllCheck.setClickable(false);
        if(doneLayout != null)
        {
            doneLayout.setEnabled(false);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if(mLinks == null)
            mLinks = MtvBMLManager.getAvailableCProBMInfoAll();
        if(mLinks != null && mLinks.length != 0)
        {
            MtvUtilDebug.Mid("MtvUiRemoveList", "mLinks is not null");
            mListView.setVisibility(0);
            if(mItemsCheckedState == null)
                mItemsCheckedState = new boolean[mLinks.length];
            mLinkAdapter = new TvLinkAdapter(this, 0x7f030013, mLinks);
            mListView.setAdapter(mLinkAdapter);
            mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                public void onItemClick(AdapterView adapterview, View view, int j, long l)
                {
                    mLinkAdapter.toggle(j);
                }

                final MtvUiRemoveList this$0;

            
            {
                this$0 = MtvUiRemoveList.this;
                super();
            }
            }
);
            return;
        }
        MtvUtilDebug.Mid("MtvUiRemoveList", "mLinks is null");
        mLinkAdapter = new TvLinkAdapter(this, 0x7f030013);
        mListView.setAdapter(mLinkAdapter);
        mAllCheck.setClickable(false);
        if(doneLayout != null)
        {
            doneLayout.setEnabled(false);
            return;
        }
        if(true) goto _L1; else goto _L2
_L2:
        mAffiliation_id = getIntent().getIntExtra("delete_station_data_index", 0);
        mAllCheck.setClickable(false);
        boolean flag = true;
        boolean flag1 = true;
        i = 0;
        while(i < 8) 
        {
            if(MtvBMLManager.deleteStationData_GetNetworkName(mAffiliation_id, i) != null)
            {
                mDeleteStationData[i] = MtvBMLManager.deleteStationData_GetNetworkName(mAffiliation_id, i);
                mAllCheck.setClickable(true);
                flag = false;
            } else
            {
                mDeleteStationData[i] = getString(0x7f070241);
                flag1 = false;
            }
            i++;
        }
        if(flag1)
            findViewById(0x7f0a0034).setEnabled(true);
        if(mItemsCheckedState == null)
            mItemsCheckedState = new boolean[8];
        mStationDataAdapter = new StationDataAdapter(this, 0x7f030010, mDeleteStationData);
        mListView.setAdapter(mStationDataAdapter);
        if(!flag)
            mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                public void onItemClick(AdapterView adapterview, View view, int j, long l)
                {
                    if(((TextView)view.findViewById(0x7f0a005c)).getText().toString().equals(getString(0x7f070241)))
                    {
                        mListView.setItemChecked(j, false);
                        return;
                    } else
                    {
                        mStationDataAdapter.toggle(j);
                        return;
                    }
                }

                final MtvUiRemoveList this$0;

            
            {
                this$0 = MtvUiRemoveList.this;
                super();
            }
            }
);
        mAllCheck.setClickable(false);
        if(doneLayout != null)
        {
            doneLayout.setEnabled(false);
            return;
        }
        if(true)
            continue; /* Loop/switch isn't completed */
_L3:
        MtvReservation amtvreservation[] = MtvReservationManager.getAllReserves(this);
        if(amtvreservation != null && amtvreservation.length > 0)
        {
            mRemove_Reserve = new Long[amtvreservation.length];
            mReserveList.clear();
            for(i = 0; i < amtvreservation.length; i++)
            {
                mReserveList.add(Long.valueOf(amtvreservation[i].mTimeStart));
                mRemove_Reserve[i] = Long.valueOf(amtvreservation[i].mTimeStart);
            }

            if(mReserveList.size() <= 0)
            {
                mAllCheck.setClickable(false);
                if(doneLayout != null)
                    doneLayout.setEnabled(false);
            }
            if(mItemsCheckedState == null)
                mItemsCheckedState = new boolean[amtvreservation.length];
            mReserveAdapter = new ReserveAdapter(this, 0x7f030034, mReserveList);
            mListView.setAdapter(mReserveAdapter);
            mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                public void onItemClick(AdapterView adapterview, View view, int j, long l)
                {
                    mReserveAdapter.toggle(j);
                }

                final MtvUiRemoveList this$0;

            
            {
                this$0 = MtvUiRemoveList.this;
                super();
            }
            }
);
            return;
        }
        if(true) goto _L1; else goto _L6
_L6:
    }

    private Bitmap decodeBitmap(String s)
    {
        Object obj;
        Object obj1;
        Object obj2;
        obj = null;
        obj1 = null;
        obj2 = null;
        s = new FileInputStream(s);
        obj = BitmapFactory.decodeStream(s);
        if(s != null)
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch(String s)
            {
                s.printStackTrace();
                return ((Bitmap) (obj));
            }
_L2:
        return ((Bitmap) (obj));
        obj;
        s = ((String) (obj1));
        obj1 = obj;
_L5:
        obj = s;
        ((FileNotFoundException) (obj1)).printStackTrace();
        obj = obj2;
        if(s == null) goto _L2; else goto _L1
_L1:
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch(String s)
        {
            s.printStackTrace();
            return null;
        }
        return null;
        s;
_L4:
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj)
            {
                ((IOException) (obj)).printStackTrace();
            }
        throw s;
        obj1;
        obj = s;
        s = ((String) (obj1));
        if(true) goto _L4; else goto _L3
_L3:
        obj1;
          goto _L5
    }

    private int getCheckedItemCount()
    {
        boolean flag = false;
        int i = 0;
        int k = ((flag) ? 1 : 0);
        if(mItemsCheckedState != null)
        {
            k = ((flag) ? 1 : 0);
            if(mItemsCheckedState.length > 0)
            {
                int j = 0;
                do
                {
                    k = i;
                    if(j >= mItemsCheckedState.length)
                        break;
                    k = i;
                    if(mItemsCheckedState[j])
                        k = i + 1;
                    j++;
                    i = k;
                } while(true);
            }
        }
        return k;
    }

    private boolean getItemCheckedState(int i)
    {
        if(i <= mItemsCheckedState.length)
            return mItemsCheckedState[i];
        else
            return false;
    }

    private String getPreviewThumbnailPath(MtvFile mtvfile)
    {
        String s = mtvfile.getFilePath();
        if(mtvfile.getFileFormat() == 0)
        {
            int i = s.indexOf("record");
            mtvfile = (new StringBuilder()).append(s.substring(0, i)).append("thumbnails/").toString();
            s = (new StringBuilder()).append("thumb").append(s.substring(i + 6, s.length() - 4)).append(".thm").toString();
        } else
        {
            int j = s.indexOf("/");
            if(s.substring(0, j).equals("Phone") || s.substring(0, j).equals("PhMem"))
                mtvfile = "sdcard/video/MyTvFiles/thumbnails/";
            else
                mtvfile = "/mnt/extSdCard/video/MyTvFiles/thumbnails/";
            j = Integer.parseInt(s.substring(s.length() - 3, s.length()), 16);
            s = (new StringBuilder()).append(String.format("%03X", new Object[] {
                Integer.valueOf(j)
            })).append(".thm").toString();
        }
        MtvUtilDebug.Low("MtvUiRemoveList", (new StringBuilder()).append("getPreviewThumbnailPath = ").append(mtvfile).append(s).toString());
        return (new StringBuilder()).append(mtvfile).append(s).toString();
    }

    private void removeChannel()
    {
    }

    private void removeDeleteStationData()
    {
        if(mDeleteStationData != null)
        {
            sIsDeleting = true;
            for(int i = 0; i < mDeleteStationData.length; i++)
                if(mItemsCheckedState[i])
                {
                    int j = MtvBMLManager.getOriginalNetworkId(mAffiliation_id, i);
                    MtvUtilDebug.Mid("MtvUiRemoveList", (new StringBuilder()).append("mMtvPlayer.deleteStationData(").append(i).append(") call.. with affilication id ").append(mAffiliation_id).append("OriginalNetID").append(j).toString());
                    mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                    mMtvPlayerOneSeg.deleteBroadCasterArea(mMtvAppPlaybackContext, mAffiliation_id, j);
                }

            finish();
        }
    }

    private void removeFile()
    {
        (new Thread(new Runnable() )).start();
    }

    private void removeLink()
    {
        if(mLinks != null)
        {
            sIsDeleting = true;
            if(getCheckedItemCount() == mLinks.length)
            {
                MtvUtilDebug.Mid("MtvUiRemoveList", "MtvBMLManager.deleteCProBMInfoAll(All) call..");
                if(!BMLDeleteLinkAll())
                    MtvUtilDebug.Error("MtvUiRemoveList", "faliled to delete all TV links");
            } else
            {
                int i = 0;
                while(i < mLinks.length) 
                {
                    if(mItemsCheckedState[i])
                    {
                        MtvUtilDebug.Mid("MtvUiRemoveList", (new StringBuilder()).append("MtvBMLManager.deleteCProBMInfo(").append(i).append(") call..").toString());
                        if(!BMLDeleteLink(mLinks[i].getID()))
                            MtvUtilDebug.Error("MtvUiRemoveList", (new StringBuilder()).append("faliled to delete  TV link with index = ").append(mLinks[i].getID()).toString());
                    }
                    i++;
                }
            }
            finish();
        }
    }

    private void removeReserve()
    {
        for(int i = 0; i < mRemove_Reserve.length; i++)
        {
            Object obj = mRemove_Reserve[i];
            if(!mItemsCheckedState[i])
                continue;
            obj = MtvReservationManager.find(this, ((Long) (obj)).longValue(), new boolean[0]);
            if(obj != null)
                MtvUtilSetReservationAlarm.setReservationAlarm(this, ((MtvReservation) (obj)).mTimeStart, false, true);
        }

        finish();
    }

    private boolean requestSystemKeyEvent(int i, boolean flag)
    {
        IWindowManager iwindowmanager = android.view.IWindowManager.Stub.asInterface(ServiceManager.getService("window"));
        try
        {
            flag = iwindowmanager.requestSystemKeyEvent(i, getComponentName(), flag);
        }
        catch(RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
            return false;
        }
        return flag;
    }

    private void setFileInfo(MtvFile mtvfile)
    {
        if(mtvfile != null) goto _L2; else goto _L1
_L1:
        mPreImageView.setTag(null);
_L4:
        return;
_L2:
        mPreImageView.setTag(mtvfile);
        mPlayImageView.setVisibility(8);
        if(mtvfile.getFilePath() == null) goto _L4; else goto _L3
_L3:
        mtvfile.getFileFormat();
        JVM INSTR tableswitch 0 2: default 68
    //                   0 69
    //                   1 297
    //                   2 94;
           goto _L5 _L6 _L7 _L8
_L5:
        return;
_L6:
        mPreImageView.setImageBitmap(decodeBitmap(getPreviewThumbnailPath(mtvfile)));
        mPlayImageView.setVisibility(0);
        return;
_L8:
        Object obj;
        ByteBuffer bytebuffer1;
        obj = null;
        bytebuffer1 = null;
        mtvfile = new FileInputStream(mtvfile.getFilePath());
        obj = new MtvUtilCrypto(2);
        ByteBuffer bytebuffer = ByteBuffer.allocate(((MtvUtilCrypto) (obj)).getOutputSize(2, (int)mtvfile.getChannel().size()));
        bytebuffer1 = ByteBuffer.allocate((int)mtvfile.getChannel().size());
        int i = mtvfile.read(bytebuffer1.array());
        MtvUtilDebug.Low("MtvUiRemoveList", (new StringBuilder()).append(" numberOfBytes ").append(i).toString());
        ((MtvUtilCrypto) (obj)).decryptData(bytebuffer1, bytebuffer);
        mPreImageView.setImageBitmap(BitmapFactory.decodeByteArray(bytebuffer.array(), 0, bytebuffer.array().length));
_L11:
        if(mtvfile == null) goto _L10; else goto _L9
_L9:
        mtvfile.close();
_L10:
        return;
        obj;
        ((IOException) (obj)).printStackTrace();
          goto _L11
        Object obj1;
        obj1;
_L20:
        obj = mtvfile;
        ((FileNotFoundException) (obj1)).printStackTrace();
        if(mtvfile != null)
        {
            try
            {
                mtvfile.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch(MtvFile mtvfile)
            {
                mtvfile.printStackTrace();
            }
            return;
        }
          goto _L4
        obj;
        ((IllegalArgumentException) (obj)).printStackTrace();
          goto _L11
        obj1;
        obj = mtvfile;
        mtvfile = ((MtvFile) (obj1));
_L19:
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch(IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw mtvfile;
        mtvfile;
        mtvfile.printStackTrace();
        return;
_L7:
        ioexception = null;
        bytebuffer1 = null;
        obj1 = getPreviewThumbnailPath(mtvfile);
        if(obj1 == null)
        {
            mPreImageView.setVisibility(4);
            mPlayImageView.setVisibility(0);
            return;
        }
        mPlayImageView.setVisibility(0);
        mPreImageView.setImageBitmap(null);
        mtvfile = ioexception;
        ioexception = new FileInputStream(((String) (obj1)));
        mtvfile = new MtvUtilCrypto(2);
        int j = mtvfile.getOutputSize(2, (int)ioexception.getChannel().size());
        if(j <= 0)
            break MISSING_BLOCK_LABEL_471;
        obj1 = ByteBuffer.allocate(j);
        bytebuffer1 = ByteBuffer.allocate((int)ioexception.getChannel().size());
        j = ioexception.read(bytebuffer1.array());
        MtvUtilDebug.Low("MtvUiRemoveList", (new StringBuilder()).append(" numberOfBytes ").append(j).toString());
        mtvfile.decryptData(bytebuffer1, ((ByteBuffer) (obj1)));
        mPreImageView.setImageBitmap(BitmapFactory.decodeByteArray(((ByteBuffer) (obj1)).array(), 0, ((ByteBuffer) (obj1)).array().length));
_L15:
        if(ioexception == null) goto _L13; else goto _L12
_L12:
        ioexception.close();
_L13:
        return;
        mtvfile;
        mtvfile.printStackTrace();
        if(true) goto _L15; else goto _L14
_L14:
        obj1;
_L18:
        mtvfile = ioexception;
        ((FileNotFoundException) (obj1)).printStackTrace();
        if(ioexception != null)
        {
            try
            {
                ioexception.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch(MtvFile mtvfile)
            {
                mtvfile.printStackTrace();
            }
            return;
        }
          goto _L4
        mtvfile;
        mtvfile.printStackTrace();
        return;
        ioexception;
_L17:
        if(mtvfile != null)
            try
            {
                mtvfile.close();
            }
            // Misplaced declaration of an exception variable
            catch(MtvFile mtvfile)
            {
                mtvfile.printStackTrace();
            }
        throw ioexception;
        obj1;
        mtvfile = ioexception;
        ioexception = ((IOException) (obj1));
        if(true) goto _L17; else goto _L16
_L16:
        obj1;
        ioexception = bytebuffer1;
          goto _L18
        mtvfile;
          goto _L19
        obj1;
        mtvfile = bytebuffer1;
          goto _L20
    }

    private void setItemCheckedState(int i, boolean flag)
    {
        if(i <= mItemsCheckedState.length)
            mItemsCheckedState[i] = flag;
    }

    private void setSaveButtonEnabled(int i)
    {
        if(i > 0 || mAllCheck.isChecked())
        {
            if(doneLayout != null)
                doneLayout.setEnabled(true);
        } else
        if(doneLayout != null)
        {
            doneLayout.setEnabled(false);
            return;
        }
    }

    private void startDeleteFileDialog()
    {
        mUiHandler.sendEmptyMessage(0);
        requestSystemKeyEvent(3, true);
        requestSystemKeyEvent(4, true);
    }

    public boolean BMLDeleteLink(int i)
    {
        boolean flag = false;
        if(mMtvPlayerOneSeg != null)
        {
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            flag = mMtvPlayerOneSeg.deleteTvLink(mMtvAppPlaybackContext, i);
        }
        return flag;
    }

    public boolean BMLDeleteLinkAll()
    {
        boolean flag = false;
        if(mMtvPlayerOneSeg != null)
        {
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            flag = mMtvPlayerOneSeg.deleteAllTvLink(mMtvAppPlaybackContext);
        }
        return flag;
    }

    public void checkItemCount(int i)
    {
        int k = 0;
        int j = 0;
        while(j < i) 
        {
            int l = k;
            if(mItemsCheckedState != null)
            {
                l = k;
                if(mItemsCheckedState[j])
                    l = k + 1;
            }
            if(i == l)
                mAllCheck.setChecked(true);
            else
                mAllCheck.setChecked(false);
            j++;
            k = l;
        }
        setSaveButtonEnabled(k);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131361844 2131361847: default 36
    //                   2131361844 37
    //                   2131361845 36
    //                   2131361846 36
    //                   2131361847 78;
           goto _L1 _L2 _L1 _L1 _L3
_L1:
        return;
_L2:
        if(mRemoveListType != 100 || mAllCheck.isClickable())
        {
            view = mAllCheck;
            boolean flag;
            if(!mAllCheck.isChecked())
                flag = true;
            else
                flag = false;
            view.setChecked(flag);
        }
_L3:
        mRemoveListType;
        JVM INSTR tableswitch 100 104: default 116
    //                   100 333
    //                   101 127
    //                   102 404
    //                   103 191
    //                   104 262;
           goto _L4 _L5 _L6 _L7 _L8 _L9
_L4:
        setSaveButtonEnabled(0);
        return;
_L6:
        if(!mAllCheck.isChecked())
            break; /* Loop/switch isn't completed */
        int i = 0;
        while(i < mRemove_Channel.length) 
        {
            mListView.setItemChecked(i, true);
            i++;
        }
        if(true) goto _L4; else goto _L10
_L10:
        int j = 0;
        while(j < mRemove_Channel.length) 
        {
            mListView.setItemChecked(j, false);
            j++;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if(mMtvFiles == null)
            continue; /* Loop/switch isn't completed */
        if(!mAllCheck.isChecked())
            break; /* Loop/switch isn't completed */
        int k = 0;
        while(k < mMtvFiles.length) 
        {
            mTvFileAdapter.setChecked(k, true);
            k++;
        }
        if(true) goto _L4; else goto _L11
_L11:
        int l = 0;
        while(l < mMtvFiles.length) 
        {
            mTvFileAdapter.setChecked(l, false);
            l++;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if(mLinks == null)
            continue; /* Loop/switch isn't completed */
        if(!mAllCheck.isChecked())
            break; /* Loop/switch isn't completed */
        int i1 = 0;
        while(i1 < mLinks.length) 
        {
            mLinkAdapter.setChecked(i1, true);
            i1++;
        }
        if(true) goto _L4; else goto _L12
_L12:
        int j1 = 0;
        while(j1 < mLinks.length) 
        {
            mLinkAdapter.setChecked(j1, false);
            j1++;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if(mDeleteStationData == null)
            continue; /* Loop/switch isn't completed */
        if(!mAllCheck.isChecked())
            break; /* Loop/switch isn't completed */
        int k1 = 0;
        while(k1 < mDeleteStationData.length) 
        {
            mStationDataAdapter.setChecked(k1, true);
            k1++;
        }
        if(true) goto _L4; else goto _L13
_L13:
        int l1 = 0;
        while(l1 < mDeleteStationData.length) 
        {
            mStationDataAdapter.setChecked(l1, false);
            l1++;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if(!mAllCheck.isChecked())
            break; /* Loop/switch isn't completed */
        int i2 = 0;
        while(i2 < mRemove_Reserve.length) 
        {
            mReserveAdapter.setChecked(i2, true);
            i2++;
        }
        if(true) goto _L4; else goto _L14
_L14:
        int j2 = 0;
        while(j2 < mRemove_Reserve.length) 
        {
            mReserveAdapter.setChecked(j2, false);
            j2++;
        }
        if(true) goto _L4; else goto _L15
_L15:
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        getActionBar();
        setContentView(0x7f030007);
        getWindow().addFlags(128);
        Bundle bundle1 = getIntent().getExtras();
        if(bundle1 != null)
            mRemoveListType = bundle1.getInt("Remove_List_Type");
        if(bundle != null)
            mItemsCheckedState = bundle.getBooleanArray("mItemsCheckedState");
        mListView = (ListView)findViewById(0x7f0a0039);
        mListView.setEmptyView(findViewById(0x7f0a003a));
        mListView.setChoiceMode(2);
        mAllCheck = (CheckBox)findViewById(0x7f0a0037);
        mAllCheck.setOnClickListener(this);
        mSelectAllText = (TextView)findViewById(0x7f0a0036);
        findViewById(0x7f0a0034).setOnClickListener(this);
        if(100 == mRemoveListType)
        {
            mSelectAllText.setVisibility(8);
            findViewById(0x7f0a0035).setVisibility(0);
            findViewById(0x7f0a0034).setEnabled(false);
        }
        mPreferences = new MtvPreferences(getApplicationContext());
        registerReceiver(mIntentReceiver, INTENT_FILTER);
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        onCreateOptionsMenu(menu);
        getMenuInflater().inflate(0x7f090000, menu);
        doneLayout = menu.getItem(1);
        cancelLayout = menu.getItem(0);
        menu.getItem(1).setEnabled(false);
        checkRemoveItemType();
        menu = new android.view.MenuItem.OnMenuItemClickListener() {

            public boolean onMenuItemClick(MenuItem menuitem)
            {
                menuitem.getItemId();
                JVM INSTR tableswitch 2131362124 2131362125: default 28
            //                           2131362124 297
            //                           2131362125 30;
                   goto _L1 _L2 _L3
_L1:
                return false;
_L3:
                mRemoveListType;
                JVM INSTR tableswitch 100 104: default 72
            //                           100 287
            //                           101 118
            //                           102 128
            //                           103 190
            //                           104 225;
                   goto _L4 _L5 _L6 _L7 _L8 _L9
_L4:
                if(mRemoveListType != 103 && mRemoveListType != 102 && mRemoveListType != 104)
                    finish();
                continue; /* Loop/switch isn't completed */
_L6:
                removeChannel();
                  goto _L4
_L7:
                (new android.app.AlertDialog.Builder(MtvUiRemoveList.this)).setTitle(0x7f070237).setMessage(0x7f0702ce).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        removeReserve();
                        dialoginterface.dismiss();
                    }

                    final _cls2 this$1;

            
            {
                this$1 = _cls2.this;
                super();
            }
                }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                    }

                    final _cls2 this$1;

            
            {
                this$1 = _cls2.this;
                super();
            }
                }
).show().getWindow().addFlags(1024);
                  goto _L4
_L8:
                menuitem = new Bundle();
                menuitem.putInt("dialogType", 14);
                MtvUiDialogsFrag.newInstance(menuitem).show(getFragmentManager(), "tv_files_delete_ok_cancel");
                  goto _L4
_L9:
                (new android.app.AlertDialog.Builder(MtvUiRemoveList.this)).setTitle(0x7f070237).setMessage(0x7f0702d6).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        removeLink();
                        dialoginterface.dismiss();
                    }

                    final _cls2 this$1;

            
            {
                this$1 = _cls2.this;
                super();
            }
                }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                    }

                    final _cls2 this$1;

            
            {
                this$1 = _cls2.this;
                super();
            }
                }
).show().getWindow().addFlags(1024);
                  goto _L4
_L5:
                removeDeleteStationData();
                  goto _L4
_L2:
                finish();
                if(true) goto _L1; else goto _L10
_L10:
            }

            final MtvUiRemoveList this$0;

            
            {
                this$0 = MtvUiRemoveList.this;
                super();
            }
        }
;
        cancelLayout.setOnMenuItemClickListener(menu);
        doneLayout.setOnMenuItemClickListener(menu);
        return true;
    }

    public void onDestroy()
    {
        MtvUtilDebug.Mid("MtvUiRemoveList", "onDestroy call...");
        sIsDeleting = false;
        unregisterReceiver(mIntentReceiver);
        super.onDestroy();
    }

    public void onFragEvent(int i, Object obj)
    {
        switch(i)
        {
        default:
            return;

        case 260: 
            MtvUtilDebug.Mid("MtvUiRemoveList", "onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_TV_FILES_DELETE_OK_CANCEL...");
            break;
        }
        if(MtvUtilAppService.getRotation(getApplicationContext()) == 1)
            setRequestedOrientation(0);
        else
        if(MtvUtilAppService.getRotation(getApplicationContext()) == 3)
            setRequestedOrientation(8);
        else
            setRequestedOrientation(1);
        startDeleteFileDialog();
        mTVFilesCount = 0;
        for(i = 0; i < mMtvFiles.length; i++)
            if(mItemsCheckedState[i])
                mTVFilesCount = mTVFilesCount + 1;

        MtvUtilDebug.Mid("MtvUiRemoveList", (new StringBuilder()).append("onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_TV_FILES_DELETE_OK_CANCEL:TV filecount:").append(mTVFilesCount).toString());
        removeFile();
    }

    public void onResume()
    {
        super.onResume();
        sendBroadcast(new Intent("intent.stop.app-in-app"));
        if(mPreferences == null)
            mPreferences = new MtvPreferences(getApplicationContext());
        if(MtvUtilAppService.isAppExiting())
        {
            finish();
            return;
        }
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        MtvUtilDebug.Low("MtvUiRemoveList", "onResume call..");
        createTabList(mRemoveListType);
        if(mPreferences == null)
            mPreferences = new MtvPreferences(getApplicationContext());
        if(mRemoveListType == 100)
        {
            int i = getIntent().getIntExtra("delete_station_data_index", 0);
            mDeleteStationDataListUp = getBaseContext().getResources().getStringArray(0x7f050008);
            getWindow().setTitle((new StringBuilder()).append(getString(0x7f070237)).append(" : ").append(mDeleteStationDataListUp[i]).toString());
        } else
        {
            getWindow().setTitle(getString(0x7f070237));
        }
        checkRemoveItemType();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        bundle.putBooleanArray("mItemsCheckedState", mItemsCheckedState);
        super.onSaveInstanceState(bundle);
    }

    private static final int FINISH_PROGRESS = 1;
    private static IntentFilter INTENT_FILTER;
    private static final int SHOW_PROGRESS = 0;
    private static final String TAG = "MtvUiRemoveList";
    public static final int TV_CHANNEL_LIST = 101;
    public static final int TV_FILES_LIST = 103;
    public static final int TV_LINKS_LIST = 104;
    public static final int TV_SCHEDULE_LIST = 102;
    public static final int TV_STATION_DATA_LIST = 100;
    static boolean sIsDeleting = false;
    View actionBarView;
    MenuItem cancelLayout;
    MenuItem doneLayout;
    private int mAffiliation_id;
    private CheckBox mAllCheck;
    private String mDeleteStationData[];
    private String mDeleteStationDataListUp[];
    private BroadcastReceiver mIntentReceiver;
    private boolean mItemsCheckedState[];
    private TvLinkAdapter mLinkAdapter;
    protected MtvCProBMInfo mLinks[];
    private ListView mListView;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvFile mMtvFiles[];
    private IMtvAppPlayerOneSeg mMtvPlayerOneSeg;
    private ImageView mPlayImageView;
    private ImageView mPreImageView;
    private MtvPreferences mPreferences;
    private ProgressDialog mProgressDialog;
    private int mRemoveListType;
    private String mRemove_Channel[];
    private Long mRemove_Reserve[];
    private ReserveAdapter mReserveAdapter;
    private ArrayList mReserveList;
    private TextView mSelectAllText;
    private StationDataAdapter mStationDataAdapter;
    private int mTVFilesCount;
    private MtvFileAdapter mTvFileAdapter;
    private Handler mUiHandler;

    static 
    {
        INTENT_FILTER = new IntentFilter();
        INTENT_FILTER.addAction("com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED");
    }



/*
    static ProgressDialog access$002(MtvUiRemoveList mtvuiremovelist, ProgressDialog progressdialog)
    {
        mtvuiremovelist.mProgressDialog = progressdialog;
        return progressdialog;
    }

*/






/*
    static int access$1210(MtvUiRemoveList mtvuiremovelist)
    {
        int i = mtvuiremovelist.mTVFilesCount;
        mtvuiremovelist.mTVFilesCount = i - 1;
        return i;
    }

*/












/*
    static ImageView access$2202(MtvUiRemoveList mtvuiremovelist, ImageView imageview)
    {
        mtvuiremovelist.mPreImageView = imageview;
        return imageview;
    }

*/


/*
    static ImageView access$2302(MtvUiRemoveList mtvuiremovelist, ImageView imageview)
    {
        mtvuiremovelist.mPlayImageView = imageview;
        return imageview;
    }

*/











}
