.class public Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;
.super Landroid/app/Activity;
.source "MtvUiAutoAntenna.java"

# interfaces
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
.implements Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiAutoAntenna"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isBmlFullView()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->mContext:Landroid/content/Context;

    .line 63
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 72
    return-void
.end method

.method public onPlayerNotification(III)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 52
    return-void
.end method

.method public onProgramAttributeReset(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 42
    return-void
.end method

.method public onProgramAttributeUpdated(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isAutoAntennaEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtv_antenna_auto_start"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsLivePlayMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "intentPopup":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.sec.mtv"

    const-string v3, "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_POP_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "popup_type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->finish()V

    .line 107
    .end local v0    # "intentPopup":Landroid/content/Intent;
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->finish()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/autoantenna/MtvUiAutoAntenna;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 113
    return-void
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 47
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 119
    return-void
.end method
