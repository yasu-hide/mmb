.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;
.super Landroid/os/Handler;
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
    .line 141
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 144
    const-string v0, "MtvUiRemoveList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUiHandler.handleMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 152
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 153
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    const v2, 0x7f0702a6

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 155
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 156
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 157
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
