// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.*;

// Referenced classes of package com.samsung.android.sdk.look:
//            Slook

public class SlookPointerIcon
{

    public SlookPointerIcon()
    {
        mSlook = new Slook();
    }

    private boolean isSupport(int i)
    {
        return mSlook.isFeatureEnabled(4);
    }

    public void setHoverIcon(View view, Drawable drawable)
    {
        if(!isSupport(1))
            return;
        if(view == null)
            throw new IllegalArgumentException("view is null.");
        if(drawable == null)
        {
            view.setOnHoverListener(null);
            try
            {
                PointerIcon.setHoveringSpenIcon(1, -1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch(View view)
            {
                view.printStackTrace();
            }
            return;
        } else
        {
            mDrawable = drawable;
            view.setOnHoverListener(new android.view.View.OnHoverListener() {

                public boolean onHover(View view1, MotionEvent motionevent)
                {
                    switch(motionevent.getAction())
                    {
                    default:
                        return false;

                    case 9: // '\t'
                        try
                        {
                            PointerIcon.setHoveringSpenIcon(0, mDrawable);
                        }
                        // Misplaced declaration of an exception variable
                        catch(View view1)
                        {
                            view1.printStackTrace();
                            return false;
                        }
                        return false;

                    case 10: // '\n'
                        break;
                    }
                    try
                    {
                        PointerIcon.setHoveringSpenIcon(1, -1);
                    }
                    // Misplaced declaration of an exception variable
                    catch(View view1)
                    {
                        view1.printStackTrace();
                        return false;
                    }
                    return false;
                }

                final SlookPointerIcon this$0;

            
            {
                this$0 = SlookPointerIcon.this;
                super();
            }
            }
);
            return;
        }
    }

    private static final String TAG = "SlookPointerIcon";
    private Drawable mDrawable;
    private Slook mSlook;

}
