.class Lcom/access/bml_aprofile/NotifyDialog;
.super Ljava/lang/Object;
.source "NotifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/access/bml_aprofile/NotifyDialog$CustomOnCancelListener;,
        Lcom/access/bml_aprofile/NotifyDialog$CustomOnDismissListener;,
        Lcom/access/bml_aprofile/NotifyDialog$CustomOnShowListener;,
        Lcom/access/bml_aprofile/NotifyDialog$DialogResult;,
        Lcom/access/bml_aprofile/NotifyDialog$DialogType;,
        Lcom/access/bml_aprofile/NotifyDialog$ErrorCode;
    }
.end annotation


# static fields
.field private static final FAIL:I = -0x1

.field private static final SUCCESS:I = 0x1

.field private static final WAITING:I


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

.field private packageName:Ljava/lang/String;

.field private passEditText:Landroid/widget/EditText;

.field private status:I

.field private tdtvDialogParameter:Lcom/access/bml_aprofile/TDTVDialogParameter;

.field private userEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/access/bml_aprofile/NotifyStocker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifyStocker"    # Lcom/access/bml_aprofile/NotifyStocker;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    .line 43
    iput-object p2, p0, Lcom/access/bml_aprofile/NotifyDialog;->notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

    .line 44
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->packageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/access/bml_aprofile/NotifyDialog;I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    return-void
.end method

.method static synthetic access$1(Lcom/access/bml_aprofile/NotifyDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/access/bml_aprofile/NotifyDialog;)Lcom/access/bml_aprofile/NotifyStocker;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->notifyStocker:Lcom/access/bml_aprofile/NotifyStocker;

    return-object v0
.end method

.method static synthetic access$3(Lcom/access/bml_aprofile/NotifyDialog;)Lcom/access/bml_aprofile/TDTVDialogParameter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->tdtvDialogParameter:Lcom/access/bml_aprofile/TDTVDialogParameter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/access/bml_aprofile/NotifyDialog;ILcom/access/bml_aprofile/TDTVDialogParameter;Lcom/access/bml_aprofile/NotifyStocker;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/access/bml_aprofile/NotifyDialog;->setResult(ILcom/access/bml_aprofile/TDTVDialogParameter;Lcom/access/bml_aprofile/NotifyStocker;)V

    return-void
.end method

