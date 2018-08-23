.class public final Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;
.super Ljava/lang/Object;
.source "MmbStBmlTouchControlSv.java"


# static fields
.field private static final DIP:F = 160.0f

.field private static final G:F = 9.8f

.field private static final INCHMETER:F = 39.37f

.field private static final MSG_CHECK_SCROLL:I = 0x2711

.field private static final ROUND_OFF_VALUE:F = 0.5f

.field protected static final SCROLL_RESET_POSITION:I = 0x0

.field private static final TOUCH_LIMIT:F = 50.0f


# instance fields
.field private isMoving:Z

.field private mBmlTouch:Z

.field private mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

.field private mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

.field private mChangeDispHeight:I

.field private mDeceleration:F

.field private mFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

.field private mFullDispCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

.field private mHandler:Landroid/os/Handler;

.field private mLastNotifyPos:I

.field private mScrollable:Z

.field private mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field public mmbLastTouchPositionX:F

.field public mmbLastTouchPositionY:F

.field private prevBmlPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aBrowser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;
    .param p3, "aFullDispCtl"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 67
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .line 72
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 77
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    .line 82
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFullDispCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollable:Z

    .line 93
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->isMoving:Z

    .line 94
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlTouch:Z

    .line 95
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionX:F

    .line 96
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionY:F

    .line 121
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mLastNotifyPos:I

    .line 126
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mDeceleration:F

    .line 136
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->prevBmlPosition:I

    .line 141
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mChangeDispHeight:I

    .line 759
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 179
    .local v0, "ppi":F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mDeceleration:F

    .line 185
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    .line 188
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFullDispCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    return-object v0
.end method

.method private checkMember()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    if-nez v0, :cond_1

    .line 1122
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v1, "View None"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_1
    return-void
.end method

