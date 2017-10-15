.class public Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiSettingsDialogFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsPopUpDialogFragment"
.end annotation


# static fields
.field private static final DIALOG_STRING_ID:Ljava/lang/String; = "dialog_string_id"

.field private static final DIALOG_TITLE:Ljava/lang/String; = "dialog_title"

.field public static final TAG:Ljava/lang/String; = "SettingsPopUpDialogFragment"

.field private static titleValue:I


# instance fields
.field private builderItemsID:[I

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mMtvAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private selectedItem:I

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    sput v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;-><init>(I[I)V

    .line 371
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 2
    .param p1, "dialogType"    # I
    .param p2, "builderItemsID"    # [I

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 358
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    .line 362
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 363
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 364
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mMtvAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    .line 367
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    .line 374
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    .line 375
    sput p1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    .line 376
    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 356
    sget v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mMtvAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    .prologue
    .line 356
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 356
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 381
    const-string v0, "SettingsPopUpDialogFragment"

    const-string v1, "Inside SettingsPopUpDialogFragment oncreate"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 383
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mMtvAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 384
    if-eqz p1, :cond_0

    .line 385
    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    .line 386
    const-string v0, "dialog_string_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    .line 388
    :cond_0
    const-string v0, "SettingsPopUpDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oncreate: titlevalue ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 400
    const-string v4, "SettingsPopUpDialogFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oncreatedialog: titlevalue ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 403
    sget v4, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    packed-switch v4, :pswitch_data_0

    .line 448
    :goto_0
    :pswitch_0
    new-array v0, v5, [Ljava/lang/String;

    .line 449
    .local v0, "builderItems":[Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 451
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/String;

    .line 452
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 453
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 405
    .end local v0    # "builderItems":[Ljava/lang/String;
    .end local v2    # "i":I
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v4

    if-ne v4, v6, :cond_0

    move v4, v5

    :goto_2
    iput v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    .line 406
    const v4, 0x7f07020f

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move v4, v6

    .line 405
    goto :goto_2

    .line 409
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isframeIPEnabled()Z

    move-result v4

    if-ne v4, v6, :cond_1

    move v6, v5

    :cond_1
    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    .line 410
    const v4, 0x7f070256

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    goto :goto_0

    .line 413
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioEffect()I

    move-result v4

    iput v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    .line 414
    const v4, 0x7f0702e8

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    goto :goto_0

    .line 417
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioLanguage()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 430
    :goto_3
    const v4, 0x7f0701ed

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    goto :goto_0

    .line 419
    :pswitch_5
    iput v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    goto :goto_3

    .line 422
    :pswitch_6
    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    goto :goto_3

    .line 425
    :pswitch_7
    iput v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    goto :goto_3

    .line 437
    :pswitch_8
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v4

    if-ne v4, v6, :cond_2

    move v6, v5

    :cond_2
    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    .line 438
    const v4, 0x7f0702e2

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 441
    :pswitch_9
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v4

    if-ne v4, v6, :cond_3

    move v6, v5

    :cond_3
    iput v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    .line 442
    const v4, 0x7f0702e1

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 455
    .restart local v0    # "builderItems":[Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 456
    .local v3, "mBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->selectedItem:I

    new-instance v7, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)V

    invoke-virtual {v4, v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f07020b

    new-instance v7, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 590
    sget v4, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    if-ne v4, v9, :cond_5

    .line 592
    const v4, 0x7f070298

    new-instance v6, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 602
    :cond_5
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 604
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 605
    return-object v1

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 417
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 393
    const-string v0, "dialog_title"

    sget v1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->titleValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v0, "dialog_string_id"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->builderItemsID:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 395
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    return-void
.end method
