.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;
.super Ljava/lang/Object;
.source "MtvUiBmlDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 762
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    iput p2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->val$cmd:I

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 766
    iget v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->val$cmd:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 768
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$000(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0a0062

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->setUserName([B)V

    .line 769
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$000(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0a0064

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->setPrevUserPassWd(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$000(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->storeUserName(Z)V

    .line 774
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->storeUserPasswd(Z)V

    .line 777
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 778
    sput-boolean v3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    .line 779
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v0, v3}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$202(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Z)Z

    .line 780
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-static {v0, v5}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$302(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 781
    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$402(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 782
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "showDialogForBML: Yes is selected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 786
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_YES:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->val$cmd:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->sendDialogReply(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;I)V

    .line 789
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 791
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 796
    :cond_2
    return-void
.end method
