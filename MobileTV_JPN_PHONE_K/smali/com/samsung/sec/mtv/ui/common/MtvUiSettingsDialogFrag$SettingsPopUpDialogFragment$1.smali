.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$1;
.super Ljava/lang/Object;
.source "MtvUiSettingsDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 584
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$200()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioEffect()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEffect(IZ)I

    .line 586
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 587
    const/4 p1, 0x0

    .line 588
    return-void
.end method
