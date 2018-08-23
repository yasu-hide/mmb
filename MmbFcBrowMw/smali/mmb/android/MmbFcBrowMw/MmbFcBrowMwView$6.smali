.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitAudioCreate(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V
    .locals 0

    .prologue
    .line 2954
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 7
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    const/4 v6, 0x0

    .line 2958
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onSeekCompleteEvent Audio id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2959
    if-nez p1, :cond_1

    .line 2969
    :cond_0
    :goto_0
    return-void

    .line 2962
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;->val$id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2963
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 2967
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6a

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2968
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
