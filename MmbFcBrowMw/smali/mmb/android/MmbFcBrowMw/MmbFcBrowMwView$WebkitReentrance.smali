.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebkitReentrance"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)V
    .locals 0
    .param p2, "aValue"    # Z

    .prologue
    .line 4180
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 4181
    invoke-direct {p0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 4182
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 0

    .prologue
    .line 4185
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4186
    return-void
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 4189
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4190
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4193
    :goto_0
    return-void

    .line 4192
    :cond_0
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "WebkitReentrance.unlock fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;)V

    goto :goto_0
.end method
