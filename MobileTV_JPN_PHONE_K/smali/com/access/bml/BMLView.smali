.class public Lcom/access/bml/BMLView;
.super Landroid/widget/FrameLayout;
.source "BMLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/access/bml/BMLView$Timer;,
        Lcom/access/bml/BMLView$eventInfo;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "BMLView"

.field public static mBgColor:I


# instance fields
.field private BML_MagValue:F

.field public final EVENT_ACTION_KEY_PRESS:I

.field public final EVENT_ACTION_KEY_RELEASE:I

.field public final EVENT_ACTION_MOUSE_DOWN:I

.field public final EVENT_ACTION_MOUSE_MOVE:I

.field public final EVENT_ACTION_MOUSE_UP:I

.field public final EVENT_ACTION_MOUSE_WHEEL:I

.field public final EVENT_TYPE_KEY:I

.field public final EVENT_TYPE_MOUSE:I

.field public final EVENT_TYPE_NIL:I

.field public final available:Ljava/util/concurrent/Semaphore;

.field private bQuit:Z

.field private bckupBitmap:Landroid/graphics/Bitmap;

.field private bckupCanvas:Landroid/graphics/Canvas;

.field private bitMapLeft:F

.field private bitMapTop:F

.field private dirtyRect:Landroid/graphics/Rect;

.field private downX:F

.field private downY:F

.field public fAudioStream_Channel:I

.field public fAudioStream_ComponentTag:I

.field public fAudioStream_EventType:I

.field public fAudioStream_Status:S

.field public fDoContinue:Z

.field public fDoRequestContent:Z

.field public fEventChanged_ComponentTag:I

.field public fEventChanged_EventType:I

.field public fEventChanged_Status:S

.field public fMediaStopped_EventType:I

.field public fMediaStopped_ObjectID:Ljava/lang/String;

.field public fMediaStopped_Status:S

.field public fMessageFired_ComponentTag:I

.field public fMessageFired_EventType:I

.field public fMessageFired_MessageGroupID:S

.field public fMessageFired_MessageID:S

.field public fMessageFired_MessageVersion:S

.field public fMessageFired_PrivateData:Ljava/lang/String;

.field public fMessageFired_Status:S

.field public fMessageFired_TimeMode:I

.field public fMessageFired_fDay:I

.field public fMessageFired_fDayOfWeek:I

.field public fMessageFired_fHour:I

.field public fMessageFired_fMillisecond:S

.field public fMessageFired_fMinute:I

.field public fMessageFired_fMonth:I

.field public fMessageFired_fSecond:I

.field public fMessageFired_fYear:S

.field public fModuleLocked_ComponentTag:I

.field public fModuleLocked_EventType:I

.field public fModuleLocked_ModuleID:I

.field public fModuleLocked_Status:S

.field public fModuleUpdated_ComponentTag:I

.field public fModuleUpdated_EventType:I

.field public fModuleUpdated_ModuleID:I

.field public fModuleUpdated_Status:S

.field public fRequestID:I

.field private fontManager:Lcom/access/bml/BMLFontManager;

.field gContentsRect:Landroid/graphics/Rect;

.field gScreenRect:Landroid/graphics/Rect;

.field private handler:Landroid/os/Handler;

.field private lastX:F

.field private lastY:F

.field locationListener:Landroid/location/LocationListener;

.field private mActivityHandler:Landroid/os/Handler;

.field private mBMLBrowserRect:Landroid/graphics/Rect;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

.field private mContext:Landroid/content/Context;

.field private final mEngineDrawPixel:I

.field public mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLock_OnOff:Z

.field private mNeedReshape:Z

.field public mPosCount:D

.field public mPosResult:I

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field public mRcvCount:D

.field public mRcvStrength:I

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public m_bSuppressNotiPopup:Z

.field public nativeEngine:I

.field paint_filter:Landroid/graphics/Paint;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private posProvider:Ljava/lang/String;

.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/access/bml/BMLView$eventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight:I

.field private screenWidth:I

.field private timers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/access/bml/BMLView$Timer;",
            ">;"
        }
    .end annotation
