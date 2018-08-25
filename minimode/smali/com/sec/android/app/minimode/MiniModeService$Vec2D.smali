.class Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
.super Ljava/lang/Object;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Vec2D"
.end annotation


# instance fields
.field private mDirtyLength:Z

.field private mLength:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2269
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    .line 2270
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    .line 2271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mDirtyLength:Z

    .line 2272
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "ex"    # I
    .param p4, "ey"    # I

    .prologue
    .line 2253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2254
    sub-int v0, p1, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    .line 2255
    sub-int v0, p2, p4

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    .line 2256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mDirtyLength:Z

    .line 2257
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "end"    # Landroid/graphics/Point;

    .prologue
    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    .line 2260
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    .line 2261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mDirtyLength:Z

    .line 2262
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/minimode/MiniModeService$Vec2D;Lcom/sec/android/app/minimode/MiniModeService$Vec2D;F)V
    .locals 3
    .param p1, "start"    # Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .param p2, "end"    # Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .param p3, "fraction"    # F

    .prologue
    .line 2263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2264
    iget v0, p1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    iget v1, p2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    iget v2, p1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    .line 2265
    iget v0, p1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    iget v1, p2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    iget v2, p1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    .line 2266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mDirtyLength:Z

    .line 2267
    return-void
.end method


# virtual methods
.method public getLength()F
    .locals 3

    .prologue
    .line 2274
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mDirtyLength:Z

    if-eqz v0, :cond_0

    .line 2275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mDirtyLength:Z

    .line 2276
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mLength:F

    .line 2278
    :cond_0
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->mLength:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vec2D( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
