.class public abstract Lcom/sec/android/app/minimode/MiniModeService;
.super Landroid/app/Service;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/MiniModeService$23;,
        Lcom/sec/android/app/minimode/MiniModeService$TouchListener;,
        Lcom/sec/android/app/minimode/MiniModeService$Vec2D;,
        Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;,
        Lcom/sec/android/app/minimode/MiniModeService$MoveParam;,
        Lcom/sec/android/app/minimode/MiniModeService$Resizable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field public static final ALARM_ALERT_ACTION:[Ljava/lang/String;

.field public static final CATEGORY_NAME:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field public static final CLOSE_EFFECT_DEFAULT:I = 0x0

.field public static final CLOSE_EFFECT_FULLMODE:I = 0x1

.field public static final CLOSE_REASON_ALARM:I = 0x6

.field public static final CLOSE_REASON_APPLICATION_REQUEST:I = 0x7

.field public static final CLOSE_REASON_BACK_KEY_PRESSED:I = 0x1

.field public static final CLOSE_REASON_CLOSE_BUTTON_CLICKED:I = 0x3

.field public static final CLOSE_REASON_FORCE_CLOSED:I = 0x2

.field public static final CLOSE_REASON_FULL_BUTTON_CLICKED:I = 0x4

.field public static final CLOSE_REASON_INCOMING_CALL:I = 0x5

.field private static final CLOSE_REQUESTED_MSG:I = 0x4

.field static final DEBUG:Z = false

.field static final DEBUG_APP_POSITION:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_VERBOSE:Z = false

.field static final DEBUG_WINDOW_SIZE:Z = false

.field private static final DUMMY_NOTIFICATION_ID:I = 0x1

.field static final ENABLE_DEBUG_BY_SERVICE_NAME:Z = false

.field private static ENABLE_MINIMIZE_FEATURE:Z = false

.field private static ENABLE_RESIZE_FEATURE:Z = false

.field private static ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z = false

.field private static final FLOATING_ALPHA_DOWN_SCALE_FACTOR:F = 0.6f

.field private static final FLOATING_DEFAULT_ANIMATION_DURATION:I = 0x96

.field private static final FLOATING_SIZE_SCALE_FACTOR:F = 0.95f

.field private static final FOCUS_CHANGED_MSG:I = 0x1

.field private static final HIDE_REQUESTED_MSG:I = 0x7

.field private static final LAYOUT_CHANGED_MSG:I = 0x3

.field public static final MAIN_ACTIVITY_META_DATA:Ljava/lang/String; = "com.sec.minimode.main_activity"

.field private static final MINIMODE_RES_PACKAGE:Ljava/lang/String; = "com.sec.android.app.minimode.res"

.field public static final MINI_MODE_APP_MANAGER:Ljava/lang/String; = "mini_mode_app_manager"

.field private static final MOVEMENT_REQUESTED_MSG:I = 0x2

.field private static final RESIZE_WINDOW_MSG:I = 0x5

.field static final SCALE_DOWN_ANIM:Z = false

.field private static final SHOW_REQUESTED_MSG:I = 0x6

.field public static final SOFT_INPUT_MODE_NOT_INITIALIZED:I = -0x1

.field static STATIC_TAG:Ljava/lang/String; = null

.field public static final WINDOW_DEFAULT_HEIGHT:I = 0x0

.field public static final WINDOW_DEFAULT_POS_X:I = -0x2710

.field public static final WINDOW_DEFAULT_POS_Y:I = -0x2710

.field public static final WINDOW_DEFAULT_WIDTH:I = 0x0

.field public static final WINDOW_MAXIMUM_SIZE_H:Ljava/lang/String; = "com.sec.minimode.window.MAXIMUM_SIZE_H"

.field public static final WINDOW_MAXIMUM_SIZE_W:Ljava/lang/String; = "com.sec.minimode.window.MAXIMUM_SIZE_W"

.field public static final WINDOW_MINIMUM_SIZE_H:Ljava/lang/String; = "com.sec.minimode.window.MINIMUM_SIZE_H"

.field public static final WINDOW_MINIMUM_SIZE_W:Ljava/lang/String; = "com.sec.minimode.window.MINIMUM_SIZE_W"

.field public static final WINDOW_POS_X:Ljava/lang/String; = "window.pos.x"

.field public static final WINDOW_POS_Y:Ljava/lang/String; = "window.pos.y"

.field public static final X_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field public static final Y_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field private static mHasStatusBar:Z

.field private static mIsDragRestricted:Z

.field private static mIsTabletMode:Z


# instance fields
.field private CALCULATED_BODY_VIEW_ANCHOR_ID:I

.field protected CLOSE_MINIAPP_DELAY:I

.field protected MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

.field private MINIMIZED_TITLE_BAR_WIDTH:I

.field protected RESIZE_HANDLER_SHOW_TIMEOUT:I

.field TAG:Ljava/lang/String;

.field protected X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

.field protected Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

.field private lastKeyCode:I

.field private lastKeyEvent:Landroid/view/KeyEvent;

.field private mAlarmStateListner:Landroid/content/BroadcastReceiver;

.field private mAnimView:Landroid/view/View;

.field private mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field private mAttached:Z

.field public mAxisXGapBetweenMultiMiniApp:I

.field public mAxisYGapBetweenMultiMiniApp:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBgEnabled:Z

.field private mBodyView:Landroid/view/View;

.field private mBottomPaddingOfMiniApp:I

.field private mCalculatedBodyView:Landroid/view/View;

.field private mCalculatedBodyViewID:I

.field private mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

.field mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentHasBeenSet:Z

.field private mContentView:Landroid/view/View;

.field private mContentViewLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDecorContentView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mDimEnabled:Z

.field private mDimView:Landroid/view/View;

.field private mDismissed:Z

.field private mFirstShow:Z

.field private mFloatingEndAnim:Landroid/animation/AnimatorSet;

.field private mFloatingStartAnim:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mHideOverlayTitleBar:Ljava/lang/Runnable;

.field private mHideResizeHandler:Ljava/lang/Runnable;

.field protected mIWindowManager:Landroid/view/IWindowManager;

.field private mIsMinimized:Z

.field private mIsOverlayTitleBarShown:Z

.field private mIsResizeHandlerShown:Z

.field private mLastDisplayRect:Landroid/graphics/Rect;

.field private mLastFocus:Z

.field private mLaunchMainRunnable:Ljava/lang/Runnable;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftPaddingOfMiniApp:I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMainActivity:Landroid/content/ComponentName;

.field protected mMainView:Lcom/sec/android/app/minimode/MainView;

.field private mMaximizeButton:Landroid/widget/Button;

.field private mMaximumSize:Landroid/graphics/Rect;

.field private mMinimizeButton:Landroid/widget/Button;

.field private mMinimizeFunctionRequested:Z

.field private mMinimizedBar:Landroid/widget/RelativeLayout;

.field private mMinimizedBarLP:Landroid/view/ViewGroup$LayoutParams;

.field private mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

.field private mMinimumSize:Landroid/graphics/Rect;

.field private mOldDecorViewHeight:I

.field private mOldDecorViewWidth:I

.field private mOverlayFrame:Landroid/widget/RelativeLayout;

.field private mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

.field private mOverlayFrameWindow:Landroid/view/View;

.field private mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

.field private mOverlayResizeHandler:Landroid/view/View;

.field private mOverlayTitleBar:Landroid/widget/RelativeLayout;

.field private mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStatusBarHeight:I

.field private mResizeDirection:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

.field private mResizeFunctionRequested:Z

.field private mResizeHandler:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mRightPaddingOfMiniApp:I

.field private mSavedSoftInputMode:I

.field protected mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mSavedWindowAttributesFlags:I

.field protected mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

.field private mStartDrag:Z

.field private mStatusBarHeight:I

.field private mTitleView:Landroid/view/View;

.field private mTopPaddingOfMiniApp:I

.field private mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

.field private mUseCustomResizeHandler:Z

.field private mWindow:Landroid/view/Window;

.field protected mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    const-string v2, "MiniModeService"

    sput-object v2, Lcom/sec/android/app/minimode/MiniModeService;->STATIC_TAG:Ljava/lang/String;

    .line 219
    sput-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    .line 220
    sput-boolean v1, Lcom/sec/android/app/minimode/MiniModeService;->mIsDragRestricted:Z

    .line 234
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    aput-object v3, v2, v0

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "com.android.calendar.CALENDAR_ALARM_ALERT"

    aput-object v4, v2, v3

    sput-object v2, Lcom/sec/android/app/minimode/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    .line 250
    sput-boolean v1, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    .line 251
    sput-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    .line 252
    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService;->STATIC_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    .line 136
    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    .line 138
    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    .line 140
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    .line 142
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    .line 173
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneCount:I

    .line 183
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 184
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    .line 185
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    .line 186
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    .line 189
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributesFlags:I

    .line 190
    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    .line 191
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 192
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 193
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    .line 194
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    .line 195
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 196
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    .line 197
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 198
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    .line 199
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 201
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 209
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    .line 210
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    .line 211
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    .line 212
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    .line 213
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    .line 214
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    .line 221
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    .line 222
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    .line 223
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    .line 239
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentHasBeenSet:Z

    .line 241
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->CLOSE_MINIAPP_DELAY:I

    .line 242
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$1;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;

    .line 253
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    .line 254
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    .line 255
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    .line 256
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    .line 257
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    .line 258
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    .line 259
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    .line 260
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    .line 261
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->RIGHT_BOTTOM:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeDirection:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    .line 262
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mUseCustomResizeHandler:Z

    .line 263
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsResizeHandlerShown:Z

    .line 265
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    .line 266
    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    .line 268
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    .line 270
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    .line 271
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    .line 272
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    .line 273
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    .line 275
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z

    .line 277
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

    .line 278
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    .line 279
    const v0, 0xff00f0

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    .line 281
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    .line 283
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    .line 284
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    .line 286
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$2;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 496
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$6;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 1138
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$14;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;

    .line 1147
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$15;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;

    .line 1565
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$20;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;

    .line 2285
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    .line 2290
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Rect;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/minimode/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsResizeHandlerShown:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsResizeHandlerShown:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsOverlayTitleBarShown:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->startDrag()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$TouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$Resizable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeDirection:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideResizeHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHideOverlayTitleBar:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$4600()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBarLP:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLaunchMainRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/minimode/MiniModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/MiniModeService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method private static calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .locals 26
    .param p0, "displayRect"    # Landroid/graphics/Rect;
    .param p1, "miniAppRect"    # Landroid/graphics/Rect;

    .prologue
    .line 805
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 806
    .local v18, "virtualDisplayRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v11, v19, v22

    .line 807
    .local v11, "miniAppWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v10, v19, v22

    .line 812
    .local v10, "miniAppHeight":I
    int-to-double v0, v11

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd999999999999aL    # 0.4

    mul-double v20, v22, v24

    .line 813
    .local v20, "widthCanBeOutside":D
    int-to-double v0, v10

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd999999999999aL    # 0.4

    mul-double v6, v22, v24

    .line 814
    .local v6, "heightCanBeOutside":D
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v22, v0

    sub-int v19, v19, v22

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 815
    sget-boolean v19, Lcom/sec/android/app/minimode/MiniModeService;->mIsDragRestricted:Z

    if-nez v19, :cond_0

    .line 816
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    double-to-int v0, v6

    move/from16 v22, v0

    sub-int v19, v19, v22

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 818
    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v22, v0

    add-int v19, v19, v22

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 819
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    double-to-int v0, v6

    move/from16 v22, v0

    add-int v19, v19, v22

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 821
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 822
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 823
    .local v16, "unionRect":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 825
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 826
    .local v12, "sP0":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 827
    .local v13, "sP1":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 828
    .local v14, "sP2":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 829
    .local v15, "sP3":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 830
    .local v2, "eP0":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 831
    .local v3, "eP1":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 832
    .local v4, "eP2":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 833
    .local v5, "eP3":Landroid/graphics/Point;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v12, v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v19

    const/16 v19, 0x1

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v13, v3}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v19

    const/16 v19, 0x2

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v4}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v19

    const/16 v19, 0x3

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v5}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v19

    .line 837
    .local v17, "vectors":[Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    const/16 v19, 0x0

    aget-object v9, v17, v19

    .line 838
    .local v9, "max":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 839
    invoke-virtual {v9}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v19

    aget-object v22, v17, v8

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v22

    cmpg-float v19, v19, v22

    if-gez v19, :cond_1

    .line 840
    aget-object v9, v17, v8

    .line 838
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 847
    .end local v2    # "eP0":Landroid/graphics/Point;
    .end local v3    # "eP1":Landroid/graphics/Point;
    .end local v4    # "eP2":Landroid/graphics/Point;
    .end local v5    # "eP3":Landroid/graphics/Point;
    .end local v8    # "i":I
    .end local v9    # "max":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v12    # "sP0":Landroid/graphics/Point;
    .end local v13    # "sP1":Landroid/graphics/Point;
    .end local v14    # "sP2":Landroid/graphics/Point;
    .end local v15    # "sP3":Landroid/graphics/Point;
    .end local v16    # "unionRect":Landroid/graphics/Rect;
    .end local v17    # "vectors":[Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_2
    new-instance v9, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    const/16 v19, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    :cond_3
    return-object v9
.end method

.method private calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 13
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "miniAppRect"    # Landroid/graphics/Rect;

    .prologue
    .line 711
    const/4 v7, 0x0

    .line 712
    .local v7, "xExceeded":Z
    const/4 v9, 0x0

    .line 713
    .local v9, "yExceeded":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 714
    .local v1, "nextMiniAppRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 715
    .local v5, "tmpPoint":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 716
    .local v2, "nextPoint":Landroid/graphics/Point;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v0, "calculatedPositionList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10, v11, v12}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 719
    :cond_0
    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_2

    const/4 v7, 0x1

    .line 720
    :goto_1
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_3

    const/4 v9, 0x1

    .line 722
    :goto_2
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 723
    iget v10, v1, Landroid/graphics/Rect;->top:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 725
    if-eqz v7, :cond_4

    .line 726
    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 727
    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 730
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    .line 731
    .local v6, "xDiff":I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 732
    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    .line 734
    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    .line 735
    .local v8, "yDiff":I
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 736
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 775
    :cond_1
    :goto_3
    new-instance v3, Landroid/graphics/Point;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 776
    .local v3, "result":Landroid/graphics/Point;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 778
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    .end local v3    # "result":Landroid/graphics/Point;
    .end local v6    # "xDiff":I
    .end local v8    # "yDiff":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 720
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 738
    :cond_4
    if-eqz v9, :cond_5

    .line 739
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/minimode/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v5

    .line 740
    iget v10, v5, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 741
    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 744
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    .line 745
    .restart local v6    # "xDiff":I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 746
    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    .line 748
    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    .line 749
    .restart local v8    # "yDiff":I
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 750
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 753
    .end local v6    # "xDiff":I
    .end local v8    # "yDiff":I
    :cond_5
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/minimode/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v5

    .line 754
    iget v10, v5, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->x:I

    .line 755
    iget v10, v5, Landroid/graphics/Point;->y:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 758
    iget v10, v2, Landroid/graphics/Point;->x:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v10, v11

    .line 759
    .restart local v6    # "xDiff":I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 760
    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v6

    iput v10, v1, Landroid/graphics/Rect;->right:I

    .line 762
    iget v10, v2, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int v8, v10, v11

    .line 763
    .restart local v8    # "yDiff":I
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 764
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 766
    iget v10, p1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_6

    const/4 v7, 0x1

    .line 767
    :goto_4
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_7

    const/4 v9, 0x1

    .line 768
    :goto_5
    if-eqz v9, :cond_1

    if-nez v7, :cond_1

    .line 770
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 771
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v10, v11

    iput v10, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 766
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 767
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 781
    .restart local v3    # "result":Landroid/graphics/Point;
    :cond_8
    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/minimode/MiniModeService;->shiftDownMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v4

    .line 782
    .local v4, "tmp":Landroid/graphics/Point;
    iget v10, v4, Landroid/graphics/Point;->x:I

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 783
    iget v10, v4, Landroid/graphics/Point;->y:I

    iput v10, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 787
    .end local v3    # "result":Landroid/graphics/Point;
    .end local v4    # "tmp":Landroid/graphics/Point;
    .end local v6    # "xDiff":I
    .end local v8    # "yDiff":I
    :cond_9
    return-object v1
.end method

.method private calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 18
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "miniAppRect"    # Landroid/graphics/Rect;

    .prologue
    .line 684
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 685
    .local v2, "calculatedMiniAppRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v6, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 686
    .local v6, "referencePointOfMiniApp":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 688
    .local v5, "nextPoint":Landroid/graphics/Point;
    iget v13, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    .line 689
    .local v8, "relativeRateX":D
    iget v13, v6, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 691
    .local v10, "relativeRateY":D
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->left:I

    int-to-double v14, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    add-double v14, v14, v16

    double-to-int v3, v14

    .line 692
    .local v3, "calculatedReferencePointX":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    int-to-double v14, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    add-double v14, v14, v16

    double-to-int v4, v14

    .line 694
    .local v4, "calculatedReferencePointY":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v3, v13

    iput v13, v5, Landroid/graphics/Point;->x:I

    .line 695
    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 698
    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int v7, v13, v14

    .line 699
    .local v7, "xDiff":I
    iget v13, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v7

    iput v13, v2, Landroid/graphics/Rect;->left:I

    .line 700
    iget v13, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v7

    iput v13, v2, Landroid/graphics/Rect;->right:I

    .line 702
    iget v13, v5, Landroid/graphics/Point;->y:I

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v14

    .line 703
    .local v12, "yDiff":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    iput v13, v2, Landroid/graphics/Rect;->top:I

    .line 704
    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v12

    iput v13, v2, Landroid/graphics/Rect;->bottom:I

    .line 706
    return-object v2
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/16 v6, -0x2710

    .line 2109
    const/16 v3, 0x7d2

    .line 2111
    .local v3, "windowType":I
    :try_start_0
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "TYPE_MINI_APP"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2112
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 2113
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2122
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1040360

    const/4 v5, -0x3

    invoke-direct {v1, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 2130
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2131
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2132
    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2133
    const/16 v4, 0x20

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2134
    const v4, 0x7f080001

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2135
    const-string v4, "com.sec.android.app.minimode.res"

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2137
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v2

    .line 2138
    .local v2, "pos":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ne v4, v6, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ne v4, v6, :cond_1

    .line 2139
    const/16 v4, 0x11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2140
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2141
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2143
    :cond_1
    return-object v1

    .line 2118
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "pos":Landroid/graphics/Rect;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2117
    :catch_1
    move-exception v4

    goto :goto_0

    .line 2116
    :catch_2
    move-exception v4

    goto :goto_0

    .line 2115
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private endDrag()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 852
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    if-eqz v6, :cond_1

    .line 853
    iput-boolean v9, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 854
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 855
    .local v0, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 856
    .local v3, "miniAppRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 857
    invoke-static {v0, v3}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v2

    .line 858
    .local v2, "max":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v4, v6, v7}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    .line 859
    .local v4, "start":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, v2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-direct {v1, v6, v7}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    .line 861
    .local v1, "end":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$7;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 867
    .local v5, "translateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v6

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 868
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$8;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 877
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$9;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v7

    float-to-int v7, v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 907
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 916
    .end local v1    # "end":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v2    # "max":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v4    # "start":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v5    # "translateAnim":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/sec/android/app/minimode/MiniModeService$10;

    invoke-direct {v7, p0}, Lcom/sec/android/app/minimode/MiniModeService$10;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    .end local v0    # "displayRect":Landroid/graphics/Rect;
    .end local v3    # "miniAppRect":Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 909
    .restart local v0    # "displayRect":Landroid/graphics/Rect;
    .restart local v3    # "miniAppRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 911
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, v7, :cond_0

    .line 913
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_0
.end method

.method private findBodyView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 1157
    if-nez p1, :cond_1

    .line 1158
    const/4 p1, 0x0

    .line 1174
    .end local p1    # "root":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p1

    .line 1159
    .restart local p1    # "root":Landroid/view/View;
    :cond_1
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1163
    check-cast v1, Landroid/view/ViewGroup;

    .line 1166
    .local v1, "tmpResultView":Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1167
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1168
    .local v0, "childView":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 1169
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_1

    .end local v0    # "childView":Landroid/view/View;
    :cond_3
    move-object p1, v1

    .line 1174
    goto :goto_0
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getFocusedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 323
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    .line 326
    :cond_0
    return-object v0
.end method

.method private getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # J
    .param p3, "slotId"    # I

    .prologue
    .line 464
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/minimode/MiniModeService$4;-><init>(Lcom/sec/android/app/minimode/MiniModeService;J)V

    .line 472
    .local v0, "mMSimPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private handleClose(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 2079
    invoke-virtual {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onClose(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2090
    :goto_0
    return-void

    .line 2081
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->isNeededToSave(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2082
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onSaveInstanceState(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 2088
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->dismiss()V

    .line 2089
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->stopSelf()V

    goto :goto_0

    .line 2085
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private initAlarmEventListener()V
    .locals 4

    .prologue
    .line 476
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 477
    new-instance v2, Lcom/sec/android/app/minimode/MiniModeService$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/minimode/MiniModeService$5;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/sec/android/app/minimode/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 490
    sget-object v2, Lcom/sec/android/app/minimode/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 494
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private initFloatingAnimations()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x96

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1091
    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1092
    .local v3, "startSizeAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1093
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$12;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$12;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1101
    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1103
    .local v2, "startAlphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1104
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$13;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$13;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1111
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    .line 1112
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1113
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1114
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    .line 1115
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1116
    .local v1, "endSizeAnim":Landroid/animation/ValueAnimator;
    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1117
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1118
    .local v0, "endAlphaAnim":Landroid/animation/ValueAnimator;
    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1119
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1120
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1121
    return-void

    .line 1091
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    .line 1101
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 1116
    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    .line 1118
    :array_3
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initOverlayFrameWindow()V
    .locals 14

    .prologue
    const v13, 0x7f020002

    const/16 v12, 0xb

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 1226
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f030001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    .line 1227
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v6, 0x7f090001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    .line 1228
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x835

    const v7, 0x1040368

    const/4 v8, -0x3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    .line 1239
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1240
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1241
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1242
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1243
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1244
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1245
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1246
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1248
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f02000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1249
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    .line 1250
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1252
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    .line 1253
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1254
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1256
    .local v4, "overlayTitleBarLP":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x6

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1257
    const/4 v5, 0x7

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1258
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1260
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    .line 1261
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1264
    .local v2, "minimizeButtonLP":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1265
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1267
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeButton:Landroid/widget/Button;

    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$16;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$16;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    .line 1294
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_WIDTH:I

    invoke-direct {v3, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1297
    .local v3, "minimizedTitleBarLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    .line 1299
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1300
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1302
    .local v1, "maximizeButtonLP":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1303
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$17;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$17;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximizeButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1326
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBarTouchListener:Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1328
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    .line 1329
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v7, 0x7f070000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1330
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1331
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1332
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1333
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$18;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$18;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1359
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$19;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$19;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1478
    return-void
.end method

.method private initTelephonyEventListener()V
    .locals 8

    .prologue
    .line 440
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/minimode/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 441
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneCount:I

    .line 444
    :try_start_0
    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneCount:I

    new-array v5, v5, [Landroid/telephony/PhoneStateListener;

    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneCount:I

    if-ge v1, v5, :cond_2

    .line 446
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v4

    .line 447
    .local v4, "subIdtemp":[J
    if-eqz v4, :cond_0

    .line 448
    const/4 v5, 0x0

    aget-wide v2, v4, v5

    .line 449
    .local v2, "subId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 450
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/minimode/MiniModeService;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v5, v1

    .line 451
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v1

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 445
    .end local v2    # "subId":J
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .restart local v2    # "subId":J
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x0

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 457
    .end local v1    # "i":I
    .end local v2    # "subId":J
    .end local v4    # "subIdtemp":[J
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MiniApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    return-void
.end method

.method private initWindowEventListeners()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 952
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/minimode/MiniModeService$11;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    .line 1087
    return-void
.end method

.method private isNeededToSave(I)Z
    .locals 1
    .param p1, "reason"    # I

    .prologue
    const/4 v0, 0x0

    .line 2093
    packed-switch p1, :pswitch_data_0

    .line 2104
    :goto_0
    :pswitch_0
    return v0

    .line 2102
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2093
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadResizeInfo()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1481
    const/4 v9, 0x0

    .line 1483
    .local v9, "svcInfo":Landroid/content/pm/ServiceInfo;
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1487
    :goto_0
    if-eqz v9, :cond_4

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_4

    .line 1488
    iget-object v4, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 1489
    .local v4, "metaData":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1490
    .local v7, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1491
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1492
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMinimumWidth()I

    move-result v6

    .line 1493
    .local v6, "minWidth":I
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    .line 1494
    .local v5, "minHeight":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1495
    .local v3, "maxWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1497
    .local v2, "maxHeight":I
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 1498
    if-eqz v4, :cond_3

    .line 1499
    const-string v10, "com.sec.minimode.window.MINIMUM_SIZE_W"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1500
    .local v8, "sizeId":I
    if-eqz v8, :cond_0

    .line 1501
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    .line 1503
    :cond_0
    const-string v10, "com.sec.minimode.window.MINIMUM_SIZE_H"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1504
    if-eqz v8, :cond_1

    .line 1505
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    .line 1507
    :cond_1
    const-string v10, "com.sec.minimode.window.MAXIMUM_SIZE_W"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1508
    if-eqz v8, :cond_2

    .line 1509
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 1511
    :cond_2
    const-string v10, "com.sec.minimode.window.MAXIMUM_SIZE_H"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1512
    if-eqz v8, :cond_3

    .line 1513
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    float-to-int v2, v10

    .line 1519
    .end local v8    # "sizeId":I
    :cond_3
    :goto_1
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v13, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimumSize:Landroid/graphics/Rect;

    .line 1520
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v13, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMaximumSize:Landroid/graphics/Rect;

    .line 1522
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "minHeight":I
    .end local v6    # "minWidth":I
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_4
    return-void

    .line 1484
    :catch_0
    move-exception v1

    .line 1485
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1516
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "maxHeight":I
    .restart local v3    # "maxWidth":I
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "minHeight":I
    .restart local v6    # "minWidth":I
    .restart local v7    # "r":Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 1517
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private shiftDownMiniAppPosition(II)Landroid/graphics/Point;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 798
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 799
    .local v0, "result":Landroid/graphics/Point;
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 800
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 801
    return-object v0
.end method

.method private shiftMiniAppPosition(II)Landroid/graphics/Point;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 791
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 792
    .local v0, "result":Landroid/graphics/Point;
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 793
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 794
    return-object v0
.end method

.method private startDrag()V
    .locals 4

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v0

    .line 605
    .local v0, "v":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 606
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 607
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    .line 608
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 609
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 617
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 622
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 626
    return-void

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    goto :goto_0
.end method


# virtual methods
.method protected closeOtherMiniApps()V
    .locals 1

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->closeOthers()V

    .line 2446
    return-void
.end method

.method public dismiss()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2217
    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    if-eqz v3, :cond_0

    .line 2245
    :goto_0
    return-void

    .line 2221
    :cond_0
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2222
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2225
    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 2226
    iput-boolean v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    .line 2227
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2228
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2229
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->setLastSize(II)V

    .line 2231
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2237
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 2238
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->removePosition()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 2243
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    .line 2244
    invoke-virtual {p0, v7}, Lcom/sec/android/app/minimode/MiniModeService;->stopForeground(Z)V

    goto :goto_0

    .line 2239
    :catch_0
    move-exception v0

    .line 2240
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected enableBg(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2557
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2558
    if-eqz p1, :cond_1

    .line 2559
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2564
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MainView;->postInvalidate()V

    .line 2566
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    .line 2567
    return-void

    .line 2561
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2562
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/sec/android/app/minimode/MainView;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected enableDim(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 2532
    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    if-eq v1, p1, :cond_1

    .line 2533
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-nez v1, :cond_2

    .line 2534
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2535
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2536
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2537
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2538
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2539
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    .line 2540
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    .line 2541
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MainView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2547
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/minimode/MainView;->postInvalidateDelayed(J)V

    .line 2549
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    .line 2550
    return-void

    .line 2542
    :cond_2
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-eqz v1, :cond_0

    .line 2543
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2544
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MainView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public enableDragRestriction(Z)V
    .locals 0
    .param p1, "restrict"    # Z

    .prologue
    .line 2387
    sput-boolean p1, Lcom/sec/android/app/minimode/MiniModeService;->mIsDragRestricted:Z

    .line 2388
    return-void
.end method

.method public enableMinimizeFeature(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2073
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    .line 2074
    return-void
.end method

.method public enableResizeFeature(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2055
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    .line 2056
    return-void
.end method

.method public enableResizeHandler(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2062
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2063
    if-eqz p1, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2066
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    if-nez v0, :cond_0

    .line 1651
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    .line 1653
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    goto :goto_0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDecorationPadding()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 2583
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2584
    .local v0, "paddingRect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2585
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2586
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2587
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2588
    return-object v0
.end method

.method protected getDisplayRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 631
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 634
    .local v1, "dmReal":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 648
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 653
    .local v0, "displayRect":Landroid/graphics/Rect;
    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    if-eqz v2, :cond_0

    .line 654
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "displayRect":Landroid/graphics/Rect;
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 660
    .restart local v0    # "displayRect":Landroid/graphics/Rect;
    :cond_0
    return-object v0
.end method

.method protected getFocusedComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMainActivityComponent()Landroid/content/ComponentName;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2416
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2417
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2418
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    .line 2429
    :cond_0
    :goto_0
    return-object v4

    .line 2423
    :cond_1
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.sec.minimode.main_activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2426
    .local v2, "ma":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2429
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2430
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "ma":Ljava/lang/String;
    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 2431
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing main.app"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    return-object v0
.end method

.method protected getMiniAppRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 665
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 666
    .local v3, "miniAppX":I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 667
    .local v4, "miniAppY":I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 668
    .local v2, "miniAppWidth":I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 671
    .local v0, "miniAppHeight":I
    sget-boolean v5, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsMinimized:Z

    if-eqz v5, :cond_0

    .line 672
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 673
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizedBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 676
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int v6, v4, v0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 679
    .local v1, "miniAppRect":Landroid/graphics/Rect;
    return-object v1
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 2408
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/minimode/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    .line 2410
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowManger()Landroid/view/WindowManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2400
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MainView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 2593
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    return v0
.end method

.method public hide()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2186
    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v3, :cond_0

    .line 2212
    :goto_0
    return-void

    .line 2189
    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 2190
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2196
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    .line 2198
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 2199
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    :cond_1
    :goto_1
    sget-boolean v3, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2207
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2208
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->setLastSize(II)V

    .line 2210
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public isFirstShow()Z
    .locals 1

    .prologue
    .line 2598
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    return v0
.end method

.method public isWindowAttached()Z
    .locals 1

    .prologue
    .line 2571
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    return v0
.end method

.method public isWindowDismissed()Z
    .locals 1

    .prologue
    .line 2576
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    return v0
.end method

.method public move(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1862
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1865
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClose(I)Z
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 2032
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1870
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1873
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v6, :cond_0

    .line 1923
    :goto_0
    return-void

    .line 1876
    :cond_0
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    if-eq v6, v7, :cond_5

    .line 1877
    sget-boolean v6, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1878
    const/4 v0, 0x0

    .line 1879
    .local v0, "bResized":Z
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->loadResizeInfo()V

    .line 1880
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1881
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1882
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1883
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1884
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1885
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    .line 1886
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v6, v7, :cond_1

    .line 1887
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1888
    const/4 v0, 0x1

    .line 1890
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v7, :cond_2

    .line 1891
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1892
    const/4 v0, 0x1

    .line 1894
    :cond_2
    if-eqz v0, :cond_3

    .line 1895
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1896
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1899
    .end local v0    # "bResized":Z
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1900
    .local v1, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1902
    .local v4, "miniAppRect":Landroid/graphics/Rect;
    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/minimode/MiniModeService;->calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1905
    .local v5, "rotatedMiniAppRect":Landroid/graphics/Rect;
    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 1906
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1907
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1908
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1909
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1910
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1911
    invoke-static {v1, v4}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v3

    .line 1912
    .local v3, "max":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v3, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1913
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, v3, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1914
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1917
    .end local v3    # "max":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_4
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-eqz v6, :cond_6

    .line 1918
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    .line 1922
    .end local v1    # "displayRect":Landroid/graphics/Rect;
    .end local v4    # "miniAppRect":Landroid/graphics/Rect;
    .end local v5    # "rotatedMiniAppRect":Landroid/graphics/Rect;
    :cond_5
    :goto_1
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    goto/16 :goto_0

    .line 1920
    .restart local v1    # "displayRect":Landroid/graphics/Rect;
    .restart local v4    # "miniAppRect":Landroid/graphics/Rect;
    .restart local v5    # "rotatedMiniAppRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->updatePosition(II)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 332
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 333
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    .line 343
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/minimode/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    .line 344
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 345
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMainActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    .line 350
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "com.sec.android.app.minimode.res"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    iput-object p0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 360
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v4, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_4

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f030000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/minimode/MainView;

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    .line 369
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/high16 v5, 0x7f090000

    invoke-virtual {v4, v5}, Lcom/sec/android/app/minimode/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 371
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    .line 372
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f020000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 373
    iget-boolean v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/minimode/MainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    .line 377
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    .line 378
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f050003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    .line 379
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    .line 380
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    .line 381
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    .line 383
    sget-boolean v4, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    if-nez v4, :cond_1

    .line 384
    sput-boolean v7, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    .line 389
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 391
    .local v3, "showStatusBar":Z
    if-eqz v3, :cond_2

    .line 392
    sput-boolean v7, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    .line 394
    :cond_2
    sget-boolean v4, Lcom/sec/android/app/minimode/MiniModeService;->mHasStatusBar:Z

    if-eqz v4, :cond_3

    .line 395
    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    .line 398
    :cond_3
    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    .line 399
    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 401
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    .line 402
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    .line 403
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 404
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 405
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 406
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 407
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/sec/android/app/minimode/MiniModeService$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/minimode/MiniModeService$3;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 426
    .end local v3    # "showStatusBar":Z
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initWindowEventListeners()V

    .line 429
    sget-boolean v4, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v4, :cond_5

    .line 430
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initOverlayFrameWindow()V

    .line 431
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->loadResizeInfo()V

    .line 434
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initFloatingAnimations()V

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initTelephonyEventListener()V

    .line 436
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initAlarmEventListener()V

    .line 437
    return-void

    .line 351
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    const-string v5, "Error on get minimode res"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 362
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 363
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1929
    iput-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentHasBeenSet:Z

    .line 1932
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->dismiss()V

    .line 1934
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    if-eqz v2, :cond_0

    .line 1935
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    .line 1936
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/minimode/MainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1937
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MainView;->removeAllViews()V

    .line 1938
    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 1939
    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    .line 1940
    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1943
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 1944
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 1946
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1947
    :catch_0
    move-exception v0

    .line 1948
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiniApp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1954
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 1955
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1956
    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    .line 1958
    :cond_3
    iput-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    .line 1959
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1960
    return-void
.end method

.method protected onMaximized()Z
    .locals 1

    .prologue
    .line 2048
    const/4 v0, 0x0

    return v0
.end method

.method protected onMinimized()Z
    .locals 1

    .prologue
    .line 2043
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 601
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1967
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_1

    .line 1969
    :cond_0
    const/4 v6, 0x2

    .line 2025
    :goto_0
    return v6

    .line 1971
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1973
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v2

    .line 1975
    .local v2, "lastPosition":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    .line 1976
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v7, "window.pos.x"

    iget v8, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1977
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v7, "window.pos.y"

    iget v8, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1979
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v7, -0x2710

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_4

    .line 1981
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x33

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1985
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1987
    .local v1, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1990
    .local v3, "miniAppRect":Landroid/graphics/Rect;
    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 1992
    sget-boolean v6, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_MINIMIZE_FEATURE:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMinimizeFunctionRequested:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_5

    .line 1993
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1995
    .local v4, "overlayTitleBarLP":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x6

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1996
    const/4 v6, 0x7

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1997
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1998
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1999
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayTitleBar:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2002
    .end local v4    # "overlayTitleBarLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    sget-boolean v6, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v6, :cond_8

    .line 2004
    if-eqz v2, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_6

    .line 2007
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2008
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2010
    :cond_6
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mUseCustomResizeHandler:Z

    if-nez v6, :cond_7

    .line 2011
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    .line 2012
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMinimumWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMinimumHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2013
    .local v5, "resizeHandlerLP":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x8

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2014
    const/4 v6, 0x7

    iget v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2015
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2017
    .end local v5    # "resizeHandlerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2021
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->show()V

    .line 2023
    .end local v1    # "displayRect":Landroid/graphics/Rect;
    .end local v2    # "lastPosition":Landroid/graphics/Rect;
    .end local v3    # "miniAppRect":Landroid/graphics/Rect;
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2025
    const/4 v6, 0x2

    goto/16 :goto_0
.end method

.method protected onWindowFocusChanged(Z)Z
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2037
    const/4 v0, 0x0

    return v0
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 2361
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2365
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2366
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2369
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2372
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameLP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2375
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2376
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2377
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_2

    .line 2379
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x837

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2381
    :cond_2
    return-void
.end method

.method public setClosingAnimation(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1535
    return-void
.end method

.method public setContentView(IIII)V
    .locals 6
    .param p1, "main"    # I
    .param p2, "close"    # I
    .param p3, "title"    # I
    .param p4, "launchMain"    # I

    .prologue
    .line 1779
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(IIIII)V

    .line 1780
    return-void
.end method

.method public setContentView(IIIII)V
    .locals 4
    .param p1, "main"    # I
    .param p2, "close"    # I
    .param p3, "title"    # I
    .param p4, "launchMain"    # I
    .param p5, "body"    # I

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1792
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentView() : updated main id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1800
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 1802
    sget-boolean v1, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v1, :cond_1

    .line 1803
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 1805
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    .line 1806
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    .line 1808
    .local v0, "viewId":I
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1809
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    .line 1824
    .end local v0    # "viewId":I
    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V

    .line 1825
    return-void
.end method

.method public setContentView(Landroid/view/View;II)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "close"    # I
    .param p3, "title"    # I

    .prologue
    const/4 v4, -0x1

    .line 1663
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    .line 1664
    return-void
.end method

.method public setContentView(Landroid/view/View;III)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "close"    # I
    .param p3, "title"    # I
    .param p4, "launchMain"    # I

    .prologue
    .line 1668
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    .line 1669
    return-void
.end method

.method public setContentView(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "close"    # I
    .param p3, "title"    # I
    .param p4, "launchMain"    # I
    .param p5, "body"    # I

    .prologue
    .line 1681
    if-nez p1, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    const-string v1, "setContentView() : contentView is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :goto_0
    return-void

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1691
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 1692
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1694
    sget-boolean v0, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_N_MINIMIZE_FEATURE:Z

    if-eqz v0, :cond_2

    .line 1695
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 1697
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyView:Landroid/view/View;

    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1699
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->CALCULATED_BODY_VIEW_ANCHOR_ID:I

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    .line 1709
    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V

    goto :goto_0
.end method

.method protected setContentViewInner(IIII)V
    .locals 6
    .param p1, "close"    # I
    .param p2, "title"    # I
    .param p3, "launchMain"    # I
    .param p4, "body"    # I

    .prologue
    const/4 v5, 0x1

    .line 1714
    iput-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentHasBeenSet:Z

    .line 1715
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1716
    .local v0, "closeButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1717
    new-instance v3, Lcom/sec/android/app/minimode/MiniModeService$21;

    invoke-direct {v3, p0}, Lcom/sec/android/app/minimode/MiniModeService$21;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1723
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    .line 1724
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1726
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1738
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTouchListener:Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1739
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1740
    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_2

    .line 1741
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 1743
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 1747
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 1750
    .end local v2    # "viewParent":Landroid/view/ViewParent;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1751
    .local v1, "launchMainButton":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1752
    new-instance v3, Lcom/sec/android/app/minimode/MiniModeService$22;

    invoke-direct {v3, p0}, Lcom/sec/android/app/minimode/MiniModeService$22;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1768
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 1769
    return-void
.end method

.method protected setCustomResizeHandler(Lcom/sec/android/app/minimode/MiniModeService$Resizable;Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 9
    .param p1, "direction"    # Lcom/sec/android/app/minimode/MiniModeService$Resizable;
    .param p2, "cue"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "thickness"    # I

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xe

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, -0x1

    .line 2464
    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    if-eq v2, v4, :cond_2

    .line 2465
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mUseCustomResizeHandler:Z

    .line 2466
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeDirection:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    .line 2467
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrame:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2468
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2469
    .local v1, "lpOverlay":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2471
    .local v0, "lpHandle":Landroid/widget/RelativeLayout$LayoutParams;
    if-gtz p3, :cond_0

    .line 2472
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result p3

    .line 2474
    :cond_0
    sget-object v2, Lcom/sec/android/app/minimode/MiniModeService$23;->$SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeDirection:Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    invoke-virtual {v3}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2507
    if-nez p2, :cond_1

    .line 2508
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .end local p2    # "cue":Landroid/graphics/drawable/BitmapDrawable;
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 2510
    .restart local p2    # "cue":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/16 v2, 0x55

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 2511
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2512
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2513
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2514
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2515
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2516
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2517
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2518
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2520
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2521
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeHandler:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2522
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayResizeHandler:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2525
    .end local v0    # "lpHandle":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "lpOverlay":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 2476
    .restart local v0    # "lpHandle":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "lpOverlay":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    if-nez p2, :cond_3

    .line 2477
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .end local p2    # "cue":Landroid/graphics/drawable/BitmapDrawable;
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 2479
    .restart local p2    # "cue":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    const/16 v2, 0x50

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 2480
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 2481
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2482
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2483
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2484
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2485
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2486
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2487
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2488
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 2491
    :pswitch_1
    if-nez p2, :cond_4

    .line 2492
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .end local p2    # "cue":Landroid/graphics/drawable/BitmapDrawable;
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 2494
    .restart local p2    # "cue":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 2495
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 2496
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2497
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2498
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2499
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2500
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2501
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCalculatedBodyViewID:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2502
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2503
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    .line 2474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setDimAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2455
    :cond_0
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2151
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v2, :cond_0

    .line 2179
    :goto_0
    return-void

    .line 2154
    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 2155
    iput-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDismissed:Z

    .line 2156
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    .line 2157
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    .line 2159
    .local v1, "state":Landroid/os/Bundle;
    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2160
    invoke-virtual {p0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2162
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2164
    sget-boolean v2, Lcom/sec/android/app/minimode/MiniModeService;->ENABLE_RESIZE_FEATURE:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResizeFunctionRequested:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2165
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindow:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOverlayFrameWindowParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2171
    :cond_2
    :goto_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/minimode/MiniModeService;->setClosingAnimation(I)V

    .line 2172
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    if-eqz v2, :cond_3

    .line 2173
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V

    .line 2178
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    goto :goto_0

    .line 2168
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method
