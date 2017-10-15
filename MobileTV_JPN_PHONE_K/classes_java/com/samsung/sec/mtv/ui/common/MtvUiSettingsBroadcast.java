// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.*;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvBaseActivity, MtvUiStationData

public class MtvUiSettingsBroadcast extends MtvBaseActivity
{
    private class BroadCastSettingsAdapter extends BaseAdapter
        implements android.view.View.OnClickListener
    {

        public int getCount()
        {
            if(listItems != null)
                return listItems.length;
            else
                return 0;
        }

        public Object getItem(int i)
        {
            if(listItems != null)
                return listItems[i];
            else
                return null;
        }

        public long getItemId(int i)
        {
            if(listItems != null)
                return (long)listItems[i].hashCode();
            else
                return 0L;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            viewgroup = getLayoutInflater();
            if(view == null)
                view = viewgroup.inflate(0x7f030035, null);
            if(MtvFeatures.isSDCardSupported() && i == 4 || !MtvFeatures.isSDCardSupported() && i == 3)
            {
                viewgroup = (CheckBox)view.findViewById(0x7f0a0130);
                viewgroup.setVisibility(0);
                viewgroup.setTag(Integer.valueOf(0x7f070271));
                viewgroup.setOnClickListener(this);
                boolean flag;
                if(mPreference.getBroadcastDataManufactureMode() == 0)
                    flag = true;
                else
                    flag = false;
                viewgroup.setChecked(flag);
            }
            viewgroup = (TextView)view.findViewById(0x7f0a012f);
            viewgroup.setText(listItems[i]);
            if(!listItems[i].equals(getString(0x7f0702da))) goto _L2; else goto _L1
_L1:
            view.setTag(Integer.valueOf(0x7f0702da));
_L4:
            view.setOnClickListener(this);
            if(((Integer)view.getTag()).intValue() == 0x7f0702da || ((Integer)view.getTag()).intValue() == 0x7f07025e)
            {
                mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                if(mMtvAppPlaybackContext != null && (mMtvAppPlaybackContext.getState().getOp() == 20487 || mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV))
                {
                    viewgroup.setTextColor(0xff888888);
                    view.setEnabled(false);
                }
            }
            return view;
_L2:
            if(listItems[i].equals(getString(0x7f07025e)))
                view.setTag(Integer.valueOf(0x7f07025e));
            else
            if(listItems[i].equals(getString(0x7f070293)))
                view.setTag(Integer.valueOf(0x7f070293));
            else
            if(listItems[i].equals(getString(0x7f070269)))
                view.setTag(Integer.valueOf(0x7f070269));
            else
            if(listItems[i].equals(getString(0x7f070271)))
                view.setTag(Integer.valueOf(0x7f070271));
            else
            if(listItems[i].equals(getString(0x7f070238)))
                view.setTag(Integer.valueOf(0x7f070238));
            if(true) goto _L4; else goto _L3
_L3:
        }

        public void onClick(View view)
        {
            Integer integer = (Integer)view.getTag();
            switch(integer.intValue())
            {
            default:
                return;

            case 2131165914: 
                (new OptionsDialogFragment(integer.intValue())).show(getFragmentManager(), "OptionsDialogFragment");
                return;

            case 2131165790: 
                (new OptionsDialogFragment(integer.intValue())).show(getFragmentManager(), "OptionsDialogFragment");
                return;

            case 2131165843: 
                (new OptionsDialogFragment(integer.intValue())).show(getFragmentManager(), "OptionsDialogFragment");
                return;

            case 2131165801: 
                (new OptionsDialogFragment(integer.intValue())).show(getFragmentManager(), "OptionsDialogFragment");
                return;

            case 2131165809: 
                if(view instanceof RelativeLayout)
                {
                    view = (CheckBox)view.findViewById(0x7f0a0130);
                    boolean flag;
                    if(!view.isChecked())
                        flag = true;
                    else
                        flag = false;
                    view.setChecked(flag);
                }
                if(mPreference == null)
                    mPreference = new MtvPreferences(getApplicationContext());
                if(mPreference.getBroadcastDataManufactureMode() == 0)
                {
                    mPreference.setBroadcastDataManufactureMode(1);
                    return;
                } else
                {
                    mPreference.setBroadcastDataManufactureMode(0);
                    return;
                }

            case 2131165752: 
                view = new Intent(MtvUiSettingsBroadcast.this, com/samsung/sec/mtv/ui/common/MtvUiStationData);
                startActivityForResult(view, 0);
                return;
            }
        }

        private String listItems[];
        final MtvUiSettingsBroadcast this$0;

        private BroadCastSettingsAdapter()
        {
            this$0 = MtvUiSettingsBroadcast.this;
            super();
            if(MtvFeatures.isSDCardSupported())
            {
                listItems = getResources().getStringArray(0x7f050002);
                return;
            } else
            {
                listItems = getResources().getStringArray(0x7f050003);
                return;
            }
        }

    }

