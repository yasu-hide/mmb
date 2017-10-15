.class public interface abstract Landroid/broadcast/IMtvOneSegVideoControl;
.super Ljava/lang/Object;
.source "IMtvOneSegVideoControl.java"


# static fields
.field public static final FRAMERATE_RESET:I = 0x0

.field public static final FRAMERATE_SET:I = 0x1

.field public static final ORIENTATION_CHANGED:I = 0x1

.field public static final ORIENTATION_UNCHANGED:I

.field public static final SURFACE_TYPE:I


# virtual methods
.method public abstract disableVideo()Z
.end method

.method public abstract enableVideo()Z
.end method

.method public abstract registerSubSurface(Landroid/view/SurfaceView;)Z
.end method

.method public abstract registerSurface(Landroid/view/SurfaceView;)Z
.end method

.method public abstract setFrameRateChange(I)Z
.end method

.method public abstract setRendererCreate(I)Z
.end method

.method public abstract unregisterSurface(Landroid/view/SurfaceView;)V
.end method
