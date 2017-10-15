.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->onPlayerNotification(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

.field final synthetic val$fragment:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->val$fragment:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1076
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->val$fragment:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v0, v1, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->val$fragment:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->updateMultichannelNo(Z)V

    .line 1081
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->val$fragment:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scrollChannel()V

    .line 1082
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->val$fragment:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    const v2, 0x7f07021d

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 1085
    :cond_0
    return-void

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;->val$fragment:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->updateMultichannelNo(Z)V

    goto :goto_0
.end method
