// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.airbutton;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.samsung.android.airbutton.AirButtonImpl;
import com.samsung.android.sdk.look.Slook;

// Referenced classes of package com.samsung.android.sdk.look.airbutton:
//            SlookAirButtonAdapter

public class SlookAirButton
{
    public static interface ItemSelectListener
    {

        public abstract void onItemSelected(View view, int i, Object obj);
    }


    public SlookAirButton(View view, SlookAirButtonAdapter slookairbuttonadapter, int i)
    {
        mAirButtonImpl = null;
        mUIType = 2;
        mSlook = new Slook();
        if(!isSupport(1))
            return;
        if(slookairbuttonadapter == null)
        {
            throw new IllegalArgumentException("adapter is null");
        } else
        {
            mUIType = i;
            mAirButtonImpl = new AirButtonImpl(view, slookairbuttonadapter, i);
            return;
        }
    }

    private boolean isSupport(int i)
    {
        return mSlook.isFeatureEnabled(1);
    }

    public void dismiss()
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mAirButtonImpl.dismiss();
            return;
        }
    }

    public int getDirection()
    {
        if(!isSupport(1))
            return 0;
        else
            return mAirButtonImpl.getDirection();
    }

    public int getGravity()
    {
        if(!isSupport(1))
            return 0;
        else
            return mAirButtonImpl.getGravity();
    }

    public void hide()
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mAirButtonImpl.hide();
            return;
        }
    }

    public boolean isAutoControlEnabled()
    {
        if(!isSupport(1))
            return false;
        else
            return mAirButtonImpl.isEnabled();
    }

    public boolean isBounceEffectEnabled()
    {
        if(!isSupport(1))
            return false;
        else
            return mAirButtonImpl.isBounceEffectEnabled();
    }

    public boolean isScrollEnabled()
    {
        if(!isSupport(1))
            return false;
        else
            return mAirButtonImpl.isScrollEnabled();
    }

    public void moveAnimationIcon(MotionEvent motionevent)
    {
        if(!isSupport(1))
            return;
        if(mAirButtonImpl.isEnabled())
            throw new IllegalStateException("The mode is auto control. Please disable auto control.");
        if(motionevent.getAction() != 7)
        {
            throw new IllegalArgumentException("The event isn't ACTION_HOVER_MOVE.");
        } else
        {
            mAirButtonImpl.onHoverMove(motionevent);
            return;
        }
    }

    public void setAutoControlEnabled(boolean flag)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mAirButtonImpl.setEnabled(flag);
            return;
        }
    }

    public void setBounceEffectEnabled(boolean flag)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mAirButtonImpl.setBounceEffectEnabled(flag);
            return;
        }
    }

    public void setDirection(int i)
    {
        if(!isSupport(1))
            return;
        switch(i)
        {
        case 0: // '\0'
        default:
            Log.e("AirButtonWidget", (new StringBuilder()).append("The direction(").append(i).append(") was wrong.").toString());
            break;

        case -1: 
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
            break;
        }
        if(mUIType == 1 && (i == 1 || i == 2))
            throw new IllegalStateException("The Direction is wrong.you cann't use UPPER/LOWER direction with UI_TYPE_MENU.");
        if(mUIType == 2 && (i == 3 || i == 4))
        {
            throw new IllegalStateException("The Direction is wrong.you cann't use LEFT/RIGHT direction with UI_TYPE_LIST.");
        } else
        {
            mAirButtonImpl.setDirection(i);
            return;
        }
    }

    public void setGravity(int i)
    {
        if(!isSupport(1))
            return;
        switch(i)
        {
        case 0: // '\0'
        default:
            Log.e("AirButtonWidget", (new StringBuilder()).append("The gravity(").append(i).append(") was wrong.").toString());
            break;

        case -1: 
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            break;
        }
        if(mUIType == 1 && (i == 3 || i == 4))
        {
            throw new IllegalStateException("The Gravity is wrong. You cann't use GRAVITY_LEFT/GRAVITY_RIGHT with UI_TYPE_MENU.");
        } else
        {
            mAirButtonImpl.setGravity(i);
            return;
        }
    }

    public void setItemSelectListener(ItemSelectListener itemselectlistener)
    {
        if(isSupport(1))
        {
            mItemSelectListener = itemselectlistener;
            if(mItemSelectListener != null)
            {
                mAirButtonImpl.setOnItemSelectedListener(new com.samsung.android.airbutton.AirButtonImpl.OnItemSelectedListener() {

                    public void onItemSelected(View view, int i, Object obj)
                    {
                        mItemSelectListener.onItemSelected(view, i, obj);
                    }

                    final SlookAirButton this$0;

            
            {
                this$0 = SlookAirButton.this;
                super();
            }
                }
);
                return;
            }
        }
    }

    public void setPosition(int i, int j)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mAirButtonImpl.setPosition(i, j);
            return;
        }
    }

    public void setScrollEnabled(boolean flag)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mAirButtonImpl.setScrollEnabled(flag);
            return;
        }
    }

    public void show(MotionEvent motionevent)
    {
        if(!isSupport(1))
            return;
        if(mAirButtonImpl.isEnabled())
            throw new IllegalStateException("The mode is auto control. Please disable auto control.");
        if(motionevent.getToolType(0) != 2)
        {
            throw new IllegalArgumentException("The event isn't TOOL_TYPE_STYLUS.");
        } else
        {
            mAirButtonImpl.onHoverButtonSecondary(motionevent);
            return;
        }
    }

    public void startAnimationIcon(MotionEvent motionevent)
    {
        if(!isSupport(1))
            return;
        if(mAirButtonImpl.isEnabled())
            throw new IllegalStateException("The mode is auto control. Please disable auto control.");
        if(motionevent.getAction() != 9)
        {
            throw new IllegalArgumentException("The event isn't ACTION_HOVER_ENTER");
        } else
        {
            mAirButtonImpl.onHoverEnter(motionevent);
            return;
        }
    }

    public void stopAnimationIcon(MotionEvent motionevent)
    {
        if(!isSupport(1))
            return;
        if(mAirButtonImpl.isEnabled())
            throw new IllegalStateException("The mode is auto control. Please disable auto control.");
        if(motionevent.getAction() != 10)
        {
            throw new IllegalArgumentException("The event isn't ACTION_HOVER_EXIT.");
        } else
        {
            mAirButtonImpl.onHoverExit(motionevent);
            return;
        }
    }

    public static final int DIRECTION_AUTO = -1;
    public static final int DIRECTION_LEFT = 3;
    public static final int DIRECTION_LOWER = 2;
    public static final int DIRECTION_RIGHT = 4;
    public static final int DIRECTION_UPPER = 1;
    public static final int GRAVITY_AUTO = -1;
    public static final int GRAVITY_BOTTOM = 2;
    public static final int GRAVITY_HOVER_POINT = 5;
    public static final int GRAVITY_LEFT = 3;
    public static final int GRAVITY_RIGHT = 4;
    public static final int GRAVITY_TOP = 1;
    private static final String TAG = "AirButtonWidget";
    public static final int UI_TYPE_LIST = 2;
    public static final int UI_TYPE_MENU = 1;
    private AirButtonImpl mAirButtonImpl;
    private ItemSelectListener mItemSelectListener;
    private Slook mSlook;
    private int mUIType;

}
