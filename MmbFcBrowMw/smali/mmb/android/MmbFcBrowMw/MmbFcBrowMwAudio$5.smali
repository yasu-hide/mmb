.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;
.super Ljava/lang/Object;
.source "MmbFcBrowMwAudio.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;


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
    .line 1023
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 2
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 1027
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcMp4MwOnSeekCompleteListener.onSeekComplete Audio"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1028
    if-nez p1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)I

    move-result v1

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 1034
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$1300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$1300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;->onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    goto :goto_0
.end method
