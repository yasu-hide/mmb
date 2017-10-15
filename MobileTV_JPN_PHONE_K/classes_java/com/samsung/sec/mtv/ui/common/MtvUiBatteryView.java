// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Resources;
import android.graphics.*;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;

public class MtvUiBatteryView extends View
{
    private class BatteryTracker extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            context = intent.getAction();
            if(!context.equals("android.intent.action.BATTERY_CHANGED")) goto _L2; else goto _L1
_L1:
            if(!testmode || intent.getBooleanExtra("testmode", false)) goto _L4; else goto _L3
_L3:
            return;
_L4:
            int i = (int)((100F * (float)intent.getIntExtra("level", 0)) / (float)intent.getIntExtra("scale", 100));
            boolean flag;
            boolean flag1;
            boolean flag2;
            boolean flag3;
            boolean flag4;
            if(level != i)
                flag = true;
            else
                flag = false;
            if(flag)
                level = i;
            if(plugType != intent.getIntExtra("plugged", 0))
                flag1 = true;
            else
                flag1 = false;
            if(flag1)
                plugType = intent.getIntExtra("plugged", 0);
            if(plugType != 0)
                flag4 = true;
            else
                flag4 = false;
            plugged = flag4;
            if(health != intent.getIntExtra("health", 1))
                flag2 = true;
            else
                flag2 = false;
            if(flag2)
                health = intent.getIntExtra("health", 1);
            if(status != intent.getIntExtra("status", 1))
                flag3 = true;
            else
                flag3 = false;
            if(flag3)
                status = intent.getIntExtra("status", 1);
            MtvUtilDebug.Low(MtvUiBatteryView.TAG, (new StringBuilder()).append("ACTION_BATTERY_CHANGED : level:").append(level).append(" status:").append(status).append(" health:").append(health).toString());
            if((flag || flag1 || flag2 || flag3) && !mPostInvalidateHandler.hasMessages(1))
            {
                mPostInvalidateHandler.sendEmptyMessage(1);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if(context.equals("com.android.systemui.BATTERY_LEVEL_TEST"))
            {
                testmode = true;
                post(new Runnable() {

                    public void run()
                    {
                        int i = 0;
                        if(curLevel < 0)
                        {
                            testmode = false;
                            dummy.putExtra("level", saveLevel);
                            dummy.putExtra("plugged", savePlugged);
                            dummy.putExtra("testmode", false);
                        } else
                        {
                            dummy.putExtra("level", curLevel);
                            Intent intent = dummy;
                            if(incr > 0)
                                i = 1;
                            intent.putExtra("plugged", i);
                            dummy.putExtra("testmode", true);
                        }
                        getContext().sendBroadcast(dummy);
                        if(!testmode)
                            return;
                        curLevel = curLevel + incr;
                        if(curLevel == 100)
                            incr = incr * -1;
                        postDelayed(this, 200L);
                    }

                    int curLevel;
                    Intent dummy;
                    int incr;
                    int saveLevel;
                    int savePlugged;
                    final BatteryTracker this$1;

            
            {
                this$1 = BatteryTracker.this;
                super();
                curLevel = 0;
                incr = 1;
                saveLevel = level;
                savePlugged = plugType;
                dummy = new Intent("android.intent.action.BATTERY_CHANGED");
            }
                }
);
                return;
            }
            if(true) goto _L3; else goto _L5
_L5:
        }

        public static final int UNKNOWN_LEVEL = -1;
        int health;
        int level;
        int plugType;
        boolean plugged;
        int status;
        boolean testmode;
        final MtvUiBatteryView this$0;