.method private isBmlResct(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1027
    const/4 v4, 0x0

    .line 1028
    .local v4, "leftMarge":I
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewWidth()I

    move-result v7

    .line 1029
    .local v7, "surfaceViewWidth":I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewPositionX()I

    move-result v8

    add-int v1, v8, v7

    .line 1032
    .local v1, "endbmlpositionx":I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->isBmlLayoutWidthAdjusted(I)Z

    move-result v3

    .line 1033
    .local v3, "isAdjusted":Z
    if-ne v10, v3, :cond_0

    .line 1034
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1035
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getLeft()I

    move-result v11

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getLeft()I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1037
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewWidth()I

    move-result v8

    add-int v1, v4, v8

    .line 1047
    :cond_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewPositionY()I

    move-result v8

    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewHeight()I

    move-result v11

    add-int v2, v8, v11

    .line 1053
    .local v2, "endbmlpositiony":I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewPositionX()I

    move-result v5

    .line 1054
    .local v5, "startbmlpositionx":I
    if-ne v10, v3, :cond_1

    .line 1055
    move v5, v4

    .line 1057
    :cond_1
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewPositionY()I

    move-result v6

    .line 1060
    .local v6, "startbmlpositiony":I
    int-to-float v8, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v8, v8, v11

    if-gtz v8, :cond_3

    move v8, v9

    .line 1099
    .end local v1    # "endbmlpositionx":I
    .end local v2    # "endbmlpositiony":I
    .end local v3    # "isAdjusted":Z
    .end local v5    # "startbmlpositionx":I
    .end local v6    # "startbmlpositiony":I
    .end local v7    # "surfaceViewWidth":I
    :goto_0
    return v8

    .restart local v1    # "endbmlpositionx":I
    .restart local v3    # "isAdjusted":Z
    .restart local v7    # "surfaceViewWidth":I
    :cond_2
    move v8, v9

    .line 1043
    goto :goto_0

    .line 1068
    .restart local v2    # "endbmlpositiony":I
    .restart local v5    # "startbmlpositionx":I
    .restart local v6    # "startbmlpositiony":I
    :cond_3
    int-to-float v8, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpg-float v8, v8, v11

    if-gtz v8, :cond_4

    move v8, v9

    .line 1073
    goto :goto_0

    .line 1076
    :cond_4
    int-to-float v8, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_5

    move v8, v9

    .line 1081
    goto :goto_0

    .line 1084
    :cond_5
    int-to-float v8, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    cmpl-float v8, v8, v11

    if-ltz v8, :cond_6

    move v8, v9

    .line 1089
    goto :goto_0

    .line 1092
    .end local v1    # "endbmlpositionx":I
    .end local v2    # "endbmlpositiony":I
    .end local v3    # "isAdjusted":Z
    .end local v5    # "startbmlpositionx":I
    .end local v6    # "startbmlpositiony":I
    .end local v7    # "surfaceViewWidth":I
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v8, v10

    .line 1099
    goto :goto_0
.end method

.method private processTouchDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->checkMember()V

    .line 504
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->isMoving:Z

    .line 506
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlTouch:Z

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionX:F

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionY:F

    .line 514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->isBmlResct(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    move-result-object v1

    .line 534
    .local v1, "res":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    if-nez v1, :cond_1

    .line 535
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v3, "getRenderSizeReq null"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v1    # "res":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "res":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    :cond_1
    :try_start_1
    iget-object v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v2, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    if-eqz v2, :cond_2

    .line 551
    iget-object v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v2, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setBMLScrollSize(I)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getSurfaceViewHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setBMLScrollSize(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private processTouchMove(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 583
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlTouch:Z

    if-nez v0, :cond_0

    .line 585
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->processTouchDown(Landroid/view/MotionEvent;)V

    .line 589
    :cond_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->isMoving:Z

    if-nez v0, :cond_2

    .line 591
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 597
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->isMoving:Z

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 616
    return-void
.end method

.method private processTouchUp(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x42480000    # 50.0f

    const/4 v9, 0x1

    .line 635
    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v10

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mmbLastTouchPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v10

    if-lez v7, :cond_1

    .line 641
    :cond_0
    iput-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->isMoving:Z

    .line 651
    :cond_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getScrollY()I

    move-result v5

    .line 652
    .local v5, "pos":I
    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->prevBmlPosition:I

    .line 658
    iget-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->isMoving:Z

    if-nez v7, :cond_4

    .line 660
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewWidth()I

    move-result v7

    int-to-float v0, v7

    .line 661
    .local v0, "dispwidth":F
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    float-to-int v8, v0

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->isBmlLayoutWidthAdjusted(I)Z

    move-result v1

    .line 662
    .local v1, "isAdjusted":Z
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_2

    if-ne v9, v1, :cond_2

    .line 755
    .end local v0    # "dispwidth":F
    .end local v1    # "isAdjusted":Z
    :goto_0
    return-void

    .line 672
    .restart local v0    # "dispwidth":F
    .restart local v1    # "isAdjusted":Z
    :cond_2
    invoke-virtual {p0, v5, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->notifyBmlViewingSize(II)V

    .line 679
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlBaseWidth()I

    move-result v7

    int-to-float v6, v7

    .line 680
    .local v6, "touchwidth":F
    div-float v3, v6, v0

    .line 684
    .local v3, "localbmlscale":F
    new-instance v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;

    invoke-direct {v4}, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;-><init>()V

    .line 687
    .local v4, "param":Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;
    const/16 v7, 0x1a

    iput v7, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbKeycode:I

    .line 695
    iput v9, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbKeyevent:I

    .line 716
    const/4 v2, 0x0

    .line 717
    .local v2, "leftMarge":I
    if-ne v9, v1, :cond_3

    .line 718
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getLeft()I

    move-result v8

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getLeft()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 721
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbTouchX:I

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbTouchY:I

    .line 742
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->notifyKey(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V

    .line 750
    .end local v0    # "dispwidth":F
    .end local v1    # "isAdjusted":Z
    .end local v2    # "leftMarge":I
    .end local v3    # "localbmlscale":F
    .end local v4    # "param":Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;
    .end local v6    # "touchwidth":F
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlTouch:Z

    goto :goto_0

    .line 746
    :cond_4
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x2711

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method


# virtual methods
.method public checkBmlScrollStop()V
    .locals 8

    .prologue
    .line 837
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    if-eqz v3, :cond_1

    .line 839
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getScrollY()I

    move-result v0

    .line 845
    .local v0, "pos":I
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->prevBmlPosition:I

    if-ne v3, v0, :cond_3

    .line 846
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    move-result-object v1

    .line 849
    .local v1, "res":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    if-nez v1, :cond_0

    .line 850
    const-string v3, "render size null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    :cond_0
    const/4 v2, 0x0

    .line 853
    .local v2, "scrollposition":I
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mLastNotifyPos:I

    if-le v3, v0, :cond_2

    .line 854
    const/4 v2, 0x1

    .line 858
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->notifyBmlViewingSize(II)V

    .line 860
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mLastNotifyPos:I

    .line 868
    .end local v1    # "res":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    .end local v2    # "scrollposition":I
    :goto_1
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->prevBmlPosition:I

    .line 874
    .end local v0    # "pos":I
    :cond_1
    return-void

    .line 856
    .restart local v0    # "pos":I
    .restart local v1    # "res":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    .restart local v2    # "scrollposition":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 866
    .end local v1    # "res":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    .end local v2    # "scrollposition":I
    :cond_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2711

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method protected getScrollSize()I
    .locals 4

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    move-result-object v1

    .line 1180
    .local v1, "rendersize":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    const/4 v0, 0x0

    .line 1181
    .local v0, "height":I
    if-eqz v1, :cond_0

    iget-object v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v2, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    if-eqz v2, :cond_0

    .line 1182
    iget-object v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v2, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1189
    :goto_0
    return v0

    .line 1184
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getSurfaceViewHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected notifyBmlViewingSize(II)V
    .locals 7
    .param p1, "aPos"    # I
    .param p2, "aDirection"    # I

    .prologue
    .line 890
    new-instance v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;

    invoke-direct {v3}, Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;-><init>()V

    .line 891
    .local v3, "touchparam":Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;-><init>()V

    .line 893
    .local v2, "positionparam":Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;
    iput-object v2, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    .line 901
    iget-object v5, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    const/4 v6, 0x0

    iput v6, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    .line 903
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlBufferHeight()I

    move-result v0

    .line 904
    .local v0, "bufferheight":I
    int-to-float v5, p1

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlScale()F

    move-result v6

    div-float v1, v5, v6

    .line 905
    .local v1, "decimaly":F
    float-to-int v4, v1

    .line 906
    .local v4, "ycoordinate":I
    int-to-float v5, v4

    sub-float v5, v1, v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 907
    add-int/lit8 v4, v4, 0x1

    .line 909
    :cond_0
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mChangeDispHeight:I

    add-int/2addr v5, v4

    if-ge v0, v5, :cond_1

    .line 910
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mChangeDispHeight:I

    sub-int v4, v0, v5

    .line 912
    :cond_1
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 913
    const/4 v4, 0x0

    .line 915
    :cond_2
    iget-object v5, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput v4, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    .line 917
    iput p2, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;->mmbDirection:I

    .line 920
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->notifySmoothDrawStop(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V

    .line 925
    return-void
.end method

.method public onScrollReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "param Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_0
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    if-eqz v1, :cond_1

    .line 464
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "Scroll X Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_1
    :try_start_0
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setBMLScrollSize(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->scrollBML(I)V

    .line 481
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 358
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollable:Z

    if-nez v2, :cond_0

    .line 421
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->getBmlBrowserMode()I

    move-result v0

    .line 367
    .local v0, "bmlbrowsermode":I
    packed-switch v0, :pswitch_data_0

    .line 373
    const-string v2, "MmbStBmlTouchControlSv#onTouchEvent invalid is status. %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 392
    :pswitch_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->processTouchDown(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "processTouchDown State error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->processTouchMove(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 402
    :catch_1
    move-exception v1

    .line 403
    .restart local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "processTouchMove State error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->processTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 386
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected resetBmlViewingSize()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    .line 940
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->notifyBmlViewingSize(II)V

    .line 944
    return-void
.end method

.method protected resetScrollPosition()V
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->scrollBML(I)V

    .line 1162
    return-void
.end method

.method public scrollBML(I)V
    .locals 5
    .param p1, "aPos"    # I

    .prologue
    .line 965
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mLastNotifyPos:I

    .line 968
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    if-eqz v3, :cond_0

    .line 971
    move v0, p1

    .line 973
    .local v0, "distance":I
    const/4 v2, 0x0

    .line 975
    .local v2, "velocity":I
    if-gez v0, :cond_1

    .line 978
    const/4 v2, 0x0

    .line 987
    :goto_0
    move v1, v2

    .line 988
    .local v1, "postvelocity":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$2;

    invoke-direct {v4, p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1004
    .end local v0    # "distance":I
    .end local v1    # "postvelocity":I
    .end local v2    # "velocity":I
    :cond_0
    return-void

    .line 983
    .restart local v0    # "distance":I
    .restart local v2    # "velocity":I
    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public setBMLScrollSize(I)V
    .locals 4
    .param p1, "aBMLContentHeight"    # I

    .prologue
    .line 802
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFullDispCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFullDispCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getFullScreenBmlHeight()I

    move-result p1

    .line 807
    :cond_0
    const-class v2, Landroid/view/View;

    const-string v3, "mBottom"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 808
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 809
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    return-void

    .line 811
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V
    .locals 0
    .param p1, "aBmlView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 264
    return-void
.end method

.method public setFrameLayout(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;)V
    .locals 0
    .param p1, "aFrameLayout"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .line 241
    return-void
.end method

.method public setScrollView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 0
    .param p1, "aScrollView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 217
    return-void
.end method

.method public setchangeDispParam(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V
    .locals 6
    .param p1, "aParam"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v5, "setchangeDispParam param null"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    if-nez v4, :cond_2

    .line 288
    :cond_1
    const-string v4, "No set View"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :goto_0
    return-void

    .line 298
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mScrollview:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getSurfaceViewHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 301
    .local v3, "scrolltoppos":F
    const/4 v1, 0x0

    .line 302
    .local v1, "decimalheight":F
    const/4 v2, 0x0

    .line 303
    .local v2, "intheight":I
    const/4 v0, 0x0

    .line 306
    .local v0, "baseheight":I
    iget v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbDirection:I

    if-nez v4, :cond_5

    .line 308
    const/16 v4, 0xf0

    iput v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbWidth:I

    .line 309
    const/high16 v4, 0x43f00000    # 480.0f

    mul-float v1, v3, v4

    .line 310
    float-to-int v2, v1

    .line 311
    const/16 v0, 0x1e0

    .line 320
    :goto_1
    int-to-float v4, v2

    sub-float v4, v1, v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 321
    add-int/lit8 v2, v2, 0x1

    .line 325
    :cond_3
    if-ltz v2, :cond_4

    if-ge v0, v2, :cond_6

    .line 327
    :cond_4
    iput v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbHeight:I

    .line 332
    :goto_2
    iget v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbHeight:I

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->mChangeDispHeight:I

    goto :goto_0

    .line 314
    :cond_5
    const/16 v4, 0x1aa

    iput v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbWidth:I

    .line 315
    const/high16 v4, 0x43700000    # 240.0f

    mul-float v1, v3, v4

    .line 316
    float-to-int v2, v1

    .line 317
    const/16 v0, 0xf0

    goto :goto_1

    .line 329
    :cond_6
    iput v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbHeight:I

    goto :goto_2
.end method
