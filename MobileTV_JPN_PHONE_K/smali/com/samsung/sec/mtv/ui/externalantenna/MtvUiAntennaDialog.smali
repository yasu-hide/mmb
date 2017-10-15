.class public Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiAntennaDialog.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private antenaSetDialog:Landroid/app/AlertDialog;

.field antennaCheckbox:Landroid/widget/CheckBox;

.field mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antenaSetDialog:Landroid/app/AlertDialog;

    .line 36
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 37
    const-string v0, "MtvUiAntennaDialog"

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->TAG:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->startUiPlayer()V

    return-void
.end method

.method private startUiPlayer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x320

    .line 169
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " is conflict handler enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v1, "liveIntent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLastLivePlayBackDestroyTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    .line 182
    const-wide/16 v2, 0x320

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void

    .line 176
    .end local v1    # "liveIntent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1    # "liveIntent":Landroid/content/Intent;
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->TAG:Ljava/lang/String;

    const-string v3, "Exception !!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->finish()V

    .line 160
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onBackPressed()V

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->TAG:Ljava/lang/String;

    const-string v5, "Oncreate :"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 47
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->updateBatteryInfo(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->TAG:Ljava/lang/String;

    const-string v5, "Battery is low to Launch MobileTV... "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->showLowBatteryPopup()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isLowMemoryToLaunch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->TAG:Ljava/lang/String;

    const-string v5, "Memory is low to Launch MobileTV... "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->showLowMemoryPopup()V

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 63
    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 64
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAllowedBy3LMPolicy()Z

    move-result v3

    .line 65
    .local v3, "mIsAllowed3LMPolicy":Z
    if-nez v3, :cond_3

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    const v4, 0x7f070299

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->finish()V

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->hasExternalAntenna()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsAntenaDialogRequired()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMiniMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v4, v5, :cond_5

    .line 74
    :cond_4
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->startUiPlayer()V

    goto :goto_0

    .line 78
    :cond_5
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->setContentView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x3

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030016

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "checkBoxView":Landroid/view/View;
    const v4, 0x7f0a0078

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    .line 88
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    const v5, 0x7f02004b

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 89
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 90
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    const v5, 0x7f07023c

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 91
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 94
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$1;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$1;-><init>(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    const v4, 0x7f0701e5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 105
    const v4, 0x7f0701e4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 107
    const v4, 0x7f070298

    new-instance v5, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;-><init>(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v4, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$3;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$3;-><init>(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antenaSetDialog:Landroid/app/AlertDialog;

    .line 129
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antenaSetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 130
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antenaSetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 132
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 133
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 135
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antenaSetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 136
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antenaSetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 140
    sget-boolean v4, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v4, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->finish()V

    .line 154
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 155
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->finish()V

    .line 148
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onPause()V

    .line 149
    return-void
.end method
