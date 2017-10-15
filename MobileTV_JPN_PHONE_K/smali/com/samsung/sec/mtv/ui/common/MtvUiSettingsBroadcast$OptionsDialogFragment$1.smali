.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$1;
.super Ljava/lang/Object;
.source "MtvUiSettingsBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->createDialogByType()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "itemPosition"    # I

    .prologue
    .line 307
    if-nez p2, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setBroadcastSetRecordingMode(I)V

    .line 315
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 316
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setBroadcastSetRecordingMode(I)V

    goto :goto_0
.end method
