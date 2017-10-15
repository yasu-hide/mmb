// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvUiSleepTimerDialogFrag

public class MtvUiSettingsDialogFrag extends DialogFragment
    implements android.view.View.OnClickListener
{
    public static class MemCardErrFragment extends DialogFragment
    {

        public void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
            if(bundle != null)
                messageStringId = bundle.getInt("messageStringId", -1);
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            bundle = "";
            if(messageStringId != -1)
                bundle = getString(messageStringId);
            return (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070276).setMessage(bundle).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                }

                final MemCardErrFragment this$0;

            
            {
                this$0 = MemCardErrFragment.this;
                super();
            }
            }
).create();
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putInt("messageStringId", messageStringId);
            super.onSaveInstanceState(bundle);
        }

        public static final String TAG = "MemCardErrFragment";
        private int messageStringId;

        public MemCardErrFragment()
        {
            messageStringId = -1;
        }

        public MemCardErrFragment(int i)
        {
            messageStringId = -1;
            messageStringId = i;
        }
    }

    private class MtvSettingsAdapter extends ArrayAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", "getView called");
            viewgroup = view;
            view = viewgroup;
            if(viewgroup == null)
                view = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030029, null);
            mSettingsItem = (TextView)view.findViewById(0x7f0a00e0);
            mSettingsState = (TextView)view.findViewById(0x7f0a00e1);
            viewgroup = mSettingsList[i];
            if(viewgroup != null)
            {
                mSettingsItem.setTextColor(-1);
                mSettingsState.setTextColor(Color.parseColor("#2fa6c9"));
                mSettingsItem.setText(viewgroup);
            }
            MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", (new StringBuilder()).append("position =").append(i).toString());
            viewgroup = (String)adapter.getItem(i);
            if(!viewgroup.equals(getResources().getString(0x7f07020f))) goto _L2; else goto _L1
_L1:
            MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", (new StringBuilder()).append("mPreferences.isCaptionEnabled()=").append(mPreferences.isCaptionEnabled()).toString());
            if(!mPreferences.isCaptionEnabled()) goto _L4; else goto _L3
_L3:
            mSettingsState.setText(0x7f0701d8);
_L6:
            return view;
_L4:
            mSettingsState.setText(0x7f0701d7);
            return view;
_L2:
            if(viewgroup.equals(getResources().getString(0x7f070256)))
            {
                MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", (new StringBuilder()).append("mPreferences.isisframeIPEnabled()=").append(mPreferences.isframeIPEnabled()).toString());
                if(mPreferences.isframeIPEnabled())
                {
                    mSettingsState.setText(0x7f0701d8);
                    return view;
                } else
                {
                    mSettingsState.setText(0x7f0701d7);
                    return view;
                }
            }
            if(viewgroup.equals(getResources().getString(0x7f0702e8)))
            {
                MtvUtilDebug.Low("MtvUiSettingsDialogFrag", (new StringBuilder()).append("mPreferences.getAudioEffect()=").append(mPreferences.getAudioEffect()).toString());
                switch(mPreferences.getAudioEffect())
                {
                default:
                    return view;

                case 0: // '\0'
                    mSettingsState.setText(0x7f0702c1);
                    return view;

                case 1: // '\001'
                    mSettingsState.setText(0x7f070311);
                    return view;

                case 2: // '\002'
                    mSettingsState.setText(0x7f070281);
                    return view;

                case 3: // '\003'
                    mSettingsState.setText(0x7f0702f0);
                    break;
                }
                return view;
            }
            if(viewgroup.equals(getResources().getString(0x7f0701ed)))
            {
                MtvUtilDebug.Low("MtvUiSettingsDialogFrag", (new StringBuilder()).append("mPreferences.getAudiogetAudioLanguage()=").append(mPreferences.getAudioLanguage()).toString());
                switch(mPreferences.getAudioLanguage())
                {
                default:
                    return view;

                case 0: // '\0'
                    mSettingsState.setText(0x7f07026f);
                    return view;

                case 1: // '\001'
                    mSettingsState.setText(0x7f0702ef);
                    return view;

                case 2: // '\002'
                    mSettingsState.setText(0x7f070270);
                    break;
                }
                return view;
            }
            if(!viewgroup.equals(getResources().getString(0x7f0702e2)))
                break MISSING_BLOCK_LABEL_771;
            MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", (new StringBuilder()).append("mPreferences.getSaveToStorage()=").append(mPreferences.getSaveToStorage()).toString());
            switch(mPreferences.getSaveToStorage())
            {
            default:
                break;

            case 0: // '\0'
                break; /* Loop/switch isn't completed */

            case 1: // '\001'
                break;
            }
            break MISSING_BLOCK_LABEL_756;
