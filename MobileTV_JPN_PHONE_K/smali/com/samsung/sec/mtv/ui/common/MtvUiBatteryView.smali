.class public Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;
.super Landroid/view/View;
.source "MtvUiBatteryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field private static final BATTERY_UNDER_VOLTAGE:I = 0x9

.field private static final BLINKING_INTERVAL:I = 0x3e8

.field public static final EMPTY:I = 0x4

.field public static final FULL:I = 0x60

.field private static final MSG_POST_INVALIDATE:I = 0x1

.field public static final SUBPIXEL:F

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mBatteryPaint:Landroid/graphics/Paint;

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private mButtonPadding:F

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field mInvalidTextPaint:Landroid/graphics/Paint;

.field private mIsShowBatteryIcon:Z

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPath:Landroid/graphics/Path;

    .line 63
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    .line 64
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonFrame:Landroid/graphics/RectF;

    .line 65
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mClipFrame:Landroid/graphics/RectF;

    .line 66
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    .line 71
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mIsShowBatteryIcon:Z

    .line 157
    new-instance v6, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTracker:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;

    .line 391
    new-instance v6, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;

    invoke-direct {v6, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mPostInvalidateHandler:Landroid/os/Handler;

    .line 190
    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->TAG:Ljava/lang/String;

    const-string v7, "BatteryMeterView"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 194
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v6, 0x2

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 196
    .local v4, "levels":[I
    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    .line 198
    .local v1, "colors":[I
    array-length v0, v4

    .line 199
    .local v0, "N":I
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mColors:[I

    .line 200
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 201
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    aget v8, v4, v3

    aput v8, v6, v7

    .line 202
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v8, v1, v3

    aput v8, v6, v7

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const-string v6, "!"

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningString:Ljava/lang/String;

    .line 207
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    .line 208
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    const v7, 0x7f060002

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 210
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 214
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 215
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 216
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTextPaint:Landroid/graphics/Paint;

    .line 220
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    const-string v6, "sans-serif-condensed"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 222
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 223
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 225
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 226
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    const-string v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 229
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 230
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 232
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mInvalidTextPaint:Landroid/graphics/Paint;

    .line 233
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v7, -0x17cbf7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    const-string v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 236
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 237
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPaint:Landroid/graphics/Paint;

    .line 240
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPaint:Landroid/graphics/Paint;

    const v7, 0x7f060001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    .line 245
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 246
    return-void

    .line 194
    :array_0
    .array-data 4
        0x4
        0x64
    .end array-data

    .line 196
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mPostInvalidateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getColorForLevel(I)I
    .locals 6
    .param p1, "percent"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "color":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mColors:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 276
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mColors:[I

    aget v3, v4, v2

    .line 277
    .local v3, "thresh":I
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mColors:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    .line 278
    if-gt p1, v3, :cond_0

    move v1, v0

    .line 281
    .end local v0    # "color":I
    .end local v3    # "thresh":I
    .local v1, "color":I
    :goto_1
    return v1

    .line 275
    .end local v1    # "color":I
    .restart local v0    # "color":I
    .restart local v3    # "thresh":I
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .end local v3    # "thresh":I
    :cond_1
    move v1, v0

    .line 281
    .end local v0    # "color":I
    .restart local v1    # "color":I
    goto :goto_1
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 249
    const v5, 0x7f050001

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 250
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 251
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 252
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 253
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 251
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 255
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 256
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 257
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 258
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 256
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 260
    :cond_1
    return-object v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTracker:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;

    move-object/from16 v19, v0

    .line 287
    .local v19, "tracker":Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->status:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 292
    :cond_0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBlinkingNeeded:Z

    .line 294
    sget-object v23, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->TAG:Ljava/lang/String;

    const-string v24, "battery icon blink..."

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const-wide/16 v26, 0x3e8

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mIsShowBatteryIcon:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mIsShowBatteryIcon:Z

    .line 301
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mIsShowBatteryIcon:Z

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 389
    :cond_2
    :goto_1
    return-void

    .line 299
    :cond_3
    const/16 v23, 0x0

    goto :goto_0

    .line 305
    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBlinkingNeeded:Z

    .line 308
    :cond_5
    move-object/from16 v0, v19

    iget v14, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->level:I

    .line 309
    .local v14, "level":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_2

    .line 311
    int-to-float v0, v14

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v11, v23, v24

    .line 312
    .local v11, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getPaddingTop()I

    move-result v18

    .line 313
    .local v18, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getPaddingLeft()I

    move-result v16

    .line 314
    .local v16, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getPaddingRight()I

    move-result v17

    .line 315
    .local v17, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getPaddingBottom()I

    move-result v15

    .line 316
    .local v15, "pb":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v18

    sub-int v12, v23, v15

    .line 317
    .local v12, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v16

    sub-int v20, v23, v17

    .line 319
    .local v20, "width":I
    int-to-float v0, v12

    move/from16 v23, v0

    const v24, 0x3df5c28f    # 0.12f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonHeight:I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v12

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offset(FF)V

    .line 324
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonPadding:F

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3e800000    # 0.25f

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonPadding:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonPadding:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x40a00000    # 5.0f

    add-float v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v25, 0x0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    const/16 v25, 0x0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getColorForLevel(I)I

    move-result v10

    .line 343
    .local v10, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    sget-object v23, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onDraw batteryColor : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/16 v23, 0x60

    move/from16 v0, v23

    if-lt v14, v0, :cond_8

    .line 347
    const/high16 v11, 0x3f800000    # 1.0f

    .line 352
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v11, v23

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v26, v26, v11

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 357
    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 362
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->plugged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->status:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40900000    # 4.5f

    div-float v24, v24, v25

    add-float v7, v23, v24

    .line 365
    .local v7, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x40c00000    # 6.0f

    div-float v24, v24, v25

    add-float v9, v23, v24

    .line 366
    .local v9, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40e00000    # 7.0f

    div-float v24, v24, v25

    sub-float v8, v23, v24

    .line 367
    .local v8, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x41200000    # 10.0f

    div-float v24, v24, v25

    sub-float v6, v23, v24

    .line 368
    .local v6, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    cmpl-float v23, v23, v7

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpl-float v23, v23, v9

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    cmpl-float v23, v23, v6

    if-eqz v23, :cond_b

    .line 369
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->moveTo(FF)V

    .line 372
    const/4 v13, 0x2

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_a

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    move-object/from16 v25, v0

    aget v25, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v13, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 372
    add-int/lit8 v13, v13, 0x2

    goto :goto_4

    .line 348
    .end local v6    # "bb":F
    .end local v7    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    .end local v13    # "i":I
    :cond_8
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v14, v0, :cond_6

    .line 349
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 352
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    goto/16 :goto_3

    .line 376
    .restart local v6    # "bb":F
    .restart local v7    # "bl":F
    .restart local v8    # "br":F
    .restart local v9    # "bt":F
    .restart local v13    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 380
    .end local v13    # "i":I
    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->status:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->health:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBlinkingNeeded:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 384
    .end local v6    # "bb":F
    .end local v7    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    :cond_c
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v14, v0, :cond_2

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v21, v23, v24

    .line 386
    .local v21, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f    # 0.48f

    mul-float v22, v23, v24

    .line 387
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 162
    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->TAG:Ljava/lang/String;

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTracker:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 167
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 169
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTracker:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 176
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mTracker:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 265
    iput p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mHeight:I

    .line 266
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWidth:I

    .line 267
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mInvalidTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->mWarningTextHeight:F

    .line 270
    return-void
.end method
