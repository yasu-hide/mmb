.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;
.super Ljava/lang/Object;
.source "MmbFwResultSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->addListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

.field final synthetic val$aListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;)V
    .locals 0

    .prologue
    .line 337
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv.4;"
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->val$aListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 339
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv.4;"
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->val$aListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;->onProgress(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;D)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->val$aListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;->onFinished(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 345
    :cond_1
    return-void
.end method
