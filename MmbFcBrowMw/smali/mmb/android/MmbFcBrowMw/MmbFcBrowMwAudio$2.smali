.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;
.super Ljava/lang/Object;
.source "MmbFcBrowMwAudio.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;


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
    .line 910
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 3
    .param p1, "aMediaPlayer"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    const/4 v2, 0x5

    .line 919
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcMp4MwOnCompletionListener.onCompletion Audio (MmbFcMp4MwPlayer aMediaPlayer)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 921
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 923
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;->onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    iget-boolean v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->mediaLoop:Z

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->start()Z

    .line 929
    :cond_1
    return-void
.end method
