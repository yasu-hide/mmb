// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.ui.common.*;
import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.samsung.sec.mtv.ui.channelguide:
//            MtvUiChannelSchedule, MtvUiChannelGuide

public class MtvUiFragReservationList extends MtvUiFrag
    implements android.widget.AdapterView.OnItemClickListener, android.widget.AdapterView.OnItemLongClickListener, android.app.LoaderManager.LoaderCallbacks
{
    private class ReservationAdapter extends CursorAdapter
    {

        public void bindView(View view, Context context, Cursor cursor)
        {
            MtvReservation mtvreservation = MtvReservationManager.builder(cursor);
            view.setTag(mtvreservation);
            Object obj;
            if(Locale.getDefault().getLanguage().equals("en"))
            {
                MtvChannel mtvchannel;
                if(DateFormat.is24HourFormat(mActivity.getApplicationContext()))
                    cursor = (new SimpleDateFormat("M/d (EEE) H:mm")).format(new Date(mtvreservation.mTimeStart));
                else
                    cursor = (new SimpleDateFormat("M/d (EEE) h:mm a")).format(new Date(mtvreservation.mTimeStart));
                if(mtvreservation.mTimeEnd > 0L)
                {
                    if(DateFormat.is24HourFormat(mActivity.getApplicationContext()))
                        cursor = (new StringBuilder()).append(cursor).append(" - ").append((new SimpleDateFormat("H:mm")).format(new Date(mtvreservation.mTimeEnd))).toString();
                    else
                        cursor = (new StringBuilder()).append(cursor).append(" - ").append((new SimpleDateFormat("h:mm a")).format(new Date(mtvreservation.mTimeEnd))).toString();
                } else
                {
                    cursor = (new StringBuilder()).append(cursor).append(" -            ").toString();
                }
            } else
            {
                if(DateFormat.is24HourFormat(mActivity.getApplicationContext()))
                    cursor = (new SimpleDateFormat("M/d (EEE) H:mm")).format(new Date(mtvreservation.mTimeStart));
                else
                if(Locale.getDefault().getLanguage().equals("ja"))
                {
                    cursor = new GregorianCalendar(Locale.JAPANESE);
                    cursor.setTimeInMillis(mtvreservation.mTimeStart);
                    int i = cursor.getTime().getHours();
                    int k = cursor.get(12);
                    if(i < 12)
                    {
                        obj = (new StringBuilder()).append((new SimpleDateFormat("M/d (EEE) ")).format(new Date(mtvreservation.mTimeStart))).append(DateUtils.getAMPMString(0).toUpperCase()).append(" ");
                        if(i == 0)
                            cursor = "0";
                        else
                            cursor = Integer.valueOf(i);
                        obj = ((StringBuilder) (obj)).append(cursor).append(" : ");
                        if(k < 10)
                            cursor = (new StringBuilder()).append("0").append(k).toString();
                        else
                            cursor = Integer.valueOf(k);
                        cursor = ((StringBuilder) (obj)).append(cursor).toString();
                    } else
                    {
                        obj = (new StringBuilder()).append((new SimpleDateFormat("M/d (EEE) ")).format(new Date(mtvreservation.mTimeStart))).append(DateUtils.getAMPMString(1).toUpperCase()).append(" ");
                        if(i == 12)
                            cursor = "0";
                        else
                            cursor = Integer.valueOf(i - 12);
                        obj = ((StringBuilder) (obj)).append(cursor).append(" : ");
                        if(k < 10)
                            cursor = (new StringBuilder()).append("0").append(k).toString();
                        else
                            cursor = Integer.valueOf(k);
                        cursor = ((StringBuilder) (obj)).append(cursor).toString();
                    }
                } else
                {
                    cursor = (new SimpleDateFormat("M/d (EEE) a h:mm")).format(new Date(mtvreservation.mTimeStart));
                }
                if(mtvreservation.mTimeEnd > 0L)
                {
                    if(DateFormat.is24HourFormat(mActivity.getApplicationContext()))
                        cursor = (new StringBuilder()).append(cursor).append(" - ").append((new SimpleDateFormat("H:mm")).format(new Date(mtvreservation.mTimeEnd))).toString();
                    else
                    if(Locale.getDefault().getLanguage().equals("ja"))
                    {
                        obj = new GregorianCalendar(Locale.JAPANESE);
                        ((Calendar) (obj)).setTimeInMillis(mtvreservation.mTimeEnd);
                        int j = ((Calendar) (obj)).getTime().getHours();
                        int l = ((Calendar) (obj)).get(12);
                        if(j < 12)
                        {
                            obj = (new StringBuilder()).append(cursor).append(" - ").append(DateUtils.getAMPMString(0).toUpperCase()).append(" ");
                            if(j == 0)
                                cursor = "0";
                            else
                                cursor = Integer.valueOf(j);
                            obj = ((StringBuilder) (obj)).append(cursor).append(" : ");
                            if(l < 10)
                                cursor = (new StringBuilder()).append("0").append(l).toString();
                            else
                                cursor = Integer.valueOf(l);
                            cursor = ((StringBuilder) (obj)).append(cursor).toString();
                        } else
                        {
                            obj = (new StringBuilder()).append(cursor).append(" - ").append(DateUtils.getAMPMString(1).toUpperCase()).append(" ");
                            if(j == 12)
                                cursor = "0";
                            else
                                cursor = Integer.valueOf(j - 12);
                            obj = ((StringBuilder) (obj)).append(cursor).append(" : ");
                            if(l < 10)
                                cursor = (new StringBuilder()).append("0").append(l).toString();
                            else
                                cursor = Integer.valueOf(l);
                            cursor = ((StringBuilder) (obj)).append(cursor).toString();
                        }
                    } else
                    {
                        cursor = (new StringBuilder()).append(cursor).append(" - ").append((new SimpleDateFormat("a h:mm")).format(new Date(mtvreservation.mTimeEnd))).toString();
                    }
                } else
                {
                    cursor = (new StringBuilder()).append(cursor).append(" -            ").toString();
                }
            }
            obj = "";
            mtvchannel = MtvChannelManager.findByVChannel(context, mtvreservation.mVch, mtvreservation.mPgmServiceID);
            if(mtvchannel != null)
            {
                context = ((Context) (obj));
                if(mtvchannel.mChannelName != null)
                    context = mtvchannel.mChannelName;
            } else
            {
                MtvUtilDebug.Error(MtvUiFragReservationList.TAG, "channel is null ");
                context = ((Context) (obj));
            }
            ((ImageView)view.findViewById(0x7f0a0074)).setImageDrawable(mIcon[mtvreservation.mPgmType][selectStatusIconIndex(mtvreservation)]);
            ((TextView)view.findViewById(0x7f0a012d)).setText((new StringBuilder()).append(cursor).append(" ").append(context).append(" ").toString());
            ((TextView)view.findViewById(0x7f0a012c)).setText(mtvreservation.mPgmName);
            view.findViewById(0x7f0a006a).setVisibility(8);
        }

        public View newView(Context context, Cursor cursor, ViewGroup viewgroup)
        {
            return mInflater.inflate(0x7f030034, viewgroup, false);
        }

        public int selectStatusIconIndex(MtvReservation mtvreservation)
        {
            if(mtvreservation.mPgmStatus == 0 && mtvreservation.mTimeStart < System.currentTimeMillis() - 5000L)
            {
                MtvUtilDebug.Mid(MtvUiFragReservationList.TAG, "selectStatusIconIndex() : ooops!!! hit an expired reservation,setting it failed");
                MtvReservationManager.UpdateStatus(getActivity(), mtvreservation, 2);
                return 1;
            }
            return mtvreservation.mPgmStatus != 0 && mtvreservation.mPgmStatus != 6 && mtvreservation.mPgmStatus != 1 ? 1 : 0;
        }

        private static final int ICON_FAIL = 1;
        private static final int ICON_NORMAL = 0;
        private final Drawable mIcon[][] = (Drawable[][])Array.newInstance(android/graphics/drawable/Drawable, new int[] {
            2, 2
        });
        private final LayoutInflater mInflater;
        final MtvUiFragReservationList this$0;

        public ReservationAdapter(Context context, Cursor cursor)
        {
            this$0 = MtvUiFragReservationList.this;
            super(context, cursor);
            mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
            mIcon[1][0] = context.getResources().getDrawable(0x7f02008d);
            mIcon[0][0] = context.getResources().getDrawable(0x7f02008a);
            mIcon[1][1] = context.getResources().getDrawable(0x7f02008e);
            mIcon[0][1] = context.getResources().getDrawable(0x7f02008b);
        }
    }

    public static class ReservationDetail extends DialogFragment
    {

        private Dialog initDetails(MtvReservation mtvreservation)
        {
            makeReservationInfo();
            SimpleAdapter simpleadapter = new SimpleAdapter(getActivity(), mInfoList, 0x7f030033, new String[] {
                "MENU_TITLE", "MENU_VALUE"
            }, new int[] {
                0x7f0a012a, 0x7f0a012b
            });
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
            builder.setTitle(getString(0x7f07023a));
            builder.setAdapter(simpleadapter, null);
            builder.setPositiveButton(getString(0x7f070298), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(mDialog != null)
                        mDialog.dismiss();
                }

                final ReservationDetail this$0;

            
            {
                this$0 = ReservationDetail.this;
                super();
            }
            }
);
            builder.setNegativeButton(getString(0x7f070237), mtvreservation. new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    MtvReservationManager.delete(getActivity(), mtvreserve.mUriId);
                    if(mDialog != null)
                        mDialog.dismiss();
                }

                final ReservationDetail this$0;
                final MtvReservation val$mtvreserve;

            
            {
                this$0 = final_reservationdetail;
                mtvreserve = MtvReservation.this;
                super();
            }
            }
);
            mDetailsDialog = builder.create();
            mDetailsDialog.setCanceledOnTouchOutside(false);
            mDetailsDialog.requestWindowFeature(1);
            mDetailsDialog.getWindow().setFlags(1024, 1024);
            mDetailsDialog.setCanceledOnTouchOutside(false);
            mDetailsDialog.show();
            mDetailsDialog.setOnKeyListener(mKeyListener);
            mDialog = mDetailsDialog;
            return mDialog;
        }

        private void makeEndTime()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f070242));
            String s = (new SimpleDateFormat("M/d (EEE) H:mm")).format(new Date(mtvreserve.mTimeEnd));
            map.put("MENU_VALUE", s);
            mInfoList.add(map);
        }

        private void makeReservationInfo()
        {
            makeresult();
            makereason();
            makeprogtype();
            makechannel();
            makeTVstation();
            makeStartTime();
            makeEndTime();
            makeprogname();
        }

        private void makeStartTime()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f0702e9));
            String s = (new SimpleDateFormat("M/d (EEE) H:mm")).format(new Date(mtvreserve.mTimeStart));
            map.put("MENU_VALUE", s);
            mInfoList.add(map);
        }

        private void makeTVstation()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f070303));
            Object obj = MtvChannelManager.findByPChannel(getActivity(), mtvreserve.mPch, mtvreserve.mPgmServiceID);
            if(obj != null)
                obj = ((MtvChannel) (obj)).mChannelName;
            else
                obj = "";
            map.put("MENU_VALUE", obj);
            mInfoList.add(map);
        }

        private void makechannel()
        {
            String s = getString(0x7f070043);
            if(-1 != mtvreserve.mVch)
                s = (new StringBuilder()).append(s).append(mtvreserve.mVch).toString();
            else
                s = (new StringBuilder()).append(s).append(mtvreserve.mPch).toString();
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f070215));
            map.put("MENU_VALUE", s);
            mInfoList.add(map);
        }

        private void makeprogname()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f0702a7));
            map.put("MENU_VALUE", mtvreserve.mPgmName);
            mInfoList.add(map);
        }

        private void makeprogtype()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f0702aa));
            if(mtvreserve.mPgmType == 0)
                map.put("MENU_VALUE", getString(0x7f0702ad));
            else
                map.put("MENU_VALUE", getString(0x7f070315));
            mInfoList.add(map);
        }

        private void makereason()
        {
            if(mtvreserve.mPgmStatus == 1)
            {
                MtvUtilDebug.Low("ReservationDetail", " reservation was completed");
                return;
            }
            if(mtvreserve.mPgmType == 1 && mtvreserve.mPgmStatus == 6)
            {
                MtvUtilDebug.Low("ReservationDetail", "user clicked reservation info in the middle of a watch Reservation !");
                return;
            }
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f0702ac));
            if(mtvreserve.mPgmStatus != 2) goto _L2; else goto _L1
