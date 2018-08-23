.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$2;
.super Ljava/lang/Object;
.source "MmbBrViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->onExitFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;)V
    .locals 0

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$2;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$2;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2483
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$2;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

    move-result-object v0

    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;->onExitFullScreen()V

    .line 2485
    :cond_0
    return-void
.end method
