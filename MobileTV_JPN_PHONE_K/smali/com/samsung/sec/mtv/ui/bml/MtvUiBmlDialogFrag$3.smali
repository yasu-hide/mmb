.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;
.super Ljava/lang/Object;
.source "MtvUiBmlDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->showBMLDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

.field final synthetic val$cmd:I


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;I)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    iput p2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;->val$cmd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 829
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 830
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    .line 831
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$202(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Z)Z

    .line 832
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$302(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 833
    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$402(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 834
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "showDialogForBML: Back is selected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 842
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_NO:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;->val$cmd:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->sendDialogReply(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;I)V

    .line 843
    return-void
.end method
