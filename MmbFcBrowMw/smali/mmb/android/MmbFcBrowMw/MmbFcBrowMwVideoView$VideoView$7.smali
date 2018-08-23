.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;


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
    .line 2155
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 5
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 2159
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcMp4MwOnSeekCompleteListener.onSeekComplete Videoview"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2160
    if-nez p1, :cond_1

    .line 2180
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2164
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2165
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2166
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-virtual {v0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 2176
    :goto_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;->onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    goto :goto_0

    .line 2168
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2169
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2170
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    goto :goto_1

    .line 2172
    :cond_3
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-virtual {v0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    goto :goto_1
.end method
