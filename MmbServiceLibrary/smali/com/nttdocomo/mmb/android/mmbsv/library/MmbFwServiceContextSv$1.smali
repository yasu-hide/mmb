.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;
.super Ljava/lang/Object;
.source "MmbFwServiceContextSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->notifyBroadcastAction(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field final synthetic val$aIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;->val$aIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1647
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;

    .line 1648
    .local v2, "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;->val$aIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 1650
    .end local v2    # "player":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;

    .line 1651
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv$1;->val$aIntent:Landroid/content/Intent;

    invoke-interface {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    goto :goto_1

    .line 1656
    .end local v1    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;
    :cond_1
    return-void
.end method
