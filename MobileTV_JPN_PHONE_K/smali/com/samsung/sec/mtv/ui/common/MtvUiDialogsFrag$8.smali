.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;
.super Ljava/lang/Object;
.source "MtvUiDialogsFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->createDialogByType(ILandroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

.field final synthetic val$fileIndex:I

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    iput p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->val$fileIndex:I

    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "bRename":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v1

    const/16 v2, 0x10d

    invoke-interface {v1, v2, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    const/4 p1, 0x0

    .line 345
    const-string v1, "MtvUiDialogsFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRenameString["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x78

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 347
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->val$fileIndex:I

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->val$filePath:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->renameTvFile(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;Ljava/lang/String;)Z

    move-result v0

    .line 348
    :cond_0
    if-eqz v0, :cond_1

    .line 350
    const-string v1, "MtvUiDialogsFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success in updating RenameString["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v1

    const/16 v2, 0x10e

    invoke-interface {v1, v2, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 357
    return-void

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    const v2, 0x7f0702b7

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;I)V

    goto :goto_0
.end method
