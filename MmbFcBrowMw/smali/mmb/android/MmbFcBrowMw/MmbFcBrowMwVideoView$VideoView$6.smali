.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V
    .locals 0

    .prologue
    .line 2121
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDimChange(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;ILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V
    .locals 10
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aVideoFrameInfo"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2125
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onDimChange Videoview aWhat : %d, aVideoFrameInfo : %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v5, 0x1

    if-nez p3, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2126
    if-nez p1, :cond_2

    .line 2151
    :cond_0
    :goto_1
    return-void

    .line 2125
    :cond_1
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getStereoViewType()I

    move-result v1

    goto :goto_0

    .line 2129
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 2147
    :cond_3
    :goto_2
    :sswitch_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2148
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;->onDimChange(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;ILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V

    goto :goto_1

    .line 2131
    :sswitch_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    iget v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    if-ne v1, v2, :cond_3

    .line 2132
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v9, v2, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2133
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2134
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2141
    .end local v0    # "msg":Landroid/os/Message;
    :sswitch_2
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-ne v1, v8, :cond_3

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-ne v1, v8, :cond_3

    .line 2142
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : drawLastFrame() 1"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->drawLastFrame()V

    .line 2144
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out : drawLastFrame() 1"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2129
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
