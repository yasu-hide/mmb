.class Landroid/broadcast/oneseg/MtvOneSegService$4;
.super Ljava/lang/Object;
.source "MtvOneSegService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/broadcast/oneseg/MtvOneSegService;


# direct methods
.method constructor <init>(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0

    .prologue
    .line 2678
    iput-object p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$4;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2682
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$4;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1400(Landroid/broadcast/oneseg/MtvOneSegService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2684
    const-string v0, "MtvOneSegService"

    const-string v1, "Capture Frame Timed out ! Sending Capture Fail !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$4;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v0, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1402(Landroid/broadcast/oneseg/MtvOneSegService;Z)Z

    .line 2686
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService$4;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v1, 0x6a

    const/16 v2, 0xcb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2688
    :cond_0
    return-void
.end method
