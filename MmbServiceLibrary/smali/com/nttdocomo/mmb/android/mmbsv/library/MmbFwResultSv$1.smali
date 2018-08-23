.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;
.super Ljava/lang/Object;
.source "MmbFwResultSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 0

    .prologue
    .line 192
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv.1;"
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 194
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv.1;"
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;

    .line 195
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv<TT;>;"
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)D

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;->onProgress(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;D)V

    goto :goto_0

    .line 197
    .end local v1    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv<TT;>;"
    :cond_0
    return-void
.end method
