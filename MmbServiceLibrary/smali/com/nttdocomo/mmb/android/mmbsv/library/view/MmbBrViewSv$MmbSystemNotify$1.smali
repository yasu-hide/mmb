.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$1;
.super Ljava/lang/Object;
.source "MmbBrViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->notifyBroadcastAction(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;)V
    .locals 0

    .prologue
    .line 2775
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

    move-result-object v1

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getBatteryLevel()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;->onLowBattery(I)V

    .line 2783
    :cond_0
    return-void
.end method
