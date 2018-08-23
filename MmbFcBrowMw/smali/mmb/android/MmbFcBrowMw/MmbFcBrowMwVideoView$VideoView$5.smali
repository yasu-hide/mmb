.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;


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
    .line 2043
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 9
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2046
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview aWhat : %d, aExtra : %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2047
    if-nez p1, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return v0

    .line 2051
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 2111
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$3000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2112
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$3000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v3, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;->onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2113
    goto :goto_0

    .line 2053
    :pswitch_1
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_START_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2054
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2055
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2056
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-virtual {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    goto :goto_1

    .line 2059
    :pswitch_2
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_STOP_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2060
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2061
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2062
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    goto :goto_1

    .line 2065
    :pswitch_3
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_PAUSE_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2066
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2067
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2068
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    goto :goto_1

    .line 2071
    :pswitch_4
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_CHAPTER_FAST_FORWARD_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2072
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2073
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    goto :goto_1

    .line 2076
    :pswitch_5
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_CHAPTER_REWIND_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2077
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2078
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    goto/16 :goto_1

    .line 2082
    :pswitch_6
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_CANNOT_FORWARD_TRICKPLAY / MEDIA_INFO_CANNOT_REVERSE_TRICKPLAY"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2083
    const/16 v2, 0x9

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2084
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v3

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2085
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2086
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v3, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onSeekCompleteEvent(I)V

    goto/16 :goto_1

    .line 2091
    :pswitch_7
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_COMMAND_REJECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2096
    :pswitch_8
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Videoview MmbFcMp4MwPlayer.MEDIA_INFO_ILLEGAL_STATE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2097
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2098
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2099
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2100
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 2103
    :cond_3
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v3, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    .line 2105
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : reset() 3"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2106
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 2107
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : reset() 3"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2051
    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
