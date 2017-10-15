.class Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "MtvConflictHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    const-string v2, "MtvConflictHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entered onRecieve... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE_TMM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "MtvConflictHandler"

    const-string v3, "ACTION_TUNER_RELEASE_TMM action.. recieved..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "ReleaseResult"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, "releaseStatus":I
    const-string v2, "MtvConflictHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecieve() :: Tmm Resource releaseStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$000(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$1;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$000(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->RESOURCE_INTENT_RELEASE_RESULT:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->ordinal()I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    .end local v1    # "releaseStatus":I
    :cond_0
    return-void
.end method
