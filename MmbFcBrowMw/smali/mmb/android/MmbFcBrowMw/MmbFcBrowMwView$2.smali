.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;


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
    .line 2840
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 7
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2843
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2844
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_0

    .line 2852
    :goto_0
    return v2

    .line 2847
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v4

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->val$id:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingAudio()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2848
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x6f

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v2, v2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2849
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2851
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;->val$id:I

    invoke-virtual {v2, v4, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitAudioError(II)V

    move v2, v3

    .line 2852
    goto :goto_0
.end method
