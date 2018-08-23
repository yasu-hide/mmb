.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$3;
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
    .line 311
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    move-result-object v0

    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;->onFatalExeption()V

    .line 316
    :cond_0
    return-void
.end method
