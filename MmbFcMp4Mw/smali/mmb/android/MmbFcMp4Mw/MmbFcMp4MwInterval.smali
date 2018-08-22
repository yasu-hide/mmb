.class public Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;
.super Ljava/lang/Object;
.source "MmbFcMp4MwInterval.java"


# instance fields
.field private mEndTime:I

.field private mStartTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->mStartTime:I

    .line 42
    iput v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->mEndTime:I

    .line 43
    return-void
.end method


# virtual methods
.method public getEndTime()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->mEndTime:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->mStartTime:I

    return v0
.end method

.method public setEndTime(I)V
    .locals 0
    .param p1, "aEndTime"    # I

    .prologue
    .line 58
    iput p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->mEndTime:I

    .line 59
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .param p1, "aStartTime"    # I

    .prologue
    .line 50
    iput p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->mStartTime:I

    .line 51
    return-void
.end method
