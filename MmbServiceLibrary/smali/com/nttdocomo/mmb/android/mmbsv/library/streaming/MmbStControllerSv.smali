.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;
.source "MmbStControllerSv.java"

# interfaces
.implements Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;
.implements Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;
.implements Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$10;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;",
        ">;",
        "Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;",
        "Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;",
        "Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;"
    }
.end annotation


# instance fields
.field private backgroundStateFlg:Z

.field private eventListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

.field private isOperationRunning:Z

.field private mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

.field private mBmlSurfaceViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

.field private mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

.field private mBmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field private mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

.field private mCaptionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

.field private mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

.field private mCtrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

.field private mMainHandler:Landroid/os/Handler;

.field private mObject:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

.field private mPauseResumeData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

.field private mRecListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

.field private mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field private mSuperimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

.field private mUi:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlUiControllerSv;

.field private mwEventlistener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

.field private playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

.field private recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

.field private streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V
    .locals 7
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .param p2, "aListener"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;
    .param p3, "aCfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 94
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 98
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mCtrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .line 102
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    .line 106
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mObject:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    .line 110
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mUi:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlUiControllerSv;

    .line 114
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 118
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    .line 120
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .line 124
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->eventListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    .line 129
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 134
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 138
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 142
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlSurfaceViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 146
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mCaptionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 150
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mSuperimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 155
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mwEventlistener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    .line 170
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 175
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundStateFlg:Z

    .line 180
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->isOperationRunning:Z

    .line 185
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mRecListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mMainHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mPauseResumeData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    .line 209
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 210
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    .line 211
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .line 214
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 216
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 218
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 220
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 222
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->TUNING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 224
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->SCANNING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 226
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->TVLINK:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTvLinkSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTvLinkSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 228
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->TUNING_RECOVERY:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 230
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_INIT:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 232
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_STARTING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 234
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_PLAYING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 236
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_SUSPENDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInSuspendingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInSuspendingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 238
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REWINDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInRewindingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInRewindingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 240
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_FASTFORWARDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInFastForwardingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 242
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 244
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REJECTVIEWING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInRejectViewingSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInRejectViewingSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    invoke-virtual {p0, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 248
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mwEventlistener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    .line 250
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 253
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->initializeBml(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    return-object v0
.end method

.method private bmlSettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    .prologue
    .line 1174
    if-nez p1, :cond_1

    .line 1178
    const/4 v0, 0x0

    .line 1196
    :cond_0
    :goto_0
    return-object v0

    .line 1182
    :cond_1
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    move-result-object v0

    .line 1184
    .local v0, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
    if-eqz v0, :cond_0

    .line 1191
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->bmlTvLinkDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    goto :goto_0
.end method

.method private bmlTvLinkDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .locals 1
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 3764
    if-nez p1, :cond_0

    .line 3768
    const/4 v0, 0x0

    .line 3776
    :goto_0
    return-object v0

    .line 3771
    :cond_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    move-result-object v0

    .line 3776
    .local v0, "linkcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_0
.end method

.method private callRestartService()V
    .locals 2

    .prologue
    .line 3261
    const-string v0, "restart ServiceProcess"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$4;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3280
    return-void
.end method

.method private captionFullDispParameterCheck(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)Z
    .locals 4
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .prologue
    const/4 v1, 0x0

    .line 3169
    const/4 v0, 0x1

    .line 3172
    .local v0, "result":Z
    if-nez p1, :cond_1

    move v0, v1

    .line 3198
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 3180
    .restart local v0    # "result":Z
    :cond_1
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 3185
    goto :goto_0

    .line 3189
    :cond_2
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    if-ltz v2, :cond_3

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 3193
    goto :goto_0
.end method

.method private initializeBml(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 4
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 275
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;-><init>(Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 276
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;-><init>(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mCtrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .line 279
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mCtrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-direct {v0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    .line 282
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mCtrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-direct {v0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mObject:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    .line 285
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlUiControllerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlUiControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mUi:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlUiControllerSv;

    .line 288
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;-><init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 291
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;-><init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 295
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setTouchCtl(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V

    .line 301
    return-void
.end method

.method private notifyFatalError()V
    .locals 3

    .prologue
    .line 3320
    const-string v1, "Fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3322
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v0

    .line 3323
    .local v0, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->notifyFatalError()V

    .line 3327
    return-void
.end method

.method private pauseInner(II)I
    .locals 7
    .param p1, "aStatus"    # I
    .param p2, "aType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1464
    const/4 v0, 0x0

    .line 1466
    .local v0, "captionresult":I
    :try_start_0
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v2

    .line 1469
    .local v2, "type":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->pauseInner(IIZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    .end local v2    # "type":I
    :goto_0
    return v0

    .line 1471
    :catch_0
    move-exception v1

    .line 1474
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1489
    const-string v3, "error(%d)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1491
    const/4 v0, 0x1

    goto :goto_0

    .line 1477
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1479
    :sswitch_1
    const-string v3, "Fatal error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1481
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 1485
    :sswitch_2
    const-string v3, "EXCEPTION_STATE_ERROR"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1474
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
        -0x2 -> :sswitch_2
    .end sparse-switch
.end method

.method private recPlaySettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    .prologue
    .line 1039
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    move-result-object v0

    .line 1042
    .local v0, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->subtitleLibrarySettingClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    .line 1048
    return-object v0
.end method

.method private scheduleIntentDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    .line 1817
    if-nez p1, :cond_1

    .line 1821
    const/4 v0, 0x0

    .line 1833
    :cond_0
    :goto_0
    return-object v0

    .line 1824
    :cond_1
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    move-result-object v0

    .line 1826
    .local v0, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    if-eqz v1, :cond_0

    .line 1827
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    goto :goto_0
.end method

.method private startParameterCheck(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;)Z
    .locals 6
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3067
    const/4 v0, 0x1

    .line 3070
    .local v0, "result":Z
    if-nez p1, :cond_1

    move v0, v1

    .line 3151
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 3078
    .restart local v0    # "result":Z
    :cond_1
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    if-nez v2, :cond_2

    move v0, v1

    .line 3082
    goto :goto_0

    .line 3085
    :cond_2
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    if-nez v2, :cond_3

    move v0, v1

    .line 3089
    goto :goto_0

    .line 3092
    :cond_3
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    if-nez v2, :cond_4

    move v0, v1

    .line 3096
    goto :goto_0

    .line 3099
    :cond_4
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionFullDispParameterCheck(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 3104
    goto :goto_0

    .line 3107
    :cond_5
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    if-nez v2, :cond_6

    move v0, v1

    .line 3111
    goto :goto_0

    .line 3114
    :cond_6
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionFullDispParameterCheck(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 3119
    goto :goto_0

    .line 3122
    :cond_7
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    if-eqz v2, :cond_8

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    if-eq v3, v2, :cond_8

    move v0, v1

    .line 3127
    goto :goto_0

    .line 3131
    :cond_8
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    if-ne v3, v2, :cond_0

    .line 3132
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    if-nez v2, :cond_9

    move v0, v1

    .line 3136
    goto :goto_0

    .line 3138
    :cond_9
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-wide v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_a
    move v0, v1

    .line 3144
    goto :goto_0
.end method

.method private state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    return-object v0
.end method

.method private subtitleDrawSettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 2852
    if-nez p1, :cond_1

    .line 2856
    const/4 v0, 0x0

    .line 2876
    :cond_0
    :goto_0
    return-object v0

    .line 2860
    :cond_1
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v0

    .line 2862
    .local v0, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    if-eqz v0, :cond_0

    .line 2869
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    if-eqz v1, :cond_0

    .line 2870
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    goto :goto_0
.end method

.method private subtitleLibrarySettingClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    .prologue
    .line 1067
    if-nez p1, :cond_1

    .line 1071
    const/4 v0, 0x0

    .line 1090
    :cond_0
    :goto_0
    return-object v0

    .line 1075
    :cond_1
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    move-result-object v0

    .line 1077
    .local v0, "tempret":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;
    if-eqz v0, :cond_0

    .line 1084
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->subtitleDrawSettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    goto :goto_0
.end method

.method private throwException(I)V
    .locals 2
    .param p1, "aInnerExceptionDetail"    # I

    .prologue
    .line 3237
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 3238
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v0, 0x0

    .line 3239
    .local v0, "changedetail":I
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->changeException(I)I

    move-result v0

    .line 3240
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 3244
    throw v1
.end method

.method private throwFatalException()V
    .locals 3

    .prologue
    .line 3297
    const-string v1, "Fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3299
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    .line 3303
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    throw v0
.end method

.method private throwParameterException()V
    .locals 2

    .prologue
    .line 3215
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 3216
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 3220
    throw v0
.end method

.method private tuneSettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;

    .prologue
    const/4 v1, 0x0

    .line 991
    if-nez p1, :cond_0

    move-object v0, v1

    .line 1022
    :goto_0
    return-object v0

    .line 999
    :cond_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;

    move-result-object v0

    .line 1001
    .local v0, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 1005
    goto :goto_0

    .line 1009
    :cond_1
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->scheduleIntentDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .line 1012
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->subtitleLibrarySettingClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    .line 1016
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->subtitleLibrarySettingClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    move-result-object v1

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    goto :goto_0
.end method

.method private videoDecodeInner(I)I
    .locals 6
    .param p1, "aDecode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1390
    packed-switch p1, :pswitch_data_0

    .line 1398
    const-string v2, "parameter error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1399
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    .line 1402
    :goto_0
    const/4 v1, 0x0

    .line 1406
    .local v1, "videoresult":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->videoDecodeInner(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    :goto_1
    return v1

    .line 1392
    .end local v1    # "videoresult":I
    :pswitch_0
    const/4 p1, 0x0

    .line 1393
    goto :goto_0

    .line 1395
    :pswitch_1
    const/4 p1, 0x1

    .line 1396
    goto :goto_0

    .line 1407
    .restart local v1    # "videoresult":I
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1436
    const-string v2, "error(%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    const/4 v1, 0x1

    goto :goto_1

    .line 1413
    :sswitch_0
    const-string v2, "EXCEPTION_STATE_ERROR"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1418
    :sswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1421
    :sswitch_2
    const-string v2, "Fatal error(%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1423
    const/4 v1, 0x1

    .line 1425
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_1

    .line 1430
    :sswitch_3
    const-string v2, "St restart"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_1

    .line 1390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1410
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_2
        -0x15 -> :sswitch_3
        -0x12 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 5
    .param p1, "aState"    # I

    .prologue
    const/4 v4, 0x0

    .line 2293
    packed-switch p1, :pswitch_data_0

    .line 2301
    const-string v1, "parameter error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    .line 2307
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->audioDecode(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    :goto_1
    return-void

    .line 2295
    :pswitch_0
    const/4 p1, 0x0

    .line 2296
    goto :goto_0

    .line 2298
    :pswitch_1
    const/4 p1, 0x1

    .line 2299
    goto :goto_0

    .line 2308
    :catch_0
    move-exception v0

    .line 2311
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2323
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2325
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_1

    .line 2314
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2316
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2318
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_1

    .line 2293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2311
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public audioMute(I)V
    .locals 5
    .param p1, "aState"    # I

    .prologue
    const/4 v4, 0x0

    .line 2359
    packed-switch p1, :pswitch_data_0

    .line 2367
    const-string v1, "parameter error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2368
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    .line 2373
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->audioMute(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    :goto_1
    return-void

    .line 2361
    :pswitch_0
    const/4 p1, 0x0

    .line 2362
    goto :goto_0

    .line 2364
    :pswitch_1
    const/4 p1, 0x1

    .line 2365
    goto :goto_0

    .line 2374
    :catch_0
    move-exception v0

    .line 2377
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2389
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2391
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_1

    .line 2380
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2382
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2384
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_1

    .line 2359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2377
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method backgroundPictCtl(Z)V
    .locals 7
    .param p1, "aPictDisp"    # Z

    .prologue
    const/4 v4, 0x0

    .line 6828
    const/4 v1, 0x0

    .line 6829
    .local v1, "notification":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6851
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    const/4 v3, 0x0

    move v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 6861
    return-void

    .line 6837
    :pswitch_0
    const/high16 v1, 0x70000

    .line 6838
    goto :goto_0

    .line 6847
    :pswitch_1
    const/high16 v1, 0x90000

    goto :goto_0

    .line 6829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public cancelScan()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1914
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->cancelScan()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    :goto_0
    return-void

    .line 1915
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1930
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1932
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 1921
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1923
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 1918
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public captionNotifyExist(IZ)V
    .locals 7
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5069
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwCaptionIndex(I)I

    move-result v1

    .line 5071
    .local v1, "index":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->captionNotifyExist(IZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5103
    .end local v1    # "index":I
    :goto_0
    return-void

    .line 5072
    :catch_0
    move-exception v0

    .line 5073
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5075
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 5087
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5078
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5080
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5082
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5092
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 5093
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5095
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5096
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5097
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 5098
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5075
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 8
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4823
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwCaptionIndex(I)I

    move-result v1

    .line 4825
    .local v1, "index":I
    if-ltz p2, :cond_0

    if-le p2, v3, :cond_2

    .line 4826
    :cond_0
    const-string v2, "Parameter error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4869
    .end local v1    # "index":I
    :cond_1
    :goto_0
    return-void

    .line 4829
    .restart local v1    # "index":I
    :cond_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->captionNotifyLangNumSetEnable(IB)V

    .line 4831
    if-ge p2, v3, :cond_1

    .line 4833
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setSuperImposeCaptionLanguage(II)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4837
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 4838
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4840
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4852
    const-string v2, "error(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4843
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4845
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4847
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4857
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4858
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4860
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4861
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4862
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4863
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4840
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 6
    .param p1, "aIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4894
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->captionNotifyNothingFixedTime(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4926
    :goto_0
    return-void

    .line 4895
    :catch_0
    move-exception v0

    .line 4896
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "error(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4898
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4910
    const-string v1, "error(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4901
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4903
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4905
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4915
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4916
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4918
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4919
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4920
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4921
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4898
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public captionNotifyRecv(I)V
    .locals 6
    .param p1, "aIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5009
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->captionNotifyRecv(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5041
    :goto_0
    return-void

    .line 5010
    :catch_0
    move-exception v0

    .line 5011
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "error(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5013
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 5025
    const-string v1, "error(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5016
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5018
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5020
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5030
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 5031
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5033
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5034
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5035
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 5036
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5013
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public captionNotifyRestart(I)V
    .locals 7
    .param p1, "aIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4950
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwCaptionIndex(I)I

    move-result v1

    .line 4952
    .local v1, "index":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->captionNotifyRestart(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4985
    .end local v1    # "index":I
    :goto_0
    return-void

    .line 4953
    :catch_0
    move-exception v0

    .line 4954
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4956
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4968
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4959
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4961
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4963
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4973
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4974
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4976
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4977
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4978
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4979
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4956
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public changeBmlDirection(I)V
    .locals 1
    .param p1, "aBmlDirection"    # I

    .prologue
    .line 6317
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->getBmlDirection()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 6319
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->stopBmlBrowser()V

    .line 6320
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->resetBmlViewingSize()V

    .line 6323
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlSurfaceViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->changeBmlDirection(I)V

    .line 6324
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->notifyBmlDirection(I)V

    .line 6325
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->changeBmlDirection(I)V

    .line 6329
    return-void
.end method

.method public changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .prologue
    const/4 v5, 0x0

    .line 6219
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->getScrollSize()I

    move-result v1

    .line 6220
    .local v1, "height":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setBMLScrollSize(I)V

    .line 6221
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6236
    .end local v1    # "height":I
    :goto_0
    return-void

    .line 6222
    :catch_0
    move-exception v0

    .line 6223
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "ServiceStateException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6224
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 6225
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6227
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 6228
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 6229
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 6230
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public changeParental()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6526
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->changeParental()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6550
    :goto_0
    return-void

    .line 6527
    :catch_0
    move-exception v0

    .line 6528
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6543
    :pswitch_0
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6531
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 6533
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6535
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 6538
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6539
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 6528
    nop

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearNvram()V
    .locals 1

    .prologue
    .line 3828
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->clearNvram()V

    .line 3832
    return-void
.end method

.method public end()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1696
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->end()V

    .line 1697
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->resetScroll()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    :goto_0
    return-void

    .line 1699
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1718
    :pswitch_0
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1720
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 1705
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1707
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1709
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 1713
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1702
    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    .locals 1

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->eventListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    return-object v0
.end method

.method protected getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    .locals 1

    .prologue
    .line 6905
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mRecListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    return-object v0
.end method

.method public getAudioInfo()I
    .locals 6

    .prologue
    .line 2563
    const/4 v1, 0x0

    .line 2567
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getAudioInfo()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2575
    :goto_0
    return v1

    .line 2568
    :catch_0
    move-exception v0

    .line 2569
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2570
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method public getAudioLanguage()I
    .locals 6

    .prologue
    .line 2526
    const/4 v1, 0x0

    .line 2530
    .local v1, "languagevalue":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getAudioLanguage()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2539
    :goto_0
    return v1

    .line 2531
    :catch_0
    move-exception v0

    .line 2532
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2534
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method public getAudioLanguageNum()I
    .locals 6

    .prologue
    .line 3018
    const/4 v1, 0x0

    .line 3022
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getAudioLanguageNum()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3030
    :goto_0
    return v1

    .line 3023
    :catch_0
    move-exception v0

    .line 3024
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3025
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    return-object v0
.end method

.method public getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;
    .locals 1

    .prologue
    .line 6346
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    return-object v0
.end method

.method getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mObject:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    return-object v0
.end method

.method public getBmlOnOffStatus()Z
    .locals 2

    .prologue
    .line 6503
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getBmlState()Z

    move-result v0

    .line 6507
    .local v0, "starterflag":Z
    return v0
.end method

.method public getBmlTouchControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;
    .locals 1

    .prologue
    .line 6296
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    return-object v0
.end method

.method getBmlUiController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlUiControllerSv;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mUi:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlUiControllerSv;

    return-object v0
.end method

.method public getCaptionOnOffStatus()Z
    .locals 2

    .prologue
    .line 6441
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getCaptionState()Z

    move-result v0

    .line 6445
    .local v0, "starterflag":Z
    return v0
.end method

.method public getCnValue()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2042
    const/4 v0, 0x0

    .line 2046
    .local v0, "cnvalue":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getCnValue()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2071
    :goto_0
    return v0

    .line 2047
    :catch_0
    move-exception v1

    .line 2050
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2062
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2064
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2053
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2055
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2057
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2050
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCurrentPlayPosition()J
    .locals 7

    .prologue
    .line 6993
    const-wide/16 v0, 0x0

    .line 6995
    .local v0, "currentTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getCurrentPlayPosition()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 7003
    :goto_0
    return-wide v0

    .line 6996
    :catch_0
    move-exception v2

    .line 6997
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v3, "error(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6998
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method protected getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .locals 2

    .prologue
    .line 6803
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 6811
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    return-object v0
.end method

.method public getFileDuration()J
    .locals 7

    .prologue
    .line 6963
    const-wide/16 v2, 0x0

    .line 6966
    .local v2, "totalTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getFileDuration()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 6974
    :goto_0
    return-wide v2

    .line 6967
    :catch_0
    move-exception v0

    .line 6968
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "error(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6969
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method public getLanguageCount(I)I
    .locals 7
    .param p1, "aType"    # I

    .prologue
    const/4 v6, 0x0

    .line 2664
    const/4 v1, 0x0

    .line 2667
    .local v1, "result":I
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v2

    .line 2669
    .local v2, "type":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getLanguageCount(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2695
    .end local v2    # "type":I
    :goto_0
    return v1

    .line 2670
    :catch_0
    move-exception v0

    .line 2673
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2685
    const-string v3, "error(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2687
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2676
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2678
    :sswitch_1
    const-string v3, "Fatal error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2680
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2673
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 6623
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getOperationRunning()Z
    .locals 1

    .prologue
    .line 7398
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->isOperationRunning:Z

    return v0
.end method

.method protected getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;
    .locals 1

    .prologue
    .line 6643
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mPauseResumeData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    return-object v0
.end method

.method public getProgramInformation(I)Ljava/util/List;
    .locals 6
    .param p1, "aCondition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2978
    const/4 v1, 0x0

    .line 2981
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    packed-switch p1, :pswitch_data_0

    .line 2993
    const-string v2, "parameter error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2994
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    .line 2999
    :goto_0
    return-object v1

    .line 2986
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getProgramInformation(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2987
    :catch_0
    move-exception v0

    .line 2988
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2989
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getStatus()I
    .locals 3

    .prologue
    .line 1964
    const/4 v0, 0x0

    .line 1966
    .local v0, "result":I
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$10;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$library$streaming$MmbStPlayerStateSv:[I

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2016
    const/4 v0, 0x0

    .line 2017
    const-string v1, "getStatus error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2023
    :goto_0
    return v0

    .line 1968
    :pswitch_0
    const/4 v0, 0x0

    .line 1969
    goto :goto_0

    .line 1971
    :pswitch_1
    const/4 v0, 0x1

    .line 1972
    goto :goto_0

    .line 1974
    :pswitch_2
    const/4 v0, 0x2

    .line 1975
    goto :goto_0

    .line 1977
    :pswitch_3
    const/4 v0, 0x3

    .line 1978
    goto :goto_0

    .line 1980
    :pswitch_4
    const/4 v0, 0x4

    .line 1981
    goto :goto_0

    .line 1983
    :pswitch_5
    const/4 v0, 0x5

    .line 1984
    goto :goto_0

    .line 1986
    :pswitch_6
    const/4 v0, 0x6

    .line 1987
    goto :goto_0

    .line 1989
    :pswitch_7
    const/4 v0, 0x2

    .line 1990
    goto :goto_0

    .line 1992
    :pswitch_8
    const/4 v0, 0x7

    .line 1993
    goto :goto_0

    .line 1995
    :pswitch_9
    const/16 v0, 0x8

    .line 1996
    goto :goto_0

    .line 1998
    :pswitch_a
    const/16 v0, 0x9

    .line 1999
    goto :goto_0

    .line 2001
    :pswitch_b
    const/16 v0, 0xa

    .line 2002
    goto :goto_0

    .line 2004
    :pswitch_c
    const/16 v0, 0xc

    .line 2005
    goto :goto_0

    .line 2007
    :pswitch_d
    const/16 v0, 0xb

    .line 2008
    goto :goto_0

    .line 2010
    :pswitch_e
    const/16 v0, 0xd

    .line 2011
    goto :goto_0

    .line 2013
    :pswitch_f
    const/16 v0, 0xe

    .line 2014
    goto :goto_0

    .line 1966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method public getSuperimposeAutoDisplay()Z
    .locals 2

    .prologue
    .line 6483
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getSuperimposeAutoDisplay()Z

    move-result v0

    .line 6487
    .local v0, "automaticflag":Z
    return v0
.end method

.method public getSuperimposeOnOffStatus()Z
    .locals 2

    .prologue
    .line 6461
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getSuperimposeState()Z

    move-result v0

    .line 6465
    .local v0, "starterflag":Z
    return v0
.end method

.method public getTvLink()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3673
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getTvLink()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 6

    .prologue
    .line 2252
    const/4 v1, 0x0

    .line 2256
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2264
    :goto_0
    return-object v1

    .line 2257
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2259
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method public initializeBmlBrowser()V
    .locals 2

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->initializeBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V

    .line 3348
    return-void
.end method

.method public isResumeInfoExist(I)Z
    .locals 6
    .param p1, "aPrgNo"    # I

    .prologue
    .line 7178
    const/4 v0, 0x0

    .line 7180
    .local v0, "bRet":Z
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->isResumeInfoExist(I)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7188
    :goto_0
    return v0

    .line 7181
    :catch_0
    move-exception v1

    .line 7182
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7183
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method public judgmentReservationReschedule(I)V
    .locals 5
    .param p1, "aUserParam"    # I

    .prologue
    .line 6567
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->judgmentReservationReschedule(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6583
    :cond_0
    :goto_0
    return-void

    .line 6568
    :catch_0
    move-exception v0

    .line 6569
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6570
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    const/16 v2, -0x12

    if-ne v1, v2, :cond_1

    .line 6572
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 6573
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 6574
    :cond_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    const/16 v2, -0x16

    if-ne v1, v2, :cond_0

    .line 6577
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 6
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5270
    if-nez p1, :cond_0

    .line 5271
    :try_start_0
    const-string v1, "Bad Argument"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5272
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v2, -0x3

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5276
    :catch_0
    move-exception v0

    .line 5277
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "error(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5279
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5296
    :pswitch_0
    const-string v1, "error(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5313
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :goto_0
    return-void

    .line 5275
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyBroadcastAction(Landroid/content/Intent;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 5301
    :catch_1
    move-exception v0

    .line 5302
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5304
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5305
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5282
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5284
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5286
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5290
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5291
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 5306
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_2
    move-exception v0

    .line 5307
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5279
    nop

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyKey(II)V
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aKeyEvent"    # I

    .prologue
    .line 3856
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyKey(II)V

    .line 3860
    return-void
.end method

.method public notifyOnCreate(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 1355
    return-void
.end method

.method public notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 1374
    return-void
.end method

.method public notifyOnLoad()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1214
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->notifyOnLoad()V

    .line 1218
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mwEventlistener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1245
    :goto_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyOnLoad()V

    .line 1249
    return-void

    .line 1219
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1233
    const-string v1, "MmbStControllerSv setEventListener error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1224
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1226
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1228
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 1238
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 1239
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "Conflict Internal Exception"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1240
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 1241
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException;
    const-string v1, "Service Security Exception"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1221
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 9
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1518
    const/4 v0, 0x1

    .line 1521
    .local v0, "aVramClear":I
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$10;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$library$streaming$MmbStPlayerStateSv:[I

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 1539
    const-string v5, "MmbStControllerSv notifyOnPause"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1542
    :goto_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    if-eqz v5, :cond_0

    .line 1543
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context unmatch ,mServiceContext = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1578
    :goto_1
    return-void

    .line 1528
    :pswitch_0
    const-string v5, "nop event"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1532
    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->trickplay(I)I

    .line 1533
    const-string v5, "nop event"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1536
    :pswitch_2
    const/4 v0, 0x2

    .line 1537
    goto :goto_0

    .line 1549
    :cond_0
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->videoDecodeInner(I)I

    move-result v4

    .line 1550
    .local v4, "videoresult":I
    invoke-direct {p0, v7, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->pauseInner(II)I

    move-result v2

    .line 1552
    .local v2, "subtitleresult":I
    invoke-direct {p0, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->pauseInner(II)I

    move-result v3

    .line 1556
    .local v3, "superimposeresult":I
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->suspendBmlBrowser(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    :goto_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setWakeLock(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Z)V

    .line 1561
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundPictCtl(Z)V

    .line 1562
    iput-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundStateFlg:Z

    .line 1564
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;

    invoke-direct {v6, p0, v4, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;III)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1557
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 10
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1600
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mwEventlistener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :goto_0
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$10;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$library$streaming$MmbStPlayerStateSv:[I

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 1637
    const-string v5, "MmbStControllerSv notifyOnResume"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 1643
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->videoDecodeInner(I)I

    move-result v4

    .line 1644
    .local v4, "videoresult":I
    invoke-direct {p0, v9, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->pauseInner(II)I

    move-result v2

    .line 1646
    .local v2, "subtitleresult":I
    invoke-direct {p0, v9, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->pauseInner(II)I

    move-result v3

    .line 1650
    .local v3, "superimposeresult":I
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->resumeBmlBrowser(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1654
    :goto_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setWakeLock(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Z)V

    .line 1656
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundPictCtl(Z)V

    .line 1657
    iput-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundStateFlg:Z

    .line 1659
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$2;

    invoke-direct {v6, p0, v4, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;III)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1674
    .end local v2    # "subtitleresult":I
    .end local v3    # "superimposeresult":I
    .end local v4    # "videoresult":I
    :goto_2
    return-void

    .line 1601
    :catch_0
    move-exception v1

    .line 1604
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1616
    const-string v5, "error(%d)"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1618
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 1607
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1609
    :sswitch_1
    const-string v5, "Fatal error"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1611
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 1630
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :pswitch_0
    const-string v5, "nop event"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1634
    :pswitch_1
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->videoDecodeInner(I)I

    goto :goto_2

    .line 1651
    .restart local v2    # "subtitleresult":I
    .restart local v3    # "superimposeresult":I
    .restart local v4    # "videoresult":I
    :catch_1
    move-exception v0

    .line 1652
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1604
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyOnUnload()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1267
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->notifyOnUnload()V

    .line 1269
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundStateFlg:Z

    if-eqz v2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setWakeLock(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Z)V

    .line 1271
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundPictCtl(Z)V

    .line 1275
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1298
    const-string v2, "Unknow state error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1330
    :goto_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyOnUnload()V

    .line 1335
    :goto_2
    return-void

    .line 1284
    :pswitch_0
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->end()V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1301
    :catch_0
    move-exception v1

    .line 1304
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_3
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1315
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1325
    :goto_3
    :sswitch_0
    :try_start_4
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1330
    :goto_4
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyOnUnload()V

    goto :goto_2

    .line 1295
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :pswitch_1
    :try_start_5
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->stopPlay()V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1318
    :catch_1
    move-exception v1

    .line 1319
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_6
    const-string v2, "Conflict Internal Exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1325
    :try_start_7
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1330
    :goto_5
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyOnUnload()V

    goto :goto_2

    .line 1326
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 1327
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1307
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :sswitch_1
    :try_start_8
    const-string v2, "Fatal error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1309
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1324
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_0
    move-exception v2

    .line 1325
    :try_start_9
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1330
    :goto_6
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyOnUnload()V

    throw v2

    .line 1326
    .restart local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_3
    move-exception v0

    .line 1327
    .restart local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1326
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v0

    .line 1327
    .restart local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 1320
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_5
    move-exception v1

    .line 1321
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException;
    :try_start_a
    const-string v2, "Service Security Exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1325
    :try_start_b
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_b .. :try_end_b} :catch_6

    .line 1330
    :goto_7
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->notifyOnUnload()V

    goto/16 :goto_2

    .line 1326
    :catch_6
    move-exception v0

    .line 1327
    .restart local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1326
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException;
    :catch_7
    move-exception v0

    .line 1327
    .restart local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v3, "error(%d)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 1275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1304
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_0
        -0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method protected notifyOperationResult(II)V
    .locals 5
    .param p1, "aOperation"    # I
    .param p2, "aResult"    # I

    .prologue
    .line 7418
    const/4 v1, 0x0

    .line 7419
    .local v1, "operationResult":I
    packed-switch p2, :pswitch_data_0

    .line 7432
    const/4 v1, 0x3

    .line 7436
    :goto_0
    :pswitch_0
    move v0, p1

    .line 7437
    .local v0, "operation":I
    move v2, v1

    .line 7439
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$7;

    invoke-direct {v4, p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$7;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7448
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setOperationRunning(Z)V

    .line 7452
    return-void

    .line 7423
    .end local v0    # "operation":I
    .end local v2    # "result":I
    :pswitch_1
    const/4 v1, 0x1

    .line 7424
    goto :goto_0

    .line 7426
    :pswitch_2
    const/4 v1, 0x2

    .line 7427
    goto :goto_0

    .line 7429
    :pswitch_3
    const/4 v1, 0x3

    .line 7430
    goto :goto_0

    .line 7419
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyPositionWrapped()V
    .locals 8

    .prologue
    .line 7549
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getCurrentPlayPosition()J

    move-result-wide v0

    .line 7555
    .local v0, "lMsec":J
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getPosition()J

    move-result-wide v4

    .line 7557
    .local v4, "position":J
    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    .line 7586
    :goto_0
    return-void

    .line 7567
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    invoke-virtual {v6, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setPosition(J)V

    .line 7569
    move-wide v2, v0

    .line 7570
    .local v2, "msec":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$9;

    invoke-direct {v7, p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$9;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;J)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public notifyRestartRequest()V
    .locals 2

    .prologue
    .line 6771
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$6;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6785
    return-void
.end method

.method protected notifySeekResult(II)V
    .locals 5
    .param p1, "aResult"    # I
    .param p2, "aUserParam"    # I

    .prologue
    .line 7471
    const/4 v0, 0x0

    .line 7472
    .local v0, "operationResult":I
    packed-switch p1, :pswitch_data_0

    .line 7485
    const/4 v0, 0x3

    .line 7489
    :goto_0
    :pswitch_0
    move v1, v0

    .line 7490
    .local v1, "result":I
    move v2, p2

    .line 7492
    .local v2, "userParam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;

    invoke-direct {v4, p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$8;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7501
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setOperationRunning(Z)V

    .line 7506
    return-void

    .line 7476
    .end local v1    # "result":I
    .end local v2    # "userParam":I
    :pswitch_1
    const/4 v0, 0x1

    .line 7477
    goto :goto_0

    .line 7479
    :pswitch_2
    const/4 v0, 0x2

    .line 7480
    goto :goto_0

    .line 7482
    :pswitch_3
    const/4 v0, 0x3

    .line 7483
    goto :goto_0

    .line 7472
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioInformation(I)V
    .locals 7
    .param p1, "aAudioInfo"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4708
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwAudioInfo(I)I

    move-result v0

    .line 4710
    .local v0, "audioinfo":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onAudioInformation(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4743
    .end local v0    # "audioinfo":I
    :goto_0
    return-void

    .line 4711
    :catch_0
    move-exception v1

    .line 4712
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4714
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4726
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4717
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4719
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4721
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4731
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v1

    .line 4732
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4734
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4735
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4736
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v1

    .line 4737
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4714
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;

    .prologue
    .line 5584
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5591
    :goto_0
    return-void

    .line 5585
    :catch_0
    move-exception v0

    .line 5586
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;

    .prologue
    .line 5534
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5541
    :goto_0
    return-void

    .line 5535
    :catch_0
    move-exception v0

    .line 5536
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onChangeAntennaLevel(I)V
    .locals 5
    .param p1, "aAntennaLevel"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4130
    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 4131
    :cond_0
    const-string v1, "Parameter error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4167
    :goto_0
    return-void

    .line 4135
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onChangeAntennaLevel(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4136
    :catch_0
    move-exception v0

    .line 4138
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4150
    const-string v1, "onChangeAntennaLevel error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4141
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4143
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4145
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4155
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4156
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4158
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4159
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4160
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4161
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4138
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onChangeAudioComponent(S)V
    .locals 5
    .param p1, "aComponentTag"    # S

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4763
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onChangeAudioComponent(S)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4793
    :goto_0
    return-void

    .line 4764
    :catch_0
    move-exception v0

    .line 4765
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4777
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4768
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4770
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4772
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4782
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4783
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4785
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4786
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4787
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4788
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4765
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onChangeDispReply(Z)V
    .locals 0
    .param p1, "aResult"    # Z

    .prologue
    .line 5946
    return-void
.end method

.method public onChangeViewingStatus(I)V
    .locals 7
    .param p1, "aViewingStatus"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4069
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwViewStatus(I)I

    move-result v1

    .line 4071
    .local v1, "viewingstatus":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onChangeViewingStatus(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4109
    .end local v1    # "viewingstatus":I
    :goto_0
    return-void

    .line 4072
    :catch_0
    move-exception v0

    .line 4073
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4075
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4092
    :pswitch_0
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4078
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4080
    :pswitch_2
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4082
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4086
    :pswitch_3
    const-string v2, "St restart"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4087
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 4097
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4098
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4100
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4101
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4102
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4103
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4075
    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;

    .prologue
    .line 5634
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5641
    :goto_0
    return-void

    .line 5635
    :catch_0
    move-exception v0

    .line 5636
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCloseReq()V
    .locals 2

    .prologue
    .line 5357
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onCloseReq()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5368
    :goto_0
    return-void

    .line 5358
    :catch_0
    move-exception v0

    .line 5359
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5360
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5362
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    :catch_1
    move-exception v0

    .line 5363
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCompleteScan(II)V
    .locals 5
    .param p1, "aResult"    # I
    .param p2, "aUserParam"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3884
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onCompleteScan(II)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3915
    :goto_0
    return-void

    .line 3885
    :catch_0
    move-exception v0

    .line 3886
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3898
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3889
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 3891
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3893
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 3903
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 3904
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3906
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 3907
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 3908
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 3909
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3886
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCompleteSelectCh(III)V
    .locals 7
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4008
    :try_start_0
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwViewStatus(I)I

    move-result v1

    .line 4010
    .local v1, "viewingstatus":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onCompleteSelectCh(III)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4047
    .end local v1    # "viewingstatus":I
    :goto_0
    return-void

    .line 4011
    :catch_0
    move-exception v0

    .line 4012
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4014
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4031
    :pswitch_0
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4017
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4019
    :pswitch_2
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4021
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4025
    :pswitch_3
    const-string v2, "St restart"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4026
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 4036
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4037
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4039
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4040
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4041
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4042
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4014
    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompleteStartPlay(III)V
    .locals 5
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 5134
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onCompleteStartPlay(III)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5170
    :goto_0
    return-void

    .line 5135
    :catch_0
    move-exception v0

    .line 5136
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5153
    :pswitch_0
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5139
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5141
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5143
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5147
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5148
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 5158
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 5159
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5161
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 5162
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 5163
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 5164
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5136
    nop

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompleteStartSt(III)V
    .locals 6
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3943
    :try_start_0
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwViewStatus(I)I

    move-result v1

    .line 3945
    .local v1, "viewingstatus":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onCompleteStartSt(III)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3980
    .end local v1    # "viewingstatus":I
    :goto_0
    return-void

    .line 3946
    :catch_0
    move-exception v0

    .line 3947
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3964
    :pswitch_0
    const-string v2, "error(%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3950
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 3952
    :pswitch_2
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3954
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 3958
    :pswitch_3
    const-string v2, "St restart"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3959
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 3969
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 3970
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3972
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 3973
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 3974
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 3975
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3947
    nop

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;

    .prologue
    .line 5965
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5972
    :goto_0
    return-void

    .line 5966
    :catch_0
    move-exception v0

    .line 5967
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEndFepReq()V
    .locals 2

    .prologue
    .line 5990
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onEndFepReq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5997
    :goto_0
    return-void

    .line 5991
    :catch_0
    move-exception v0

    .line 5992
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;

    .prologue
    .line 5734
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5741
    :goto_0
    return-void

    .line 5735
    :catch_0
    move-exception v0

    .line 5736
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFastForwardToEnd(I)V
    .locals 1
    .param p1, "aResult"    # I

    .prologue
    .line 5221
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onFastForwardToEnd(I)V

    .line 5226
    return-void
.end method

.method public onFinishFunction(I)V
    .locals 4
    .param p1, "aErrorCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 6665
    packed-switch p1, :pswitch_data_0

    .line 6682
    const-string v0, "error(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6689
    :goto_0
    return-void

    .line 6667
    :pswitch_0
    const-string v0, "Conflict error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6668
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$5;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6665
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishReleaseResource(I)V
    .locals 5
    .param p1, "aErrorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 6711
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onFinishReleaseResource(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6734
    :goto_0
    return-void

    .line 6713
    :catch_0
    move-exception v0

    .line 6716
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 6727
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6719
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 6721
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6723
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 6716
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;

    .prologue
    .line 5916
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5923
    :goto_0
    return-void

    .line 5917
    :catch_0
    move-exception v0

    .line 5918
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHttpCancelReq()V
    .locals 2

    .prologue
    .line 5459
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onHttpCancelReq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5466
    :goto_0
    return-void

    .line 5460
    :catch_0
    move-exception v0

    .line 5461
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    .prologue
    .line 5435
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5442
    :goto_0
    return-void

    .line 5436
    :catch_0
    move-exception v0

    .line 5437
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;

    .prologue
    .line 5709
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5716
    :goto_0
    return-void

    .line 5710
    :catch_0
    move-exception v0

    .line 5711
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;

    .prologue
    .line 5609
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5616
    :goto_0
    return-void

    .line 5610
    :catch_0
    move-exception v0

    .line 5611
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;

    .prologue
    .line 5484
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5491
    :goto_0
    return-void

    .line 5485
    :catch_0
    move-exception v0

    .line 5486
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNotifyError(I)V
    .locals 6
    .param p1, "aErrorCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4578
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwErrorCode(I)I

    move-result v0

    .line 4579
    .local v0, "errorcode":I
    const/16 v2, -0x15

    if-ne v0, v2, :cond_0

    .line 4580
    const-string v2, "AV System error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4581
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    .line 4616
    .end local v0    # "errorcode":I
    :goto_0
    return-void

    .line 4584
    .restart local v0    # "errorcode":I
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onNotifyError(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4586
    .end local v0    # "errorcode":I
    :catch_0
    move-exception v1

    .line 4587
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 4599
    const-string v2, "error(%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4590
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4592
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4594
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4604
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v1

    .line 4605
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4607
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4608
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4609
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v1

    .line 4610
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4587
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNotifyServiceNg(I)V
    .locals 7
    .param p1, "aCause"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4189
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwServiceStatus(I)I

    move-result v0

    .line 4191
    .local v0, "cause":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onNotifyServiceNg(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4229
    .end local v0    # "cause":I
    :goto_0
    return-void

    .line 4192
    :catch_0
    move-exception v1

    .line 4193
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4195
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4212
    :pswitch_0
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4198
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4200
    :pswitch_2
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4202
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4206
    :pswitch_3
    const-string v2, "St restart"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4207
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 4217
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v1

    .line 4218
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4220
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4221
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4222
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v1

    .line 4223
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4195
    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V
    .locals 2
    .param p1, "aInf"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;

    .prologue
    .line 5410
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5417
    :goto_0
    return-void

    .line 5411
    :catch_0
    move-exception v0

    .line 5412
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    .line 5385
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5392
    :goto_0
    return-void

    .line 5386
    :catch_0
    move-exception v0

    .line 5387
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;

    .prologue
    .line 6016
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6023
    :goto_0
    return-void

    .line 6017
    :catch_0
    move-exception v0

    .line 6018
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;

    .prologue
    .line 6042
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6049
    :goto_0
    return-void

    .line 6043
    :catch_0
    move-exception v0

    .line 6044
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;

    .prologue
    .line 5509
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5516
    :goto_0
    return-void

    .line 5510
    :catch_0
    move-exception v0

    .line 5511
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPictureSaveComplete(Z)V
    .locals 2
    .param p1, "aResult"    # Z

    .prologue
    .line 5841
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onPictureSaveComplete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5848
    :goto_0
    return-void

    .line 5842
    :catch_0
    move-exception v0

    .line 5843
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;

    .prologue
    .line 5815
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5822
    :goto_0
    return-void

    .line 5816
    :catch_0
    move-exception v0

    .line 5817
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPlayToEnd(I)V
    .locals 1
    .param p1, "aResult"    # I

    .prologue
    .line 5193
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onPlayToEnd(I)V

    .line 5198
    return-void
.end method

.method public onRenderSizeUpdateReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;)V
    .locals 4
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;

    .prologue
    .line 6068
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    iget-object v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v2, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlSurfaceViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setBMLScrollSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6076
    :goto_0
    return-void

    .line 6070
    :catch_0
    move-exception v0

    .line 6071
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRewindToTop(I)V
    .locals 1
    .param p1, "aResult"    # I

    .prologue
    .line 5249
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onRewindToTop(I)V

    .line 5254
    return-void
.end method

.method public onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;

    .prologue
    .line 5559
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5566
    :goto_0
    return-void

    .line 5560
    :catch_0
    move-exception v0

    .line 5561
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onScrollReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;

    .prologue
    .line 6095
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->onScrollReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6102
    :goto_0
    return-void

    .line 6096
    :catch_0
    move-exception v0

    .line 6097
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;

    .prologue
    .line 6141
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6148
    :goto_0
    return-void

    .line 6142
    :catch_0
    move-exception v0

    .line 6143
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    .line 5759
    const/4 v1, 0x0

    .line 5762
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)Z

    move-result v1

    .line 5765
    if-eqz v1, :cond_0

    .line 5766
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->resetBmlViewingSize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5774
    :cond_0
    :goto_0
    return-void

    .line 5768
    :catch_0
    move-exception v0

    .line 5769
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartReply(Z)V
    .locals 2
    .param p1, "aResult"    # Z

    .prologue
    .line 5333
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onStartReply(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5340
    :goto_0
    return-void

    .line 5334
    :catch_0
    move-exception v0

    .line 5335
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStopFullDispReq()V
    .locals 2

    .prologue
    .line 5790
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->onStopFullDispReq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5797
    :goto_0
    return-void

    .line 5791
    :catch_0
    move-exception v0

    .line 5792
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;

    .prologue
    .line 5684
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5691
    :goto_0
    return-void

    .line 5685
    :catch_0
    move-exception v0

    .line 5686
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;

    .prologue
    .line 5659
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5666
    :goto_0
    return-void

    .line 5660
    :catch_0
    move-exception v0

    .line 5661
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;

    .prologue
    .line 5891
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5898
    :goto_0
    return-void

    .line 5892
    :catch_0
    move-exception v0

    .line 5893
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;

    .prologue
    .line 5866
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5873
    :goto_0
    return-void

    .line 5867
    :catch_0
    move-exception v0

    .line 5868
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpdateBit()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4372
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onUpdateBit()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4402
    :goto_0
    return-void

    .line 4373
    :catch_0
    move-exception v0

    .line 4374
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4386
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4377
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4379
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4381
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4391
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4392
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4394
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4395
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4396
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4397
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4374
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onUpdateEit()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4421
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onUpdateEit()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4451
    :goto_0
    return-void

    .line 4422
    :catch_0
    move-exception v0

    .line 4423
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4435
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4426
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4428
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4430
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4440
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4441
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4443
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4444
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4445
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4446
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4423
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onUpdateEmm()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4519
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onUpdateEmm()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4549
    :goto_0
    return-void

    .line 4520
    :catch_0
    move-exception v0

    .line 4521
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4533
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4524
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4526
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4528
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4538
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4539
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4541
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4542
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4543
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4544
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4521
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onUpdateInt()V
    .locals 0

    .prologue
    .line 4304
    return-void
.end method

.method public onUpdateNit()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4323
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onUpdateNit()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4353
    :goto_0
    return-void

    .line 4324
    :catch_0
    move-exception v0

    .line 4325
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4337
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4328
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4330
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4332
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4342
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4343
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4345
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4346
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4347
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4348
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4325
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onUpdatePmt()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4248
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onUpdatePmt()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4282
    :goto_0
    return-void

    .line 4249
    :catch_0
    move-exception v0

    .line 4250
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4266
    :pswitch_0
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4253
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4255
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4257
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4261
    :pswitch_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 4271
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4272
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4274
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4275
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4276
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4277
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4250
    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateSdt()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4470
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onUpdateSdt()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4500
    :goto_0
    return-void

    .line 4471
    :catch_0
    move-exception v0

    .line 4472
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 4484
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4475
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4477
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4479
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4489
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v0

    .line 4490
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4492
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4493
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4494
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 4495
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception error Cause(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4472
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onVideoInformation(IIILmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;)V
    .locals 9
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4643
    :try_start_0
    invoke-static {p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwAspectRatio(I)I

    move-result v0

    .line 4644
    .local v0, "aspect":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;-><init>()V

    .line 4645
    .local v2, "viewinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;
    iget v4, p4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;->stereoViewType:I

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwStereoType(I)I

    move-result v3

    .line 4646
    .local v3, "viewtype":I
    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;->mmbStereoViewType:I

    .line 4647
    iget v4, p4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;->framePackingArrangementType:I

    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;->mmbFramePackingArrangementType:I

    .line 4648
    iget v4, p4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;->contentInterpretationType:I

    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;->mmbContentInterpretationType:I

    .line 4650
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4683
    .end local v0    # "aspect":I
    .end local v2    # "viewinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;
    .end local v3    # "viewtype":I
    :goto_0
    return-void

    .line 4651
    :catch_0
    move-exception v1

    .line 4652
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v4, "error(%d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4654
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 4666
    const-string v4, "error(%d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4657
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4659
    :sswitch_1
    const-string v4, "Fatal error"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4661
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4671
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v1

    .line 4672
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v4, "ServiceFatalException error"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4674
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 4675
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 4676
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v1

    .line 4677
    .local v1, "exception":Ljava/lang/Exception;
    const-string v4, "Exception error Cause(%d)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4654
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public pause(IIZ)V
    .locals 6
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2914
    packed-switch p1, :pswitch_data_0

    .line 2946
    const-string v2, "parameter error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2947
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    .line 2952
    :goto_0
    return-void

    .line 2920
    :pswitch_0
    :try_start_0
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v1

    .line 2922
    .local v1, "type":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->pause(IIZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2923
    .end local v1    # "type":I
    :catch_0
    move-exception v0

    .line 2926
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2938
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2940
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2929
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2931
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2933
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2914
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2926
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public preStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;I)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .locals 7
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aUserParam"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 812
    const/4 v1, 0x0

    .line 814
    .local v1, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->startParameterCheck(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;)Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 817
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->tuneSettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;

    move-result-object v1

    .line 819
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    .line 824
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    .line 829
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionDisp(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    .line 834
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionDisp(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    .line 839
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionAlign(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    .line 844
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionAlign(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    .line 850
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBMLFullDispCaptionRect(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    .line 855
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBMLFullDispCaptionRect(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    .line 860
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->preStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-object v1

    .line 861
    :catch_0
    move-exception v0

    .line 864
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 876
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 867
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 869
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 885
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_0
    const-string v2, "parameter error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    goto :goto_0

    .line 864
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)V
    .locals 6
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    .prologue
    const/4 v5, 0x0

    .line 7308
    const/4 v1, 0x0

    .line 7310
    .local v1, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->recPlaySettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    move-result-object v1

    .line 7313
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    .line 7318
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionDisp(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    .line 7323
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionAlign(I)I

    move-result v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    .line 7329
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-virtual {v2, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBMLFullDispCaptionRect(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    .line 7334
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7350
    :goto_0
    return-void

    .line 7335
    :catch_0
    move-exception v0

    .line 7336
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 7342
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7343
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 7338
    :pswitch_0
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7339
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 7336
    :pswitch_data_0
    .packed-switch -0x19
        :pswitch_0
    .end packed-switch
.end method

.method public relDisplay()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6254
    const/4 v1, 0x0

    .line 6257
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->relDisplay()Z

    move-result v1

    .line 6259
    if-nez v1, :cond_0

    .line 6260
    const-string v2, "relDisplay return false"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6261
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6277
    :cond_0
    :goto_0
    return-void

    .line 6263
    :catch_0
    move-exception v0

    .line 6264
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "exception error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6265
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 6266
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "ServiceFatalException error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6268
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 6269
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 6270
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 6271
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception error Cause(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 2
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 3736
    const/4 v0, 0x0

    .line 3738
    .local v0, "linkcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    if-eqz p1, :cond_0

    .line 3739
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->bmlTvLinkDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    move-result-object v0

    .line 3742
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 3746
    return-void
.end method

.method public resetScroll()V
    .locals 1

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->resetScrollPosition()V

    .line 6122
    return-void
.end method

.method public responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 2
    .param p1, "aResult"    # Z
    .param p2, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 3704
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->bmlTvLinkDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    move-result-object v0

    .line 3706
    .local v0, "linkcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 3710
    return-void
.end method

.method public responseCancelFilecastingReservation(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3582
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responseCancelFilecastingReservation(Z)V

    .line 3586
    return-void
.end method

.method public responseFilecastingReservation(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3553
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responseFilecastingReservation(Z)V

    .line 3557
    return-void
.end method

.method public responsePassword(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aResult"    # I
    .param p2, "aUserName"    # Ljava/lang/String;
    .param p3, "aPassword"    # Ljava/lang/String;
    .param p4, "aBmlParameter"    # I

    .prologue
    .line 3495
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responsePassword(ILjava/lang/String;Ljava/lang/String;I)V

    .line 3499
    return-void
.end method

.method public responsePermission(II)V
    .locals 1
    .param p1, "aUserSelect"    # I
    .param p2, "aBmlParameter"    # I

    .prologue
    .line 3452
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responsePermission(II)V

    .line 3456
    return-void
.end method

.method public responseStartFilecasting(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3524
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responseStartFilecasting(Z)V

    .line 3528
    return-void
.end method

.method public responseStartInputMethod(ILjava/lang/String;)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    .line 3644
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responseStartInputMethod(ILjava/lang/String;)V

    .line 3648
    return-void
.end method

.method public responseStartTvLink(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3803
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responseStartTvLink(Z)V

    .line 3807
    return-void
.end method

.method public responseTune(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3610
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->responseTune(Z)V

    .line 3614
    return-void
.end method

.method public resumeBmlBrowser(I)V
    .locals 1
    .param p1, "aResumeKind"    # I

    .prologue
    .line 3395
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->resumeBmlBrowser(I)V

    .line 3399
    return-void
.end method

.method public resumePlay()I
    .locals 4

    .prologue
    .line 6927
    const/4 v2, 0x0

    .line 6929
    .local v2, "lRet":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->resumePlay()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 6937
    :goto_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->resumeBmlBrowser(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6945
    :goto_1
    return v2

    .line 6930
    :catch_0
    move-exception v1

    .line 6931
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const/4 v2, -0x3

    .line 6934
    goto :goto_0

    .line 6932
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v1

    .line 6933
    .local v1, "exception":Ljava/lang/Exception;
    const/4 v2, -0x2

    goto :goto_0

    .line 6938
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 6939
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public scan(I)V
    .locals 5
    .param p1, "aUserParam"    # I

    .prologue
    const/4 v4, 0x0

    .line 1867
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->scan(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :goto_0
    return-void

    .line 1868
    :catch_0
    move-exception v0

    .line 1871
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1883
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1885
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 1874
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1876
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1878
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 1871
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public seek(JI)I
    .locals 9
    .param p1, "aMsec"    # J
    .param p3, "aUserParam"    # I

    .prologue
    .line 7029
    const/4 v4, 0x0

    .line 7031
    .local v4, "lRet":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->seek(JI)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 7039
    :goto_0
    if-nez v4, :cond_0

    .line 7040
    const/4 v5, 0x2

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->suspendBmlBrowser(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7047
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 7048
    const/4 v0, 0x0

    .line 7049
    .local v0, "controlThreadFlg":Z
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$10;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$library$streaming$MmbStPlayerStateSv:[I

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 7059
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->controlThread(Z)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 7067
    .end local v0    # "controlThreadFlg":Z
    :cond_1
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyPositionWrapped()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 7075
    :goto_4
    return v4

    .line 7032
    :catch_0
    move-exception v3

    .line 7033
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const/4 v4, -0x3

    .line 7036
    goto :goto_0

    .line 7034
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v3

    .line 7035
    .local v3, "exception":Ljava/lang/Exception;
    const/4 v4, -0x2

    goto :goto_0

    .line 7042
    .end local v3    # "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 7043
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    const/4 v4, -0x2

    .line 7044
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7053
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    .restart local v0    # "controlThreadFlg":Z
    :pswitch_0
    const/4 v0, 0x1

    .line 7054
    goto :goto_2

    .line 7060
    :catch_3
    move-exception v2

    .line 7061
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v5, "error(%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7062
    const/4 v4, -0x3

    goto :goto_3

    .line 7068
    .end local v0    # "controlThreadFlg":Z
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_4
    move-exception v1

    .line 7069
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 7049
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public selectAudioLanguage(I)V
    .locals 6
    .param p1, "aLang"    # I

    .prologue
    const/4 v5, 0x0

    .line 2480
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvAudioLanguage(I)I

    move-result v1

    .line 2482
    .local v1, "language":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->selectAudioLanguage(I)V

    .line 2484
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setAudioLanguageValue(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2509
    .end local v1    # "language":I
    :goto_0
    return-void

    .line 2485
    :catch_0
    move-exception v0

    .line 2488
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2500
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2502
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2491
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2493
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2495
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2488
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public selectAudioMode(I)V
    .locals 6
    .param p1, "aMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 2423
    const/4 v1, 0x0

    .line 2426
    .local v1, "mode":I
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvAudioDualMode(I)I

    move-result v1

    .line 2428
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->selectAudioMode(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2454
    :goto_0
    return-void

    .line 2429
    :catch_0
    move-exception v0

    .line 2432
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2444
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2446
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2435
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2437
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2439
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2432
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setAudioManager(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 3
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 616
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->playerFunc:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setAudioManager(Landroid/media/AudioManager;)V

    .line 620
    return-void
.end method

.method public setBMLFullDispRect(IIII)V
    .locals 1
    .param p1, "aXPosition"    # I
    .param p2, "aYPosition"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 6600
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBmlFullDispRect(IIII)V

    .line 6604
    return-void
.end method

.method public setBmlState(Z)V
    .locals 5
    .param p1, "aState"    # Z

    .prologue
    const/4 v4, 0x0

    .line 699
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setBmlState(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 702
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 713
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 705
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 707
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setBmlSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V
    .locals 0
    .param p1, "aMmbStBmlSurfaceViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .prologue
    .line 6362
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlSurfaceViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 6366
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 2
    .param p1, "aMmbStBmlViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 6381
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 6382
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 6386
    return-void
.end method

.method public setCaptionDisplayAreaInfo(IIII)V
    .locals 5
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 438
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setCaptionDisplayAreaInfo(IIII)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 443
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 455
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 446
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 448
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 443
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    const/4 v4, 0x0

    .line 391
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setCaptionSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 395
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 407
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 398
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 400
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 395
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 2
    .param p1, "aMmbStCaptionViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 6401
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mCaptionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 6402
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mCaptionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V

    .line 6406
    return-void
.end method

.method public setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V
    .locals 8
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6165
    const/4 v2, 0x0

    .line 6168
    .local v2, "ret":Z
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v3, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)Z

    move-result v2

    .line 6170
    if-nez v2, :cond_0

    .line 6171
    const-string v3, "setDisplay return false"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6172
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    .line 6199
    :goto_0
    return-void

    .line 6176
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->getScrollSize()I

    move-result v1

    .line 6177
    .local v1, "height":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setBMLScrollSize(I)V

    .line 6178
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->resetBmlViewingSize()V

    .line 6179
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->resetScroll()V

    .line 6180
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->notifyBmlViewingSize(II)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 6183
    .end local v1    # "height":I
    :catch_0
    move-exception v0

    .line 6184
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "ServiceStateException error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6185
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 6186
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    const-string v3, "IllegalArgumentException error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6187
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 6188
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "ServiceFatalException error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6190
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 6191
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 6192
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_3
    move-exception v0

    .line 6193
    .local v0, "exception":Ljava/lang/Exception;
    const-string v3, "Exception error Cause(%d)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 6
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    const/4 v5, 0x0

    .line 2780
    if-eqz p1, :cond_1

    .line 2782
    :try_start_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionFullDispParameterCheck(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2784
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->subtitleDrawSettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v0

    .line 2787
    .local v0, "drawsetting":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v2

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    .line 2789
    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionDisp(I)I

    move-result v2

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbSize:I

    .line 2791
    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionAlign(I)I

    move-result v2

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbAlign:I

    .line 2795
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeMwCaptionIndex(I)I

    move-result v3

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbBmlFullScreenData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBMLFullDispCaptionRect(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    .line 2800
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 2834
    .end local v0    # "drawsetting":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    :goto_0
    return-void

    .line 2803
    :cond_0
    const-string v2, "parameter error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2804
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2806
    :catch_0
    move-exception v1

    .line 2809
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2821
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2823
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2812
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2814
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2816
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2828
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_1
    const-string v2, "parameter error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2829
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    goto :goto_0

    .line 2809
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLanguageIndex(II)V
    .locals 7
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    const/4 v6, 0x0

    .line 2726
    :try_start_0
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionLanguage(I)I

    move-result v1

    .line 2727
    .local v1, "lang":I
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v2

    .line 2729
    .local v2, "type":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setLanguageIndex(II)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2754
    .end local v1    # "lang":I
    .end local v2    # "type":I
    :goto_0
    return-void

    .line 2730
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2745
    const-string v3, "error(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2747
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2736
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2738
    :sswitch_1
    const-string v3, "Fatal error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2740
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2733
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .prologue
    .line 3417
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    .line 3421
    return-void
.end method

.method public setMmbStRecPlayingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    .prologue
    .line 6882
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mRecListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    .line 6886
    return-void
.end method

.method public setMmbStStreamingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    .prologue
    .line 2091
    if-eqz p1, :cond_0

    .line 2092
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->eventListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    .line 2097
    :cond_0
    return-void
.end method

.method protected setOperationRunning(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 7371
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->isOperationRunning:Z

    .line 7376
    return-void
.end method

.method public setRestoreMode(Z)V
    .locals 1
    .param p1, "aRestoreMode"    # Z

    .prologue
    .line 6749
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mBmlFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setRestoreMode(Z)V

    .line 6753
    return-void
.end method

.method public setResumePlaying(Z)V
    .locals 5
    .param p1, "aResumeflag"    # Z

    .prologue
    .line 7150
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setResumePlaying(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7158
    :goto_0
    return-void

    .line 7151
    :catch_0
    move-exception v0

    .line 7152
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7153
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method public setState(IZ)V
    .locals 6
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2606
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->changeSvCaptionIndex(I)I

    move-result v1

    .line 2608
    .local v1, "type":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setState(IZ)V

    .line 2610
    if-eq v4, p2, :cond_0

    .line 2612
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setSuperImposeCaptionLanguage(II)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 2615
    :catch_0
    move-exception v0

    .line 2618
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2630
    const-string v2, "error(%d)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2632
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 2621
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2623
    :sswitch_1
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2625
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 2618
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setSuperimposeDisplayAreaInfo(IIII)V
    .locals 5
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 527
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setSuperimposeDisplayAreaInfo(IIII)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 532
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 544
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 537
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 532
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    const/4 v4, 0x0

    .line 480
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setSuperimposeSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 484
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 496
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 489
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 484
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V
    .locals 2
    .param p1, "aMmbStSuperimposeViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .prologue
    .line 6421
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mSuperimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 6422
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->mSuperimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V

    .line 6426
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 5
    .param p1, "aRotateDegrees"    # I

    .prologue
    const/4 v4, 0x0

    .line 741
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setVideoDisplay(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 745
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 760
    :pswitch_0
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 748
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 750
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 755
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoDisplayAreaInfo(IIII)V
    .locals 5
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 644
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setVideoDisplayAreaInfo(IIII)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 649
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 666
    :pswitch_0
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 654
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 660
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    const/4 v4, 0x0

    .line 569
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->setVideoSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 573
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 590
    :pswitch_0
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 578
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 584
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V
    .locals 6
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    .prologue
    const/4 v5, 0x0

    .line 1119
    if-eqz p1, :cond_0

    .line 1122
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->bmlSettingDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    move-result-object v1

    .line 1124
    .local v1, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    .end local v1    # "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
    :goto_0
    :sswitch_0
    return-void

    .line 1125
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1143
    const-string v2, "error(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 1131
    :sswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1133
    :sswitch_2
    const-string v2, "Fatal error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 1151
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_0
    const-string v2, "parameter error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    goto :goto_0

    .line 1128
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_2
        -0x12 -> :sswitch_1
        -0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
    .locals 5
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 938
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->startParameterCheck(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;)Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 942
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v0

    .line 946
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 958
    const-string v1, "error(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 949
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 951
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 967
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_0
    const-string v1, "parameter error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 968
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    goto :goto_0

    .line 946
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public startPlay(I)V
    .locals 5
    .param p1, "aUserParam"    # I

    .prologue
    const/4 v4, 0x0

    .line 7263
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->startPlay(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7282
    :goto_0
    return-void

    .line 7264
    :catch_0
    move-exception v0

    .line 7265
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 7273
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7275
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 7269
    :sswitch_0
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7270
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 7265
    :sswitch_data_0
    .sparse-switch
        -0x19 -> :sswitch_0
        -0x16 -> :sswitch_0
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public stopPlay()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7210
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->stopPlay()V

    .line 7211
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->resetScroll()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7237
    :goto_0
    return-void

    .line 7212
    :catch_0
    move-exception v0

    .line 7214
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 7228
    :pswitch_0
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7230
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0

    .line 7217
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 7219
    :pswitch_2
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7221
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_0

    .line 7224
    :pswitch_3
    const-string v1, "St restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7214
    :pswitch_data_0
    .packed-switch -0x16
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected stopPositionThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7523
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->controlThread(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7531
    :goto_0
    return-void

    .line 7524
    :catch_0
    move-exception v0

    .line 7525
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7526
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_0
.end method

.method public suspendBmlBrowser(I)V
    .locals 1
    .param p1, "aVramClear"    # I

    .prologue
    .line 3371
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->suspendBmlBrowser(I)V

    .line 3375
    return-void
.end method

.method public trickplay(I)I
    .locals 4
    .param p1, "aKind"    # I

    .prologue
    .line 7100
    const/4 v2, 0x0

    .line 7102
    .local v2, "lRet":I
    packed-switch p1, :pswitch_data_0

    .line 7120
    :goto_0
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->suspendBmlBrowser(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 7128
    :goto_1
    return v2

    .line 7104
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->pausePlay()I

    move-result v2

    .line 7105
    goto :goto_0

    .line 7107
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->fastForwardPlay()I

    move-result v2

    .line 7108
    goto :goto_0

    .line 7110
    :pswitch_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->rewindPlay()I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 7113
    :catch_0
    move-exception v1

    .line 7114
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const/4 v2, -0x3

    .line 7117
    goto :goto_0

    .line 7115
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v1

    .line 7116
    .local v1, "exception":Ljava/lang/Exception;
    const/4 v2, -0x2

    goto :goto_0

    .line 7121
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 7122
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    .locals 10
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I

    .prologue
    const/4 v9, 0x0

    .line 1757
    :try_start_0
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->scheduleIntentDataClone(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    move-result-object v3

    .line 1758
    .local v3, "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->preTune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V

    .line 1759
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    .end local v3    # "settingcopy":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    :goto_0
    return-void

    .line 1760
    :catch_0
    move-exception v6

    .line 1763
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1793
    const-string v0, "error(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1766
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 1768
    :sswitch_1
    const-string v0, "Fatal error"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1770
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyFatalError()V

    goto :goto_0

    .line 1773
    :sswitch_2
    const-string v0, "St restart"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1774
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyRestartRequest()V

    goto :goto_0

    .line 1777
    :sswitch_3
    const-string v0, "State error"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1778
    const/16 v7, 0x10

    .line 1779
    .local v7, "fixerror":I
    move v8, p5

    .line 1780
    .local v8, "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$3;

    invoke-direct {v1, p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1763
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x15 -> :sswitch_2
        -0x12 -> :sswitch_0
        -0x2 -> :sswitch_3
    .end sparse-switch
.end method

.method public videoDecode(I)V
    .locals 5
    .param p1, "aState"    # I

    .prologue
    const/4 v4, 0x0

    .line 2124
    packed-switch p1, :pswitch_data_0

    .line 2132
    const-string v1, "parameter error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2133
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    .line 2138
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->videoDecode(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2164
    :goto_1
    return-void

    .line 2126
    :pswitch_0
    const/4 p1, 0x0

    .line 2127
    goto :goto_0

    .line 2129
    :pswitch_1
    const/4 p1, 0x1

    .line 2130
    goto :goto_0

    .line 2139
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2154
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2156
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_1

    .line 2145
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2147
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2149
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_1

    .line 2124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2142
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public videoMute(I)V
    .locals 5
    .param p1, "aState"    # I

    .prologue
    const/4 v4, 0x0

    .line 2191
    packed-switch p1, :pswitch_data_0

    .line 2199
    const-string v1, "parameter error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwParameterException()V

    .line 2205
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->state()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->videoMute(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    :goto_1
    return-void

    .line 2193
    :pswitch_0
    const/4 p1, 0x0

    .line 2194
    goto :goto_0

    .line 2196
    :pswitch_1
    const/4 p1, 0x1

    .line 2197
    goto :goto_0

    .line 2206
    :catch_0
    move-exception v0

    .line 2209
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2221
    const-string v1, "error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwException(I)V

    goto :goto_1

    .line 2212
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V

    .line 2214
    :sswitch_1
    const-string v1, "Fatal error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2216
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->throwFatalException()V

    goto :goto_1

    .line 2191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2209
    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_1
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method