.method private getAppResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strId"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    iget-object v3, p0, Lcom/access/bml_aprofile/NotifyDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "resId":I
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 270
    sparse-switch p1, :sswitch_data_0

    .line 362
    const-string v0, ""

    :goto_0
    return-object v0

    .line 272
    :sswitch_0
    const-string v0, "BB_ACS_90_001_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :sswitch_1
    const-string v0, "BB_ACS_90_002_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :sswitch_2
    const-string v0, "BB_ACS_90_003_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :sswitch_3
    const-string v0, "BB_ACS_90_004_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :sswitch_4
    const-string v0, "BB_ACS_90_010_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :sswitch_5
    const-string v0, "BB_ACS_15_001_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :sswitch_6
    const-string v0, "BB_ACS_15_002_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :sswitch_7
    const-string v0, "BB_ACS_15_003_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :sswitch_8
    const-string v0, "BB_ACS_15_004_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :sswitch_9
    const-string v0, "BB_ACS_15_005_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :sswitch_a
    const-string v0, "BB_ACS_15_006_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :sswitch_b
    const-string v0, "BB_ACS_04_001_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :sswitch_c
    const-string v0, "BB_ACS_04_002_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :sswitch_d
    const-string v0, "BB_ACS_04_003_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :sswitch_e
    const-string v0, "BB_ACS_04_004_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :sswitch_f
    const-string v0, "BB_ACS_04_005_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :sswitch_10
    const-string v0, "BB_ACS_04_006_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :sswitch_11
    const-string v0, "BB_ACS_04_007_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :sswitch_12
    const-string v0, "BB_ACS_04_008_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :sswitch_13
    const-string v0, "BB_ACS_04_009_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    :sswitch_14
    const-string v0, "BB_ACS_04_010_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :sswitch_15
    const-string v0, "BB_ACS_04_011_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 316
    :sswitch_16
    const-string v0, "BB_ACS_04_012_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 318
    :sswitch_17
    const-string v0, "BB_ACS_04_013_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :sswitch_18
    const-string v0, "BB_ACS_01_001_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 322
    :sswitch_19
    const-string v0, "BB_ACS_01_002_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :sswitch_1a
    const-string v0, "BB_ACS_13_001_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 326
    :sswitch_1b
    const-string v0, "BB_ACS_13_002_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 328
    :sswitch_1c
    const-string v0, "BB_ACS_13_003_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :sswitch_1d
    const-string v0, "BB_ACS_13_004_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 332
    :sswitch_1e
    const-string v0, "BB_ACS_13_005_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 334
    :sswitch_1f
    const-string v0, "BB_ACS_13_006_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 336
    :sswitch_20
    const-string v0, "BB_ACS_13_007_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    :sswitch_21
    const-string v0, "BB_ACS_13_008_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 340
    :sswitch_22
    const-string v0, "BB_ACS_99_000_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 342
    :sswitch_23
    const-string v0, "BB_ACS_99_001_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 344
    :sswitch_24
    const-string v0, "BB_ACS_99_002_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 346
    :sswitch_25
    const-string v0, "BB_ACS_99_003_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 348
    :sswitch_26
    const-string v0, "BB_ACS_99_004_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 350
    :sswitch_27
    const-string v0, "BB_ACS_99_005_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 352
    :sswitch_28
    const-string v0, "BB_ACS_99_006_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 354
    :sswitch_29
    const-string v0, "BB_ACS_99_007_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 356
    :sswitch_2a
    const-string v0, "BB_ACS_99_008_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 358
    :sswitch_2b
    const-string v0, "BB_ACS_99_009_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 360
    :sswitch_2c
    const-string v0, "BB_ACS_NONE_MSG"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_18
        0x3ea -> :sswitch_19
        0x515 -> :sswitch_1a
        0x516 -> :sswitch_1b
        0x517 -> :sswitch_1c
        0x518 -> :sswitch_1d
        0x519 -> :sswitch_1e
        0x51a -> :sswitch_1f
        0x51b -> :sswitch_20
        0x51c -> :sswitch_21
        0x5dd -> :sswitch_5
        0x5de -> :sswitch_6
        0x5df -> :sswitch_7
        0x5e0 -> :sswitch_8
        0x5e1 -> :sswitch_9
        0x5e2 -> :sswitch_a
        0xfa1 -> :sswitch_b
        0xfa2 -> :sswitch_c
        0xfa3 -> :sswitch_d
        0xfa4 -> :sswitch_e
        0xfa5 -> :sswitch_f
        0xfa6 -> :sswitch_10
        0xfa7 -> :sswitch_11
        0xfa8 -> :sswitch_12
        0xfa9 -> :sswitch_13
        0xfaa -> :sswitch_14
        0xfab -> :sswitch_15
        0xfac -> :sswitch_16
        0xfad -> :sswitch_17
        0x2329 -> :sswitch_0
        0x232a -> :sswitch_1
        0x232b -> :sswitch_2
        0x232c -> :sswitch_3
        0x232d -> :sswitch_4
        0x26ac -> :sswitch_22
        0x26ad -> :sswitch_23
        0x26ae -> :sswitch_24
        0x26af -> :sswitch_25
        0x26b0 -> :sswitch_26
        0x26b1 -> :sswitch_27
        0x26b2 -> :sswitch_28
        0x26b3 -> :sswitch_29
        0x26b4 -> :sswitch_2a
        0x26b5 -> :sswitch_2b
        0x26b6 -> :sswitch_2c
    .end sparse-switch
.end method

.method private setDefaultButton(Lcom/access/bml_aprofile/TDTVDialogParameter;Landroid/app/AlertDialog;)V
    .locals 2
    .param p1, "parameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;
    .param p2, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 235
    :cond_0
    const-string v0, "Arguments are null."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    const/4 v0, 0x1

    iget v1, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    if-ne v0, v1, :cond_3

    .line 240
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 241
    :cond_3
    const/4 v0, 0x2

    iget v1, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    if-ne v0, v1, :cond_1

    .line 242
    const/4 v0, -0x2

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0
.end method

