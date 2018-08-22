.class public Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;
.super Ljava/lang/Object;
.source "MmbFcMp4MwVideoFrameInfo.java"


# instance fields
.field private mAspectRatio:I

.field private mSrcBaseHeight:J

.field private mSrcBaseWidth:J

.field private mSrcValidHeight:J

.field private mSrcValidPosiX:J

.field private mSrcValidPosiY:J

.field private mSrcValidWidth:J

.field private mStereoViewType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcBaseWidth:J

    .line 71
    iput-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcBaseHeight:J

    .line 72
    iput-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidPosiX:J

    .line 73
    iput-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidPosiY:J

    .line 74
    iput-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidWidth:J

    .line 75
    iput-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidHeight:J

    .line 76
    iput v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mAspectRatio:I

    .line 77
    iput v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mStereoViewType:I

    .line 78
    return-void
.end method


# virtual methods
.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mAspectRatio:I

    return v0
.end method

.method public getSrcBaseHeight()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcBaseHeight:J

    return-wide v0
.end method

.method public getSrcBaseWidth()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcBaseWidth:J

    return-wide v0
.end method

.method public getSrcValidHeight()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidHeight:J

    return-wide v0
.end method

.method public getSrcValidPosiX()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidPosiX:J

    return-wide v0
.end method

.method public getSrcValidPosiY()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidPosiY:J

    return-wide v0
.end method

.method public getSrcValidWidth()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidWidth:J

    return-wide v0
.end method

.method public getStereoViewType()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mStereoViewType:I

    return v0
.end method

.method public setAspectRatio(I)V
    .locals 0
    .param p1, "aAspectRatio"    # I

    .prologue
    .line 133
    iput p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mAspectRatio:I

    .line 134
    return-void
.end method

.method public setSrcBaseHeight(J)V
    .locals 1
    .param p1, "aSrcBaseHeight"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcBaseHeight:J

    .line 94
    return-void
.end method

.method public setSrcBaseWidth(J)V
    .locals 1
    .param p1, "aSrcBaseWidth"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcBaseWidth:J

    .line 86
    return-void
.end method

.method public setSrcValidHeight(J)V
    .locals 1
    .param p1, "aSrcValidHeight"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidHeight:J

    .line 126
    return-void
.end method

.method public setSrcValidPosiX(J)V
    .locals 1
    .param p1, "aSrcValidPosiX"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidPosiX:J

    .line 102
    return-void
.end method

.method public setSrcValidPosiY(J)V
    .locals 1
    .param p1, "aSrcValidPosiY"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidPosiY:J

    .line 110
    return-void
.end method

.method public setSrcValidWidth(J)V
    .locals 1
    .param p1, "aSrcValidWidth"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mSrcValidWidth:J

    .line 118
    return-void
.end method

.method public setStereoViewType(I)V
    .locals 0
    .param p1, "aStereoViewType"    # I

    .prologue
    .line 141
    iput p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->mStereoViewType:I

    .line 142
    return-void
.end method
