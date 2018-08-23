.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;
.super Ljava/lang/Object;
.source "MmbFcBrowMwAudio.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;


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
    .line 932
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 7
    .param p1, "aMediaPlayer"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aFramework_err"    # I
    .param p3, "aImpl_err"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 941
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcMp4MwOnErrorListener.onError Audio aFrameworkErr : %d, aImplErr : %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 944
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;I)I

    .line 946
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio$3;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    :cond_0
    return v5
.end method
