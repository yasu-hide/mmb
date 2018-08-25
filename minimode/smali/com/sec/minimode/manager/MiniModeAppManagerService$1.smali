.class Lcom/sec/minimode/manager/MiniModeAppManagerService$1;
.super Landroid/os/RemoteCallbackList;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/IInterface;

    .prologue
    .line 279
    check-cast p1, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;->onCallbackDied(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    return-void
.end method

.method public onCallbackDied(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 283
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-static {v0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$400(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 284
    return-void
.end method
