.class public Lcom/sec/minimode/manager/MiniModeAppManager;
.super Ljava/lang/Object;
.source "MiniModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/minimode/manager/MiniModeAppManager$1;,
        Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINIMODE_RES_PACKAGE:Ljava/lang/String; = "com.sec.android.app.minimode.res"

.field public static final POLICY_DEFAULT_MODE:I = 0x0

.field public static final POLICY_MINI_PHONE_MODE:I = 0x1

.field public static final POLICY_MINI_TABLET_MODE:I = 0x0

.field public static final POLICY_SPLIT_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiniModeAppManager"

.field private static mIsTabletMode:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyMode:I

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager;->mIsTabletMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v5, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 56
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 57
    const-string v3, "mini_mode_app_manager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 58
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    move-result-object v2

    .line 59
    .local v2, "service":Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    if-nez v2, :cond_0

    .line 60
    new-instance v2, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;

    .end local v2    # "service":Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;-><init>(Lcom/sec/minimode/manager/MiniModeAppManager;Lcom/sec/minimode/manager/MiniModeAppManager$1;)V

    .line 62
    .restart local v2    # "service":Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    :cond_0
    iput-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 64
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "com.sec.android.app.minimode.res"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/sec/minimode/manager/MiniModeAppManager;->mIsTabletMode:Z

    .line 81
    :cond_3
    sget-boolean v3, Lcom/sec/minimode/manager/MiniModeAppManager;->mIsTabletMode:Z

    if-eqz v3, :cond_4

    .line 83
    const-string v3, "MiniModeAppManager"

    const-string v4, "MiniModeAppManager() : Tablet mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput v5, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 90
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MiniModeAppManager"

    const-string v4, "Error on getting minimode res"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v3, "MiniModeAppManager"

    const-string v4, "MiniModeAppManager() : Phone mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyMode"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    .line 95
    iput p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 100
    iput-object p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 102
    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;Landroid/content/Context;I)V
    .locals 1
    .param p1, "service"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "policyMode"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 107
    iput-object p2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    .line 108
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    .line 109
    iput p3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    .line 110
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 2

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->closeAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeOthers()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v2, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->closeOthers(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getAllRunningMiniApps()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 341
    :goto_0
    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 341
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 225
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getLastPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 232
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 228
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 232
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 366
    :goto_0
    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 366
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 278
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public hideAll()V
    .locals 2

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->hideAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOccupiedPosition(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->isOccupiedPosition(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 267
    :goto_0
    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 267
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public move(Landroid/content/ComponentName;II)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->move(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .prologue
    .line 191
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V

    .line 193
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V

    .line 311
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "policyMode"    # I

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removePosition()V
    .locals 4

    .prologue
    .line 250
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->removePosition(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLastSize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 289
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setLastSize(ILandroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 208
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->setPosition(ILandroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public showAll()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->showAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public start(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "window.pos.x"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "window.pos.y"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 130
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    invoke-interface {v1, p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePosition(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 238
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mService:Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;

    iget v3, p0, Lcom/sec/minimode/manager/MiniModeAppManager;->mPolicyMode:I

    invoke-interface {v2, v3, v0, p1, p2}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager;->updatePosition(ILandroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
