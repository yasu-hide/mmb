// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.cocktailbar;

import android.content.*;
import android.os.Bundle;
import android.view.DragEvent;

// Referenced classes of package com.samsung.android.sdk.look.cocktailbar:
//            SlookCocktailManager

public class SlookCocktailProvider extends BroadcastReceiver
{

    public SlookCocktailProvider()
    {
    }

    public void onDisabled(Context context)
    {
    }

    public void onDroped(Context context, SlookCocktailManager slookcocktailmanager, DragEvent dragevent)
    {
    }

    public void onEnabled(Context context)
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if(!"com.samsung.android.cocktail.action.COCKTAIL_UPDATE".equals(s)) goto _L2; else goto _L1
_L1:
        intent = intent.getExtras();
        if(intent != null && intent.containsKey("cocktailIds"))
        {
            intent = intent.getIntArray("cocktailIds");
            onUpdate(context, SlookCocktailManager.getInstance(context), intent);
        }
_L4:
        return;
_L2:
        if("com.samsung.android.cocktail.action.COCKTAIL_ENABLED".equals(s))
        {
            onEnabled(context);
            return;
        }
        if("com.samsung.android.cocktail.action.COCKTAIL_DISABLED".equals(s))
        {
            onDisabled(context);
            return;
        }
        if(!"com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED".equals(s))
            continue; /* Loop/switch isn't completed */
        intent = intent.getExtras();
        if(intent != null && intent.containsKey("cocktailId"))
        {
            int i = intent.getInt("cocktailId");
            if(intent.containsKey("cocktailVisibility"))
            {
                onVisibilityChanged(context, i, intent.getInt("cocktailVisibility"));
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
        if(!"com.samsung.android.cocktail.action.COCKTAIL_DROPED".equals(s)) goto _L4; else goto _L3
_L3:
        Bundle bundle = intent.getExtras();
        if(bundle != null && bundle.containsKey("com.samsung.android.intent.extra.DRAG_EVENT"))
        {
            intent = (DragEvent)intent.getParcelableExtra("com.samsung.android.intent.extra.DRAG_EVENT");
            onDroped(context, SlookCocktailManager.getInstance(context), intent);
            return;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public void onUpdate(Context context, SlookCocktailManager slookcocktailmanager, int ai[])
    {
    }

    public void onVisibilityChanged(Context context, int i, int j)
    {
    }
}
