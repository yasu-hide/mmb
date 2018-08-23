.class public Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;
.super Ljava/lang/Object;
.source "MmbFcPlayerChapterInfoSv.java"


# instance fields
.field private blnEnableFlag:Z

.field private intChapterId:I

.field private intEndTime:I

.field private intStartTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapterId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->intChapterId:I

    return v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->intEndTime:I

    return v0
.end method

.method public getFastForwardEnable()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->blnEnableFlag:Z

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->intStartTime:I

    return v0
.end method

.method protected setChapterId(I)V
    .locals 0
    .param p1, "aChapterId"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->intChapterId:I

    .line 67
    return-void
.end method

.method protected setEndTime(I)V
    .locals 0
    .param p1, "aEndTime"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->intEndTime:I

    .line 111
    return-void
.end method

.method protected setFastForwardEnable(Z)V
    .locals 0
    .param p1, "aEnableFlag"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->blnEnableFlag:Z

    .line 132
    return-void
.end method

.method protected setStartTime(I)V
    .locals 0
    .param p1, "aStartTime"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;->intStartTime:I

    .line 89
    return-void
.end method