    public static class OptionsDialogFragment extends DialogFragment
    {

        private Dialog createDialogByType()
        {
            int i;
            boolean flag;
            flag = false;
            i = 0;
            dialogType;
            JVM INSTR lookupswitch 4: default 52
        //                       2131165790: 122
        //                       2131165801: 243
        //                       2131165843: 177
        //                       2131165914: 70;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            Object obj = null;
_L7:
            if(obj != null)
                ((AlertDialog) (obj)).getWindow().addFlags(1024);
            return ((Dialog) (obj));
_L5:
            if(mPreference.getBroadcastSetRecordingMode() != 0)
                i = 1;
            obj = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f0702da).setSingleChoiceItems(0x7f050013, i, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(i == 0)
                        mPreference.setBroadcastSetRecordingMode(0);
                    else
                        mPreference.setBroadcastSetRecordingMode(1);
                    dialoginterface.dismiss();
                }

                final OptionsDialogFragment this$0;

            
            {
                this$0 = OptionsDialogFragment.this;
                super();
            }
            }
).create();
            continue; /* Loop/switch isn't completed */
_L2:
            if(mPreference.getBroadcastImageLocationStorage() == 1)
                i = ((flag) ? 1 : 0);
            else
                i = 1;
            obj = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f07025e).setSingleChoiceItems(0x7f05000a, i, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(i == 0)
                        mPreference.setBroadcastImageLocationStorage(1);
                    else
                    if(!MtvUtilMemoryStatus.isExternalMemoryAvailable())
                        (new MtvUiSettingsDialogFrag.MemCardErrFragment(0x7f070279)).show(getFragmentManager(), "MemCardErrFragment");
                    else
                    if(MtvUtilMemoryStatus.getAvailableExternalMemorySize() < 0x204000L)
                        (new MtvUiSettingsDialogFrag.MemCardErrFragment(0x7f070277)).show(getFragmentManager(), "MemCardErrFragment");
                    else
                        mPreference.setBroadcastImageLocationStorage(0);
                    dialoginterface.dismiss();
                }

                final OptionsDialogFragment this$0;

            
            {
                this$0 = OptionsDialogFragment.this;
                super();
            }
            }
).create();
            continue; /* Loop/switch isn't completed */
_L4:
            i = mPreference.getBroadcastDataNotifyMode();
            if(i == 0)
                i = 0;
            else
            if(i == 1)
                i = 1;
            else
                i = 2;
            obj = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070293).setSingleChoiceItems(0x7f05000c, i, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    i;
                    JVM INSTR tableswitch 0 2: default 28
                //                               0 35
                //                               1 49
                //                               2 63;
                       goto _L1 _L2 _L3 _L4
_L1:
                    dialoginterface.dismiss();
                    return;
_L2:
                    mPreference.setBroadcastDataNotifyMode(0);
                    continue; /* Loop/switch isn't completed */
_L3:
                    mPreference.setBroadcastDataNotifyMode(1);
                    continue; /* Loop/switch isn't completed */
_L4:
                    mPreference.setBroadcastDataNotifyMode(2);
                    if(true) goto _L1; else goto _L5
_L5:
                }

                final OptionsDialogFragment this$0;

            
            {
                this$0 = OptionsDialogFragment.this;
                super();
            }
            }
).create();
            continue; /* Loop/switch isn't completed */
