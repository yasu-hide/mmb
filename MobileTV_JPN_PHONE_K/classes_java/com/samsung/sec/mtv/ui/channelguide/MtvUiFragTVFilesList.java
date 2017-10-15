// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.channelguide;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.*;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.provider.MtvFile;
import com.samsung.sec.mtv.provider.MtvFileManager;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer;
import com.samsung.sec.mtv.utility.*;
import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.samsung.sec.mtv.ui.channelguide:
//            MtvUiChannelGuide

public class MtvUiFragTVFilesList extends MtvUiFrag
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener, android.widget.AdapterView.OnItemLongClickListener, com.samsung.sec.mtv.provider.MtvFileManager.MtvFileManagerListener
{
    public static class MtvFileAdapter extends ArrayAdapter
    {

        public MtvFile[] getAdapterData()
        {
            return mFileList;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            Object obj;
            Object obj2;
            if(view == null)
            {
                viewgroup = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030038, null);
                obj = new ViewHolder();
                obj.mPreImageView = (ImageView)viewgroup.findViewById(0x7f0a0135);
                obj.mPlayImageView = (ImageView)viewgroup.findViewById(0x7f0a0136);
                obj.infoTextView1 = (TextView)viewgroup.findViewById(0x7f0a013a);
                obj.infoTextView2 = (TextView)viewgroup.findViewById(0x7f0a013b);
                obj.infoTextView3 = (TextView)viewgroup.findViewById(0x7f0a013c);
                obj.deleteLayout = (RelativeLayout)viewgroup.findViewById(0x7f0a006a);
                viewgroup.setTag(obj);
            } else
            {
                obj1 = (ViewHolder)view.getTag();
                obj = obj1;
                viewgroup = view;
                if(((ViewHolder) (obj1)).mPreImageView != null)
                {
                    obj2 = ((ViewHolder) (obj1)).mPreImageView.getDrawable();
                    obj = obj1;
                    viewgroup = view;
                    if(obj2 instanceof BitmapDrawable)
                    {
                        obj2 = ((BitmapDrawable)obj2).getBitmap();
                        ((ViewHolder) (obj1)).mPreImageView.setImageBitmap(null);
                        obj = obj1;
                        viewgroup = view;
                        if(obj2 != null)
                        {
                            ((Bitmap) (obj2)).recycle();
                            MtvUtilDebug.High(MtvUiFragTVFilesList.TAG, "Previous Bitmap recycled...");
                            obj = obj1;
                            viewgroup = view;
                        }
                    }
                }
            }
            obj2 = mFileList[i];
            if(obj2 != null)
            {
                ((ViewHolder) (obj)).deleteLayout.setVisibility(8);
                Object obj1;
                if(Locale.getDefault().getLanguage().equals("en"))
                {
                    if(DateFormat.is24HourFormat(mContext))
                        view = (new SimpleDateFormat("M/d (EEE) H:mm")).format(((MtvFile) (obj2)).getCreationTime());
                    else
                        view = (new SimpleDateFormat("M/d (EEE) h:mm a")).format(((MtvFile) (obj2)).getCreationTime());
                } else
                if(DateFormat.is24HourFormat(mContext))
                    view = (new SimpleDateFormat("M/d (EEE) H:mm")).format(((MtvFile) (obj2)).getCreationTime());
                else
                if(Locale.getDefault().getLanguage().equals("ja"))
                {
                    i = ((MtvFile) (obj2)).getCreationTime().getHours();
                    int j = ((MtvFile) (obj2)).getCreationTime().getMinutes();
                    if(i < 12)
                    {
                        obj1 = (new StringBuilder()).append((new SimpleDateFormat("M/d (EEE) ")).format(((MtvFile) (obj2)).getCreationTime())).append(DateUtils.getAMPMString(0).toUpperCase()).append(" ");
                        if(i == 0)
                            view = "0";
                        else
                            view = Integer.valueOf(i);
                        obj1 = ((StringBuilder) (obj1)).append(view).append(" : ");
                        if(j < 10)
                            view = (new StringBuilder()).append("0").append(j).toString();
                        else
                            view = Integer.valueOf(j);
                        view = ((StringBuilder) (obj1)).append(view).toString();
                    } else
                    {
                        obj1 = (new StringBuilder()).append((new SimpleDateFormat("M/d (EEE) ")).format(((MtvFile) (obj2)).getCreationTime())).append(DateUtils.getAMPMString(1).toUpperCase()).append(" ");
                        if(i == 12)
                            view = "0";
                        else
                            view = Integer.valueOf(i - 12);
                        obj1 = ((StringBuilder) (obj1)).append(view).append(" : ");
                        if(j < 10)
                            view = (new StringBuilder()).append("0").append(j).toString();
                        else
                            view = Integer.valueOf(j);
                        view = ((StringBuilder) (obj1)).append(view).toString();
                    }
                } else
                {
                    view = (new SimpleDateFormat("M/d (EEE) a h:mm")).format(((MtvFile) (obj2)).getCreationTime());
                }
                if(((MtvFile) (obj2)).getChannelName() == null || ((MtvFile) (obj2)).getChannelName().equals("null") || ((MtvFile) (obj2)).getChannelName().equals("nul") || ((MtvFile) (obj2)).getChannelName().equalsIgnoreCase("No Station Name"))
                    obj1 = mContext.getResources().getString(0x7f07028d);
                else
                    obj1 = ((MtvFile) (obj2)).getChannelName();
                if(MtvUtilAppService.getCurrentOrientation(mContext) == 0)
                {
                    ((ViewHolder) (obj)).infoTextView2.setText(view);
                    ((ViewHolder) (obj)).infoTextView3.setText(((CharSequence) (obj1)));
                } else
                {
                    ((ViewHolder) (obj)).infoTextView2.setText((new StringBuilder()).append(view).append(" ").append(((String) (obj1))).toString());
                }
                if(((MtvFile) (obj2)).getProgramName() == null || ((MtvFile) (obj2)).getProgramName().isEmpty() || ((MtvFile) (obj2)).getProgramName().equals("No Program Name"))
                    view = mContext.getResources().getString(0x7f07028a);
                else
                    view = ((MtvFile) (obj2)).getProgramName();
                if(((ViewHolder) (obj)).infoTextView1 != null)
                    ((ViewHolder) (obj)).infoTextView1.setText(view);
                if(((ViewHolder) (obj)).mPreImageView != null)
                    MtvUiFragTVFilesList.setFileInfo(((MtvFile) (obj2)), ((ViewHolder) (obj)).mPreImageView, ((ViewHolder) (obj)).mPlayImageView);
                if(MtvFeatures.isHoverEnabled() && ((ViewHolder) (obj)).infoTextView1 != null)
                {
                    ((ViewHolder) (obj)).infoTextView1.setHoverPopupType(1);
                    ((ViewHolder) (obj)).infoTextView1.getHoverPopupWindow().setHoverDetectTime(300);
                    if(((MtvFile) (obj2)).getProgramName() == null || ((MtvFile) (obj2)).getProgramName().isEmpty())
                        ((ViewHolder) (obj)).infoTextView1.setContentDescription(mContext.getResources().getString(0x7f07028a));
                    else
                        ((ViewHolder) (obj)).infoTextView1.getHoverPopupWindow().setContent(((MtvFile) (obj2)).getProgramName());
                    ((ViewHolder) (obj)).infoTextView1.getHoverPopupWindow().setPopupGravity(12337);
                    ((ViewHolder) (obj)).infoTextView1.getHoverPopupWindow().setPopupPosOffset(0, -10);
                }
            }
            return viewgroup;
        }

        private Context mContext;
        private MtvFile mFileList[];

        public MtvFileAdapter(Context context, int i)
        {
            this(context, i, null);
        }

        public MtvFileAdapter(Context context, int i, MtvFile amtvfile[])
        {
            super(context, i, amtvfile);
            mFileList = null;
            mContext = null;
            mFileList = amtvfile;
            mContext = context;
        }
    }

    public static class ViewDetailsFragment extends DialogFragment
    {

        private Dialog buildDialog(ArrayList arraylist)
        {
            arraylist = new SimpleAdapter(getActivity(), arraylist, 0x7f030039, new String[] {
                "title", "value"
            }, new int[] {
                0x7f0a013e, 0x7f0a013f
            });
            arraylist = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f07023a).setAdapter(arraylist, null).setNegativeButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(dialoginterface != null)
                        dialoginterface.dismiss();
                }

                final ViewDetailsFragment this$0;

            
            {
                this$0 = ViewDetailsFragment.this;
                super();
            }
            }
).create();
            arraylist.requestWindowFeature(1);
            arraylist.getWindow().setFlags(1024, 1024);
            arraylist.setCanceledOnTouchOutside(false);
            return arraylist;
        }

        private ArrayList constructDetails()
        {
            ArrayList arraylist = new ArrayList();
            String s = getString(0x7f070254);
            String s1 = getFileFormatString();
            HashMap hashmap = new HashMap();
            hashmap.put("title", s);
            hashmap.put("value", s1);
            arraylist.add(hashmap);
            s = getString(0x7f070253);
            s1 = getFileSizeString();
            hashmap = new HashMap();
            hashmap.put("title", s);
            hashmap.put("value", s1);
            arraylist.add(hashmap);
            s = getString(0x7f070251);
            s1 = getFileLocationString();
            hashmap = new HashMap();
            hashmap.put("title", s);
            hashmap.put("value", s1);
            arraylist.add(hashmap);
            return arraylist;
        }

        private String getFileFormatString()
        {
            switch(mMtvFile.getFileFormat())
            {
            default:
                return getString(0x7f070309);

            case 2: // '\002'
                return getString(0x7f07025d);

            case 1: // '\001'
                return getString(0x7f07030e);

            case 0: // '\0'
                return getString(0x7f07030e);
            }
        }

        private String getFileLocationString()
        {
            if(mMtvFile.getFilePath().contains("PhMem") || mMtvFile.getFilePath().contains("Phone") || mMtvFile.getFilePath().contains("sdcard"))
                return getString(0x7f0702a1);
            else
                return getString(0x7f070275);
        }

        private String getFileSizeString()
        {
            DecimalFormat decimalformat = new DecimalFormat("###,###.##");
            if(mMtvFile.getFileSize() < 0x100000L)
                return (new StringBuilder()).append(decimalformat.format((double)mMtvFile.getFileSize() / 1024D)).append(getString(0x7f070262)).toString();
            else
                return (new StringBuilder()).append(decimalformat.format((double)mMtvFile.getFileSize() / 1048576D)).append(getString(0x7f070273)).toString();
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
                mMtvFile = (MtvFile)bundle.getSerializable("mMtvFile");
            return buildDialog(constructDetails());
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putSerializable("mMtvFile", mMtvFile);
            super.onSaveInstanceState(bundle);
        }

        private static final String LocationTag1 = "PhMem";
        private static final String LocationTag2 = "Phone";
        private static final String LocationTag3 = "sdcard";
        public static final String TAG = "ViewDetailsFragment";
        private MtvFile mMtvFile;

        public ViewDetailsFragment()
        {
        }

        public ViewDetailsFragment(MtvFile mtvfile)
        {
            this();
            mMtvFile = mtvfile;
            MtvUtilDebug.Low("ViewDetailsFragment", (new StringBuilder()).append("mMTvFile :\n").append(mtvfile).toString());
        }
    }

    private static class ViewHolder
    {

        public RelativeLayout deleteLayout;
        public TextView infoTextView1;
        public TextView infoTextView2;
        public TextView infoTextView3;
        public ImageView mPlayImageView;
        public ImageView mPreImageView;

        private ViewHolder()
        {
        }

    }


    public MtvUiFragTVFilesList()
    {
        mMtvFileList = null;
        mProgressDialog = null;
        mHandler = new Handler() {

            public void handleMessage(Message message)
            {
            }

            final MtvUiFragTVFilesList this$0;

            
            {
                this$0 = MtvUiFragTVFilesList.this;
                super();
            }
        }
;
        mTimedRemoveDialog = new Runnable() {

            public void run()
            {
                MtvUtilDebug.Low(MtvUiFragTVFilesList.TAG, "Remove dialog progress");
                mHandler.removeCallbacks(mTimedRemoveDialog);
                if(mProgressDialog != null)
                {
                    mProgressDialog.dismiss();
                    mProgressDialog = null;
                }
                populateTVFileList();
            }

            final MtvUiFragTVFilesList this$0;

            
            {
                this$0 = MtvUiFragTVFilesList.this;
                super();
            }
        }
;
    }

    private static Bitmap decodeBitmap(String s)
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

    private static String getPreviewThumbnailPath(MtvFile mtvfile)
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
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("getPreviewThumbnailPath = ").append(mtvfile).append(s).toString());
        return (new StringBuilder()).append(mtvfile).append(s).toString();
    }

    private void populateTVFileList()
    {
        MtvUtilDebug.Low(TAG, "populateTVFileList");
        if(mLayoutView != null)
        {
            mListView = (ListView)mLayoutView.findViewById(0x7f0a00c0);
            ((ImageView)mLayoutView.findViewById(0x7f0a00c2)).setImageAlpha(90);
            mListView.setEmptyView(mLayoutView.findViewById(0x7f0a00c1));
            mListView.setAdapter(null);
        }
        MtvFileManager.getAvailableTVRecFilesEx(this);
    }

    private static void setFileInfo(MtvFile mtvfile, ImageView imageview, ImageView imageview1)
    {
        if(mtvfile != null) goto _L2; else goto _L1
_L1:
        imageview.setTag(null);
_L4:
        return;
_L2:
        imageview.setTag(mtvfile);
        imageview1.setVisibility(8);
        if(mtvfile.getFilePath() == null) goto _L4; else goto _L3
_L3:
        mtvfile.getFileFormat();
        JVM INSTR tableswitch 0 2: default 60
    //                   0 61
    //                   1 275
    //                   2 78;
           goto _L5 _L6 _L7 _L8
_L5:
        return;
_L6:
        imageview.setImageBitmap(decodeBitmap(getPreviewThumbnailPath(mtvfile)));
        imageview1.setVisibility(0);
        return;
_L8:
        ByteBuffer bytebuffer;
        imageview1 = null;
        bytebuffer = null;
        mtvfile = new FileInputStream(mtvfile.getFilePath());
        imageview1 = new MtvUtilCrypto(2);
        bytebuffer = ByteBuffer.allocate(imageview1.getOutputSize(2, (int)mtvfile.getChannel().size()));
        ByteBuffer bytebuffer1 = ByteBuffer.allocate((int)mtvfile.getChannel().size());
        int i = mtvfile.read(bytebuffer1.array());
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append(" numberOfBytes ").append(i).toString());
        imageview1.decryptData(bytebuffer1, bytebuffer);
        imageview.setImageBitmap(BitmapFactory.decodeByteArray(bytebuffer.array(), 0, bytebuffer.array().length));
