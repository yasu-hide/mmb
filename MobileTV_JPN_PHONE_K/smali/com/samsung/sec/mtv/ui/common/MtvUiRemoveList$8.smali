.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;
.super Landroid/content/BroadcastReceiver;
.source "MtvUiRemoveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1619
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MtvUiRemoveList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    if-nez v0, :cond_1

    .line 1640
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1210(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    .line 1625
    const-string v1, "MtvUiRemoveList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver:onRecieve for confirmation of TV files delete. Current count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 1627
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1628
    sput-boolean v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    .line 1629
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1630
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1632
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    const/4 v2, 0x3

    invoke-static {v1, v2, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2600(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)Z

    .line 1633
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    const/4 v2, 0x4

    invoke-static {v1, v2, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2600(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)Z

    .line 1634
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    goto :goto_0

    .line 1636
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    .line 1637
    const-string v1, "MtvUiRemoveList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver:onRecieve for confirmation of TV files delete. Current count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
