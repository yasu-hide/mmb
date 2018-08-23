.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;


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
    .line 1943
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 6
    .param p1, "aMP"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1945
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "MmbFcMp4MwOnPreparedListener.onPrepared Videoview (MmbFcMp4MwPlayer aMP)"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1946
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 1947
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setDispCaption() 6"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1948
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getVideoCaptionEnableVaule()Z

    move-result v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDispCaption(Z)V

    .line 1949
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: setDispCaption() 6"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1950
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setSapMode() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1951
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getSapModeValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setSapMode(I)V

    .line 1952
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: setSapMode() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1953
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setAudioMute() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1954
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$2100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioMute(I)V

    .line 1955
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out : setAudioMute() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1956
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setAudioOutDev() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1957
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getAudioOutDev()I

    move-result v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioOutDev(I)V

    .line 1958
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: setAudioOutDev() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1959
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setVolume(F)V

    .line 1960
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Z)Z

    .line 1962
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1963
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;->onPrepared(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 1966
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1967
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 1970
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 1971
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 1973
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    .line 1974
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 1975
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->seekTo(I)V

    .line 1978
    :cond_2
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 1979
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1980
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1981
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 1982
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->start()V

    .line 1983
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1984
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 1997
    :cond_3
    :goto_0
    return-void

    .line 1986
    :cond_4
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 1987
    :cond_5
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1988
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 1993
    :cond_6
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 1994
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->start()V

    goto :goto_0
.end method