_L11:
        if(mtvfile == null) goto _L10; else goto _L9
_L9:
        mtvfile.close();
_L10:
        return;
        imageview;
        imageview.printStackTrace();
          goto _L11
        imageview;
_L19:
        imageview1 = mtvfile;
        imageview.printStackTrace();
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
        imageview;
        imageview.printStackTrace();
          goto _L11
        imageview1;
        imageview = mtvfile;
        mtvfile = imageview1;
_L18:
        if(imageview != null)
            try
            {
                imageview.close();
            }
            // Misplaced declaration of an exception variable
            catch(ImageView imageview)
            {
                imageview.printStackTrace();
            }
        throw mtvfile;
        mtvfile;
        mtvfile.printStackTrace();
        return;
_L7:
        String s;
        Object obj = null;
        bytebuffer = null;
        s = getPreviewThumbnailPath(mtvfile);
        if(s == null)
        {
            imageview.setVisibility(4);
            imageview1.setVisibility(0);
            return;
        }
        imageview1.setVisibility(0);
        imageview.setImageBitmap(null);
        mtvfile = obj;
        imageview1 = new FileInputStream(s);
        mtvfile = new MtvUtilCrypto(2);
        bytebuffer = ByteBuffer.allocate(mtvfile.getOutputSize(2, (int)imageview1.getChannel().size()));
        ByteBuffer bytebuffer2 = ByteBuffer.allocate((int)imageview1.getChannel().size());
        int j = imageview1.read(bytebuffer2.array());
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append(" numberOfBytes ").append(j).toString());
        mtvfile.decryptData(bytebuffer2, bytebuffer);
        imageview.setImageBitmap(BitmapFactory.decodeByteArray(bytebuffer.array(), 0, bytebuffer.array().length));
