.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "MmbFcBrowMwAbsSeekbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;IIZ)V
    .locals 0
    .param p2, "aId"    # I
    .param p3, "aProgress"    # I
    .param p4, "aFromUser"    # Z

    .prologue
    .line 223
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mId:I

    .line 225
    iput p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mProgress:I

    .line 226
    iput-boolean p4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mFromUser:Z

    .line 227
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mFromUser:Z

    invoke-static {v0, v1, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;IIZ)V

    .line 232
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;

    invoke-static {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

    .line 233
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .param p1, "aId"    # I
    .param p2, "aProgress"    # I
    .param p3, "aFromUser"    # Z

    .prologue
    .line 236
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mId:I

    .line 237
    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mProgress:I

    .line 238
    iput-boolean p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->mFromUser:Z

    .line 239
    return-void
.end method
