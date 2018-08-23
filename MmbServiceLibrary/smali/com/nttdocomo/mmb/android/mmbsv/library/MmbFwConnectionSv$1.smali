.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;
.super Ljava/lang/Object;
.source "MmbFwConnectionSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 272
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Landroid/content/Context;

    move-result-object v1

    .line 273
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Landroid/content/Intent;

    move-result-object v2

    .line 274
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 276
    .local v0, "binded":Z
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    move-result-object v3

    invoke-interface {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;->onFatalExeption()V

    .line 279
    :cond_0
    return-void
.end method