_L14:
        if(imageview1 == null) goto _L13; else goto _L12
_L12:
        imageview1.close();
_L13:
        return;
        mtvfile;
        MtvUtilDebug.Low(TAG, "Stream reading failed");
        mtvfile.printStackTrace();
          goto _L14
        mtvfile;
        imageview = imageview1;
        imageview1 = mtvfile;
_L17:
        mtvfile = imageview;
        MtvUtilDebug.Low(TAG, "unable to find the thumbail");
        mtvfile = imageview;
        imageview1.printStackTrace();
        if(imageview != null)
        {
            try
            {
                imageview.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch(MtvFile mtvfile)
            {
                MtvUtilDebug.Low(TAG, "Failure in fetching the thumbnail");
            }
            mtvfile.printStackTrace();
            return;
        }
          goto _L4
        mtvfile;
        MtvUtilDebug.Low(TAG, "Something's wrong,Exception caught");
        mtvfile.printStackTrace();
          goto _L14
        mtvfile;
_L16:
        if(imageview1 != null)
            try
            {
                imageview1.close();
            }
            // Misplaced declaration of an exception variable
            catch(ImageView imageview)
            {
                MtvUtilDebug.Low(TAG, "Failure in fetching the thumbnail");
                imageview.printStackTrace();
            }
        throw mtvfile;
        mtvfile;
        MtvUtilDebug.Low(TAG, "Failure in fetching the thumbnail");
        mtvfile.printStackTrace();
        return;
        imageview;
        imageview1 = mtvfile;
        mtvfile = imageview;
        if(true) goto _L16; else goto _L15
_L15:
        imageview1;
        imageview = bytebuffer;
          goto _L17
        mtvfile;
        imageview = imageview1;
          goto _L18
        imageview;
        mtvfile = bytebuffer;
          goto _L19
    }

    private void startFilePlayer(MtvFile mtvfile)
    {
        Intent intent = new Intent(myActivity.getApplicationContext(), com/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer);
        MtvUtilDebug.Low(TAG, "startFilePlayer");
        intent.putExtra("MtvFile", mtvfile);
        startActivityForResult(intent, 0);
    }

    public void onClick(View view)
    {
        if(mMtvFileList != null && mMtvFileList.length > 0)
        {
            view = (MtvFile)view.getTag();
            mListView.setOnItemClickListener(null);
            if(view != null)
                startFilePlayer(view);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low(TAG, "onCreate called...");
        mPreferences = new MtvPreferences(getActivity().getApplicationContext());
        myActivity = getActivity();
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.Low(TAG, "onCreateView...");
        mLayoutView = layoutinflater.inflate(0x7f030024, viewgroup, false);
        return mLayoutView;
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low(TAG, " onDestroy...");
        mHandler.removeCallbacksAndMessages(null);
        mHandler = null;
        super.onDestroy();
    }

    public void onDestroyView()
    {
        super.onDestroyView();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onItemClick: position - ").append(i).toString());
        adapterview = mMtvFileList[i];
        view = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(view != null)
            MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onItemClick: currentCmd - ").append(view.getState().getOp()).append(" Type - ").append(view.getType()).toString());
        else
            MtvUtilDebug.Low(TAG, "mMtvAppPlaybackContext is null");
        if(view != null && view.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV)
        {
            startFilePlayer(adapterview);
            mPreferences.setLatestFileIndex(i);
            adapter.notifyDataSetChanged();
            return;
        } else
        {
            Toast.makeText(getActivity().getApplicationContext(), 0x7f07029b, 0).show();
            return;
        }
    }

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append(" onItemLongClick: position[").append(i).append("]").toString());
        if(mMtvFileList != null && mMtvFileList.length > 0)
        {
            view = new Bundle();
            MtvUtilDebug.Low(TAG, "onItemLongClick");
            sSelectedFile = mMtvFileList[i];
            mPreferences.setSelectedFileIndex(i);
            mPreferences.setLatestFileIndex(i);
            adapter.notifyDataSetChanged();
            if(sSelectedFile.getProgramName() == null || sSelectedFile.getProgramName().equals("null") || sSelectedFile.getProgramName().equals("nul") || sSelectedFile.getProgramName().equals("No Program Name"))
                adapterview = getResources().getString(0x7f07028a);
            else
                adapterview = sSelectedFile.getProgramName();
            view.putInt("dialogType", 3);
            view.putString("title", (new StringBuilder()).append(sSelectedFile.getChannelName()).append(" ").append(adapterview).toString());
            view.putInt("fileType", sSelectedFile.getFileFormat());
            MtvUiDialogsFrag.newInstance(view).show(getActivity().getFragmentManager(), "dialog");
        }
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 34
    //                   1 47
    //                   2 81;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        ((MtvUiChannelGuide)getActivity()).addMemInfoFrag();
        continue; /* Loop/switch isn't completed */
