.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;
.super Ljava/lang/Object;
.source "MmbFcBrowMwAudio.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 7
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 960
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Audio aWhat : %d, aExtra : %d"

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

    .line 961
    if-nez p1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v0

    .line 965
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 1012
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1013
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;->onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1014
    goto :goto_0

    .line 967
    :pswitch_1
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Audio MmbFcMp4MwPlayer.MEDIA_INFO_START_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 968
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    goto :goto_1

    .line 971
    :pswitch_2
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Audio MmbFcMp4MwPlayer.MEDIA_INFO_STOP_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    goto :goto_1

    .line 975
    :pswitch_3
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Audio MmbFcMp4MwPlayer.MEDIA_INFO_PAUSE_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 976
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    goto :goto_1

    .line 979
    :pswitch_4
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Audio MmbFcMp4MwPlayer.MEDIA_INFO_CHAPTER_FAST_FORWARD_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 980
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    goto :goto_1

    .line 983
    :pswitch_5
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Audio MmbFcMp4MwPlayer.MEDIA_INFO_CHAPTER_REWIND_COMPLETE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    goto :goto_1

    .line 988
    :pswitch_6
    const/16 v2, 0x9

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 989
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I

    move-result v3

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 990
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 991
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onSeekCompleteEventAudio(I)V

    goto/16 :goto_1

    .line 996
    :pswitch_7
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbFcMp4MwOnInfoListener.onInfo Audio MmbFcMp4MwPlayer.MEDIA_INFO_COMMAND_REJECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I

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

    .line 1001
    :pswitch_8
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbFcMp4MwOnInfoListener.onInfo Audio MmbFcMp4MwPlayer.MEDIA_INFO_ILLEGAL_STATE"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1002
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 1003
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 1005
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    .line 1006
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 Audio ExIF In : reset() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1007
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 1008
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 Audio ExIF In : reset() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 965
    nop

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
