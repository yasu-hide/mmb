.class public Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;
.super Ljava/lang/Object;
.source "MmbFcVideoFrameInfoSv.java"


# instance fields
.field private intAspectRatio:I

.field private intStereoViewType:I

.field private lngClippingHeight:J

.field private lngClippingWidth:J

.field private lngPosX:J

.field private lngPosY:J

.field private lngSourceHeight:J

.field private lngSourceWidth:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->intAspectRatio:I

    return v0
.end method

.method public getSrcClippingHeight()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngClippingHeight:J

    return-wide v0
.end method

.method public getSrcClippingPosX()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngPosX:J

    return-wide v0
.end method

.method public getSrcClippingPosY()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngPosY:J

    return-wide v0
.end method

.method public getSrcClippingWidth()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngClippingWidth:J

    return-wide v0
.end method

.method public getStereoViewType()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->intStereoViewType:I

    return v0
.end method

.method public getVideoSourceHeight()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngSourceHeight:J

    return-wide v0
.end method

.method public getVideoSourceWidth()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngSourceWidth:J

    return-wide v0
.end method

.method protected setAspectRatio(I)V
    .locals 0
    .param p1, "aAspectRatio"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->intAspectRatio:I

    .line 335
    return-void
.end method

.method protected setSrcClippingHeight(J)V
    .locals 1
    .param p1, "aClippingHeight"    # J

    .prologue
    .line 313
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngClippingHeight:J

    .line 317
    return-void
.end method

.method protected setSrcClippingPosX(J)V
    .locals 1
    .param p1, "aPosX"    # J

    .prologue
    .line 259
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngPosX:J

    .line 263
    return-void
.end method

.method protected setSrcClippingPosY(J)V
    .locals 1
    .param p1, "aPosY"    # J

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngPosY:J

    .line 281
    return-void
.end method

.method protected setSrcClippingWidth(J)V
    .locals 1
    .param p1, "aClippingWidth"    # J

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngClippingWidth:J

    .line 299
    return-void
.end method

.method protected setStereoViewType(I)V
    .locals 0
    .param p1, "aStereoViewType"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->intStereoViewType:I

    .line 353
    return-void
.end method

.method protected setVideoSourceHeight(J)V
    .locals 1
    .param p1, "aSourceHeight"    # J

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngSourceHeight:J

    .line 245
    return-void
.end method

.method protected setVideoSourceWidth(J)V
    .locals 1
    .param p1, "aSourceWidth"    # J

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->lngSourceWidth:J

    .line 227
    return-void
.end method
