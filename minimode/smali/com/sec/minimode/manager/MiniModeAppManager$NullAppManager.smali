.class Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;
.source "MiniModeAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NullAppManager"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    const-class v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManager;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->this$0:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManager;Lcom/sec/minimode/manager/MiniModeAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManager;
    .param p2, "x1"    # Lcom/sec/minimode/manager/MiniModeAppManager$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;-><init>(Lcom/sec/minimode/manager/MiniModeAppManager;)V

    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    return-void
.end method

.method public closeOthers(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .locals 1
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
    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 422
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 428
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public hideAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    return-void
.end method

.method public isOccupiedPosition(III)Z
    .locals 1
    .param p1, "policyMode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public move(Landroid/content/ComponentName;II)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    return-void
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "policyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    return-void
.end method

.method public removePosition(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    return-void
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "hasFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    return-void
.end method

.method public setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 461
    return-void
.end method

.method public setLastSize(ILandroid/content/ComponentName;II)V
    .locals 0
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    return-void
.end method

.method public setPosition(ILandroid/content/ComponentName;II)V
    .locals 0
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    return-void
.end method

.method public showAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    return-void
.end method

.method public start(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 374
    :cond_0
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 379
    :cond_0
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    sget-boolean v0, Lcom/sec/minimode/manager/MiniModeAppManager$NullAppManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 384
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    return-void
.end method

.method public updatePosition(ILandroid/content/ComponentName;II)V
    .locals 0
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    return-void
.end method
