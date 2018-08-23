.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$2;
.super Landroid/content/BroadcastReceiver;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Landroid/content/Intent;)V

    .line 703
    return-void
.end method