_L7:
            if(mMtvAppPlaybackContext.getState().getOp() == 20487 || mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV)
            {
                mSettingsItem.setTextColor(0xff888888);
                mSettingsState.setTextColor(0xff888888);
                return view;
            }
            if(true) goto _L6; else goto _L5
_L5:
            mSettingsState.setText(0x7f070275);
              goto _L7
            mSettingsState.setText(0x7f0702a1);
              goto _L7
            if(viewgroup.equals(getResources().getString(0x7f0702e1)))
            {
                MtvUtilDebug.High("MtvUiSettingsDialogFrag", (new StringBuilder()).append("Launch Antenna ").append(mPreferences.getAntennaOnOff()).toString());
                switch(mPreferences.getAntennaOnOff())
                {
                default:
                    return view;

                case 0: // '\0'
                    mSettingsState.setText(0x7f0701d7);
                    return view;

                case 1: // '\001'
                    mSettingsState.setText(0x7f0701d8);
                    break;
                }
                return view;
            }
            if(!viewgroup.equals(getResources().getString(0x7f0702de)))
                break; /* Loop/switch isn't completed */
            if(mPreferences == null)
                mPreferences = new MtvPreferences(getActivity());
            int j = mPreferences.getAutoPowerOffTime();
            switch(j)
            {
            default:
                i = j / 60;
                j %= 60;
                if(i != 0 && j == 0)
                    mSettingsState.setText(String.format(getString(0x7f0701dc), new Object[] {
                        Integer.valueOf(i)
                    }));
                if(j != 0 && i == 0)
                    mSettingsState.setText(String.format(getString(0x7f0701de), new Object[] {
                        Integer.valueOf(j)
                    }));
                if(j != 0 && i != 0)
                {
                    mSettingsState.setText((new StringBuilder()).append(String.format(getString(0x7f0701dd), new Object[] {
                        Integer.valueOf(i)
                    })).append(" ").append(String.format(getString(0x7f0701df), new Object[] {
                        Integer.valueOf(j)
                    })).toString());
                    return view;
                }
                break;

            case 0: // '\0'
                mSettingsState.setText(getString(0x7f070291));
                return view;

            case 60: // '<'
                mSettingsState.setText(getString(0x7f0701da));
                return view;

            case 120: // 'x'
                mSettingsState.setText(getString(0x7f0701db));
                return view;
            }
            if(true) goto _L6; else goto _L8