_L1:
            map.put("MENU_VALUE", getString(0x7f070309));
_L4:
            mInfoList.add(map);
            return;
_L2:
            if(mtvreserve.mPgmStatus == 7)
                map.put("MENU_VALUE", getString(0x7f0702b9));
            else
            if(mtvreserve.mPgmStatus == 3)
                map.put("MENU_VALUE", getString(0x7f07024e));
            else
            if(mtvreserve.mPgmStatus == 4 || mtvreserve.mPgmStatus == 8)
                map.put("MENU_VALUE", getString(0x7f07024f));
            else
            if(mtvreserve.mPgmStatus == 5 || mtvreserve.mPgmStatus == 9)
                map.put("MENU_VALUE", getString(0x7f07024d));
            else
            if(mtvreserve.mPgmStatus == 10)
                map.put("MENU_VALUE", getString(0x7f0702bb));
            else
            if(mtvreserve.mPgmStatus == 11)
                map.put("MENU_VALUE", getString(0x7f0702ba));
            else
            if(mtvreserve.mPgmStatus == 12)
                map.put("MENU_VALUE", getString(0x7f07026e));
            if(true) goto _L4; else goto _L3
_L3:
        }

        private void makeresult()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f0702bf));
            if(mtvreserve.mPgmStatus == 1)
            {
                if(mtvreserve.mPgmType == 0)
                    map.put("MENU_VALUE", getString(0x7f0702ae));
                else
                    map.put("MENU_VALUE", getString(0x7f070316));
            } else
            if(mtvreserve.mPgmType == 1 && mtvreserve.mPgmStatus == 6)
                map.put("MENU_VALUE", getString(0x7f070316));
            else
            if(mtvreserve.mPgmType == 0 && (mtvreserve.mPgmStatus == 8 || mtvreserve.mPgmStatus == 9))
                map.put("MENU_VALUE", getString(0x7f0702cb));
            else
            if(mtvreserve.mPgmType == 0)
                map.put("MENU_VALUE", getString(0x7f07021e));
            else
                map.put("MENU_VALUE", getString(0x7f07021f));
            mInfoList.add(map);
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
                mtvreserve = (MtvReservation)bundle.getSerializable("MtvReserve");
            MtvUtilDebug.Low("ReservationDetail", (new StringBuilder()).append("onCreateDialog  mTimeStart:\n").append(mTimeStart).append(" mContext ").append(mContext).toString());
            return initDetails(mtvreserve);
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putSerializable("MtvReserve", mtvreserve);
            super.onSaveInstanceState(bundle);
        }

        public static final String TAG = "ReservationDetail";
        public Context mContext;
        AlertDialog mDetailsDialog;
        private AlertDialog mDialog;
        private ArrayList mInfoList;
        private android.content.DialogInterface.OnKeyListener mKeyListener = new _cls3();
        private long mTimeStart;
        private HashMap map;
        private MtvReservation mtvreserve;


        public ReservationDetail()
        {
            mInfoList = new ArrayList();
            map = null;
            mDialog = null;
            mDetailsDialog = null;
        }

        public ReservationDetail(Context context, long l)
        {
            mInfoList = new ArrayList();
            map = null;
            mDialog = null;
            mDetailsDialog = null;
            mContext = context;
            mTimeStart = l;
            MtvUtilDebug.Low("ReservationDetail", (new StringBuilder()).append("ReservationDetail  mTimeStart:\n").append(mTimeStart).toString());
        }

        public ReservationDetail(MtvReservation mtvreservation)
        {
            mInfoList = new ArrayList();
            map = null;
            mDialog = null;
            mDetailsDialog = null;
            mtvreserve = mtvreservation;
        }
    }


    public MtvUiFragReservationList()
    {
    }

    private void reenablListeners()
    {
        mListView.setOnItemClickListener(null);
        mListView.setOnItemLongClickListener(null);
        myHandler.postDelayed(new Runnable() {

            public void run()
            {
                mListView.setOnItemClickListener(MtvUiFragReservationList.this);
                mListView.setOnItemLongClickListener(MtvUiFragReservationList.this);
            }

            final MtvUiFragReservationList this$0;

            
            {
                this$0 = MtvUiFragReservationList.this;
                super();
            }
        }
, 1000L);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low(TAG, "onCreate called...");
        mActivity = getActivity();
        setHasOptionsMenu(true);
    }

    public Loader onCreateLoader(int i, Bundle bundle)
    {
        return new CursorLoader(getActivity(), MtvReservationManager.CONTENT_URI, null, null, null, null);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        MtvUtilDebug.Low(TAG, "onCreateOptionsMenu called...");
        menu.clear();
        menu.add(0, 1, 0, 0x7f07021a).setIcon(0x7f0200b0);
        menu.add(0, 2, 0, 0x7f0702ca).setIcon(0x7f0200b5);
        menu.add(0, 3, 0, 0x7f070258).setIcon(0x7f0200b2);
        menu.add(0, 4, 0, 0x7f070237).setIcon(0x7f0200b1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low(TAG, "onCreateView called :");
        mLayoutView = layoutinflater.inflate(0x7f030023, viewgroup, false);
        mListView = (ListView)mLayoutView.findViewById(0x7f0a00bc);
        ((ImageView)mLayoutView.findViewById(0x7f0a00be)).setImageAlpha(90);
        layoutinflater = (LinearLayout)mLayoutView.findViewById(0x7f0a00bd);
        mListView.setEmptyView(layoutinflater);
        return mLayoutView;
    }

    public void onDestroyView()
    {
        MtvUtilDebug.Low(TAG, "onDestroyView called :");
        super.onDestroyView();
        getLoaderManager().destroyLoader(2);
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        reenablListeners();
        adapterview = ((AdapterView) (view.getTag()));
        if(!(adapterview instanceof MtvReservation))
        {
            MtvUtilDebug.Low(TAG, "onItemClick invalid tag");
            return;
        }
        adapterview = (MtvReservation)adapterview;
        if(((MtvReservation) (adapterview)).mTimeStart > System.currentTimeMillis() && ((MtvReservation) (adapterview)).mPgmStatus == 0)
        {
            view = new Intent(mActivity, com/samsung/sec/mtv/ui/common/MtvUiManualReservation);
            view.putExtra("MtvReservation", ((MtvReservation) (adapterview)).mTimeStart);
            startActivity(view);
            return;
        } else
        {
            (new ReservationDetail(adapterview)).show(getFragmentManager(), "ReservationDetail");
            return;
        }
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = ((AdapterView) (view.getTag()));
        reenablListeners();
        if(!(adapterview instanceof MtvReservation))
        {
            MtvUtilDebug.Low(TAG, "onItemLongClick invalid tag");
            return false;
        }
        view = (MtvReservation)adapterview;
        Object obj;
        if(Locale.getDefault().getLanguage().equals("en"))
        {
            if(DateFormat.is24HourFormat(mActivity.getApplicationContext()))
            {
                adapterview = (new SimpleDateFormat("M/d H:mm")).format(new Date(((MtvReservation) (view)).mTimeStart));
                adapterview = (new StringBuilder()).append(adapterview).append(" - ").append((new SimpleDateFormat("H:mm")).format(new Date(((MtvReservation) (view)).mTimeEnd))).toString();
            } else
            {
                adapterview = (new SimpleDateFormat("M/d h:mm a")).format(new Date(((MtvReservation) (view)).mTimeStart));
                adapterview = (new StringBuilder()).append(adapterview).append(" - ").append((new SimpleDateFormat("h:mm a")).format(new Date(((MtvReservation) (view)).mTimeEnd))).toString();
            }
        } else
        if(DateFormat.is24HourFormat(mActivity.getApplicationContext()))
        {
            adapterview = (new SimpleDateFormat("M/d H:mm")).format(new Date(((MtvReservation) (view)).mTimeStart));
            adapterview = (new StringBuilder()).append(adapterview).append(" - ").append((new SimpleDateFormat("H:mm")).format(new Date(((MtvReservation) (view)).mTimeEnd))).toString();
        } else
        if(Locale.getDefault().getLanguage().equals("ja"))
        {
            adapterview = new GregorianCalendar(Locale.JAPANESE);
            adapterview.setTimeInMillis(((MtvReservation) (view)).mTimeStart);
            i = adapterview.getTime().getHours();
            int j = adapterview.get(12);
            adapterview = new GregorianCalendar(Locale.JAPANESE);
            adapterview.setTimeInMillis(((MtvReservation) (view)).mTimeEnd);
            int k = adapterview.getTime().getHours();
            int i1 = adapterview.get(12);
            if(i < 12)
            {
                StringBuilder stringbuilder = (new StringBuilder()).append((new SimpleDateFormat("M/d ")).format(new Date(((MtvReservation) (view)).mTimeStart))).append(DateUtils.getAMPMString(0).toUpperCase()).append(" ");
                if(i == 0)
                    adapterview = "0";
                else
                    adapterview = Integer.valueOf(i);
                stringbuilder = stringbuilder.append(adapterview).append(" : ");
                if(j < 10)
                    adapterview = (new StringBuilder()).append("0").append(j).toString();
                else
                    adapterview = Integer.valueOf(j);
                adapterview = stringbuilder.append(adapterview).toString();
            } else
            {
                StringBuilder stringbuilder1 = (new StringBuilder()).append((new SimpleDateFormat("M/d ")).format(new Date(((MtvReservation) (view)).mTimeStart))).append(DateUtils.getAMPMString(1).toUpperCase()).append(" ");
                if(i == 12)
                    adapterview = "0";
                else
                    adapterview = Integer.valueOf(i - 12);
                stringbuilder1 = stringbuilder1.append(adapterview).append(" : ");
                if(j < 10)
                    adapterview = (new StringBuilder()).append("0").append(j).toString();
                else
                    adapterview = Integer.valueOf(j);
                adapterview = stringbuilder1.append(adapterview).toString();
            }
            if(k < 12)
            {
                stringbuilder = (new StringBuilder()).append(adapterview).append(" - ").append(DateUtils.getAMPMString(0).toUpperCase()).append(" ");
                if(k == 0)
                    adapterview = "0";
                else
                    adapterview = Integer.valueOf(k);
                stringbuilder = stringbuilder.append(adapterview).append(" : ");
                if(i1 < 10)
                    adapterview = (new StringBuilder()).append("0").append(i1).toString();
                else
                    adapterview = Integer.valueOf(i1);
                adapterview = stringbuilder.append(adapterview).toString();
            } else
            {
                StringBuilder stringbuilder2 = (new StringBuilder()).append(adapterview).append(" - ").append(DateUtils.getAMPMString(1).toUpperCase()).append(" ");
                if(k == 12)
                    adapterview = "0";
                else
                    adapterview = Integer.valueOf(k - 12);
                stringbuilder2 = stringbuilder2.append(adapterview).append(" : ");
                if(i1 < 10)
                    adapterview = (new StringBuilder()).append("0").append(i1).toString();
                else
                    adapterview = Integer.valueOf(i1);
                adapterview = stringbuilder2.append(adapterview).toString();
            }
        } else
        {
            adapterview = (new SimpleDateFormat("M/d a h:mm")).format(new Date(((MtvReservation) (view)).mTimeStart));
            adapterview = (new StringBuilder()).append(adapterview).append(" - ").append((new SimpleDateFormat("a h:mm")).format(new Date(((MtvReservation) (view)).mTimeEnd))).toString();
        }
        obj = MtvChannelManager.findByVChannel(mActivity.getApplicationContext(), ((MtvReservation) (view)).mVch, ((MtvReservation) (view)).mPgmServiceID);
        if(obj != null && ((MtvChannel) (obj)).mChannelName != null)
        {
            obj = ((MtvChannel) (obj)).mChannelName;
            adapterview = (new StringBuilder()).append(((String) (obj))).append(" ").append(adapterview).toString();
        } else
        {
            adapterview = (new StringBuilder()).append(getString(0x7f070043)).append(((MtvReservation) (view)).mPch).append(" ").append(adapterview).toString();
        }
        obj = new Bundle();
        MtvUtilDebug.Low(TAG, "onItemLongClick");
        ((Bundle) (obj)).putInt("dialogType", 5);
        ((Bundle) (obj)).putString("title", adapterview);
        ((Bundle) (obj)).putInt("db_id", ((MtvReservation) (view)).mUriId);
        MtvUiDialogsFrag.newInstance(((Bundle) (obj))).show(getActivity().getFragmentManager(), "dialog");
        return false;
    }

    public void onLoadFinished(Loader loader, Cursor cursor)
    {
        mListAdapter = new ReservationAdapter(mActivity, cursor);
        mListView.setAdapter(mListAdapter);
        mListView.setOnItemClickListener(this);
        mListView.setOnItemLongClickListener(this);
        ((ImageView)mLayoutView.findViewById(0x7f0a00be)).setImageAlpha(90);
        mListView.setEmptyView(mLayoutView.findViewById(0x7f0a00bd));
    }

    public volatile void onLoadFinished(Loader loader, Object obj)
    {
        onLoadFinished(loader, (Cursor)obj);
    }

    public void onLoaderReset(Loader loader)
    {
        if(mListView != null)
            mListView.setAdapter(null);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 1 4: default 36
    //                   1 38
    //                   2 59
    //                   3 79
    //                   4 92;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        startActivity(new Intent(getActivity(), com/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule));
        continue; /* Loop/switch isn't completed */
_L3:
        startActivity(new Intent(getActivity(), com/samsung/sec/mtv/ui/common/MtvUiManualReservation));
        continue; /* Loop/switch isn't completed */
_L4:
        ((MtvUiChannelGuide)getActivity()).addMemInfoFrag();
        continue; /* Loop/switch isn't completed */
_L5:
        menuitem = new Intent(mActivity, com/samsung/sec/mtv/ui/common/MtvUiRemoveList);
        menuitem.putExtra("Remove_List_Type", 102);
        startActivityForResult(menuitem, 0);
        if(true) goto _L1; else goto _L6
_L6:
    }

    public void onPrepareOptionsMenu(Menu menu)
    {
        MtvUtilDebug.Low(TAG, "onPrepareOptionsMenu");
        menu.clear();
        boolean flag1 = false;
        boolean flag2 = true;
        menu.clear();
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        boolean flag = flag1;
        if(mtvappplaybackcontext != null)
        {
            flag = flag1;
            if(mtvappplaybackcontext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
                flag = true;
        }
        flag1 = flag2;
        if(mListAdapter != null)
        {
            flag1 = flag2;
            if(mListAdapter.getCount() == 0)
                flag1 = false;
        }
        menu.add(0, 1, 0, 0x7f07021a).setIcon(0x7f0200b0).setEnabled(flag);
        menu.add(0, 2, 0, 0x7f0702ca).setIcon(0x7f0200b5).setEnabled(flag);
        menu.add(0, 3, 0, 0x7f070258).setIcon(0x7f0200b2);
        if(flag1)
            menu.add(0, 4, 0, 0x7f070237).setIcon(0x7f0200b1).setEnabled(flag1);
        super.onPrepareOptionsMenu(menu);
    }

    public void onResume()
    {
        super.onResume();
        MtvUtilDebug.Mid(TAG, "on resume called..");
        getLoaderManager().initLoader(2, null, this);
    }

    public void onUpdate(int i, Object obj)
    {
        i;
        JVM INSTR tableswitch 1 2: default 24
    //                   1 31
    //                   2 94;
           goto _L1 _L2 _L3
_L1:
        super.onUpdate(i, obj);
        return;
_L2:
        Bundle bundle = new Bundle();
        int j = -1;
        if(obj != null)
            j = ((Integer)obj).intValue();
        bundle.putInt("dialogType", 6);
        bundle.putInt("db_id", j);
        MtvUiDialogsFrag.newInstance(bundle).show(getActivity().getFragmentManager(), "dialog");
        continue; /* Loop/switch isn't completed */
_L3:
        reserve = MtvReservationManager.find(mActivity, reserve.mTimeStart, new boolean[0]);
        (new ReservationDetail(reserve)).show(getFragmentManager(), "ReservationDetail");
        if(true) goto _L1; else goto _L4
_L4:
    }

    public static final int MENU_CHANNEL_SCHEDULE = 1;
    private static final int MENU_DELETE_ITEM = 4;
    private static final int MENU_MANUAL_RESERVE = 2;
    private static final int MENU_VIEW_FREE_MEMORY = 3;
    private static final int RESERVATION_LOADER = 2;
    public static final int START_TIME_5SEC = 5000;
    private static String TAG = "MtvUiFragReservationList";
    public static final int UPDATE_RESERVE_DETAIL = 2;
    public static final int UPDATE_SHOW_DELETE_ALERT_DIALOG = 1;
    private static final Handler myHandler = new Handler();
    private static MtvReservation reserve = null;
    private Activity mActivity;
    private View mLayoutView;
    private ListAdapter mListAdapter;
    private ListView mListView;





    // Unreferenced inner class com/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3

/* anonymous class */
    class ReservationDetail._cls3
        implements android.content.DialogInterface.OnKeyListener
    {

        public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
        {
            boolean flag1 = true;
            i;
            JVM INSTR tableswitch 4 4: default 24
        //                       4 30;
               goto _L1 _L2
_L1:
            boolean flag = false;
_L4:
            return flag;
_L2:
            flag = flag1;
            if(keyevent.getAction() == 1)
            {
                flag = flag1;
                if(mDialog != null)
                {
                    mDialog.dismiss();
                    return true;
                }
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        final ReservationDetail this$0;

            
            {
                this$0 = ReservationDetail.this;
                super();
            }
    }

}
