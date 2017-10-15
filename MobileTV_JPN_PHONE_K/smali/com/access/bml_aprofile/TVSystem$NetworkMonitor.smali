.class public Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;
.super Landroid/content/BroadcastReceiver;
.source "TVSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/TVSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkMonitor"
.end annotation


# instance fields
.field action:Ljava/lang/String;

.field final synthetic this$0:Lcom/access/bml_aprofile/TVSystem;


# direct methods
.method public constructor <init>(Lcom/access/bml_aprofile/TVSystem;)V
    .locals 0

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1640
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;->action:Ljava/lang/String;

    .line 1642
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;->action:Ljava/lang/String;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    const-string v0, "TVSystem"

    const-string v1, "NetworkMonitor - onReceive Network Changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, p0, Lcom/access/bml_aprofile/TVSystem$NetworkMonitor;->this$0:Lcom/access/bml_aprofile/TVSystem;

    const-string v1, "Changed"

    invoke-static {v0, v1}, Lcom/access/bml_aprofile/TVSystem;->access$0(Lcom/access/bml_aprofile/TVSystem;Ljava/lang/String;)V

    .line 1646
    :cond_0
    return-void
.end method