_L3:
            i = mPreference.getBroadcastDataLocationMode();
            if(i != 0)
                break; /* Loop/switch isn't completed */
            i = 0;
_L8:
            obj = (new android.app.AlertDialog.Builder(getActivity())).setTitle(0x7f070269).setSingleChoiceItems(0x7f05000c, i, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    i;
                    JVM INSTR tableswitch 0 2: default 28
                //                               0 35
                //                               1 49
                //                               2 63;
                       goto _L1 _L2 _L3 _L4
_L1:
                    dialoginterface.dismiss();
                    return;
_L2:
                    mPreference.setBroadcastDataLocationMode(0);
                    continue; /* Loop/switch isn't completed */
_L3:
                    mPreference.setBroadcastDataLocationMode(1);
                    continue; /* Loop/switch isn't completed */
_L4:
                    mPreference.setBroadcastDataLocationMode(2);
                    if(true) goto _L1; else goto _L5
_L5:
                }

                final OptionsDialogFragment this$0;

            
            {
                this$0 = OptionsDialogFragment.this;
                super();
            }
            }
).create();
            if(true) goto _L7; else goto _L6
_L6:
            if(i == 1)
                i = 1;
            else
                i = 2;
              goto _L8
            if(true) goto _L7; else goto _L9
_L9:
        }

        public void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
            mPreference = new MtvPreferences(getActivity().getApplicationContext());
            if(bundle != null)
                dialogType = bundle.getInt("dialogType");
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            return createDialogByType();
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putInt("dialogType", dialogType);
            super.onSaveInstanceState(bundle);
        }

        public static final String TAG = "OptionsDialogFragment";
        private int dialogType;
        private MtvPreferences mPreference;


        public OptionsDialogFragment()
        {
        }

        public OptionsDialogFragment(int i)
        {
            dialogType = i;
        }
    }


    public MtvUiSettingsBroadcast()
    {
        mMtvAppPlaybackContext = null;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f070207);
        setContentView(0x7f03000e);
        mPreference = new MtvPreferences(getApplicationContext());
        mListView = (ListView)findViewById(0x7f0a005a);
        mListView.setAdapter(new BroadCastSettingsAdapter());
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        sendBroadcast(new Intent("intent.stop.app-in-app"));
        if(MtvUtilAppService.isAppExiting())
            finish();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
    }

    private static final int ID_DELETE_STATION = 0x7f070238;
    private static final int ID_IMAGE_LOCATION = 0x7f07025e;
    private static final int ID_LOCATION = 0x7f070269;
    private static final int ID_MANUFACTURE_NUM = 0x7f070271;
    private static final int ID_NOTIFY_CONNECTION = 0x7f070293;
    private static final int ID_SET_RECORDING = 0x7f0702da;
    public static final String TAG = "MtvUiSettingsBroadcast";
    private ListView mListView;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvPreferences mPreference;



/*
    static MtvPreferences access$102(MtvUiSettingsBroadcast mtvuisettingsbroadcast, MtvPreferences mtvpreferences)
    {
        mtvuisettingsbroadcast.mPreference = mtvpreferences;
        return mtvpreferences;
    }

*/



/*
    static MtvAppPlaybackContext access$202(MtvUiSettingsBroadcast mtvuisettingsbroadcast, MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mtvuisettingsbroadcast.mMtvAppPlaybackContext = mtvappplaybackcontext;
        return mtvappplaybackcontext;
    }

*/
}
