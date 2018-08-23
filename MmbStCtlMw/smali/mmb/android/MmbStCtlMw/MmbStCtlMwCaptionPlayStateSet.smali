.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
.super Ljava/lang/Object;
.source "MmbStCtlMwCaptionPlayStateSet.java"


# instance fields
.field public mPlayDirection:I

.field public mPlaySpeed:I

.field public mPlayState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayState:I

    .line 30
    iput v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayDirection:I

    .line 31
    iput v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlaySpeed:I

    return-void
.end method