        private BatteryTracker()
        {
            this$0 = MtvUiBatteryView.this;
            super();
            level = -1;
            testmode = false;
        }

    }


    public MtvUiBatteryView(Context context)
    {
        this(context, null, 0);
    }

    public MtvUiBatteryView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public MtvUiBatteryView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mBoltPath = new Path();
        mFrame = new RectF();
        mButtonFrame = new RectF();
        mClipFrame = new RectF();
        mBoltFrame = new RectF();
        mIsShowBatteryIcon = true;
        mTracker = new BatteryTracker();
        MtvUtilDebug.Low(TAG, "BatteryMeterView");
        context = context.getResources();
        attributeset = new int[2];
        AttributeSet _tmp = attributeset;
        attributeset[0] = 4;
        attributeset[1] = 100;
        int j = attributeset.length;
        mColors = new int[j * 2];
        for(i = 0; i < j; i++)
        {
            mColors[i * 2] = attributeset[i];
            mColors[i * 2 + 1] = (new int[] {
                -1, -1
            })[i];
        }

        mWarningString = "!";
        mFramePaint = new Paint(1);
        mFramePaint.setColor(context.getColor(0x7f060002));
        mFramePaint.setDither(true);
        mFramePaint.setStrokeWidth(0.0F);
        mFramePaint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        mFramePaint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.DST_ATOP));
        mBatteryPaint = new Paint(1);
        mBatteryPaint.setDither(true);
        mBatteryPaint.setStrokeWidth(0.0F);
        mBatteryPaint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        mTextPaint = new Paint(1);
        mTextPaint.setColor(-1);
        attributeset = Typeface.create("sans-serif-condensed", 0);
        mTextPaint.setTypeface(attributeset);
        mTextPaint.setTextAlign(android.graphics.Paint.Align.CENTER);
        mWarningTextPaint = new Paint(1);
        mWarningTextPaint.setColor(-1);
        attributeset = Typeface.create("sans-serif", 1);
        mWarningTextPaint.setTypeface(attributeset);
        mWarningTextPaint.setTextAlign(android.graphics.Paint.Align.CENTER);
        mInvalidTextPaint = new Paint(1);
        mInvalidTextPaint.setColor(0xffe83409);
        attributeset = Typeface.create("sans-serif", 1);
        mInvalidTextPaint.setTypeface(attributeset);
        mInvalidTextPaint.setTextAlign(android.graphics.Paint.Align.CENTER);
        mBoltPaint = new Paint();
        mBoltPaint.setAntiAlias(true);
        mBoltPaint.setColor(context.getColor(0x7f060001));
        mBoltPoints = loadBoltPoints(context);
        setLayerType(1, null);
    }

    private int getColorForLevel(int i)
    {
        int k = 0;
        for(int j = 0; j < mColors.length; j += 2)
        {
            int l = mColors[j];
            k = mColors[j + 1];
            if(i <= l)
                return k;
        }

        return k;
    }

    private static float[] loadBoltPoints(Resources resources)
    {
        resources = resources.getIntArray(0x7f050001);
        int j = 0;
        int i = 0;
        for(int k = 0; k < resources.length; k += 2)
        {
            j = Math.max(j, resources[k]);
            i = Math.max(i, resources[k + 1]);
        }

        float af[] = new float[resources.length];
        for(int l = 0; l < resources.length; l += 2)
        {
            af[l] = (float)resources[l] / (float)j;
            af[l + 1] = (float)resources[l + 1] / (float)i;
        }

        return af;
    }

    public void draw(Canvas canvas)
    {
        BatteryTracker batterytracker = mTracker;
        if(batterytracker.status != 4 || batterytracker.health != 3 && batterytracker.health != 7 && batterytracker.health != 8 && batterytracker.health != 6) goto _L2; else goto _L1
_L1:
        mBlinkingNeeded = true;
        MtvUtilDebug.Low(TAG, "battery icon blink...");
        if(!mPostInvalidateHandler.hasMessages(1))
            mPostInvalidateHandler.sendEmptyMessageDelayed(1, 1000L);
        boolean flag;
        if(!mIsShowBatteryIcon)
            flag = true;
        else
            flag = false;
        mIsShowBatteryIcon = flag;
        if(mIsShowBatteryIcon) goto _L4; else goto _L3
_L3:
        return;
_L2:
        int i;
        mBlinkingNeeded = false;
_L4:
        if((i = batterytracker.level) == -1) goto _L3; else goto _L5
_L5:
        float f = (float)i / 100F;
        int j = getPaddingTop();
        int k = getPaddingLeft();
        int l = getPaddingRight();
        int i1 = getPaddingBottom();
        i1 = mHeight - j - i1;
        l = mWidth - k - l;
        mButtonHeight = (int)((float)i1 * 0.12F);
        mFrame.set(0.0F, 0.0F, l, i1);
        mFrame.offset(k, j);
        mButtonPadding = 2.0F;
        mButtonFrame.set(mFrame.left + (float)l * 0.25F + mButtonPadding, mFrame.top, mFrame.right - (float)l * 0.25F - mButtonPadding, mFrame.top + (float)mButtonHeight + 5F);
        Object obj = mButtonFrame;
        obj.top = ((RectF) (obj)).top + 0.0F;
        obj = mButtonFrame;
        obj.left = ((RectF) (obj)).left + 0.0F;
        obj = mButtonFrame;
        obj.right = ((RectF) (obj)).right - 0.0F;
        obj = mFrame;
        obj.top = ((RectF) (obj)).top + (float)mButtonHeight;
        obj = mFrame;
        obj.left = ((RectF) (obj)).left + 0.0F;
        obj = mFrame;
        obj.top = ((RectF) (obj)).top + 0.0F;
        obj = mFrame;
        obj.right = ((RectF) (obj)).right - 0.0F;
        obj = mFrame;
        obj.bottom = ((RectF) (obj)).bottom - 0.0F;
        canvas.drawRect(mFrame, mFramePaint);
        j = getColorForLevel(i);
        mBatteryPaint.setColor(j);
        MtvUtilDebug.Low(TAG, (new StringBuilder()).append("onDraw batteryColor : ").append(j).toString());
        float f2;
        float f4;
        float f6;
        RectF rectf;
        if(i >= 96)
            f = 1.0F;
        else
        if(i <= 4)
            f = 0.0F;
        rectf = mButtonFrame;
        if(f == 1.0F)
            obj = mBatteryPaint;
        else
            obj = mFramePaint;
        canvas.drawRect(rectf, ((Paint) (obj)));
        mClipFrame.set(mFrame);
        obj = mClipFrame;
        obj.top = ((RectF) (obj)).top + mFrame.height() * (1.0F - f);
        canvas.save(2);
        canvas.clipRect(mClipFrame);
        canvas.drawRect(mFrame, mBatteryPaint);
        canvas.restore();
        if(!batterytracker.plugged || batterytracker.status == 5)
            continue; /* Loop/switch isn't completed */
        f = mFrame.left + mFrame.width() / 4.5F;
        f2 = mFrame.top + mFrame.height() / 6F;
        f4 = mFrame.right - mFrame.width() / 7F;
        f6 = mFrame.bottom - mFrame.height() / 10F;
        if(mBoltFrame.left == f && mBoltFrame.top == f2 && mBoltFrame.right == f4 && mBoltFrame.bottom == f6)
            continue; /* Loop/switch isn't completed */
        mBoltFrame.set(f, f2, f4, f6);
        mBoltPath.reset();
        mBoltPath.moveTo(mBoltFrame.left + mBoltPoints[0] * mBoltFrame.width(), mBoltFrame.top + mBoltPoints[1] * mBoltFrame.height());
        for(i = 2; i < mBoltPoints.length; i += 2)
            mBoltPath.lineTo(mBoltFrame.left + mBoltPoints[i] * mBoltFrame.width(), mBoltFrame.top + mBoltPoints[i + 1] * mBoltFrame.height());

        mBoltPath.lineTo(mBoltFrame.left + mBoltPoints[0] * mBoltFrame.width(), mBoltFrame.top + mBoltPoints[1] * mBoltFrame.height());
        if(batterytracker.status == 4 || batterytracker.health == 5 || batterytracker.health == 9 || mBlinkingNeeded) goto _L3; else goto _L6
_L6:
        canvas.drawPath(mBoltPath, mBoltPaint);
        return;
        if(i > 4) goto _L3; else goto _L7
_L7:
        float f1 = mWidth;
        float f3 = mHeight;
        float f5 = mWarningTextHeight;
        canvas.drawText(mWarningString, f1 * 0.5F, (f3 + f5) * 0.48F, mWarningTextPaint);
        return;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        MtvUtilDebug.Low(TAG, "onAttachedToWindow");
        Object obj = new IntentFilter();
        ((IntentFilter) (obj)).addAction("android.intent.action.BATTERY_CHANGED");
        ((IntentFilter) (obj)).addAction("com.android.systemui.BATTERY_LEVEL_TEST");
        obj = getContext().registerReceiver(mTracker, ((IntentFilter) (obj)));
        if(obj != null)
            mTracker.onReceive(getContext(), ((Intent) (obj)));
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        MtvUtilDebug.Low(TAG, "onDetachedFromWindow");
        getContext().unregisterReceiver(mTracker);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        mHeight = j;
        mWidth = i;
        mWarningTextPaint.setTextSize((float)j * 0.75F);
        mInvalidTextPaint.setTextSize((float)j * 0.75F);
        mWarningTextHeight = -mWarningTextPaint.getFontMetrics().ascent;
    }

    public static final String ACTION_LEVEL_TEST = "com.android.systemui.BATTERY_LEVEL_TEST";
    private static final int BATTERY_UNDER_VOLTAGE = 9;
    private static final int BLINKING_INTERVAL = 1000;
    public static final int EMPTY = 4;
    public static final int FULL = 96;
    private static final int MSG_POST_INVALIDATE = 1;
    public static final float SUBPIXEL = 0F;
    public static final String TAG = com/samsung/sec/mtv/ui/common/MtvUiBatteryView.getSimpleName();
    Paint mBatteryPaint;
    private boolean mBlinkingNeeded;
    private final RectF mBoltFrame;
    Paint mBoltPaint;
    private final Path mBoltPath;
    private final float mBoltPoints[];
    private final RectF mButtonFrame;
    int mButtonHeight;
    private float mButtonPadding;
    private final RectF mClipFrame;
    int mColors[];
    private final RectF mFrame;
    Paint mFramePaint;
    private int mHeight;
    Paint mInvalidTextPaint;
    private boolean mIsShowBatteryIcon;
    private Handler mPostInvalidateHandler = new Handler() {

        public void handleMessage(Message message)
        {
            switch(message.what)
            {
            default:
                return;

            case 1: // '\001'
                postInvalidate();
                break;
            }
        }

        final MtvUiBatteryView this$0;

            
            {
                this$0 = MtvUiBatteryView.this;
                super();
            }
    }
;
    Paint mTextPaint;
    BatteryTracker mTracker;
    private String mWarningString;
    private float mWarningTextHeight;
    Paint mWarningTextPaint;
    private int mWidth;


}
