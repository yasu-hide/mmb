// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.configration;

import android.app.*;
import android.os.Bundle;
import android.view.*;
import com.samsung.sec.mtv.utility.MtvUtilConfigSetting;

// Referenced classes of package com.samsung.sec.mtv.ui.configration:
//            MtvUiFragmentConfigration

public class MtvUiConfigration extends Activity
{

    public MtvUiConfigration()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(getLayoutInflater().inflate(0x7f030003, null));
        bundle = getFragmentManager().beginTransaction();
        bundle.add(0x7f0a0011, new MtvUiFragmentConfigration());
        bundle.commit();
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        menu.clear();
        return super.onPrepareOptionsMenu(menu);
    }
}
