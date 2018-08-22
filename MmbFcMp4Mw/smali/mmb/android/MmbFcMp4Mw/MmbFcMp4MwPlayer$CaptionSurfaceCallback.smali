.class public Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;
.super Ljava/lang/Object;
.source "MmbFcMp4MwPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptionSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aFormat"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 807
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 792
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 793
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$402(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 795
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 796
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$400(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4, v5, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$500(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;IIII)V

    .line 799
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$200(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 804
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;->this$0:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-static {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->access$300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    move-result-object v2

    const-string v3, "MmbFcMp4MwPlayer CaptionSurfaceCallback.surfaceCreated: aHolder.getSurface is invalid!"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;->mmbLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 810
    return-void
.end method
