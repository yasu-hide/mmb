.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;


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
    .line 2869
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 3
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 2872
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2873
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_0

    .line 2878
    :goto_0
    return-void

    .line 2877
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;->val$id:I

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    goto :goto_0
.end method