_L8:
            if(viewgroup.equals(getResources().getString(0x7f0702df)))
            {
                MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", "broadcast data");
                mSettingsState.setText("");
                return view;
            } else
            {
                MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", "Wrong item, ideally should not come here !");
                return view;
            }
        }

        private MtvPreferences mPreferences;
        private String mSettingsList[];
        final MtvUiSettingsDialogFrag this$0;

        public MtvSettingsAdapter(Context context, int i)
        {
            this$0 = MtvUiSettingsDialogFrag.this;
            super(context, i);
            mSettingsList = null;
            mPreferences = null;
        }

        public MtvSettingsAdapter(Context context, int i, String as[])
        {
            this$0 = MtvUiSettingsDialogFrag.this;
            super(context, i, as);
            mSettingsList = null;
            mPreferences = null;
            mSettingsList = as;
            if(mPreferences == null)
                mPreferences = new MtvPreferences(context.getApplicationContext());
        }
    }

    public static class SettingsPopUpDialogFragment extends DialogFragment
    {

        public void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
            MtvUtilDebug.Mid("SettingsPopUpDialogFragment", "Inside SettingsPopUpDialogFragment oncreate");
            mPreference = new MtvPreferences(getActivity());
            mMtvAudioManager = MtvUtilAudioManager.getInstance(getActivity());
            if(bundle != null)
            {
                titleValue = bundle.getInt("dialog_title");
                builderItemsID = bundle.getIntArray("dialog_string_id");
            }
            MtvUtilDebug.Mid("SettingsPopUpDialogFragment", (new StringBuilder()).append("oncreate: titlevalue =").append(titleValue).toString());
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            int i;
            boolean flag;
            boolean flag1;
            flag = true;
            flag1 = true;
            i = 1;
            MtvUtilDebug.Low("SettingsPopUpDialogFragment", (new StringBuilder()).append("oncreatedialog: titlevalue =").append(titleValue).toString());
            mListener = (MtvUiFrag.IMtvFragEventListener)getActivity();
            titleValue;
            JVM INSTR tableswitch 0 6: default 88
        //                       0 160
        //                       1 196
        //                       2 227
        //                       3 251
        //                       4 88
        //                       5 321
        //                       6 354;
               goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
            String as[] = new String[0];
            bundle = as;
            if(builderItemsID != null)
            {
                bundle = as;
                if(builderItemsID.length > 0)
                {
                    String as1[] = new String[builderItemsID.length];
                    i = 0;
                    do
                    {
                        bundle = as1;
                        if(i >= builderItemsID.length)
                            break;
                        as1[i] = getString(builderItemsID[i]);
                        i++;
                    } while(true);
                }
            }
            break; /* Loop/switch isn't completed */
_L2:
            if(mPreference.isCaptionEnabled())
                i = 0;
            else
                i = 1;
            selectedItem = i;
            title = getString(0x7f07020f);
            continue; /* Loop/switch isn't completed */
_L3:
            if(mPreference.isframeIPEnabled())
                i = 0;
            selectedItem = i;
            title = getString(0x7f070256);
            continue; /* Loop/switch isn't completed */
_L4:
            selectedItem = mPreference.getAudioEffect();
            title = getString(0x7f0702e8);
            continue; /* Loop/switch isn't completed */
_L5:
            mPreference.getAudioLanguage();
            JVM INSTR tableswitch 0 2: default 284
        //                       0 297
        //                       1 305
        //                       2 313;
               goto _L8 _L9 _L10 _L11
_L8:
            title = getString(0x7f0701ed);
            continue; /* Loop/switch isn't completed */
_L9:
            selectedItem = 0;
            continue; /* Loop/switch isn't completed */
_L10:
            selectedItem = 1;
            continue; /* Loop/switch isn't completed */
_L11:
            selectedItem = 2;
            if(true) goto _L8; else goto _L6
_L6:
            int j = ((flag) ? 1 : 0);
            if(mPreference.getSaveToStorage() == 1)
                j = 0;
            selectedItem = j;
            title = getString(0x7f0702e2);
            continue; /* Loop/switch isn't completed */
_L7:
            int k = ((flag1) ? 1 : 0);
            if(mPreference.getAntennaOnOff() == 1)
                k = 0;
            selectedItem = k;
            title = getString(0x7f0702e1);
            if(true) goto _L1; else goto _L12
_L12:
            bundle = (new android.app.AlertDialog.Builder(getActivity())).setTitle(title).setSingleChoiceItems(bundle, selectedItem, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    SettingsPopUpDialogFragment.titleValue;
                    JVM INSTR tableswitch 0 6: default 44
                //                               0 58
                //                               1 106
                //                               2 218
                //                               3 243
                //                               4 44
                //                               5 353
                //                               6 449;
                       goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
                    if(SettingsPopUpDialogFragment.titleValue != 2)
                        dialoginterface.dismiss();
                    return;
_L2:
                    if(i == 0)
                        mPreference.setCaptionEnabled(true);
                    else
                        mPreference.setCaptionEnabled(false);
                    mListener.onFragEvent(202, null);
                    continue; /* Loop/switch isn't completed */
_L3:
                    MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                    IMtvOneSegVideoControl imtvonesegvideocontrol = null;
                    if(mtvappplaybackcontext != null)
                    {
                        mtvappplaybackcontext.getComponents().getVideo().enable();
                        imtvonesegvideocontrol = mtvappplaybackcontext.getComponents().getVideo().getControlInterface();
                    }
                    if(imtvonesegvideocontrol == null)
                    {
                        MtvUtilDebug.Error("SettingsPopUpDialogFragment", "Failure in obtaining Video Control Component !");
                        return;
                    }
                    if(i == 0)
                    {
                        MtvUtilDebug.High("SettingsPopUpDialogFragment", "frame interpolation enabled ! ~ ");
                        imtvonesegvideocontrol.setFrameRateChange(1);
                        mPreference.setFrameIPEnabled(true);
                    } else
                    {
                        MtvUtilDebug.High("SettingsPopUpDialogFragment", "frame interpolation disabled ! ~ ");
                        imtvonesegvideocontrol.setFrameRateChange(0);
                        mPreference.setFrameIPEnabled(false);
                    }
                    continue; /* Loop/switch isn't completed */
_L4:
                    selectedItem = i;
                    mMtvAudioManager.setAudioEffect(i, false);
                    continue; /* Loop/switch isn't completed */
_L5:
                    switch(i)
                    {
                    case 0: // '\0'
                        mMtvAudioManager.setAudioMode(0);
                        mPreference.setAudioLanguage(0);
                        break;

                    case 1: // '\001'
                        mMtvAudioManager.setAudioMode(1);
                        mPreference.setAudioLanguage(1);
                        break;

                    case 2: // '\002'
                        mMtvAudioManager.setAudioMode(2);
                        mPreference.setAudioLanguage(2);
                        break;
                    }
                    if(false)
                        ;
                    continue; /* Loop/switch isn't completed */
_L6:
                    if(i == 0)
                        mPreference.setSaveToStorage(1);
                    else
                    if(!MtvUtilMemoryStatus.isExternalMemoryAvailable())
                        (new MemCardErrFragment(0x7f070279)).show(getFragmentManager(), "MemCardErrFragment");
                    else
                    if(MtvUtilMemoryStatus.getAvailableExternalMemorySize() < 0x204000L)
                        (new MemCardErrFragment(0x7f070277)).show(getFragmentManager(), "MemCardErrFragment");
                    else
                        mPreference.setSaveToStorage(0);
                    continue; /* Loop/switch isn't completed */
_L7:
                    if(i == 0)
                    {
                        mPreference.setAntennaOnOff(1);
                        MtvUtilDebug.High("SettingsPopUpDialogFragment", (new StringBuilder()).append("Launch Antenna ").append(mPreference.getAntennaOnOff()).toString());
                    } else
                    {
                        mPreference.setAntennaOnOff(0);
                        MtvUtilDebug.High("SettingsPopUpDialogFragment", (new StringBuilder()).append("Launch Antenna ").append(mPreference.getAntennaOnOff()).toString());
                    }
                    if(true) goto _L1; else goto _L8
_L8:
                }

                final SettingsPopUpDialogFragment this$0;

            
            {
                this$0 = SettingsPopUpDialogFragment.this;
                super();
            }
            }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(SettingsPopUpDialogFragment.titleValue == 2)
                        mMtvAudioManager.setAudioEffect(mPreference.getAudioEffect(), false);
                    dialoginterface.dismiss();
                }

                final SettingsPopUpDialogFragment this$0;

            
            {
                this$0 = SettingsPopUpDialogFragment.this;
                super();
            }
            }
);
            if(titleValue == 2)
                bundle.setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        if(SettingsPopUpDialogFragment.titleValue == 2 && MtvUtilAudioManager.getInstance(getActivity()).isHeadsetConnected())
                            mMtvAudioManager.setAudioEffect(selectedItem, true);
                        dialoginterface.dismiss();
                    }

                    final SettingsPopUpDialogFragment this$0;

            
            {
                this$0 = SettingsPopUpDialogFragment.this;
                super();
            }
                }
);
            bundle = bundle.create();
            bundle.getWindow().addFlags(1024);
            bundle.setCanceledOnTouchOutside(false);
            return bundle;
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            super.onSaveInstanceState(bundle);
            bundle.putInt("dialog_title", titleValue);
            bundle.putIntArray("dialog_string_id", builderItemsID);
            super.onSaveInstanceState(bundle);
        }

        private static final String DIALOG_STRING_ID = "dialog_string_id";
        private static final String DIALOG_TITLE = "dialog_title";
        public static final String TAG = "SettingsPopUpDialogFragment";
        private static int titleValue = 0;
        private int builderItemsID[];
        private MtvUiFrag.IMtvFragEventListener mListener;
        private MtvUtilAudioManager mMtvAudioManager;
        private MtvPreferences mPreference;
        private int selectedItem;
        String title;








