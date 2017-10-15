.class Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;
.super Ljava/lang/Object;
.source "MtvUiSleepTimerDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->createDialogByType(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 152
    const-string v2, "MtvUiSleepTimerDialogFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "which button = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "selectionBundle":Landroid/os/Bundle;
    const-string v2, "custom"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string v2, "remainTime"

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    move-result-object v1

    .line 159
    .local v1, "selectionFragment":Landroid/app/DialogFragment;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 165
    .end local v0    # "selectionBundle":Landroid/os/Bundle;
    .end local v1    # "selectionFragment":Landroid/app/DialogFragment;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 166
    return-void

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;Landroid/content/Context;I)V

    goto :goto_0
.end method
