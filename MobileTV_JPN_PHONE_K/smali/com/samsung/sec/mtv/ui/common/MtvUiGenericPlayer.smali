.class public abstract Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiGenericPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;
    }
.end annotation


# static fields
.field protected static final CHANNEL5_1_VISIBILITY:Ljava/lang/String; = "5_1channel"

.field protected static final LOCK_VISIBILITY:Ljava/lang/String; = "lockVisibility"

.field protected static final SLEEPTIMER_VISIBILITY:Ljava/lang/String; = "sleeptimer"

.field private static final TAG:Ljava/lang/String; = "MtvUiGenericPlayer"

.field protected static mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

.field protected static mGenericMsgHAndler:Landroid/os/Handler;


# instance fields
.field protected fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

.field protected lockImage:Landroid/widget/ImageView;

.field protected mAnimationImage:Landroid/widget/ImageView;

.field protected mAnimationlayout:Landroid/widget/RelativeLayout;

.field protected mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

.field protected mBottomBackground:Landroid/widget/RelativeLayout;

.field protected mCaptionView:Landroid/widget/TextView;

.field protected mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

.field protected mHiddenSurfaceView:Landroid/view/SurfaceView;

.field protected mImgViewNoChannel:Landroid/widget/ImageView;

.field protected mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field protected mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field protected mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field protected mRotateButton:Landroid/widget/ImageButton;

.field protected mRotateButtonFilePlayer:Landroid/widget/ImageButton;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field protected mTxtAnimation:Landroid/widget/TextView;

.field protected mVideoSurfaceView:Landroid/view/SurfaceView;

.field protected postHeadsetUpdate:Ljava/lang/Runnable;

.field protected rotatingAnimation:Landroid/view/animation/Animation;

.field protected sleepTimer:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 91
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$1;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$1;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->postHeadsetUpdate:Ljava/lang/Runnable;

    .line 57
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->rotatingAnimation:Landroid/view/animation/Animation;

    .line 60
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    .line 68
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 69
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCaptionView:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mRotateButton:Landroid/widget/ImageButton;

    .line 74
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    .line 83
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 84
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 86
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mRotationObserver:Landroid/database/ContentObserver;

    .line 355
    return-void
.end method

.method public static postOpenChannel(Landroid/broadcast/helper/MtvURI;I)Z
    .locals 6
    .param p0, "mMtvUri"    # Landroid/broadcast/helper/MtvURI;
    .param p1, "timeOut"    # I

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "retVal":Z
    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 260
    if-nez p0, :cond_0

    .line 262
    const-string v3, "MtvUiGenericPlayer"

    const-string v4, "postOpen():: Null Arguement Passed !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 271
    .end local v1    # "retVal":Z
    .local v2, "retVal":I
    :goto_0
    return v2

    .line 265
    .end local v2    # "retVal":I
    .restart local v1    # "retVal":Z
    :cond_0
    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    const/16 v4, 0x143

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 266
    .local v0, "msg":Landroid/os/Message;
    if-gtz p1, :cond_2

    .line 267
    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    move v2, v1

    .line 271
    .restart local v2    # "retVal":I
    goto :goto_0

    .line 269
    .end local v2    # "retVal":I
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    goto :goto_1
.end method

.method public static removeOpenChannelMessages()V
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    const/16 v1, 0x143

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    return-void
.end method


# virtual methods
.method public isPhoneLocked()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->lockImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->lockImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 145
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->setActivityProperty()V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "isBaseBroadcastListener"    # Z

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 154
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 155
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->setActivityProperty()V

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-ne v0, p0, :cond_0

    .line 174
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 179
    :cond_0
    return-void
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 290
    const-string v1, "MtvUiGenericPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMtvAppLiveBroadcastNotify()  :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sparse-switch p1, :sswitch_data_0

    .line 335
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 338
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 295
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->closeOptionsMenu()V

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "val":I
    if-eqz p2, :cond_3

    .line 298
    check-cast p2, Landroid/content/Intent;

    .end local p2    # "obj":Ljava/lang/Object;
    const-string v1, "state"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 300
    if-nez v0, :cond_3

    .line 302
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_1

    .line 303
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAudio51Enabled(Z)V

    .line 306
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v2, 0x68

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioEffect()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEffect(IZ)I

    .line 316
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->postHeadsetUpdate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 321
    .end local v0    # "val":I
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v2, 0x67

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 328
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_4

    .line 329
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v2, 0x66

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 330
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 164
    sput-object p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 165
    return-void
.end method

.method protected abstract registerVideoSurfaceView(Z)V
.end method

.method protected requestSystemKeyEvent(IZ)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 212
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 215
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    const-string v2, "MtvUiGenericPlayer"

    const-string v3, "requestSystemKeyEvent"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 223
    :goto_0
    return v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 223
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setActivityProperty()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->requestWindowFeature(I)Z

    .line 234
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 239
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->setVolumeControlStream(I)V

    .line 240
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected setPhoneLocked(Z)V
    .locals 2
    .param p1, "lock"    # Z

    .prologue
    .line 198
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->lockImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->sleepTimer:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 203
    .local v0, "visibility":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->lockImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 202
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
