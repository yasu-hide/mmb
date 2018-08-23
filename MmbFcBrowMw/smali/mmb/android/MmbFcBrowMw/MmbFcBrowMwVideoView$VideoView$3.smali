.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;


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
    .line 2000
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 4
    .param p1, "aMP"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 2002
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcMp4MwOnCompletionListener.onCompletion Videoview (MmbFcMp4MwPlayer aMP)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$2600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2004
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isPlaying()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2005
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2006
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2007
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 2013
    :goto_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 2016
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2017
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;->onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 2020
    :cond_1
    return-void

    .line 2009
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2010
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 2011
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    goto :goto_0
.end method
