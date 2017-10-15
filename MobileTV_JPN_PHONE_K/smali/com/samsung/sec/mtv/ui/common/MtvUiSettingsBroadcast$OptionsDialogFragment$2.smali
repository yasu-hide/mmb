.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;
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
    .line 327
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "itemPosition"    # I

    .prologue
    .line 330
    if-nez p2, :cond_0

    .line 332
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setBroadcastImageLocationStorage(I)V

    .line 349
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 350
    return-void

    .line 336
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;

    const v1, 0x7f070279

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;-><init>(I)V

    .line 339
    .local v0, "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MemCardErrFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    .end local v0    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v2

    const-wide/32 v4, 0x204000

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 343
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;

    const v1, 0x7f070277

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;-><init>(I)V

    .line 344
    .restart local v0    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MemCardErrFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    .end local v0    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setBroadcastImageLocationStorage(I)V

    goto :goto_0
.end method