.end field

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/high16 v0, -0x1000000

    sput v0, Lcom/access/bml/BMLView;->mBgColor:I

    .line 2144
    const-string v0, "BML"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2145
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 207
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object v6, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 76
    iput-object v6, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    .line 84
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/access/bml/BMLView;->screenWidth:I

    .line 86
    const/16 v1, 0x320

    iput v1, p0, Lcom/access/bml/BMLView;->screenHeight:I

    .line 88
    iput v2, p0, Lcom/access/bml/BMLView;->bitMapLeft:F

    .line 90
    iput v2, p0, Lcom/access/bml/BMLView;->bitMapTop:F

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLView;->gContentsRect:Landroid/graphics/Rect;

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    .line 95
    iput v2, p0, Lcom/access/bml/BMLView;->downX:F

    .line 96
    iput v2, p0, Lcom/access/bml/BMLView;->downY:F

    .line 98
    iput v2, p0, Lcom/access/bml/BMLView;->lastX:F

    .line 100
    iput v2, p0, Lcom/access/bml/BMLView;->lastY:F

    .line 106
    iput-boolean v4, p0, Lcom/access/bml/BMLView;->m_bSuppressNotiPopup:Z

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLView;->paint_filter:Landroid/graphics/Paint;

    .line 113
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    .line 114
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/access/bml/BMLView;->mEngineDrawPixel:I

    .line 124
    iput v4, p0, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 125
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/access/bml/BMLView;->mRcvCount:D

    .line 130
    iput-object v6, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    .line 137
    iput-boolean v4, p0, Lcom/access/bml/BMLView;->mNeedReshape:Z

    .line 144
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLView;->posProvider:Ljava/lang/String;

    .line 145
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/access/bml/BMLView;->mPosCount:D

    .line 146
    const/4 v1, -0x1

    iput v1, p0, Lcom/access/bml/BMLView;->mPosResult:I

    .line 148
    iput-boolean v4, p0, Lcom/access/bml/BMLView;->mLock_OnOff:Z

    .line 388
    iput-boolean v4, p0, Lcom/access/bml/BMLView;->fDoRequestContent:Z

    .line 393
    iput-boolean v4, p0, Lcom/access/bml/BMLView;->fDoContinue:Z

    .line 395
    iput-boolean v4, p0, Lcom/access/bml/BMLView;->bQuit:Z

    .line 400
    new-instance v1, Lcom/access/bml/BMLFontManager;

    invoke-direct {v1}, Lcom/access/bml/BMLFontManager;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    .line 402
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    .line 859
    new-instance v1, Lcom/access/bml/BMLView$1;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLView$1;-><init>(Lcom/access/bml/BMLView;)V

    iput-object v1, p0, Lcom/access/bml/BMLView;->locationListener:Landroid/location/LocationListener;

    .line 942
    new-instance v1, Lcom/access/bml/BMLView$2;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLView$2;-><init>(Lcom/access/bml/BMLView;)V

    iput-object v1, p0, Lcom/access/bml/BMLView;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1918
    iput v4, p0, Lcom/access/bml/BMLView;->EVENT_TYPE_NIL:I

    .line 1919
    iput v5, p0, Lcom/access/bml/BMLView;->EVENT_TYPE_MOUSE:I

    .line 1920
    iput v7, p0, Lcom/access/bml/BMLView;->EVENT_TYPE_KEY:I

    .line 1922
    iput v4, p0, Lcom/access/bml/BMLView;->EVENT_ACTION_MOUSE_DOWN:I

    .line 1923
    iput v5, p0, Lcom/access/bml/BMLView;->EVENT_ACTION_MOUSE_MOVE:I

    .line 1924
    iput v7, p0, Lcom/access/bml/BMLView;->EVENT_ACTION_MOUSE_UP:I

    .line 1925
    const/4 v1, 0x3

    iput v1, p0, Lcom/access/bml/BMLView;->EVENT_ACTION_MOUSE_WHEEL:I

    .line 1926
    iput v5, p0, Lcom/access/bml/BMLView;->EVENT_ACTION_KEY_PRESS:I

    .line 1927
    iput v7, p0, Lcom/access/bml/BMLView;->EVENT_ACTION_KEY_RELEASE:I

    .line 2147
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    .line 2200
    iput-object v6, p0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 209
    iput-object p1, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    .line 212
    new-instance v1, Lcom/access/bml/BMLHandleCommandProc;

    invoke-direct {v1, p1, p0}, Lcom/access/bml/BMLHandleCommandProc;-><init>(Landroid/content/Context;Lcom/access/bml/BMLView;)V

    iput-object v1, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    .line 214
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLView;->handler:Landroid/os/Handler;

    .line 215
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLView;->timers:Ljava/util/Vector;

    .line 217
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 218
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/access/bml/BMLView;->screenWidth:I

    .line 219
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/access/bml/BMLView;->screenHeight:I

    .line 221
    iget v1, p0, Lcom/access/bml/BMLView;->screenWidth:I

    iget v2, p0, Lcom/access/bml/BMLView;->screenHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 222
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    .line 223
    sget v1, Lcom/access/bml/BMLView;->mBgColor:I

    invoke-virtual {p0, v1}, Lcom/access/bml/BMLView;->setBackgroundColor(I)V

    .line 225
    iget-object v1, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/access/bml/BMLView;->bckupBitmap:Landroid/graphics/Bitmap;

    .line 226
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/access/bml/BMLView;->bckupBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/access/bml/BMLView;->bckupCanvas:Landroid/graphics/Canvas;

    .line 228
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/access/bml/BMLView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 229
    invoke-direct {p0}, Lcom/access/bml/BMLView;->eventInitialize()I

    .line 230
    iget-object v1, p0, Lcom/access/bml/BMLView;->paint_filter:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 231
    return-void
.end method

.method private native BML_SetResolution(II)F
.end method

