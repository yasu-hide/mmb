.class public Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;
.super Ljava/lang/Object;
.source "MmbFcMp4MwChapterIdInfo.java"


# instance fields
.field private mChapterId:I

.field private mSequenceLabelId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->mSequenceLabelId:I

    .line 41
    iput v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->mChapterId:I

    .line 42
    return-void
.end method


# virtual methods
.method public getChapterId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->mChapterId:I

    return v0
.end method

.method public getSequenceLabelId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->mSequenceLabelId:I

    return v0
.end method

.method public setChapterId(I)V
    .locals 0
    .param p1, "aChapterId"    # I

    .prologue
    .line 57
    iput p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->mChapterId:I

    .line 58
    return-void
.end method

.method public setSequenceLabelId(I)V
    .locals 0
    .param p1, "aSequenceLabelId"    # I

    .prologue
    .line 49
    iput p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->mSequenceLabelId:I

    .line 50
    return-void
.end method