/*
        static int access$602(SettingsPopUpDialogFragment settingspopupdialogfragment, int i)
        {
            settingspopupdialogfragment.selectedItem = i;
            return i;
        }

*/

        public SettingsPopUpDialogFragment()
        {
            this(0, null);
        }

        public SettingsPopUpDialogFragment(int i, int ai[])
        {
            title = null;
            mPreference = null;
            mListener = null;
            mMtvAudioManager = null;
            selectedItem = 0;
            builderItemsID = null;
            builderItemsID = ai;
            titleValue = i;
        }
    }


    public MtvUiSettingsDialogFrag()
    {
        dialog = null;
        adapter = null;
        mSettingsList = null;
    }

    private AlertDialog createDialogByType()
    {
        MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", "createDialogByType");
        dialog = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0702dc).setView(listItemLayout).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MtvUiSettingsDialogFrag this$0;

            
            {
                this$0 = MtvUiSettingsDialogFrag.this;
                super();
            }
        }
).create();
        dialog.getWindow().addFlags(1024);
        return dialog;
    }

    public static MtvUiSettingsDialogFrag newInstance(Bundle bundle)
    {
        MtvUiSettingsDialogFrag mtvuisettingsdialogfrag = new MtvUiSettingsDialogFrag();
        mtvuisettingsdialogfrag.setArguments(bundle);
        return mtvuisettingsdialogfrag;
    }

    private void populateSettingsList()
    {
        MtvUtilDebug.Low("MtvUiSettingsDialogFrag", "populateSettingsList");
        listLayout = (RelativeLayout)getActivity().findViewById(0x7f0a0131);
        listItemLayout = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(0x7f030036, listLayout, true);
        if(mListView == null)
            mListView = (ListView)listItemLayout.findViewById(0x7f0a0132);
        if(MtvFeatures.isAutoAntennaEnabled())
            mSettingsList = (new String[] {
                getString(0x7f07020f), getString(0x7f070256), getString(0x7f0702e8), getString(0x7f0701ed), getString(0x7f0702e2), getString(0x7f0702e1), getString(0x7f0702de), getString(0x7f0702df)
            });
        else
        if(!MtvFeatures.isSoundAliveSupported() && !MtvFeatures.isSDCardSupported())
            mSettingsList = (new String[] {
                getString(0x7f07020f), getString(0x7f070256), getString(0x7f0701ed), getString(0x7f0702de), getString(0x7f0702df)
            });
        else
        if(!MtvFeatures.isSoundAliveSupported())
            mSettingsList = (new String[] {
                getString(0x7f07020f), getString(0x7f070256), getString(0x7f0701ed), getString(0x7f0702e2), getString(0x7f0702de), getString(0x7f0702df)
            });
        else
        if(!MtvFeatures.isSDCardSupported())
            mSettingsList = (new String[] {
                getString(0x7f07020f), getString(0x7f070256), getString(0x7f0702e8), getString(0x7f0701ed), getString(0x7f0702de), getString(0x7f0702df)
            });
        else
            mSettingsList = (new String[] {
                getString(0x7f07020f), getString(0x7f070256), getString(0x7f0702e8), getString(0x7f0701ed), getString(0x7f0702e2), getString(0x7f0702de), getString(0x7f0702df)
            });
        if(mSettingsList != null)
            adapter = new MtvSettingsAdapter(getActivity(), 0x7f030029, mSettingsList);
        if(mListView != null)
        {
            mListView.setAdapter(adapter);
            mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                public void onItemClick(AdapterView adapterview, View view, int i, long l)
                {
                    adapterview = (String)adapter.getItem(i);
                    MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", (new StringBuilder()).append("onItemClick position = ").append(i).append(" Item = ").append(adapterview).toString());
                    if(!adapterview.equals(getResources().getString(0x7f07020f))) goto _L2; else goto _L1
_L1:
                    (new SettingsPopUpDialogFragment(0, new int[] {
                        0x7f0701d8, 0x7f0701d7
                    })).show(getActivity().getFragmentManager(), "SettingsPopUpDialogFragment");
_L6:
                    dismiss();
_L4:
                    return;
_L2:
                    if(adapterview.equals(getResources().getString(0x7f070256)))
                    {
                        (new SettingsPopUpDialogFragment(1, new int[] {
                            0x7f0701d8, 0x7f0701d7
                        })).show(getActivity().getFragmentManager(), "SettingsPopUpDialogFragment");
                        continue; /* Loop/switch isn't completed */
                    }
                    if(adapterview.equals(getResources().getString(0x7f0702e8)))
                    {
                        if(!MtvUtilAudioManager.getInstance(getActivity()).isHeadsetConnected())
                            Toast.makeText(getActivity(), 0x7f07030f, 0).show();
                        else
                            (new SettingsPopUpDialogFragment(2, new int[] {
                                0x7f0702c1, 0x7f070311, 0x7f070281, 0x7f0702f0
                            })).show(getActivity().getFragmentManager(), "SettingsPopUpDialogFragment");
                        continue; /* Loop/switch isn't completed */
                    }
                    if(adapterview.equals(getResources().getString(0x7f0701ed)))
                    {
                        (new SettingsPopUpDialogFragment(3, new int[] {
                            0x7f07026f, 0x7f0702ef, 0x7f070270
                        })).show(getActivity().getFragmentManager(), "SettingsPopUpDialogFragment");
                        continue; /* Loop/switch isn't completed */
                    }
                    if(!adapterview.equals(getResources().getString(0x7f0702e2)))
                        break; /* Loop/switch isn't completed */
                    if(mMtvAppPlaybackContext.getState().getOp() != 20487 && mMtvAppPlaybackContext.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV)
                    {
                        (new SettingsPopUpDialogFragment(5, new int[] {
                            0x7f0702a1, 0x7f070275
                        })).show(getActivity().getFragmentManager(), "SettingsPopUpDialogFragment");
                        continue; /* Loop/switch isn't completed */
                    }
                    if(true) goto _L4; else goto _L3
_L3:
                    if(adapterview.equals(getResources().getString(0x7f0702e1)))
                        (new SettingsPopUpDialogFragment(6, new int[] {
                            0x7f0701d8, 0x7f0701d7
                        })).show(getFragmentManager(), "SettingsPopUpDialogFragment");
                    else
                    if(adapterview.equals(getResources().getString(0x7f0702de)))
                    {
                        adapterview = new Bundle();
                        adapterview.putBoolean("expire", false);
                        adapterview.putInt("remainTime", (new MtvPreferences(getActivity())).getAutoPowerOffTime());
                        MtvUiSleepTimerDialogFrag.newInstance(adapterview).show(getActivity().getFragmentManager(), "dialog");
                    } else
                    if(adapterview.equals(getResources().getString(0x7f0702df)))
                    {
                        adapterview = new Intent();
                        adapterview.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiSettingsBroadcast"));
                        startActivity(adapterview);
                    } else
                    {
                        MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", "Wrong item selected, ideally should not come here !");
                    }
                    if(true) goto _L6; else goto _L5
_L5:
                }

                final MtvUiSettingsDialogFrag this$0;

            
            {
                this$0 = MtvUiSettingsDialogFrag.this;
                super();
            }
            }
);
        }
    }

    public void onClick(View view)
    {
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        MtvUtilDebug.Mid("MtvUiSettingsDialogFrag", "Inside OncreateDialog, MtvUiSettingsDialogFrag");
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        Bundle bundle1 = getArguments();
        bundle = null;
        populateSettingsList();
        if(bundle1 != null)
            bundle = createDialogByType();
        return bundle;
    }

    public void onResume()
    {
        super.onResume();
        adapter.notifyDataSetInvalidated();
    }

    public static final String TAG = "MtvUiSettingsDialogFrag";
    MtvSettingsAdapter adapter;
    AlertDialog dialog;
    View listItemLayout;
    private RelativeLayout listLayout;
    private ListView mListView;
    MtvAppPlaybackContext mMtvAppPlaybackContext;
    private TextView mSettingsItem;
    private String mSettingsList[];
    private TextView mSettingsState;



/*
    static TextView access$002(MtvUiSettingsDialogFrag mtvuisettingsdialogfrag, TextView textview)
    {
        mtvuisettingsdialogfrag.mSettingsItem = textview;
        return textview;
    }

*/



/*
    static TextView access$102(MtvUiSettingsDialogFrag mtvuisettingsdialogfrag, TextView textview)
    {
        mtvuisettingsdialogfrag.mSettingsState = textview;
        return textview;
    }

*/
}
