// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.configration;

import android.app.Activity;
import android.app.Fragment;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.MtvUtilDebugSetting;
import android.os.Bundle;
import android.view.*;
import android.widget.CheckBox;
import android.widget.Toast;
import com.samsung.sec.mtv.utility.MtvUtilConfigSetting;
import com.samsung.sec.mtv.utility.MtvUtilConfigSettingControl;

public class MtvUiFragmentConfigration extends Fragment
    implements android.view.View.OnClickListener
{

    public MtvUiFragmentConfigration()
    {
    }

    private void initializeUI(View view)
    {
        mCheckBoxTSCapture = (CheckBox)view.findViewById(0x7f0a0102);
        mCheckBoxFileSimulation = (CheckBox)view.findViewById(0x7f0a0101);
        mCheckBoxDebugError = (CheckBox)view.findViewById(0x7f0a0104);
        mCheckBoxDebugHigh = (CheckBox)view.findViewById(0x7f0a0105);
        mCheckBoxDebugMid = (CheckBox)view.findViewById(0x7f0a0106);
        mCheckBoxDebugLow = (CheckBox)view.findViewById(0x7f0a0107);
        mCheckBoxDebugBML = (CheckBox)view.findViewById(0x7f0a0112);
        mCheckBoxDebugLive = (CheckBox)view.findViewById(0x7f0a0108);
        mCheckBoxDebugLocal = (CheckBox)view.findViewById(0x7f0a0109);
        mCheckBoxDebugChnGuide = (CheckBox)view.findViewById(0x7f0a010a);
        mCheckBoxDebugTvLink = (CheckBox)view.findViewById(0x7f0a010b);
        mCheckBoxDebugTestMode = (CheckBox)view.findViewById(0x7f0a010c);
        mCheckBoxDebugFragments = (CheckBox)view.findViewById(0x7f0a010d);
        mCheckBoxDebugCommon = (CheckBox)view.findViewById(0x7f0a010e);
        mCheckBoxDebugUtility = (CheckBox)view.findViewById(0x7f0a010f);
        mCheckBoxDebugReservation = (CheckBox)view.findViewById(0x7f0a0110);
        mCheckBoxDebugHelper = (CheckBox)view.findViewById(0x7f0a0111);
        mCheckBoxDebugPBCtx = (CheckBox)view.findViewById(0x7f0a0113);
        mCheckBoxDebugAppBase = (CheckBox)view.findViewById(0x7f0a0114);
        mCheckBoxDebugPlayer = (CheckBox)view.findViewById(0x7f0a0115);
        mCheckBoxDebugFW = (CheckBox)view.findViewById(0x7f0a0116);
        mCheckBoxDebugFWUtility = (CheckBox)view.findViewById(0x7f0a0117);
        mConfigSettingControl = new MtvUtilConfigSettingControl();
        mConfigSetting = mConfigSettingControl.getConfigFromFile();
        if(mConfigSetting != null)
        {
            mCheckBoxFileSimulation.setChecked(mConfigSetting.iTsFileSimul);
            mCheckBoxTSCapture.setChecked(mConfigSetting.iTsCapture);
        }
        mCheckBoxFileSimulation.setOnClickListener(this);
        mCheckBoxTSCapture.setOnClickListener(this);
        mDebugSetting = MtvUtilDebugSetting.getInstance();
        mCheckBoxDebugError.setChecked(mDebugSetting.isAllowedDebugLevel(8));
        mCheckBoxDebugHigh.setChecked(mDebugSetting.isAllowedDebugLevel(4));
        mCheckBoxDebugMid.setChecked(mDebugSetting.isAllowedDebugLevel(2));
        mCheckBoxDebugLow.setChecked(mDebugSetting.isAllowedDebugLevel(1));
        mCheckBoxDebugError.setOnClickListener(this);
        mCheckBoxDebugHigh.setOnClickListener(this);
        mCheckBoxDebugMid.setOnClickListener(this);
        mCheckBoxDebugLow.setOnClickListener(this);
        mCheckBoxDebugBML.setChecked(mDebugSetting.isAllowedModuleForDebug(1));
        mCheckBoxDebugLive.setChecked(mDebugSetting.isAllowedModuleForDebug(2));
        mCheckBoxDebugLocal.setChecked(mDebugSetting.isAllowedModuleForDebug(4));
        mCheckBoxDebugChnGuide.setChecked(mDebugSetting.isAllowedModuleForDebug(8));
        mCheckBoxDebugTvLink.setChecked(mDebugSetting.isAllowedModuleForDebug(16));
        mCheckBoxDebugTestMode.setChecked(mDebugSetting.isAllowedModuleForDebug(32));
        mCheckBoxDebugFragments.setChecked(mDebugSetting.isAllowedModuleForDebug(64));
        mCheckBoxDebugCommon.setChecked(mDebugSetting.isAllowedModuleForDebug(128));
        mCheckBoxDebugUtility.setChecked(mDebugSetting.isAllowedModuleForDebug(256));
        mCheckBoxDebugReservation.setChecked(mDebugSetting.isAllowedModuleForDebug(512));
        mCheckBoxDebugHelper.setChecked(mDebugSetting.isAllowedModuleForDebug(1024));
        mCheckBoxDebugPBCtx.setChecked(mDebugSetting.isAllowedModuleForDebug(2048));
        mCheckBoxDebugAppBase.setChecked(mDebugSetting.isAllowedModuleForDebug(4096));
        mCheckBoxDebugPlayer.setChecked(mDebugSetting.isAllowedModuleForDebug(8192));
        mCheckBoxDebugFW.setChecked(mDebugSetting.isAllowedModuleForDebug(16384));
        mCheckBoxDebugFWUtility.setChecked(mDebugSetting.isAllowedModuleForDebug(32768));
        mCheckBoxDebugBML.setOnClickListener(this);
        mCheckBoxDebugLive.setOnClickListener(this);
        mCheckBoxDebugLocal.setOnClickListener(this);
        mCheckBoxDebugMid.setOnClickListener(this);
        mCheckBoxDebugChnGuide.setOnClickListener(this);
        mCheckBoxDebugTvLink.setOnClickListener(this);
        mCheckBoxDebugTestMode.setOnClickListener(this);
        mCheckBoxDebugFragments.setOnClickListener(this);
        mCheckBoxDebugCommon.setOnClickListener(this);
        mCheckBoxDebugUtility.setOnClickListener(this);
        mCheckBoxDebugReservation.setOnClickListener(this);
        mCheckBoxDebugHelper.setOnClickListener(this);
        mCheckBoxDebugPBCtx.setOnClickListener(this);
        mCheckBoxDebugAppBase.setOnClickListener(this);
        mCheckBoxDebugPlayer.setOnClickListener(this);
        mCheckBoxDebugFW.setOnClickListener(this);
        mCheckBoxDebugFWUtility.setOnClickListener(this);
    }

    public void onAttach(Activity activity)
    {
        MtvUtilDebug.High("TAG", "onAttach");
        super.onAttach(activity);
    }

    public void onClick(View view)
    {
        boolean flag2 = true;
        boolean flag = true;
        switch(view.getId())
        {
        case 2131362051: 
        default:
            MtvUtilDebug.Error("MtvUiFragmentConfigration", "Selected default checkbox");
            return;

        case 2131362050: 
            view = mConfigSetting;
            if(mConfigSetting.iTsCapture)
                flag = false;
            view.iTsCapture = flag;
            return;

        case 2131362049: 
            view = mConfigSetting;
            boolean flag1;
            if(!mConfigSetting.iTsFileSimul)
                flag1 = flag2;
            else
                flag1 = false;
            view.iTsFileSimul = flag1;
            return;

        case 2131362052: 
            if(mDebugSetting.isAllowedDebugLevel(8))
                mDebugSetting.setDebugValuesForLevel(8, 0);
            else
                mDebugSetting.setDebugValuesForLevel(8, 1);
            mDebugSetting.setDebugValuesForLevel(7, 0);
            mCheckBoxDebugHigh.setChecked(false);
            mCheckBoxDebugMid.setChecked(false);
            mCheckBoxDebugLow.setChecked(false);
            return;

        case 2131362053: 
            if(mDebugSetting.isAllowedDebugLevel(4))
            {
                mDebugSetting.setDebugValuesForLevel(7, 0);
                mCheckBoxDebugMid.setChecked(false);
                mCheckBoxDebugLow.setChecked(false);
                return;
            } else
            {
                mDebugSetting.setDebugValuesForLevel(12, 1);
                mCheckBoxDebugError.setChecked(true);
                return;
            }

        case 2131362054: 
            if(mDebugSetting.isAllowedDebugLevel(2))
            {
                mDebugSetting.setDebugValuesForLevel(3, 0);
                mCheckBoxDebugLow.setChecked(false);
                return;
            } else
            {
                mDebugSetting.setDebugValuesForLevel(14, 1);
                mCheckBoxDebugError.setChecked(true);
                mCheckBoxDebugHigh.setChecked(true);
                return;
            }

        case 2131362055: 
            if(mDebugSetting.isAllowedDebugLevel(1))
            {
                mDebugSetting.setDebugValuesForLevel(1, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesForLevel(15, 1);
                mCheckBoxDebugError.setChecked(true);
                mCheckBoxDebugHigh.setChecked(true);
                mCheckBoxDebugMid.setChecked(true);
                return;
            }

        case 2131362066: 
            if(mDebugSetting.isAllowedModuleForDebug(1))
            {
                mDebugSetting.setDebugValuesOfModule(1, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(1, 1);
                return;
            }

        case 2131362056: 
            if(mDebugSetting.isAllowedModuleForDebug(2))
            {
                mDebugSetting.setDebugValuesOfModule(2, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(2, 1);
                return;
            }

        case 2131362057: 
            if(mDebugSetting.isAllowedModuleForDebug(4))
            {
                mDebugSetting.setDebugValuesOfModule(4, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(4, 1);
                return;
            }

        case 2131362058: 
            if(mDebugSetting.isAllowedModuleForDebug(8))
            {
                mDebugSetting.setDebugValuesOfModule(8, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(8, 1);
                return;
            }

        case 2131362059: 
            if(mDebugSetting.isAllowedModuleForDebug(16))
            {
                mDebugSetting.setDebugValuesOfModule(16, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(16, 1);
                return;
            }

        case 2131362060: 
            if(mDebugSetting.isAllowedModuleForDebug(32))
            {
                mDebugSetting.setDebugValuesOfModule(32, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(32, 1);
                return;
            }

        case 2131362061: 
            if(mDebugSetting.isAllowedModuleForDebug(64))
            {
                mDebugSetting.setDebugValuesOfModule(64, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(64, 1);
                return;
            }

        case 2131362062: 
            if(mDebugSetting.isAllowedModuleForDebug(128))
            {
                mDebugSetting.setDebugValuesOfModule(128, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(128, 1);
                return;
            }

        case 2131362063: 
            if(mDebugSetting.isAllowedModuleForDebug(256))
            {
                mDebugSetting.setDebugValuesOfModule(256, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(256, 1);
                return;
            }

        case 2131362064: 
            if(mDebugSetting.isAllowedModuleForDebug(512))
            {
                mDebugSetting.setDebugValuesOfModule(512, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(512, 1);
                return;
            }

        case 2131362065: 
            if(mDebugSetting.isAllowedModuleForDebug(1024))
            {
                mDebugSetting.setDebugValuesOfModule(1024, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(1024, 1);
                return;
            }

        case 2131362067: 
            if(mDebugSetting.isAllowedModuleForDebug(2048))
            {
                mDebugSetting.setDebugValuesOfModule(2048, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(2048, 1);
                return;
            }

        case 2131362068: 
            if(mDebugSetting.isAllowedModuleForDebug(4096))
            {
                mDebugSetting.setDebugValuesOfModule(4096, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(4096, 1);
                return;
            }

        case 2131362069: 
            MtvUtilDebug.Low("MtvUiFragmentConfigration", "Selected CheckBox_Debug_Player");
            if(mDebugSetting.isAllowedModuleForDebug(8192))
            {
                mDebugSetting.setDebugValuesOfModule(8192, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(8192, 1);
                return;
            }

        case 2131362070: 
            if(mDebugSetting.isAllowedModuleForDebug(16384))
            {
                mDebugSetting.setDebugValuesOfModule(16384, 0);
                return;
            } else
            {
                mDebugSetting.setDebugValuesOfModule(16384, 1);
                return;
            }

        case 2131362071: 
            break;
        }
        if(mDebugSetting.isAllowedModuleForDebug(32768))
        {
            mDebugSetting.setDebugValuesOfModule(32768, 0);
            return;
        } else
        {
            mDebugSetting.setDebugValuesOfModule(32768, 1);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.High("MtvUiFragmentConfigration", "onCreate");
        setHasOptionsMenu(true);
        setRetainInstance(true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        MtvUtilDebug.High("MtvUiFragmentConfigration", "onCreateView");
        layoutinflater = layoutinflater.inflate(0x7f03002f, viewgroup, false);
        initializeUI(layoutinflater);
        return layoutinflater;
    }

    public void onDestroyView()
    {
        MtvUtilDebug.High("MtvUiFragmentConfigration", "onDestroyView");
        super.onDestroyView();
    }

    public void onDetach()
    {
        MtvUtilDebug.High("MtvUiFragmentConfigration", "onDetach");
        super.onDetach();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 1 1: default 24
    //                   1 30;
           goto _L1 _L2
_L1:
        return super.onOptionsItemSelected(menuitem);
_L2:
        if(!mConfigSettingControl.setConfigToFile(mConfigSetting))
            Toast.makeText(getActivity().getApplicationContext(), "Save Failed !!!", 1).show();
        else
            Toast.makeText(getActivity().getApplicationContext(), "Save Sucess !!!", 1).show();
        MtvUtilDebug.getDebugInstance().saveDbgInfoToFile();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onPrepareOptionsMenu(Menu menu)
    {
        menu.add(0, 1, 0, "Save");
        super.onPrepareOptionsMenu(menu);
    }

    private static final int MENU_SAVE = 1;
    private static final String TAG = "MtvUiFragmentConfigration";
    private CheckBox mCheckBoxDebugAppBase;
    private CheckBox mCheckBoxDebugBML;
    private CheckBox mCheckBoxDebugChnGuide;
    private CheckBox mCheckBoxDebugCommon;
    private CheckBox mCheckBoxDebugError;
    private CheckBox mCheckBoxDebugFW;
    private CheckBox mCheckBoxDebugFWUtility;
    private CheckBox mCheckBoxDebugFragments;
    private CheckBox mCheckBoxDebugHelper;
    private CheckBox mCheckBoxDebugHigh;
    private CheckBox mCheckBoxDebugLive;
    private CheckBox mCheckBoxDebugLocal;
    private CheckBox mCheckBoxDebugLow;
    private CheckBox mCheckBoxDebugMid;
    private CheckBox mCheckBoxDebugPBCtx;
    private CheckBox mCheckBoxDebugPlayer;
    private CheckBox mCheckBoxDebugReservation;
    private CheckBox mCheckBoxDebugTestMode;
    private CheckBox mCheckBoxDebugTvLink;
    private CheckBox mCheckBoxDebugUtility;
    private CheckBox mCheckBoxFileSimulation;
    private CheckBox mCheckBoxTSCapture;
    private MtvUtilConfigSetting mConfigSetting;
    private MtvUtilConfigSettingControl mConfigSettingControl;
    private MtvUtilDebugSetting mDebugSetting;
}
