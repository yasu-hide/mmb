.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;
.super Landroid/widget/ProgressBar;
.source "MmbFcBrowMwAbsSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final NO_ALPHA:I = 0xff

.field private static final SEEK_BAR_THUMB_HEIGHT:I = 0x24

.field private static final SEEK_BAR_THUMB_WIDTH:I = 0xf


# instance fields
.field Tag:Ljava/lang/String;

.field private cxt:Landroid/content/Context;

.field private mDisabledAlpha:F

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mRefreshProgressRunnable:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field mTouchProgressOffset:F

.field private mUiThreadId:J

.field private prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

.field private res:Landroid/content/res/Resources;

.field private targetBitmapPort:Landroid/graphics/Bitmap;

.field wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x14

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 56
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinWidth:I

    .line 57
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxWidth:I

    .line 58
    const/16 v0, 0x18

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinHeight:I

    .line 59
    const/16 v0, 0x41

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxHeight:I

    .line 60
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingRight:I

    .line 61
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    .line 67
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mIsUserSeekable:Z

    .line 68
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    .line 76
    const-string v0, "MmbFcBrowMwAbsSeekbar"

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->Tag:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->cxt:Landroid/content/Context;

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v0, 0x14

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinWidth:I

    .line 57
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxWidth:I

    .line 58
    const/16 v0, 0x18

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinHeight:I

    .line 59
    const/16 v0, 0x41

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxHeight:I

    .line 60
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingRight:I

    .line 61
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    .line 67
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mIsUserSeekable:Z

    .line 68
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    .line 76
    const-string v0, "MmbFcBrowMwAbsSeekbar"

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->Tag:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->cxt:Landroid/content/Context;

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/16 v2, 0x14

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinWidth:I

    .line 57
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxWidth:I

    .line 58
    const/16 v2, 0x18

    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinHeight:I

    .line 59
    const/16 v2, 0x41

    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxHeight:I

    .line 60
    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingRight:I

    .line 61
    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    .line 67
    iput-boolean v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mIsUserSeekable:Z

    .line 68
    iput v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    .line 76
    const-string v2, "MmbFcBrowMwAbsSeekbar"

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->Tag:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.nttdocomo.mmb.android.MmbFcBrowMw.res"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->res:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->cxt:Landroid/content/Context;

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mUiThreadId:J

    .line 104
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->res:Landroid/content/res/Resources;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->dipToPixel(I)I

    move-result v2

    const/16 v3, 0x24

    invoke-direct {p0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->dipToPixel(I)I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    invoke-virtual {p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setThumbOffset(I)V

    .line 109
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->initProhibitedTrickPlayArea()V

    .line 110
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->cxt:Landroid/content/Context;

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->cxt:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->wm:Landroid/view/WindowManager;

    .line 111
    return-void

    .line 97
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;IIZ)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;
    .param p1, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

    .prologue
    .line 45
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mRefreshProgressRunnable:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

    return-object p1
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 542
    :cond_0
    return-void
.end method

.method private dipToPixel(I)I
    .locals 6
    .param p1, "aP"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->res:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 176
    .local v0, "devicedensity":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 177
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 180
    .end local p1    # "aP":I
    :cond_0
    return p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 8
    .param p1, "aId"    # I
    .param p2, "aProgress"    # I
    .param p3, "aFromUser"    # Z

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v6

    if-lez v6, :cond_2

    int-to-float v6, p2

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 244
    .local v5, "scale":F
    :goto_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 245
    .local v3, "mcurrentdrawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v3

    .line 246
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 247
    const/4 v4, 0x0

    .line 249
    .local v4, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v6, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_0

    .line 250
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v0

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 253
    :cond_0
    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 254
    .local v2, "level":I
    if-eqz v4, :cond_3

    .end local v4    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 259
    .end local v2    # "level":I
    :goto_2
    const v6, 0x7f05000d

    if-ne p1, v6, :cond_1

    .line 260
    invoke-virtual {p0, v5, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_1
    monitor-exit p0

    return-void

    .line 243
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "mcurrentdrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "scale":F
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    .restart local v3    # "mcurrentdrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "scale":F
    :cond_3
    move-object v4, v1

    .line 254
    goto :goto_1

    .line 256
    .end local v2    # "level":I
    .end local v4    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 243
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "mcurrentdrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "scale":F
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private getTargetWidth(IIII)I
    .locals 2
    .param p1, "aWidth"    # I
    .param p2, "aStartPos"    # I
    .param p3, "aEndPos"    # I
    .param p4, "aDuration"    # I

    .prologue
    .line 169
    sub-int v1, p3, p2

    mul-int/2addr v1, p1

    div-int v0, v1, p4

    .line 170
    .local v0, "targetwidth":I
    return v0
.end method

.method private getTargetX(IIII)I
    .locals 2
    .param p1, "aX"    # I
    .param p2, "aWidth"    # I
    .param p3, "aStartPos"    # I
    .param p4, "aDuration"    # I

    .prologue
    .line 164
    mul-int v1, p2, p3

    div-int/2addr v1, p4

    add-int v0, p1, v1

    .line 165
    .local v0, "targetx":I
    return v0
.end method

.method private initProhibitedTrickPlayAreaGeneral()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->res:Landroid/content/res/Resources;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

    .line 185
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 189
    :cond_0
    return-void
.end method

.method private refreshProgress(IIZ)V
    .locals 6
    .param p1, "aId"    # I
    .param p2, "aProgress"    # I
    .param p3, "aFromUser"    # Z

    .prologue
    .line 545
    iget-wide v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 546
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->doRefreshProgress(IIZ)V

    .line 558
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mRefreshProgressRunnable:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 550
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mRefreshProgressRunnable:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

    .line 551
    .local v0, "r":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mRefreshProgressRunnable:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

    .line 552
    invoke-virtual {v0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;->setup(IIZ)V

    .line 556
    :goto_1
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 554
    .end local v0    # "r":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;
    :cond_1
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;IIZ)V

    .restart local v0    # "r":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private setSegBitmapRotation(Ljava/lang/Boolean;Landroid/graphics/Bitmap;IIII)V
    .locals 25
    .param p1, "aIsPortrait"    # Ljava/lang/Boolean;
    .param p2, "aTargetBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "aStartPos"    # I
    .param p4, "aEndPos"    # I
    .param p5, "aDuration"    # I
    .param p6, "aWidth"    # I

    .prologue
    .line 141
    const/16 v24, 0x0

    .local v24, "x":I
    const/16 v18, 0x0

    .local v18, "y":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->targetBitmapPort:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 144
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    .line 147
    .local v23, "temp":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v7, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->dipToPixel(I)I

    move-result v7

    sub-int p6, p6, v7

    .line 148
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p6

    invoke-static {v0, v12, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 149
    .local v21, "bitmapdrawable":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .local v22, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v7, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->dipToPixel(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, p6

    invoke-virtual {v0, v7, v1, v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, p6

    move/from16 v3, p3

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getTargetX(IIII)I

    move-result v17

    .line 155
    .local v17, "targetx":I
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getTargetWidth(IIII)I

    move-result v8

    .line 157
    .local v8, "targetwidth":I
    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 158
    .local v5, "segmentbitmap":Landroid/graphics/Bitmap;
    mul-int v7, v8, v12

    new-array v6, v7, [I

    .line 159
    .local v6, "pixelx":[I
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v8

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 160
    const/4 v15, 0x0

    move-object/from16 v13, p2

    move-object v14, v6

    move/from16 v16, v8

    move/from16 v19, v8

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 161
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "aW"    # I
    .param p2, "aThumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "aScale"    # F
    .param p4, "aGap"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 496
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 497
    .local v5, "thumbwidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 498
    .local v3, "thumbheight":I
    sub-int/2addr v0, v5

    .line 500
    iget v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 502
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 505
    .local v4, "thumbpos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 506
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 507
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 508
    .local v6, "topbound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 514
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottombound":I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    return-void

    .line 510
    .end local v1    # "bottombound":I
    .end local v6    # "topbound":I
    :cond_0
    move v6, p4

    .line 511
    .restart local v6    # "topbound":I
    add-int v1, p4, v3

    .restart local v1    # "bottombound":I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 518
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getWidth()I

    move-result v4

    .line 519
    .local v4, "width":I
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingRight()I

    move-result v7

    sub-int v0, v6, v7

    .line 520
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 522
    .local v5, "x":I
    const/4 v2, 0x0

    .line 523
    .local v2, "progress":F
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 524
    const/4 v3, 0x0

    .line 532
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v1

    .line 533
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 535
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setProgressAbs(IZ)V

    .line 536
    return-void

    .line 525
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 526
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 528
    .end local v3    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 529
    .restart local v3    # "scale":F
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mTouchProgressOffset:F

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 421
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 422
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 423
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 427
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getDrawableState()[I

    move-result-object v1

    .line 429
    .local v1, "state":[I
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 431
    .end local v1    # "state":[I
    :cond_1
    return-void

    .line 424
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingRight:I

    return v0
.end method

.method getThumbOffset()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumbOffset:I

    return v0
.end method

.method initProhibitedTrickPlayArea()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->initProhibitedTrickPlayAreaGeneral()V

    .line 117
    return-void
.end method

.method initTargetBitmap(II)V
    .locals 2
    .param p1, "aWidth"    # I
    .param p2, "aHeight"    # I

    .prologue
    .line 120
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    invoke-direct {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->dipToPixel(I)I

    move-result v0

    sub-int v0, p1, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->targetBitmapPort:Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->targetBitmapPort:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "aCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 466
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 468
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->targetBitmapPort:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->targetBitmapPort:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 472
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_1
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 392
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getProgress()I

    move-result v0

    .line 394
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 411
    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 396
    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    .line 398
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setProgressAbs(IZ)V

    .line 399
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onKeyChange()V

    goto :goto_0

    .line 403
    :pswitch_1
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 405
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setProgressAbs(IZ)V

    .line 406
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onKeyChange()V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "aWidthMeasureSpec"    # I
    .param p2, "aHeightMeasureSpec"    # I

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 480
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 481
    .local v3, "thumbheight":I
    :goto_0
    const/4 v2, 0x0

    .line 482
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 483
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 484
    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinWidth:I

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 485
    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMinHeight:I

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 486
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 488
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 489
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 491
    invoke-static {v2, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 480
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbheight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 479
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "aScale"    # F
    .param p2, "aFromUser"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 294
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 296
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->invalidate()V

    .line 298
    :cond_0
    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 13
    .param p1, "aW"    # I
    .param p2, "aH"    # I
    .param p3, "aOldw"    # I
    .param p4, "aOldh"    # I

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 436
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 437
    .local v6, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_2

    const/4 v7, 0x0

    .line 438
    .local v7, "thumbheight":I
    :goto_0
    iget v9, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mMaxHeight:I

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingTop()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 440
    .local v8, "trackheight":I
    iget v9, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mPaddingLeft:I

    invoke-direct {p0, v9}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->dipToPixel(I)I

    move-result v4

    .line 441
    .local v4, "progressstart":I
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v3

    .line 442
    .local v3, "max":I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v5, v9, v10

    .line 444
    .local v5, "scale":F
    :goto_1
    if-le v7, v8, :cond_4

    .line 445
    if-eqz v6, :cond_0

    .line 446
    const/4 v9, 0x0

    invoke-direct {p0, p1, v6, v5, v9}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 448
    :cond_0
    sub-int v9, v7, v8

    div-int/lit8 v2, v9, 0x2

    .line 449
    .local v2, "gapforcenteringtrack":I
    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingRight()I

    move-result v9

    sub-int v9, p1, v9

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingBottom()I

    move-result v10

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0, v4, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v2    # "gapforcenteringtrack":I
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 437
    .end local v3    # "max":I
    .end local v4    # "progressstart":I
    .end local v5    # "scale":F
    .end local v7    # "thumbheight":I
    .end local v8    # "trackheight":I
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    goto :goto_0

    .line 442
    .restart local v3    # "max":I
    .restart local v4    # "progressstart":I
    .restart local v7    # "thumbheight":I
    .restart local v8    # "trackheight":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 453
    .restart local v5    # "scale":F
    :cond_4
    if-eqz v0, :cond_5

    .line 454
    const/4 v9, 0x0

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingRight()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingBottom()I

    move-result v11

    sub-int v11, p2, v11

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    :cond_5
    sub-int v9, v8, v7

    div-int/lit8 v1, v9, 0x2

    .line 457
    .local v1, "gap":I
    if-eqz v6, :cond_1

    .line 458
    invoke-direct {p0, p1, v6, v5, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 435
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "gap":I
    .end local v3    # "max":I
    .end local v4    # "progressstart":I
    .end local v5    # "scale":F
    .end local v6    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v7    # "thumbheight":I
    .end local v8    # "trackheight":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    iget-boolean v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 379
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 356
    :pswitch_0
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setPressed(Z)V

    .line 357
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onStartTrackingTouch()V

    .line 358
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 362
    :pswitch_1
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 363
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->attemptClaimDrag()V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 368
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onStopTrackingTouch()V

    .line 369
    invoke-virtual {p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setPressed(Z)V

    .line 370
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->invalidate()V

    goto :goto_0

    .line 374
    :pswitch_3
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onStopTrackingTouch()V

    .line 375
    invoke-virtual {p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setPressed(Z)V

    .line 376
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->invalidate()V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "aIncrement"    # I

    .prologue
    .line 285
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "aIncrement":I
    :cond_0
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    .line 286
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "aMax"    # I

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 336
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_1
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgressAbs(IZ)V
    .locals 2
    .param p1, "aProgress"    # I
    .param p2, "aFromUser"    # Z

    .prologue
    .line 301
    monitor-enter p0

    if-gez p1, :cond_0

    .line 302
    const/4 p1, 0x0

    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getMax()I

    move-result p1

    .line 309
    :cond_1
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getProgress()I

    move-result v0

    .line 310
    .local v0, "mprogress":I
    if-eq p1, v0, :cond_2

    .line 311
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 312
    const v1, 0x7f05000d

    invoke-direct {p0, v1, p1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_2
    monitor-exit p0

    return-void

    .line 301
    .end local v0    # "mprogress":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setSegmentBitmap(IIII)V
    .locals 7
    .param p1, "aStartPos"    # I
    .param p2, "aEndPos"    # I
    .param p3, "aDuration"    # I
    .param p4, "aWidth"    # I

    .prologue
    .line 128
    if-gt p2, p3, :cond_0

    if-ge p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-gez p3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->prohibitedTrickPlayAreaGeneral:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->targetBitmapPort:Landroid/graphics/Bitmap;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setSegBitmapRotation(Ljava/lang/Boolean;Landroid/graphics/Bitmap;IIII)V

    .line 137
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->invalidate()V

    goto :goto_0
.end method

.method setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "aThumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumbOffset:I

    .line 271
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 272
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->invalidate()V

    .line 273
    return-void
.end method

.method setThumbOffset(I)V
    .locals 0
    .param p1, "aThumbOffset"    # I

    .prologue
    .line 280
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumbOffset:I

    .line 281
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->invalidate()V

    .line 282
    return-void
.end method

.method protected tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "aDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "aClip"    # Z

    .prologue
    const/4 v7, 0x1

    .line 192
    instance-of v6, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_4

    move-object v1, p1

    .line 193
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 194
    .local v1, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 195
    .local v0, "N":I
    new-array v5, v0, [Landroid/graphics/drawable/Drawable;

    .line 197
    .local v5, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 198
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 199
    .local v3, "id":I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v6, 0x7f05000d

    if-ne v3, v6, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p0, v8, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 203
    .end local v3    # "id":I
    :cond_1
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 205
    .local v4, "newbg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 206
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object p1, v4

    .line 212
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "i":I
    .end local v4    # "newbg":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    .end local p1    # "aDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_3
    return-object p1

    .line 209
    .restart local p1    # "aDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v6, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_3

    .line 210
    if-eqz p2, :cond_3

    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x3

    invoke-direct {v6, p1, v8, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object p1, v6

    goto :goto_3
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "aWho"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 416
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
