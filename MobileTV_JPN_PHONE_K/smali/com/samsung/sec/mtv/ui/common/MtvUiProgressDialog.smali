.class public Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiProgressDialog.java"


# static fields
.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "KEY_MESSAGE_ID"

.field private static final KEY_TITLE_ID:Ljava/lang/String; = "KEY_TITLE_ID"

.field private static final TAG:Ljava/lang/String; = "MtvUiLiveRecorderPopup"

.field private static mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;


# instance fields
.field private dialogGravity:I

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mProgDialog:Landroid/app/ProgressDialog;

.field private messageId:I

.field private titleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    .line 28
    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->titleResId:I

    .line 29
    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->messageId:I

    .line 31
    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dialogGravity:I

    return-void
.end method

.method private createProgressDialog()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    .line 116
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->messageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->messageId:I

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 119
    return-void
.end method

.method public static dismissProgressDialog()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->finish()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "MtvUiLiveRecorderPopup"

    const-string v1, "No Progress Dialog Displayed !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isProgressDialogShowing()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showProgressDialog(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, "progDialogIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    const-string v1, "KEY_TITLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v1, "KEY_MESSAGE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method private suppressCoverUI(Z)V
    .locals 4
    .param p1, "mSuppress"    # Z

    .prologue
    .line 134
    const-string v1, "MtvUiLiveRecorderPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending broadcast s cover state change, mSuppress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, "mCChangeCoverStateIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v1, "sender"

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "MtvUiLiveRecorderPopup"

    const-string v1, "onBackPressed..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 69
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    .line 71
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->requestWindowFeature(I)Z

    .line 72
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_TITLE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->titleResId:I

    .line 74
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_MESSAGE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->messageId:I

    .line 75
    const-string v0, "MtvUiLiveRecorderPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "titleResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->titleResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->createProgressDialog()V

    .line 77
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->suppressCoverUI(Z)V

    .line 83
    const/16 v0, 0x30

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dialogGravity:I

    .line 84
    const-string v0, "MtvUiLiveRecorderPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogGravity TOP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dialogGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dialogGravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 95
    :cond_0
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 97
    :cond_1
    return-void

    .line 87
    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->suppressCoverUI(Z)V

    .line 88
    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dialogGravity:I

    .line 89
    const-string v0, "MtvUiLiveRecorderPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogGravity CENTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->dialogGravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mCurrentProgressDialog:Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;

    .line 129
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 102
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiProgressDialog;->finish()V

    .line 108
    :cond_0
    return-void
.end method
