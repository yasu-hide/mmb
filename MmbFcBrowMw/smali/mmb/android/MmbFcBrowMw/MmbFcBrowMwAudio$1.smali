.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;
.super Ljava/lang/Object;
.source "MmbFcBrowMwAudio.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;


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
    .line 877
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 3
    .param p1, "aMediaPlayer"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 886
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "MmbFcMp4MwOnPreparedListener.onPrepared Audio (MmbFcMp4MwPlayer aMediaPlayer)"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 888
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;Z)Z

    .line 889
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF In : setAudioMute() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 890
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioMute(I)V

    .line 891
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF Out : setAudioMute() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 892
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In audio : setSapMode() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getSapModeValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setSapMode(I)V

    .line 894
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out audio : setSapMode() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 895
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF In : setAudioOutDev() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getAudioOutDev()I

    move-result v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioOutDev(I)V

    .line 897
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 Audio ExIF Out: setAudioOutDev() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setVolume(F)V

    .line 899
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;->onPrepared(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 903
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I

    move-result v0

    .line 904
    .local v0, "seektoposition":I
    if-eqz v0, :cond_1

    .line 905
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->seekTo(I)Z

    .line 907
    :cond_1
    return-void
.end method
