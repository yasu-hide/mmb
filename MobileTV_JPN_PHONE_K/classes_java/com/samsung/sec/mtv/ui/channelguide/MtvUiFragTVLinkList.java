// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Resources;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContext;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContextManager;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.MtvBMLManager;
import com.samsung.sec.mtv.provider.MtvCProBMInfo;
import com.samsung.sec.mtv.ui.common.MtvUiFrag;
import com.samsung.sec.mtv.ui.common.MtvUiRemoveList;
import com.samsung.sec.mtv.ui.tvlink.MtvUiTvLinks;
import com.samsung.sec.mtv.utility.MtvUtilAppService;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class MtvUiFragTVLinkList extends MtvUiFrag
    implements android.widget.AdapterView.OnItemClickListener, android.widget.AdapterView.OnItemLongClickListener
{
    public static class MTvlinkDetail extends DialogFragment
    {

        private CharSequence getLinkNumber()
        {
            return (new StringBuilder()).append(getResources().getString(0x7f070266)).append(" ").append(mLinkIndex).toString();
        }

        private String getProgramInfo()
        {
            return mlink.getOutline();
        }

        private String getTitleText()
        {
            return mlink.getTitle();
        }

        private String getValidityDate()
        {
            return (new SimpleDateFormat("yyyy/M/d H:mm")).format(mlink.getValidDate());
        }

        private Dialog initDetails(MtvCProBMInfo mtvcprobminfo)
        {
            makeLinkInfo();
            mtvcprobminfo = new SimpleAdapter(getActivity(), mInfoList, 0x7f030033, new String[] {
                "MENU_TITLE", "MENU_VALUE"
            }, new int[] {
                0x7f0a012a, 0x7f0a012b
            });
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
            builder.setTitle(getLinkNumber());
            builder.setAdapter(mtvcprobminfo, null);
            builder.setPositiveButton(getString(0x7f070298), new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(mDialog != null)
                        mDialog.dismiss();
                }

                final MTvlinkDetail this$0;

            
            {
                this$0 = MTvlinkDetail.this;
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

        private void makeLinkInfo()
        {
            if(mlink == null)
            {
                MtvUtilDebug.Error(TAG, "Mlink null!!!");
                return;
            } else
            {
                makeTitleText();
                makeProgramInfo();
                makeValidityDate();
                return;
            }
        }

        private void makeProgramInfo()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f070239));
            map.put("MENU_VALUE", getProgramInfo());
            mInfoList.add(map);
        }

        private void makeTitleText()
        {
            map = new HashMap();
            map.put("MENU_TITLE", getString(0x7f0702f7));
            map.put("MENU_VALUE", getTitleText());
            mInfoList.add(map);
        }

        private void makeValidityDate()
        {
            String s1 = getValidityDate();
            if(mlink.getValidDate().getTime() != 0L)
            {
                map = new HashMap();
                map.put("MENU_TITLE", getString(0x7f07030d));
                String s = s1;
                if(s1.equals(""))
                    s = getActivity().getString(0x7f07028e);
                map.put("MENU_VALUE", s);
                mInfoList.add(map);
            }
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
            {
                mLinkId = bundle.getInt("MtvLinkId");
                mLinkIndex = bundle.getInt("MtvLinkIndex");
            }
            try
            {
                mlink = MtvBMLManager.getAvailableCProBMInfo(mLinkId);
            }
            // Misplaced declaration of an exception variable
            catch(Bundle bundle)
            {
                bundle.printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch(Bundle bundle)
            {
                bundle.printStackTrace();
            }
            return initDetails(mlink);
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putInt("MtvLinkId", mLinkId);
            bundle.putInt("MtvLinkIndex", mLinkIndex);
            super.onSaveInstanceState(bundle);
        }

        static String TAG = "MTvlinkDetail";
        AlertDialog mDetailsDialog;
        private AlertDialog mDialog;
        private ArrayList mInfoList;
        private android.content.DialogInterface.OnKeyListener mKeyListener = new _cls2();
        private int mLinkId;
        private int mLinkIndex;
        private HashMap map;
        private MtvCProBMInfo mlink;



        public MTvlinkDetail()
        {
            map = null;
            mInfoList = new ArrayList();
            mDialog = null;
            mDetailsDialog = null;
        }

        public MTvlinkDetail(int i)
        {
            map = null;
            mInfoList = new ArrayList();
            mDialog = null;
            mDetailsDialog = null;
            mLinkId = i;
        }

        public MTvlinkDetail(int i, int j)
        {
            map = null;
            mInfoList = new ArrayList();
            mDialog = null;
            mDetailsDialog = null;
            mLinkId = i;
            mLinkIndex = j;
        }
    }

    private static class TvLinkAdapter extends ArrayAdapter
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
            imageview = (ImageView)view.findViewById(0x7f0a0068);
            textview = (TextView)view.findViewById(0x7f0a0069);
            viewgroup.getCproBMType();
            JVM INSTR tableswitch 0 4: default 100
        //                       0 134
        //                       1 144
        //                       2 144
        //                       3 154
        //                       4 154;
               goto _L3 _L4 _L5 _L5 _L6 _L6
_L3:
            textview.setText((new StringBuilder()).append(" ").append(viewgroup.getTitle()).toString());
            view.setTag(viewgroup);
_L2:
            return view;
_L4:
            imageview.setImageResource(0x7f020088);
            continue; /* Loop/switch isn't completed */
_L5:
            imageview.setImageResource(0x7f020089);
            continue; /* Loop/switch isn't completed */
_L6:
            imageview.setImageResource(0x7f02008f);
            if(true) goto _L3; else goto _L7
_L7:
        }

        private MtvCProBMInfo mMtvLinks[];

        public TvLinkAdapter(Context context, int i)
        {
            super(context, i);
        }

        public TvLinkAdapter(Context context, int i, MtvCProBMInfo amtvcprobminfo[])
        {
            super(context, i, amtvcprobminfo);
            mMtvLinks = amtvcprobminfo;
        }
    }

    public static class TvLinkDialogFragment extends DialogFragment
    {

        public static TvLinkDialogFragment newInstance(int i, int j, int k)
        {
            com/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;
            JVM INSTR monitorenter ;
            TvLinkDialogFragment tvlinkdialogfragment;
            tvlinkdialogfragment = new TvLinkDialogFragment();
            tvlinkdialogfragment.dialogId = i;
            tvlinkdialogfragment.positionOrLinkIndex = j;
            tvlinkdialogfragment.mLinkId = k;
            com/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;
            JVM INSTR monitorexit ;
            return tvlinkdialogfragment;
            Exception exception;
            exception;
            throw exception;
        }

        public Dialog createDialog(int i, int j, MtvCProBMInfo mtvcprobminfo)
        {
            mtvcprobminfo = null;
            i;
            JVM INSTR tableswitch 1 3: default 28
        //                       1 35
        //                       2 112
        //                       3 213;
               goto _L1 _L2 _L3 _L4
_L1:
            mtvcprobminfo.setCanceledOnTouchOutside(false);
            return mtvcprobminfo;
_L2:
            mtvcprobminfo = (new android.app.AlertDialog.Builder(getActivity())).setTitle((new StringBuilder()).append(getString(0x7f070266)).append(" ").append(positionOrLinkIndex + 1).toString()).setItems(0x7f050000, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    switch(i)
                    {
                    default:
                        return;

                    case 0: // '\0'
                        (new MTvlinkDetail(mLink.getID(), positionOrLinkIndex + 1)).show(getFragmentManager(), MTvlinkDetail.TAG);
                        return;

                    case 1: // '\001'
                        TvLinkDialogFragment.newInstance(3, -1, mLinkId).show(getFragmentManager(), "TvLinkDialogFragment");
                        break;
                    }
                }

                final TvLinkDialogFragment this$0;

            
            {
                this$0 = TvLinkDialogFragment.this;
                super();
            }
            }
).create();
            mtvcprobminfo.getWindow().addFlags(1024);
            continue; /* Loop/switch isn't completed */
