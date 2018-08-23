.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExitListener"
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;


# direct methods
.method private constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V
    .locals 0

    .prologue
    .line 4829
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
    .param p2, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;

    .prologue
    .line 4829
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 4832
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$6000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    .line 4833
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$ExitListener;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    .line 4834
    return-void
.end method