.method private native BML_demux_incoming_packet([B)I
.end method

.method private native BML_demux_incoming_section(I[BI)I
.end method

.method private SetResolution(II)V
    .locals 1
    .param p1, "in_width"    # I
    .param p2, "in_height"    # I

    .prologue
    .line 1684
    invoke-direct {p0, p1, p2}, Lcom/access/bml/BMLView;->BML_SetResolution(II)F

    move-result v0

    iput v0, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    .line 1704
    return-void
.end method

.method static synthetic access$0(Lcom/access/bml/BMLView;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/access/bml/BMLView;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/access/bml/BMLView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/access/bml/BMLView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/access/bml/BMLView;)Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/access/bml/BMLView;->bQuit:Z

    return v0
.end method

.method static synthetic access$3(Lcom/access/bml/BMLView;)V
    .locals 0

    .prologue
    .line 2008
    invoke-direct {p0}, Lcom/access/bml/BMLView;->processEvent()V

    return-void
.end method

.method private eventInitialize()I
    .locals 2

    .prologue
    .line 1931
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/access/bml/BMLView;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 1933
    iget-object v0, p0, Lcom/access/bml/BMLView;->queue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 1934
    const/4 v0, -0x1

    .line 1936
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEventInfo()Lcom/access/bml/BMLView$eventInfo;
    .locals 2

    .prologue
    .line 1998
    const/4 v0, 0x0

    .line 1999
    .local v0, "tmpinfo":Lcom/access/bml/BMLView$eventInfo;
    iget-object v1, p0, Lcom/access/bml/BMLView;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tmpinfo":Lcom/access/bml/BMLView$eventInfo;
    check-cast v0, Lcom/access/bml/BMLView$eventInfo;

    .line 2000
    .restart local v0    # "tmpinfo":Lcom/access/bml/BMLView$eventInfo;
    if-eqz v0, :cond_0

    .line 2005
    :cond_0
    return-object v0
.end method

.method private processEvent()V
    .locals 6

    .prologue
    .line 2009
    invoke-direct {p0}, Lcom/access/bml/BMLView;->getEventInfo()Lcom/access/bml/BMLView$eventInfo;

    move-result-object v1

    .line 2010
    .local v1, "tempEventinfo":Lcom/access/bml/BMLView$eventInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 2035
    return-void

    .line 2013
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2014
    iget v2, v1, Lcom/access/bml/BMLView$eventInfo;->eventType:I

    packed-switch v2, :pswitch_data_0

    .line 2028
    :goto_1
    iget-object v2, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2033
    :goto_2
    invoke-direct {p0}, Lcom/access/bml/BMLView;->getEventInfo()Lcom/access/bml/BMLView$eventInfo;

    move-result-object v1

    goto :goto_0

    .line 2016
    :pswitch_0
    :try_start_1
    iget v2, p0, Lcom/access/bml/BMLView;->w:I

    iget v3, v1, Lcom/access/bml/BMLView$eventInfo;->x:I

    iget v4, v1, Lcom/access/bml/BMLView$eventInfo;->y:I

    iget v5, v1, Lcom/access/bml/BMLView$eventInfo;->actionType:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/access/bml/BMLView;->Browser_processMouseEvent(IIII)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2029
    :catch_0
    move-exception v0

    .line 2031
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2022
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    :try_start_2
    iget v3, p0, Lcom/access/bml/BMLView;->w:I

    iget v4, v1, Lcom/access/bml/BMLView$eventInfo;->keyCode:I

    iget v5, v1, Lcom/access/bml/BMLView$eventInfo;->keyChar:I

    iget v2, v1, Lcom/access/bml/BMLView$eventInfo;->actionType:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/access/bml/BMLView;->Browser_processKeyEvent(IIIZ)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 2014
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public native BML_Affiliation_Delete(II)I
.end method

.method public native BML_Affiliation_DeleteAll()I
.end method

.method public native BML_BookmarkInitialize()V
.end method

.method public native BML_Bookmark_ActionDelete(I)I
.end method

.method public native BML_Bookmark_ActionDeleteAll()I
.end method

.method public native BML_Bookmark_ActionGoto(I)I
.end method

.method public BML_CB_BookmarkAddBookmarkEntry(Ljava/lang/Object;)I
    .locals 1
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_BookmarkClearList()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public BML_CB_BookmarkStartBookmarkList()I
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_CancelModalStateProc()I
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_NotifyEnterUnloadProc(Z)V
    .locals 0
    .param p1, "in_enter"    # Z

    .prologue
    .line 1012
    return-void
.end method

.method public BML_CB_NotifyTransitionDoneProc()V
    .locals 0

    .prologue
    .line 1000
    return-void
.end method

.method public BML_CB_NotifyUnhalt()V
    .locals 6

    .prologue
    .line 1103
    iget v1, p0, Lcom/access/bml/BMLView;->w:I

    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v4, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v5, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/access/bml/BMLView;->Browser_SetRect(IIIFF)V

    .line 1104
    return-void
.end method

.method public BML_CB_WakeUpUsingHandler()V
    .locals 2

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/access/bml/BMLView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/access/bml/BMLView$3;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLView$3;-><init>(Lcom/access/bml/BMLView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1572
    return-void
.end method

.method public native BML_CompleteHalt(I)V
.end method

.method public native BML_CustomizeEngine(I)Z
.end method

.method public native BML_DsmccAPI_DetectEIT()I
.end method

.method public native BML_DsmccAPI_SetChannel(Lcom/access/bml/BMLDtvType$TDSMCCTransmissionLine;ILcom/access/bml/BMLDtvType$TDSMCCFirstView;Lcom/access/bml/BMLDtvType$TDSMCCPMTData;)I
.end method

.method public native BML_EscapeHalt()Z
.end method

.method public native BML_Finalize()V
.end method

.method public native BML_GetAffiliationSubAreaInfo(I[I)I
.end method

.method public native BML_GetApplicationMode()I
.end method

.method public native BML_GetBufferingKeyEventCount()I
.end method

.method public native BML_GetDTVEvent()Z
.end method

.method public native BML_GetHaltStatus()I
.end method

.method public native BML_GetLinkStatus()I
.end method

.method public BML_GetProperty(Ljava/lang/String;[B)I
    .locals 5
    .param p1, "in_key"    # Ljava/lang/String;
    .param p2, "out_value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1084
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 1086
    .local v1, "properties":Ljava/util/Properties;
    const/16 v4, 0xff

    new-array v2, v4, [B

    .line 1088
    .local v2, "value":[B
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1091
    array-length v4, v2

    invoke-static {v2, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1096
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public native BML_HasFocusOrBlurEventInQueue()Z
.end method

.method public native BML_Initialize(I)Z
.end method

.method public native BML_IsHalt()Z
.end method

.method public native BML_IsTuneByBookmark()Z
.end method

.method public native BML_NVRAM_DeleteAll()I
.end method

.method public native BML_NotifyBroadcastStatus(I)Z
.end method

.method public native BML_NotifyReturnToEntry()Z
.end method

.method public native BML_NotifyServiceChanged(IIII)Z
.end method

.method public native BML_NotifyServiceChangedByBookmark(IIIILjava/lang/String;[I)Z
.end method

.method public native BML_PostDTVBEvent_DataEventChanged(I)Z
.end method

.method public native BML_PostDTVBEvent_EventMessageFired(I)Z
.end method

.method public native BML_PostDTVBEvent_MainAudioStreamChanged(I)Z
.end method

.method public native BML_PostDTVBEvent_MediaStopped(I[B)Z
.end method

.method public native BML_PostDTVBEvent_ModuleLocked(I)Z
.end method

.method public native BML_PostDTVBEvent_ModuleUpdated(I)Z
.end method

.method public native BML_RequestHalt(I)Z
.end method

.method public native BML_RestoreEngine()V
.end method

.method public native BML_SetBrowserWindow(I)V
.end method

.method public native BML_WakeUp()V
.end method

.method public native BML_WindowDisplayImage(I)Z
.end method

.method public native BML_WindowRenovate(I)V
.end method

.method public native BML_WindowSetDisplayImage(IZ)V
.end method

.method public native BML_appExIMEEndPeer(Z[BI)V
.end method

.method public Browser_CB_CommandHandler_HandleCommandProc(Lcom/access/bml/BMLCommandType$TBrowserCmdType;Lcom/access/bml/BMLCommandType$TBrowserReplyType;)I
    .locals 2
    .param p1, "in_cmd"    # Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    .param p2, "in_reply"    # Lcom/access/bml/BMLCommandType$TBrowserReplyType;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    iget-object v1, p0, Lcom/access/bml/BMLView;->mActivityHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1}, Lcom/access/bml/BMLHandleCommandProc;->CommandHandler_HandleCommandProc(Lcom/access/bml/BMLCommandType$TBrowserCmdType;Lcom/access/bml/BMLCommandType$TBrowserReplyType;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public Browser_Finalize()V
    .locals 2

    .prologue
    .line 1765
    :try_start_0
    iget-object v1, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1766
    iget v1, p0, Lcom/access/bml/BMLView;->w:I

    invoke-virtual {p0, v1}, Lcom/access/bml/BMLView;->Browser_WindowDelete(I)V

    .line 1771
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/access/bml/BMLView;->BML_SetBrowserWindow(I)V

    .line 1776
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/access/bml/BMLView;->BML_CompleteHalt(I)V

    .line 1781
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->BML_RestoreEngine()V

    .line 1786
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->BML_Finalize()V

    .line 1792
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->Browser_StandardFinalize()V

    .line 1797
    iget-object v1, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    :goto_0
    invoke-static {}, Lcom/access/bml/BMLFont;->Finalize()V

    .line 1802
    iget-object v1, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    invoke-virtual {v1}, Lcom/access/bml/BMLHandleCommandProc;->finalize()V

    .line 1803
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    .line 1804
    return-void

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public Browser_GetRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public Browser_Initialize(IIII)V
    .locals 4
    .param p1, "bmlLeft"    # I
    .param p2, "bmlTop"    # I
    .param p3, "bmlWidth"    # I
    .param p4, "bmlHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 1717
    const/4 v1, 0x0

    .line 1719
    .local v1, "result":Z
    iget-object v2, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1723
    .local v0, "filesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/access/bml/BMLView;->Browser_StandardInitialize(Ljava/lang/String;)Z

    move-result v1

    .line 1730
    invoke-virtual {p0, v3}, Lcom/access/bml/BMLView;->BML_Initialize(I)Z

    move-result v1

    .line 1736
    invoke-virtual {p0, v3}, Lcom/access/bml/BMLView;->BML_CustomizeEngine(I)Z

    move-result v1

    .line 1742
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->Browser_MainRun()Z

    move-result v1

    .line 1747
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->Browser_WindowNew()I

    move-result v2

    iput v2, p0, Lcom/access/bml/BMLView;->w:I

    .line 1752
    int-to-float v2, p1

    iput v2, p0, Lcom/access/bml/BMLView;->bitMapLeft:F

    .line 1753
    int-to-float v2, p2

    iput v2, p0, Lcom/access/bml/BMLView;->bitMapTop:F

    .line 1755
    iget v2, p0, Lcom/access/bml/BMLView;->w:I

    invoke-virtual {p0, v2}, Lcom/access/bml/BMLView;->BML_SetBrowserWindow(I)V

    .line 1756
    invoke-direct {p0, p3, p4}, Lcom/access/bml/BMLView;->SetResolution(II)V

    .line 1757
    return-void
.end method

.method public native Browser_MainRun()Z
.end method

.method public Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z
    .locals 1
    .param p1, "in_cmd"    # I
    .param p2, "in_reply"    # Lcom/access/bml/BMLCommandType$TBrowserReplyType;

    .prologue
    .line 1632
    invoke-virtual {p0, p1, p2}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public native Browser_ReplyToCommand(ILjava/lang/Object;)Z
.end method

.method public native Browser_SetPref_Mag(I)V
.end method

.method public native Browser_SetRect(IIIFF)V
.end method

.method public Browser_SetRect(IIII)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2212
    iput p3, p0, Lcom/access/bml/BMLView;->screenWidth:I

    .line 2213
    iput p4, p0, Lcom/access/bml/BMLView;->screenHeight:I

    .line 2214
    const/high16 v0, 0x43f00000    # 480.0f

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    .line 2216
    iget-object v0, p0, Lcom/access/bml/BMLView;->gContentsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2217
    iget-object v0, p0, Lcom/access/bml/BMLView;->gContentsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2218
    iget-object v0, p0, Lcom/access/bml/BMLView;->gContentsRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/access/bml/BMLView;->screenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2219
    iget-object v0, p0, Lcom/access/bml/BMLView;->gContentsRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/access/bml/BMLView;->screenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2220
    iget-object v0, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2221
    iget-object v0, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2222
    iget-object v0, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/access/bml/BMLView;->screenWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2223
    iget-object v0, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/access/bml/BMLView;->screenHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2225
    iget-object v0, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    .line 2226
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    .line 2228
    int-to-float v0, p1

    iput v0, p0, Lcom/access/bml/BMLView;->bitMapLeft:F

    .line 2229
    int-to-float v0, p2

    iput v0, p0, Lcom/access/bml/BMLView;->bitMapTop:F

    .line 2231
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->BML_GetHaltStatus()I

    move-result v7

    .line 2232
    .local v7, "halt_status":I
    if-eqz v7, :cond_0

    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 2235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2236
    iget v1, p0, Lcom/access/bml/BMLView;->w:I

    int-to-float v0, p3

    iget v2, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, p4

    iget v3, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v0, p1

    iget v4, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v4, v0

    int-to-float v0, p2

    iget v5, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/access/bml/BMLView;->Browser_SetRect(IIIFF)V

    .line 2237
    iget-object v0, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2249
    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 2250
    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    add-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2251
    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    add-int v1, p2, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2253
    iget-object v0, p0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 2255
    const/16 v10, 0x3c

    .line 2256
    .local v10, "progress_width":I
    const/16 v9, 0x3c

    .line 2257
    .local v9, "progress_height":I
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x3c

    const/16 v1, 0x3c

    const/4 v2, 0x0

    invoke-direct {v8, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2258
    .local v8, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    div-int/lit8 v0, v0, 0x2

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2259
    iget-object v0, p0, Lcom/access/bml/BMLView;->mBMLBrowserRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    div-int/lit8 v0, v0, 0x2

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2261
    iget-object v0, p0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/access/bml/BMLView;->removeView(Landroid/view/View;)V

    .line 2262
    iget-object v0, p0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 2264
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 2265
    iget-object v0, p0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v8}, Lcom/access/bml/BMLView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2267
    .end local v8    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "progress_height":I
    .end local v10    # "progress_width":I
    :cond_2
    return-void

    .line 2238
    :catch_0
    move-exception v6

    .line 2240
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public native Browser_StandardFinalize()V
.end method

.method public native Browser_StandardInitialize(Ljava/lang/String;)Z
.end method

.method public native Browser_WindowDelete(I)V
.end method

.method public native Browser_WindowNew()I
.end method

.method public native Browser_WindowSetLocation(ILjava/lang/String;I)Z
.end method

.method public native Browser_processKeyEvent(IIIZ)I
.end method

.method public native Browser_processMouseEvent(IIII)V
.end method

.method public ClearBackGround()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2299
    iget-object v0, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2300
    iget-object v0, p0, Lcom/access/bml/BMLView;->bckupCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2301
    return-void
.end method

.method public DismissDialog()V
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    invoke-virtual {v0}, Lcom/access/bml/BMLHandleCommandProc;->DialogDestroy()V

    .line 2295
    return-void
.end method

.method public GetLockMode()Z
    .locals 1

    .prologue
    .line 2309
    iget-boolean v0, p0, Lcom/access/bml/BMLView;->mLock_OnOff:Z

    return v0
.end method

.method public PushDemuxIncomingPacket([B)I
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 2167
    invoke-direct {p0, p1}, Lcom/access/bml/BMLView;->BML_demux_incoming_packet([B)I

    move-result v0

    .line 2169
    .local v0, "result":I
    return v0
.end method

.method public PushDemuxIncomingSection(I[BI)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "section"    # [B
    .param p3, "sectionLen"    # I

    .prologue
    .line 2181
    invoke-direct {p0, p1, p2, p3}, Lcom/access/bml/BMLView;->BML_demux_incoming_section(I[BI)I

    move-result v0

    return v0
.end method

.method public ResetContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "new_context"    # Landroid/content/Context;

    .prologue
    .line 197
    const-string v0, "BMLView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResetContext PREV: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NEW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-object p1, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    invoke-virtual {v0, p1}, Lcom/access/bml/BMLHandleCommandProc;->ResetContext(Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method public SetLockMode(Z)V
    .locals 0
    .param p1, "lock_onoff"    # Z

    .prologue
    .line 2305
    iput-boolean p1, p0, Lcom/access/bml/BMLView;->mLock_OnOff:Z

    .line 2306
    return-void
.end method

.method public SuppressNotiPoup(Z)V
    .locals 0
    .param p1, "bSuppress"    # Z

    .prologue
    .line 2283
    iput-boolean p1, p0, Lcom/access/bml/BMLView;->m_bSuppressNotiPopup:Z

    .line 2284
    return-void
.end method

.method protected addDirtyRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public appExIMEStartPeer([BZZ)Z
    .locals 1
    .param p1, "text"    # [B
    .param p2, "isPassword"    # Z
    .param p3, "isMultiLine"    # Z

    .prologue
    .line 1045
    const/4 v0, 0x1

    return v0
.end method

.method public bitBlt([IIIIIIIIIZ)V
    .locals 8
    .param p1, "colors"    # [I
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcW"    # I
    .param p5, "srcH"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "w"    # I
    .param p9, "h"    # I
    .param p10, "alpha"    # Z

    .prologue
    .line 696
    sub-int v6, p4, p2

    move/from16 v0, p8

    if-ge v6, v0, :cond_0

    sub-int v5, p4, p2

    .line 697
    .local v5, "tempWidth":I
    :goto_0
    sub-int v6, p5, p3

    move/from16 v0, p9

    if-ge v6, v0, :cond_1

    sub-int v4, p5, p3

    .line 700
    .local v4, "tempHeight":I
    :goto_1
    if-eqz p10, :cond_2

    .line 701
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p4, p5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 705
    .local v2, "srcBitmap":Landroid/graphics/Bitmap;
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    add-int v6, p2, v5

    add-int v7, p3, v4

    invoke-direct {v3, p2, p3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    .local v3, "srcR":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int v6, p6, v5

    add-int v7, p7, v4

    invoke-direct {v1, p6, p7, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 708
    .local v1, "dstR":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v3, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 709
    invoke-virtual {p0, v1}, Lcom/access/bml/BMLView;->addDirtyRect(Landroid/graphics/Rect;)V

    .line 710
    return-void

    .end local v1    # "dstR":Landroid/graphics/Rect;
    .end local v2    # "srcBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "srcR":Landroid/graphics/Rect;
    .end local v4    # "tempHeight":I
    .end local v5    # "tempWidth":I
    :cond_0
    move/from16 v5, p8

    .line 696
    goto :goto_0

    .restart local v5    # "tempWidth":I
    :cond_1
    move/from16 v4, p9

    .line 697
    goto :goto_1

    .line 703
    .restart local v4    # "tempHeight":I
    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p4, p5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "srcBitmap":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public copyArea(IIIIII)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    .line 483
    if-ltz p5, :cond_0

    .line 484
    move v8, p1

    .line 485
    .local v8, "src_x":I
    add-int v4, p1, p5

    .line 486
    .local v4, "dst_x":I
    sub-int v1, p3, p5

    .line 493
    .local v1, "area_w":I
    :goto_0
    if-ltz p6, :cond_1

    .line 494
    move v9, p2

    .line 495
    .local v9, "src_y":I
    add-int v5, p2, p6

    .line 496
    .local v5, "dst_y":I
    sub-int v0, p4, p6

    .line 504
    .local v0, "area_h":I
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    add-int v10, v4, v1

    add-int v11, v5, v0

    invoke-direct {v3, v4, v5, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 507
    .local v3, "dst":Landroid/graphics/Rect;
    :try_start_0
    iget-object v10, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v10, v8, v9, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 508
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v11, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    add-int v10, p1, p3

    add-int v11, p2, p4

    invoke-direct {v7, p1, p2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 515
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Lcom/access/bml/BMLView;->addDirtyRect(Landroid/graphics/Rect;)V

    .line 516
    return-void

    .line 489
    .end local v0    # "area_h":I
    .end local v1    # "area_w":I
    .end local v3    # "dst":Landroid/graphics/Rect;
    .end local v4    # "dst_x":I
    .end local v5    # "dst_y":I
    .end local v7    # "r":Landroid/graphics/Rect;
    .end local v8    # "src_x":I
    .end local v9    # "src_y":I
    :cond_0
    sub-int v8, p1, p5

    .line 490
    .restart local v8    # "src_x":I
    move v4, p1

    .line 491
    .restart local v4    # "dst_x":I
    add-int v1, p3, p5

    .restart local v1    # "area_w":I
    goto :goto_0

    .line 499
    :cond_1
    sub-int v9, p2, p6

    .line 500
    .restart local v9    # "src_y":I
    move v5, p2

    .line 501
    .restart local v5    # "dst_y":I
    add-int v0, p4, p6

    .restart local v0    # "area_h":I
    goto :goto_1

    .line 510
    .restart local v3    # "dst":Landroid/graphics/Rect;
    :catch_0
    move-exception v6

    .line 512
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method

.method public drawLine(IIIIIIIII)V
    .locals 9
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "clipX"    # I
    .param p6, "clipY"    # I
    .param p7, "clipW"    # I
    .param p8, "clipH"    # I
    .param p9, "color"    # I

    .prologue
    .line 532
    new-instance v7, Landroid/graphics/Rect;

    add-int v1, p5, p7

    add-int v2, p6, p8

    invoke-direct {v7, p5, p6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 533
    .local v7, "clip":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 534
    .local v6, "p":Landroid/graphics/Paint;
    const/high16 v1, -0x1000000

    or-int p9, p9, v1

    .line 535
    move/from16 v0, p9

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    iget-object v1, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 537
    .local v8, "oldClip":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 538
    iget-object v1, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 539
    iget-object v1, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 540
    invoke-virtual {p0, v7}, Lcom/access/bml/BMLView;->addDirtyRect(Landroid/graphics/Rect;)V

    .line 541
    return-void
.end method

.method public drawText(IILjava/lang/String;II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "color"    # I
    .param p5, "fontId"    # I

    .prologue
    .line 553
    iget-object v2, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v2, p5}, Lcom/access/bml/BMLFontManager;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v1

    .line 554
    .local v1, "p":Landroid/graphics/Paint;
    const/high16 v2, -0x1000000

    or-int/2addr p4, v2

    .line 555
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    iget-object v2, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v2, p5}, Lcom/access/bml/BMLFontManager;->getFont(I)Lcom/access/bml/BMLFont;

    move-result-object v0

    .line 558
    .local v0, "font":Lcom/access/bml/BMLFont;
    iget-object v2, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v3, p1

    invoke-virtual {v0}, Lcom/access/bml/BMLFont;->getIntAscent()I

    move-result v4

    add-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {v2, p3, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 559
    return-void
.end method

.method public drawText(IILjava/lang/String;IIIIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "color"    # I
    .param p5, "fontId"    # I
    .param p6, "clip_x"    # I
    .param p7, "clip_y"    # I
    .param p8, "clip_w"    # I
    .param p9, "clip_h"    # I

    .prologue
    .line 576
    new-instance v0, Landroid/graphics/Rect;

    add-int v2, p6, p8

    add-int v3, p7, p9

    invoke-direct {v0, p6, p7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 582
    .local v0, "clip":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 583
    .local v1, "oldClip":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 584
    invoke-virtual/range {p0 .. p5}, Lcom/access/bml/BMLView;->drawText(IILjava/lang/String;II)V

    .line 585
    iget-object v2, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 586
    invoke-virtual {p0, v0}, Lcom/access/bml/BMLView;->addDirtyRect(Landroid/graphics/Rect;)V

    .line 587
    return-void
.end method

.method public fillRect(IIIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "color"    # I

    .prologue
    .line 462
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 463
    .local v0, "p":Landroid/graphics/Paint;
    const/high16 v2, -0x1000000

    or-int/2addr p5, v2

    .line 464
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 466
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/access/bml/BMLView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 467
    invoke-virtual {p0, v1}, Lcom/access/bml/BMLView;->addDirtyRect(Landroid/graphics/Rect;)V

    .line 468
    return-void
.end method

.method public findFont(Ljava/lang/String;IZZ)I
    .locals 4
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "isBold"    # Z
    .param p4, "isItalic"    # Z

    .prologue
    .line 598
    move-object v2, p1

    .line 599
    .local v2, "str":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 601
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v3, v2, p2, p3, p4}, Lcom/access/bml/BMLFontManager;->createFont(Ljava/lang/String;IZZ)Lcom/access/bml/BMLFont;

    move-result-object v0

    .line 607
    .local v0, "font":Lcom/access/bml/BMLFont;
    iget-object v3, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v3, v0}, Lcom/access/bml/BMLFontManager;->getFontId(Lcom/access/bml/BMLFont;)I

    move-result v3

    return v3
.end method

.method public getBitMapLeft()F
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/access/bml/BMLView;->bitMapLeft:F

    return v0
.end method

.method public getBitMapTop()F
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/access/bml/BMLView;->bitMapTop:F

    return v0
.end method

.method public getFont(I)Lcom/access/bml/BMLFont;
    .locals 1
    .param p1, "fontId"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v0, p1}, Lcom/access/bml/BMLFontManager;->getFont(I)Lcom/access/bml/BMLFont;

    move-result-object v0

    return-object v0
.end method

.method public getLastMouseX()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/access/bml/BMLView;->lastX:F

    float-to-int v0, v0

    return v0
.end method

.method public getLastMouseY()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/access/bml/BMLView;->lastY:F

    float-to-int v0, v0

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/access/bml/BMLView;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/access/bml/BMLView;->screenWidth:I

    return v0
.end method

.method public getTextWidth(Ljava/lang/String;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontId"    # I

    .prologue
    .line 445
    iget-object v2, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v2, p2}, Lcom/access/bml/BMLFontManager;->getFont(I)Lcom/access/bml/BMLFont;

    move-result-object v0

    .line 447
    .local v0, "font":Lcom/access/bml/BMLFont;
    invoke-virtual {v0, p1}, Lcom/access/bml/BMLFont;->measureTextWidth(Ljava/lang/String;)I

    move-result v1

    .line 449
    .local v1, "width":I
    return v1
.end method

.method public getTimer(I)I
    .locals 2
    .param p1, "in_id"    # I

    .prologue
    .line 1809
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/access/bml/BMLView;->timers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1813
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 1810
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/access/bml/BMLView;->timers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml/BMLView$Timer;

    invoke-virtual {v1}, Lcom/access/bml/BMLView$Timer;->getId()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public killTimer(I)V
    .locals 3
    .param p1, "in_id"    # I

    .prologue
    .line 1845
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLView;->getTimer(I)I

    move-result v1

    .line 1846
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 1848
    :try_start_0
    iget-object v2, p0, Lcom/access/bml/BMLView;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml/BMLView$Timer;

    invoke-virtual {v2}, Lcom/access/bml/BMLView$Timer;->stop()V

    .line 1849
    iget-object v2, p0, Lcom/access/bml/BMLView;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1850
    :catch_0
    move-exception v0

    .line 1852
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2317
    const-string v0, "BMLView"

    const-string v1, "Configuration changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2326
    iget-object v0, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/access/bml/BMLHandleCommandProc;->SetPreventPopup(Z)V

    .line 2328
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->DismissDialog()V

    .line 2329
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v0, p0, Lcom/access/bml/BMLView;->bckupBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/access/bml/BMLView;->gContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/access/bml/BMLView;->gScreenRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/access/bml/BMLView;->paint_filter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2131
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2132
    return-void
.end method

.method public native onTimer(I)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2043
    const/4 v2, 0x0

    .line 2046
    .local v2, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/access/bml/BMLView;->bitMapLeft:F

    sub-float v9, v0, v1

    .line 2047
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/access/bml/BMLView;->bitMapTop:F

    sub-float v10, v0, v1

    .line 2050
    .local v10, "y":F
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2051
    .local v7, "nX":I
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 2056
    .local v8, "nY":I
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->GetLockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2060
    const/4 v0, 0x0

    .line 2117
    :goto_0
    return v0

    .line 2063
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2093
    :goto_1
    iput v9, p0, Lcom/access/bml/BMLView;->lastX:F

    .line 2094
    iput v10, p0, Lcom/access/bml/BMLView;->lastY:F

    .line 2096
    const/4 v1, 0x1

    iget v0, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v0, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/access/bml/BMLView;->setEventInfo(IIIIII)V

    .line 2117
    const/4 v0, 0x1

    goto :goto_0

    .line 2065
    :pswitch_0
    iput v9, p0, Lcom/access/bml/BMLView;->downX:F

    .line 2066
    iput v10, p0, Lcom/access/bml/BMLView;->downY:F

    .line 2067
    const/4 v2, 0x0

    .line 2068
    goto :goto_1

    .line 2070
    :pswitch_1
    const/4 v2, 0x1

    .line 2071
    iget v0, p0, Lcom/access/bml/BMLView;->lastX:F

    sub-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 2072
    iget v0, p0, Lcom/access/bml/BMLView;->lastY:F

    sub-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 2073
    const/4 v0, 0x1

    goto :goto_0

    .line 2075
    :cond_1
    iget v0, p0, Lcom/access/bml/BMLView;->lastY:F

    sub-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2077
    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/access/bml/BMLView;->BML_MagValue:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/access/bml/BMLView;->setEventInfo(IIIIII)V

    .line 2078
    iput v10, p0, Lcom/access/bml/BMLView;->lastY:F

    .line 2080
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2082
    :pswitch_2
    iget v0, p0, Lcom/access/bml/BMLView;->downX:F

    sub-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_3

    .line 2083
    iget v0, p0, Lcom/access/bml/BMLView;->downY:F

    sub-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_3

    .line 2084
    iget v9, p0, Lcom/access/bml/BMLView;->downX:F

    .line 2085
    iget v10, p0, Lcom/access/bml/BMLView;->downY:F

    .line 2087
    :cond_3
    const/4 v2, 0x2

    .line 2088
    goto/16 :goto_1

    .line 2090
    :pswitch_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public refreshScreen()V
    .locals 5

    .prologue
    .line 410
    iget-object v0, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/access/bml/BMLView;->bckupCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/access/bml/BMLView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 412
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->postInvalidate()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLView;->dirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 415
    return-void
.end method

.method public resetBMLPref()V
    .locals 1

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/access/bml/BMLView;->mCmdProc:Lcom/access/bml/BMLHandleCommandProc;

    invoke-virtual {v0}, Lcom/access/bml/BMLHandleCommandProc;->resetBMLPref()V

    .line 2291
    return-void
.end method

.method public setActivityHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "ahandler"    # Landroid/os/Handler;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/access/bml/BMLView;->mActivityHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method

.method public setEventInfo(IIIIII)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "action"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "keycode"    # I
    .param p6, "keychar"    # I

    .prologue
    .line 1941
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->BML_IsHalt()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    new-instance v1, Lcom/access/bml/BMLView$eventInfo;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLView$eventInfo;-><init>(Lcom/access/bml/BMLView;)V

    .line 1946
    .local v1, "info":Lcom/access/bml/BMLView$eventInfo;
    iput p1, v1, Lcom/access/bml/BMLView$eventInfo;->eventType:I

    .line 1947
    iput p2, v1, Lcom/access/bml/BMLView$eventInfo;->actionType:I

    .line 1948
    iput p3, v1, Lcom/access/bml/BMLView$eventInfo;->x:I

    .line 1949
    iput p4, v1, Lcom/access/bml/BMLView$eventInfo;->y:I

    .line 1950
    iput p5, v1, Lcom/access/bml/BMLView$eventInfo;->keyCode:I

    .line 1951
    iput p6, v1, Lcom/access/bml/BMLView$eventInfo;->keyChar:I

    .line 1956
    const/4 v2, 0x0

    .local v2, "try_count":I
    :goto_1
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 1986
    :try_start_0
    iget-object v3, p0, Lcom/access/bml/BMLView;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v1, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1988
    invoke-virtual {p0}, Lcom/access/bml/BMLView;->BML_CB_WakeUpUsingHandler()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1991
    :catch_0
    move-exception v0

    .line 1993
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1959
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1962
    iget v3, v1, Lcom/access/bml/BMLView$eventInfo;->eventType:I

    packed-switch v3, :pswitch_data_0

    .line 1976
    :goto_2
    iget-object v3, p0, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1977
    const/4 v1, 0x0

    goto :goto_0

    .line 1964
    :pswitch_0
    iget v3, p0, Lcom/access/bml/BMLView;->w:I

    iget v4, v1, Lcom/access/bml/BMLView$eventInfo;->x:I

    iget v5, v1, Lcom/access/bml/BMLView$eventInfo;->y:I

    iget v6, v1, Lcom/access/bml/BMLView$eventInfo;->actionType:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/access/bml/BMLView;->Browser_processMouseEvent(IIII)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1980
    :catch_1
    move-exception v0

    .line 1982
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1956
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1970
    :pswitch_1
    :try_start_2
    iget v4, p0, Lcom/access/bml/BMLView;->w:I

    iget v5, v1, Lcom/access/bml/BMLView$eventInfo;->keyCode:I

    iget v6, v1, Lcom/access/bml/BMLView$eventInfo;->keyChar:I

    iget v3, v1, Lcom/access/bml/BMLView$eventInfo;->actionType:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/access/bml/BMLView;->Browser_processKeyEvent(IIIZ)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 1962
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFont(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "asmgr"    # Landroid/content/res/AssetManager;
    .param p2, "ttfStr"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v0, p1, p2}, Lcom/access/bml/BMLFontManager;->setFont(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v0, p1}, Lcom/access/bml/BMLFontManager;->setFont(Landroid/graphics/Typeface;)V

    .line 175
    return-void
.end method

.method public setFontPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/access/bml/BMLView;->fontManager:Lcom/access/bml/BMLFontManager;

    invoke-virtual {v0, p1}, Lcom/access/bml/BMLFontManager;->setFontPath(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setTimer(II)I
    .locals 3
    .param p1, "in_id"    # I
    .param p2, "in_delay"    # I

    .prologue
    .line 1826
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLView;->getTimer(I)I

    move-result v0

    .line 1827
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 1828
    iget-object v2, p0, Lcom/access/bml/BMLView;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml/BMLView$Timer;

    .line 1829
    .local v1, "t":Lcom/access/bml/BMLView$Timer;
    invoke-virtual {v1}, Lcom/access/bml/BMLView$Timer;->stop()V

    .line 1834
    :goto_0
    invoke-virtual {v1, p2}, Lcom/access/bml/BMLView$Timer;->start(I)V

    .line 1836
    const/4 v2, 0x1

    return v2

    .line 1831
    .end local v1    # "t":Lcom/access/bml/BMLView$Timer;
    :cond_0
    new-instance v1, Lcom/access/bml/BMLView$Timer;

    invoke-direct {v1, p0, p1}, Lcom/access/bml/BMLView$Timer;-><init>(Lcom/access/bml/BMLView;I)V

    .line 1832
    .restart local v1    # "t":Lcom/access/bml/BMLView$Timer;
    iget-object v2, p0, Lcom/access/bml/BMLView;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startLocationService(Ljava/lang/String;)V
    .locals 7
    .param p1, "in_pos_info"    # Ljava/lang/String;

    .prologue
    .line 759
    const-string v0, "CB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 760
    const-string v0, "network"

    iput-object v0, p0, Lcom/access/bml/BMLView;->posProvider:Ljava/lang/String;

    .line 770
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/access/bml/BMLView;->mPosCount:D

    .line 776
    iget-object v0, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/access/bml/BMLView;->mLocationManager:Landroid/location/LocationManager;

    .line 777
    iget-object v0, p0, Lcom/access/bml/BMLView;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v6

    .line 778
    .local v6, "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/access/bml/BMLView;->posProvider:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 780
    iget-object v0, p0, Lcom/access/bml/BMLView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/access/bml/BMLView;->posProvider:Ljava/lang/String;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/access/bml/BMLView;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 781
    iget-object v0, p0, Lcom/access/bml/BMLView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/access/bml/BMLView;->posProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    .line 782
    iget-object v0, p0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 783
    const/4 v0, 0x0

    iput v0, p0, Lcom/access/bml/BMLView;->mPosResult:I

    .line 804
    .end local v6    # "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 761
    :cond_1
    const-string v0, "GPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 762
    const-string v0, "gps"

    iput-object v0, p0, Lcom/access/bml/BMLView;->posProvider:Ljava/lang/String;

    goto :goto_0

    .line 795
    .restart local v6    # "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v0, -0x2

    iput v0, p0, Lcom/access/bml/BMLView;->mPosResult:I

    goto :goto_1

    .line 802
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/access/bml/BMLView;->mPosResult:I

    goto :goto_1
.end method

.method public startTelephonyService(I)V
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 916
    iget-object v0, p0, Lcom/access/bml/BMLView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/access/bml/BMLView;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 919
    const/4 v0, -0x2

    iput v0, p0, Lcom/access/bml/BMLView;->mRcvStrength:I

    .line 920
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/access/bml/BMLView;->mRcvCount:D

    .line 921
    return-void
.end method

.method public stopLocationService()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/access/bml/BMLView;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/access/bml/BMLView;->mLocationManager:Landroid/location/LocationManager;

    .line 813
    iget-object v0, p0, Lcom/access/bml/BMLView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/access/bml/BMLView;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 819
    return-void
.end method

.method public stopTelephonyService()V
    .locals 3

    .prologue
    .line 933
    iget-object v0, p0, Lcom/access/bml/BMLView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/access/bml/BMLView;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 934
    return-void
.end method