_L3:
            if(positionOrLinkIndex == -1)
                mtvcprobminfo = (new android.app.AlertDialog.Builder(getActivity())).setTitle(getString(0x7f070267)).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                    }

                    final TvLinkDialogFragment this$0;

            
            {
                this$0 = TvLinkDialogFragment.this;
                super();
            }
                }
).create();
            else
                mtvcprobminfo = (new android.app.AlertDialog.Builder(getActivity())).setTitle(getString(0x7f07003f)).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
label0:
                        {
                            dialoginterface.dismiss();
                            if(positionOrLinkIndex == 2)
                            {
                                dialoginterface = Uri.parse(mLink.getDstURI());
                                if(dialoginterface != null)
                                {
                                    dialoginterface = new Intent("android.intent.action.VIEW", dialoginterface);
                                    if(!MtvUtilAppService.isIntentAvailable(getActivity(), dialoginterface))
                                        break label0;
                                    startActivity(dialoginterface);
                                }
                            }
                            return;
                        }
                        MtvUtilDebug.Error("TvLinkDialogFragment", "Activity Not Found !!!");
                    }

                    final TvLinkDialogFragment this$0;

            
            {
                this$0 = TvLinkDialogFragment.this;
                super();
            }
                }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.dismiss();
                    }

                    final TvLinkDialogFragment this$0;

            
            {
                this$0 = TvLinkDialogFragment.this;
                super();
            }
                }
).create();
            continue; /* Loop/switch isn't completed */
