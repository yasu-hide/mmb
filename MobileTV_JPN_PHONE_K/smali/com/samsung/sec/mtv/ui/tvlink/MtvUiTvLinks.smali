.class public Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiTvLinks.java"

# interfaces
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
.implements Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

.field private static mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;


# instance fields
.field private fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

.field private mIndex:I

.field private mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field private mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "MtvUiLinkBML"

    sput-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->TAG:Ljava/lang/String;

    .line 59
    sput-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 65
    sput-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 61
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 62
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 63
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 64
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mIndex:I

    .line 67
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-void
.end method


# virtual methods
.method public isBmlFullView()Z
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "mainView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 78
    const v2, 0x7f0a000c

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    sput-object v2, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 80
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 82
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 85
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MtvSelectLink"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mIndex:I

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v2, :cond_2

    .line 93
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 96
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 98
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->enable()V

    .line 100
    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f0a0031

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;-><init>(Landroid/app/FragmentManager;II)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 101
    if-eqz p1, :cond_3

    .line 103
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v2, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fillFragHandlerData(Landroid/os/Bundle;)V

    .line 106
    :cond_3
    sget-object v2, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v2, :cond_4

    .line 108
    sget-object v2, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 111
    :cond_4
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 112
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 113
    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v2, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 115
    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 209
    sget-object v2, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v2, :cond_0

    .line 211
    sget-object v2, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onDestroy()V

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x500f

    if-eq v2, v3, :cond_1

    .line 220
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v2, v3}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->stopTVLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v1

    .line 223
    .local v1, "phyChannelNum":I
    new-instance v0, Landroid/broadcast/helper/MtvURI;

    .end local v0    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    .line 224
    .restart local v0    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 225
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v2, v3, v0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 229
    .end local v0    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    .end local v1    # "phyChannelNum":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 230
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 231
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 291
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onDestroy()V

    .line 204
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onPause()V

    .line 205
    return-void

    .line 198
    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onPause()V

    goto :goto_0
.end method

.method public onPlayerNotification(III)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 249
    sparse-switch p2, :sswitch_data_0

    .line 276
    :goto_0
    :sswitch_0
    return-void

    .line 261
    :sswitch_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->TAG:Ljava/lang/String;

    const-string v2, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const-string v1, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - "

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 267
    .local v0, "message":Landroid/widget/Toast;
    const/16 v1, 0x77

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    .end local v0    # "message":Landroid/widget/Toast;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x6001 -> :sswitch_0
        0x6002 -> :sswitch_0
        0x6011 -> :sswitch_1
    .end sparse-switch
.end method

.method public onProgramAttributeReset(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 286
    return-void
.end method

.method public onProgramAttributeUpdated(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 281
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.stop.app-in-app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 135
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->finish()V

    .line 174
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v1, :cond_1

    .line 142
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 143
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLFullView(Z)V

    .line 146
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    if-nez v1, :cond_2

    .line 148
    new-instance v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;

    invoke-direct {v1}, Landroid/broadcast/helper/types/MtvOneSegTVLink;-><init>()V

    sput-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 151
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfoAll()[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 153
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    iget v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    if-eqz v1, :cond_4

    .line 160
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getOriginalNetworkID()I

    move-result v2

    iput v2, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    .line 161
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getTransportStreamID()I

    move-result v2

    iput v2, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    .line 162
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getServiceID()I

    move-result v2

    iput v2, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    .line 163
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    const/16 v2, 0x80

    iput v2, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    .line 164
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getDstURI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    .line 165
    sget-object v1, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getAffiliationID()[I

    move-result-object v2

    iput-object v2, v1, Landroid/broadcast/helper/types/MtvOneSegTVLink;->affilID:[I

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->enable()V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 170
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 171
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    sget-object v3, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mMtvTVlinkURI:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    invoke-interface {v1, v2, v3, p0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->startTVLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/types/MtvOneSegTVLink;Landroid/content/Context;)Z

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onStart()V

    .line 121
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onStart(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 245
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onStop()V

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onStop()V

    .line 240
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent:entered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;->mBMLSurfaceView:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 184
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
