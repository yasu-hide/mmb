.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;
.super Ljava/lang/Object;
.source "MmbStViewInformationManageSv.java"


# static fields
.field private static final ECO_DISPLAY_CHECK:I = 0x1

.field public static final ECO_DISPLAY_OFF:I = 0x0

.field public static final ECO_DISPLAY_ON:I = 0x1

.field public static final STATE_BML_FULL_DISPLAY:I = 0x0

.field public static final STATE_ECO_MODE:I = 0x1


# instance fields
.field private mEcoStatus:Z

.field protected mLayoutChange:I

.field private mNormalLayout:Landroid/view/ViewGroup$LayoutParams;

.field private mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mNormalLayout:Landroid/view/ViewGroup$LayoutParams;

    .line 44
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mLayoutChange:I

    .line 49
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mEcoStatus:Z

    .line 86
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 87
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 88
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 89
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 90
    return-void
.end method


# virtual methods
.method protected changeEcoLayoutChange(Z)V
    .locals 1
    .param p1, "aFlag"    # Z

    .prologue
    .line 216
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 218
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mLayoutChange:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mLayoutChange:I

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mLayoutChange:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mLayoutChange:I

    goto :goto_0
.end method

.method protected checkEcoLayoutChange()Z
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "ecolayoutchange":Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mLayoutChange:I

    and-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkEcoStatus()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mEcoStatus:Z

    return v0
.end method

.method protected checkSameLayout(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)Z
    .locals 3
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    const/4 v0, 0x0

    .line 406
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    if-eq v1, v2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    if-ne v1, v2, :cond_0

    .line 418
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    if-ne v1, v2, :cond_0

    .line 424
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    if-ne v1, v2, :cond_0

    .line 433
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected chengeEcoStatus(Z)V
    .locals 0
    .param p1, "aEcoStatus"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mEcoStatus:Z

    .line 277
    return-void
.end method

.method protected getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mNormalLayout:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method protected getPresentRect()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    return-object v0
.end method

.method protected getSurfaceViewHeight()I
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 143
    .local v0, "result":I
    return v0
.end method

.method protected getSurfaceViewPositionX()I
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 170
    .local v0, "result":I
    return v0
.end method

.method protected getSurfaceViewPositionY()I
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 197
    .local v0, "result":I
    return v0
.end method

.method protected getSurfaceViewWidth()I
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 116
    .local v0, "result":I
    return v0
.end method

.method protected setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "aLayout"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mNormalLayout:Landroid/view/ViewGroup$LayoutParams;

    .line 347
    return-void
.end method

.method protected setPresentRect(IIII)V
    .locals 2
    .param p1, "aLeft"    # I
    .param p2, "aTop"    # I
    .param p3, "aRight"    # I
    .param p4, "aBottom"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 320
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 321
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    sub-int v1, p3, p1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 322
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->mRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    sub-int v1, p4, p2

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 326
    return-void
.end method