_L4:
            mtvcprobminfo = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070237).setMessage(0x7f0702d6).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    boolean flag = false;
                    MtvUiFragTVLinkList.mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                    if(MtvUiFragTVLinkList.mMtvPlayerOneSeg != null)
                        flag = MtvUiFragTVLinkList.mMtvPlayerOneSeg.deleteTvLink(MtvUiFragTVLinkList.mMtvAppPlaybackContext, mLink.getID());
                    else
                        MtvUtilDebug.Error("TvLinkDialogFragment", "mMtvPlayerOneSeg handle is null");
                    if(!flag)
                        MtvUtilDebug.Error("TvLinkDialogFragment", "Delete TV link failed");
                }

                final TvLinkDialogFragment this$0;

            
            {
                this$0 = TvLinkDialogFragment.this;
                super();
            }
            }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                }

                final TvLinkDialogFragment this$0;

            
            {
                this$0 = TvLinkDialogFragment.this;
                super();
            }
            }
).create();
            mtvcprobminfo.getWindow().addFlags(1024);
            if(true) goto _L1; else goto _L5
_L5:
        }

        public void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
            {
                dialogId = bundle.getInt("dialogId");
                positionOrLinkIndex = bundle.getInt("positionOrLinkIndex");
                mLinkId = bundle.getInt("mLinkId");
            }
            try
            {
                mLink = MtvBMLManager.getAvailableCProBMInfo(mLinkId);
            }
            // Misplaced declaration of an exception variable
            catch(Bundle bundle)
            {
                MtvUtilDebug.Error("TvLinkDialogFragment", "SQLiteException while getAvailableCProBMInfo invoded!");
            }
            // Misplaced declaration of an exception variable
            catch(Bundle bundle)
            {
                MtvUtilDebug.Error("TvLinkDialogFragment", "IOException while getAvailableCProBMInfo invoded!");
            }
            return createDialog(dialogId, positionOrLinkIndex, mLink);
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putInt("dialogId", dialogId);
            bundle.putInt("positionOrLinkIndex", positionOrLinkIndex);
            bundle.putInt("mLinkId", mLinkId);
            super.onSaveInstanceState(bundle);
        }

        public static final String TAG = "TvLinkDialogFragment";
        private int dialogId;
        private MtvCProBMInfo mLink;
        private int mLinkId;
        private int positionOrLinkIndex;




        public TvLinkDialogFragment()
        {
        }
    }


    public MtvUiFragTVLinkList()
    {
        mLinks = null;
        mListView = null;
        mUriString = null;
        mLinkIndex = -1;
        mTvLinkDetail = null;
        mLink = null;
        mLinkSelectedIndex = 0;
    }

    private void populateTVLinkList()
    {
        MtvUtilDebug.Low(TAG, "populateTVLinkList");
        mListView.setVisibility(0);
        mListView.bringToFront();
        mLinks = MtvBMLManager.getAvailableCProBMInfoAll();
        if(mLinks != null && mLinks.length != 0)
            mLinkAdapter = new TvLinkAdapter(mActivity.getApplicationContext(), 0x7f030013, mLinks);
        else
            mLinkAdapter = null;
        mListView.setAdapter(mLinkAdapter);
        mListView.setOnItemClickListener(this);
        mListView.setOnItemLongClickListener(this);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        populateTVLinkList();
        super.onActivityResult(i, j, intent);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low(TAG, "onCreate called...");
        mActivity = getActivity();
        setHasOptionsMenu(true);
        setRetainInstance(true);
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        super.onCreateOptionsMenu(menu, menuinflater);
        MtvUtilDebug.Low(TAG, "onCreateOptionsMenu called...");
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low(TAG, "onCreateView called :");
        mLayoutView = layoutinflater.inflate(0x7f030025, viewgroup, false);
        mListView = (ListView)mLayoutView.findViewById(0x7f0a00c4);
        ((ImageView)mLayoutView.findViewById(0x7f0a00c6)).setImageAlpha(90);
        layoutinflater = (LinearLayout)mLayoutView.findViewById(0x7f0a00c5);
        mListView.setEmptyView(layoutinflater);
        populateTVLinkList();
        return mLayoutView;
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        mTvLinkDetail = (MtvCProBMInfo)view.getTag();
        mLink = (MtvCProBMInfo)view.getTag();
        mLinkIndex = -1;
        if(mLink.getValidDate().getTime() >= System.currentTimeMillis() || mLink.getValidDate().getTime() == 0L) goto _L2; else goto _L1
_L1:
        TvLinkDialogFragment.newInstance(2, -1, mLink.getID()).show(getFragmentManager(), "TvLinkDialogFragment");
_L8:
        return;
_L2:
        if(mLink.getCproBMType() != 1) goto _L4; else goto _L3
_L3:
        mUriString = mLink.getDstURI();
        mLinkIndex = 1;
_L6:
        mLinkSelectedIndex = i;
        if(mLink.getCproBMType() == 1)
        {
            adapterview = new Intent(getActivity(), com/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks);
            adapterview.putExtra("MtvSelectLink", mLinkSelectedIndex);
            startActivity(adapterview);
            return;
        }
        break; /* Loop/switch isn't completed */
_L4:
        if(mLink.getCproBMType() == 4 || mLink.getCproBMType() == 3)
        {
            mUriString = mLink.getDstURI();
            mLinkIndex = 2;
        }
        if(true) goto _L6; else goto _L5
_L5:
        if(mLinkIndex == 2)
        {
            TvLinkDialogFragment.newInstance(2, mLinkIndex, mLink.getID()).show(getFragmentManager(), "TvLinkDialogFragment");
            return;
        }
        if(mLink.getCproBMType() != 0)
        {
            adapterview = new Intent(getActivity(), com/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks);
            adapterview.putExtra("MtvSelectLink", mLinkSelectedIndex);
            startActivity(adapterview);
            return;
        }
        if(true) goto _L8; else goto _L7
_L7:
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        mTvLinkDetail = (MtvCProBMInfo)view.getTag();
        if(mTvLinkDetail == null)
        {
            MtvUtilDebug.Error(TAG, "TabLink :onItemLongClick invalid tag");
            return false;
        } else
        {
            TvLinkDialogFragment.newInstance(1, i, mTvLinkDetail.getID()).show(getFragmentManager(), "TvLinkDialogFragment");
            return true;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 0 0: default 24
    //                   0 26;
           goto _L1 _L2
_L1:
        return true;
_L2:
        menuitem = new Intent(mActivity, com/samsung/sec/mtv/ui/common/MtvUiRemoveList);
        menuitem.putExtra("Remove_List_Type", 104);
        startActivityForResult(menuitem, 0);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onPrepareOptionsMenu(Menu menu)
    {
        MtvUtilDebug.Low(TAG, "onPrepareOptionsMenu called...");
        menu.clear();
        if(mLinks != null && mLinks.length > 0)
            menu.add(0, 0, 0, 0x7f070237).setIcon(0x7f0200b1);
        super.onPrepareOptionsMenu(menu);
    }

    public void onUpdate(int i, Object obj)
    {
        switch(i)
        {
        default:
            return;

        case 168: 
            populateTVLinkList();
            break;
        }
    }

    private static final int DIALOG_TV_LINK_DELETE_OK = 3;
    private static final int MENU_DELETE_ITEM = 0;
    private static String TAG = "MtvUiFragTVLinkList";
    private static final int TVLINK_CLICK = 2;
    private static final int TVLINK_LONG_CLICK = 1;
    private static MtvAppPlaybackContext mMtvAppPlaybackContext = null;
    private static IMtvAppPlayerOneSeg mMtvPlayerOneSeg = null;
    private Activity mActivity;
    private View mLayoutView;
    protected MtvCProBMInfo mLink;
    private TvLinkAdapter mLinkAdapter;
    protected int mLinkIndex;
    private int mLinkSelectedIndex;
    protected MtvCProBMInfo mLinks[];
    private ListView mListView;
    protected ImageView mPreImageView;
    protected MtvCProBMInfo mTvLinkDetail;
    protected String mUriString;




/*
    static MtvAppPlaybackContext access$302(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mMtvAppPlaybackContext = mtvappplaybackcontext;
        return mtvappplaybackcontext;
    }

*/


    // Unreferenced inner class com/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$2

/* anonymous class */
    class MTvlinkDetail._cls2
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

        final MTvlinkDetail this$0;

            
            {
                this$0 = MTvlinkDetail.this;
                super();
            }
    }

}
