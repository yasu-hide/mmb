.class public Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiSettingsBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OptionsDialogFragment"


# instance fields
.field private dialogType:I

.field private mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 259
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "dialogType"    # I

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 263
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->dialogType:I

    .line 264
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method private createDialogByType()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 292
    const/4 v2, 0x0

    .line 295
    .local v2, "dialog":Landroid/app/AlertDialog;
    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->dialogType:I

    sparse-switch v5, :sswitch_data_0

    .line 431
    const/4 v2, 0x0

    .line 434
    :goto_0
    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 437
    :cond_0
    return-object v2

    .line 299
    :sswitch_0
    const v0, 0x7f050013

    .line 300
    .local v0, "builderItemsId":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastSetRecordingMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 301
    .local v3, "selectedItem":I
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0702da

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)V

    invoke-virtual {v4, v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 318
    goto :goto_0

    .end local v3    # "selectedItem":I
    :cond_1
    move v3, v4

    .line 300
    goto :goto_1

    .line 322
    .end local v0    # "builderItemsId":I
    :sswitch_1
    const v0, 0x7f05000a

    .line 323
    .restart local v0    # "builderItemsId":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastImageLocationStorage()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 324
    .restart local v3    # "selectedItem":I
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f07025e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)V

    invoke-virtual {v4, v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 352
    goto :goto_0

    .end local v3    # "selectedItem":I
    :cond_2
    move v3, v4

    .line 323
    goto :goto_2

    .line 356
    .end local v0    # "builderItemsId":I
    :sswitch_2
    const v0, 0x7f05000c

    .line 357
    .restart local v0    # "builderItemsId":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataNotifyMode()I

    move-result v1

    .line 359
    .local v1, "currentNotifyMode":I
    if-nez v1, :cond_3

    .line 360
    const/4 v3, 0x0

    .line 366
    .restart local v3    # "selectedItem":I
    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070293

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)V

    invoke-virtual {v4, v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 389
    goto/16 :goto_0

    .line 361
    .end local v3    # "selectedItem":I
    :cond_3
    if-ne v1, v4, :cond_4

    .line 362
    const/4 v3, 0x1

    .restart local v3    # "selectedItem":I
    goto :goto_3

    .line 364
    .end local v3    # "selectedItem":I
    :cond_4
    const/4 v3, 0x2

    .restart local v3    # "selectedItem":I
    goto :goto_3

    .line 394
    .end local v0    # "builderItemsId":I
    .end local v1    # "currentNotifyMode":I
    .end local v3    # "selectedItem":I
    :sswitch_3
    const v0, 0x7f05000c

    .line 395
    .restart local v0    # "builderItemsId":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataLocationMode()I

    move-result v1

    .line 397
    .restart local v1    # "currentNotifyMode":I
    if-nez v1, :cond_5

    .line 398
    const/4 v3, 0x0

    .line 404
    .restart local v3    # "selectedItem":I
    :goto_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070269

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;)V

    invoke-virtual {v4, v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 427
    goto/16 :goto_0

    .line 399
    .end local v3    # "selectedItem":I
    :cond_5
    if-ne v1, v4, :cond_6

    .line 400
    const/4 v3, 0x1

    .restart local v3    # "selectedItem":I
    goto :goto_4

    .line 402
    .end local v3    # "selectedItem":I
    :cond_6
    const/4 v3, 0x2

    .restart local v3    # "selectedItem":I
    goto :goto_4

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07025e -> :sswitch_1
        0x7f070269 -> :sswitch_3
        0x7f070293 -> :sswitch_2
        0x7f0702da -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 271
    if-eqz p1, :cond_0

    .line 273
    const-string v0, "dialogType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->dialogType:I

    .line 275
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->createDialogByType()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 286
    const-string v0, "dialogType"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->dialogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    return-void
.end method