_L3:
        menuitem = new Intent(myActivity, com/samsung/sec/mtv/ui/common/MtvUiRemoveList);
        menuitem.putExtra("Remove_List_Type", 103);
        startActivityForResult(menuitem, 0);
        continue; /* Loop/switch isn't completed */
_L4:
        menuitem = new Bundle();
        menuitem.putInt("dialogType", 19);
        MtvUiDialogsFrag.newInstance(menuitem).show(getFragmentManager(), "auto_play_next");
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void onPostUpdate(MtvFile amtvfile[], boolean flag)
    {
        MtvUtilDebug.Low(TAG, "onPostUpdate...");
        if(mListView == null || amtvfile == null)
        {
            MtvUtilDebug.Error(TAG, "onPostUpdate: No View to Update or No newlist to Update.");
        } else
        {
            if(amtvfile != mMtvFileList)
                mMtvFileList = amtvfile;
            else
                MtvUtilDebug.Low(TAG, "onPostUpdate old list returned... No need to Update...");
            if(getActivity() != null)
            {
                getActivity().runOnUiThread(new Runnable() {

                    public void run()
                    {
                        if(mMtvFileList != null && mMtvFileList.length != 0)
                        {
                            if(MtvUiFragTVFilesList.adapter != null && MtvUiFragTVFilesList.adapter.getAdapterData() == mMtvFileList)
                            {
                                MtvUtilDebug.Low(MtvUiFragTVFilesList.TAG, "Adapter Data not changed... Retaining the old Adapter...");
                            } else
                            {
                                MtvUtilDebug.Low(MtvUiFragTVFilesList.TAG, "Adapter Data  changed... Creating new  Adapter...");
                                MtvUiFragTVFilesList.adapter = new MtvFileAdapter(myActivity.getApplicationContext(), 0x7f030038, mMtvFileList);
                            }
                        } else
                        {
                            MtvUiFragTVFilesList.adapter = null;
                        }
                        mListView.setAdapter(MtvUiFragTVFilesList.adapter);
                        mListView.setOnItemClickListener(MtvUiFragTVFilesList.this);
                        mListView.setOnItemLongClickListener(MtvUiFragTVFilesList.this);
                        if(mPreferences != null && mPreferences.getSelectedFileIndex() != -1)
                            mListView.setSelection(mPreferences.getSelectedFileIndex());
                    }

                    final MtvUiFragTVFilesList this$0;

            
            {
                this$0 = MtvUiFragTVFilesList.this;
                super();
            }
                }
);
                return;
            }
        }
    }

    public void onPrepareOptionsMenu(Menu menu)
    {
        super.onPrepareOptionsMenu(menu);
        menu.clear();
        if(mMtvFileList != null && mMtvFileList.length > 0)
            menu.add(0, 2, 0, 0x7f0701ee);
        menu.add(0, 0, 0, 0x7f070258).setIcon(0x7f0200b2);
        if(mMtvFileList != null && mMtvFileList.length > 0)
            menu.add(0, 1, 0, 0x7f070237).setIcon(0x7f0200b1);
    }

    public void onResume()
    {
        super.onResume();
        MtvUtilDebug.Low(TAG, "onResume called");
        populateTVFileList();
    }

    public void onStop()
    {
        super.onStop();
        MtvUtilDebug.Low(TAG, "onStop ...");
    }

    public void onUpdate(int i, Object obj)
    {
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onUpdate: what[").append(i).append("]").toString());
        i;
        JVM INSTR lookupswitch 10: default 124
    //                   1: 131
    //                   2: 226
    //                   3: 203
    //                   4: 277
    //                   7: 578
    //                   115: 233
    //                   167: 240
    //                   268: 376
    //                   269: 461
    //                   270: 543;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
        super.onUpdate(i, obj);
        return;
_L2:
        Bundle bundle = new Bundle();
        bundle.putInt("dialogType", 4);
        bundle.putString("filePath", sSelectedFile.getFilePath());
        bundle.putInt("index", sSelectedFile.getIndex());
        bundle.putInt("fileType", sSelectedFile.getFileFormat());
        MtvUiDialogsFrag.newInstance(bundle).show(getFragmentManager(), "delete_tvfile");
        continue; /* Loop/switch isn't completed */
_L4:
        (new ViewDetailsFragment(sSelectedFile)).show(getFragmentManager(), "ViewDetailsFragment");
        continue; /* Loop/switch isn't completed */
_L3:
        populateTVFileList();
        continue; /* Loop/switch isn't completed */
_L7:
        populateTVFileList();
        continue; /* Loop/switch isn't completed */
_L8:
        if(mProgressDialog != null)
        {
            mProgressDialog.dismiss();
            mProgressDialog = null;
        }
        mHandler.removeCallbacks(mTimedRemoveDialog);
        populateTVFileList();
        continue; /* Loop/switch isn't completed */
_L5:
        mProgressDialog = new ProgressDialog(getActivity());
        mProgressDialog.setTitle(0x7f070237);
        mProgressDialog.setMessage(getString(0x7f0702a6));
        mProgressDialog.setIndeterminate(true);
        mProgressDialog.setCancelable(false);
        mProgressDialog.setCanceledOnTouchOutside(false);
        mProgressDialog.show();
        mHandler.removeCallbacks(mTimedRemoveDialog);
        mHandler.postDelayed(mTimedRemoveDialog, 5000L);
        continue; /* Loop/switch isn't completed */
_L9:
        MtvUtilDebug.Low(TAG, " MTV_UPDATE_FRAG_CMD_TV_FILES_RENAME_DIALOG ");
        Bundle bundle1 = new Bundle();
        bundle1.putInt("dialogType", 20);
        bundle1.putString("filePath", sSelectedFile.getFilePath());
        bundle1.putString("fileName", sSelectedFile.getProgramName().trim());
        bundle1.putInt("index", sSelectedFile.getIndex());
        MtvUiDialogsFrag.newInstance(bundle1).show(getFragmentManager(), "rename_tvfile");
        continue; /* Loop/switch isn't completed */
_L10:
        MtvUtilDebug.Low(TAG, "  MTV_UPDATE_FRAG_CMD_RENAME_PROGRESS_DIALOG_SHOW ");
        mProgressDialog = new ProgressDialog(getActivity());
        mProgressDialog.setTitle(0x7f0702b6);
        mProgressDialog.setMessage(getString(0x7f0702a6));
        mProgressDialog.setIndeterminate(true);
        mProgressDialog.setCancelable(false);
        mProgressDialog.setCanceledOnTouchOutside(false);
        mProgressDialog.show();
        continue; /* Loop/switch isn't completed */
_L11:
        MtvUtilDebug.Low(TAG, "  MTV_UPDATE_FRAG_CMD_RENAME_PROGRESS_DIALOG_DISMISS ");
        if(mProgressDialog != null)
        {
            mProgressDialog.dismiss();
            mProgressDialog = null;
        }
        populateTVFileList();
        continue; /* Loop/switch isn't completed */
_L6:
        MtvUtilDebug.Low(TAG, "  UPDATE_DISMISS_DIALOG  ");
        if(sSelectedFile != null && sSelectedFile.getIndex() < 0)
        {
            MtvUiDialogsFrag.removeDialog(getFragmentManager(), "rename_tvfile");
            MtvUiDialogsFrag.removeDialog(getFragmentManager(), "delete_tvfile");
            MtvUiDialogsFrag.removeDialog(getFragmentManager(), "ViewDetailsFragment");
        }
        if(true) goto _L1; else goto _L12
_L12:
    }

    private static final int MENU_AUTO_PLAY_NEXT = 2;
    private static final int MENU_DELETE_ITEM = 1;
    private static final int MENU_VIEW_FREE_MEMORY = 0;
    private static String TAG = "MtvUiFragTVFilesList";
    public static final int UPDATE_DELETE_PROGRESS = 4;
    public static final int UPDATE_DISMISS_LONGCLICK_DIALOG = 7;
    public static final int UPDATE_POPULATE_TV_LIST = 2;
    public static final int UPDATE_SHOW_DELETE_ALERT_DIALOG = 1;
    public static final int UPDATE_VIEW_DETAILS = 3;
    private static MtvFileAdapter adapter = null;
    private static MtvFile sSelectedFile = null;
    private Handler mHandler;
    private View mLayoutView;
    private ListView mListView;
    private MtvFile mMtvFileList[];
    private MtvPreferences mPreferences;
    private ProgressDialog mProgressDialog;
    private Runnable mTimedRemoveDialog;
    private Activity myActivity;









/*
    static ProgressDialog access$302(MtvUiFragTVFilesList mtvuifragtvfileslist, ProgressDialog progressdialog)
    {
        mtvuifragtvfileslist.mProgressDialog = progressdialog;
        return progressdialog;
    }

*/






/*
    static MtvFileAdapter access$802(MtvFileAdapter mtvfileadapter)
    {
        adapter = mtvfileadapter;
        return mtvfileadapter;
    }

*/

}