.method private setDialogButton(Lcom/access/bml_aprofile/TDTVDialogParameter;Landroid/app/AlertDialog$Builder;)Z
    .locals 4
    .param p1, "parameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 191
    :cond_0
    const-string v1, "Arguments are null."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 230
    :goto_0
    return v0

    .line 195
    :cond_1
    iget v2, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    iget v3, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    if-eq v2, v3, :cond_2

    .line 196
    const-string v1, "Invalid arguments."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    iget v0, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    if-nez v0, :cond_3

    .line 201
    const-string v0, "button_ok"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/access/bml_aprofile/NotifyDialog$1;

    invoke-direct {v2, p0}, Lcom/access/bml_aprofile/NotifyDialog$1;-><init>(Lcom/access/bml_aprofile/NotifyDialog;)V

    invoke-virtual {p2, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    move v0, v1

    .line 230
    goto :goto_0

    .line 211
    :cond_3
    const-string v0, "button_yes"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/access/bml_aprofile/NotifyDialog$2;

    invoke-direct {v2, p0}, Lcom/access/bml_aprofile/NotifyDialog$2;-><init>(Lcom/access/bml_aprofile/NotifyDialog;)V

    invoke-virtual {p2, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    const-string v0, "button_no"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/NotifyDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/access/bml_aprofile/NotifyDialog$3;

    invoke-direct {v2, p0}, Lcom/access/bml_aprofile/NotifyDialog$3;-><init>(Lcom/access/bml_aprofile/NotifyDialog;)V

    invoke-virtual {p2, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private setLayout(Lcom/access/bml_aprofile/TDTVDialogParameter;Landroid/app/AlertDialog$Builder;)Z
    .locals 8
    .param p1, "parameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    const-string v4, "Arguments are null."

    invoke-static {v4}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 155
    const/4 v4, 0x0

    .line 186
    :goto_0
    return v4

    .line 159
    :cond_1
    const/16 v4, 0x2329

    iget v5, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_code:I

    if-ne v4, v5, :cond_2

    .line 160
    iget-object v4, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 162
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "auth_dialog"

    const-string v6, "layout"

    iget-object v7, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 163
    .local v3, "resId":I
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "authDialogView":Landroid/view/View;
    iget-object v4, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "userNameEditText"

    const-string v6, "id"

    iget-object v7, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 166
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/access/bml_aprofile/NotifyDialog;->userEditText:Landroid/widget/EditText;

    .line 167
    iget-object v4, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "passwordEditText"

    const-string v6, "id"

    iget-object v7, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 168
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/access/bml_aprofile/NotifyDialog;->passEditText:Landroid/widget/EditText;

    .line 170
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 173
    .end local v0    # "authDialogView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "resId":I
    :cond_2
    iget v4, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_code:I

    invoke-direct {p0, v4}, Lcom/access/bml_aprofile/NotifyDialog;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg1:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_3
    iget-object v4, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg2:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    :cond_4
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private setResult(ILcom/access/bml_aprofile/TDTVDialogParameter;Lcom/access/bml_aprofile/NotifyStocker;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "parameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;
    .param p3, "stocker"    # Lcom/access/bml_aprofile/NotifyStocker;

    .prologue
    .line 246
    if-nez p3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/16 v0, 0x2329

    iget v1, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_code:I

    if-ne v0, v1, :cond_2

    .line 250
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->userEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg1:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->passEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg2:Ljava/lang/String;

    .line 254
    :cond_2
    iput p1, p2, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    .line 256
    invoke-virtual {p3, p2}, Lcom/access/bml_aprofile/NotifyStocker;->setResult(Lcom/access/bml_aprofile/TDTVDialogParameter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "Dialog result is already stored."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public declared-synchronized show(Lcom/access/bml_aprofile/TDTVDialogParameter;)V
    .locals 3
    .param p1, "parameter"    # Lcom/access/bml_aprofile/TDTVDialogParameter;

    .prologue
    .line 65
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    .line 67
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "Context is null."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    if-nez p1, :cond_1

    .line 74
    :try_start_1
    const-string v1, "Dialog parameter is null."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 79
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 80
    const-string v1, "Dialog is already shown."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    goto :goto_0

    .line 85
    :cond_2
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog;->tdtvDialogParameter:Lcom/access/bml_aprofile/TDTVDialogParameter;

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, p1, v0}, Lcom/access/bml_aprofile/NotifyDialog;->setLayout(Lcom/access/bml_aprofile/TDTVDialogParameter;Landroid/app/AlertDialog$Builder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/access/bml_aprofile/NotifyDialog;->setDialogButton(Lcom/access/bml_aprofile/TDTVDialogParameter;Landroid/app/AlertDialog$Builder;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 100
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/access/bml_aprofile/NotifyDialog$CustomOnShowListener;

    invoke-direct {v2, p0}, Lcom/access/bml_aprofile/NotifyDialog$CustomOnShowListener;-><init>(Lcom/access/bml_aprofile/NotifyDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 101
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/access/bml_aprofile/NotifyDialog$CustomOnDismissListener;

    invoke-direct {v2, p0}, Lcom/access/bml_aprofile/NotifyDialog$CustomOnDismissListener;-><init>(Lcom/access/bml_aprofile/NotifyDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/access/bml_aprofile/NotifyDialog$CustomOnCancelListener;

    invoke-direct {v2, p0}, Lcom/access/bml_aprofile/NotifyDialog$CustomOnCancelListener;-><init>(Lcom/access/bml_aprofile/NotifyDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 103
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 104
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 105
    iget-object v1, p0, Lcom/access/bml_aprofile/NotifyDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, p1, v1}, Lcom/access/bml_aprofile/NotifyDialog;->setDefaultButton(Lcom/access/bml_aprofile/TDTVDialogParameter;Landroid/app/AlertDialog;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public syncShowResult()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x32

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    if-eqz v3, :cond_1

    .line 124
    :cond_0
    iget v3, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    packed-switch v3, :pswitch_data_0

    .line 137
    iput v2, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    .line 138
    :goto_1
    return v2

    .line 117
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "InterruptedException occurred while waiting for dialog to be shown."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_0
    iput v2, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    .line 127
    const/4 v2, 0x1

    goto :goto_1

    .line 129
    :pswitch_1
    const-string v3, "Failed to open dialog."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 130
    iput v2, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    goto :goto_1

    .line 133
    :pswitch_2
    const-string v3, "Timed out while waiting for dialog to be shown."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 134
    iput v2, p0, Lcom/access/bml_aprofile/NotifyDialog;->status:I

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
