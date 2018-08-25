.class public Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;
.super Ljava/lang/Object;
.source "MiniModeAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;,
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;,
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;,
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;,
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    }
.end annotation


# static fields
.field private static final CLOSE_REQUESTED_MSG:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEBUG_MSG_HANDLER:Z = false

.field private static final FOCUS_CHANGED_MSG:I = 0x1

.field private static final HIDE_REQUESTED_MSG:I = 0x5

.field private static final MOVEMENT_REQUESTED_MSG:I = 0x2

.field private static final SHOW_REQUESTED_MSG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiniModeAppCallback"


# instance fields
.field private mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

.field private mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mOnHideRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;

.field private mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

.field private mOnShowRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 200
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 200
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v0, v1}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnShowRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnHideRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->release()V

    .line 301
    return-void

    .line 299
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->release()V

    throw v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 273
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .local v1, "cn":Landroid/content/ComponentName;
    move-object v0, v1

    .line 279
    .end local v1    # "cn":Landroid/content/ComponentName;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MiniModeAppCallback"

    const-string v4, "Creating Component name has faild. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v0, v1}, Lcom/sec/minimode/manager/MiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 285
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 287
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 288
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    .line 289
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    .line 290
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnShowRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;

    .line 291
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnHideRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;

    .line 292
    return-void
.end method

.method public setOnCloseRequestedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;)V
    .locals 0
    .param p1, "c"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    .line 117
    return-void
.end method

.method public setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V
    .locals 0
    .param p1, "c"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 101
    return-void
.end method

.method public setOnHideRequestedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;)V
    .locals 0
    .param p1, "c"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnHideRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnHideRequestedCallback;

    .line 133
    return-void
.end method

.method public setOnMoveRequestedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;)V
    .locals 0
    .param p1, "c"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    .line 109
    return-void
.end method

.method public setOnShowRequestedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;)V
    .locals 0
    .param p1, "c"    # Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnShowRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnShowRequestedCallback;

    .line 125
    return-void
.end method
