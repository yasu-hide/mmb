.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MtvMiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    return-void
.end method

.method private resizeSurface(F)V
    .locals 7
    .param p1, "mScaleFactor"    # F

    .prologue
    .line 199
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F

    move-result v4

    mul-float v3, v4, p1

    .line 200
    .local v3, "tempScaleFactor":F
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$800()F

    move-result v4

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$900()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 201
    .local v2, "tempScale":F
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1100()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1002(I)I

    .line 202
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1300()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1202(I)I

    .line 204
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tempScale:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tempScaleFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "surface width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " surfaceHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " surfaceHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1300()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scaledWidth"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1000()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scaledHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1200()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pivotX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getPivotX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pivotY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getPivotY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After Resize width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1000()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " surfaceHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1200()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1000()I

    move-result v4

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1100()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1200()I

    move-result v4

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1300()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 213
    :cond_0
    const-string v4, "MtvMiniModeService"

    const-string v5, "Can\'t Decrease size below default values, So resetting to deafult again.!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1100()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1002(I)I

    .line 215
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1300()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1202(I)I

    .line 222
    :goto_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 223
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before changing attributes lp.x["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] lp.y["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] lp.width["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] lp.height["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$500()I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 225
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$600()I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 226
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1000()I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 227
    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1200()I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 228
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new attributes for surface lp.x["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] lp.y["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] lp.width["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] lp.height["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1000()I

    move-result v4

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1200()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v1, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v4, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 232
    return-void

    .line 219
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const-string v4, "MtvMiniModeService"

    const-string v5, "Good with new size. You can render!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const v2, 0x3fa66666    # 1.3f

    .line 155
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$002(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F

    .line 156
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$032(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F

    .line 160
    :goto_0
    const-string v0, "MtvMiniModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScale() getScaleFactor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->resizeSurface(F)V

    .line 162
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$040(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$102(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z

    .line 169
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$302(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z

    .line 171
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$502(I)I

    .line 176
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$602(I)I

    .line 178
    const-string v1, "MtvMiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScaleBegin pivotX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pivotY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$600()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 185
    .local v0, "endScaleFactor":F
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScaleEnd endScaleFactor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F

    move-result v2

    mul-float v1, v2, v0

    .line 187
    .local v1, "tempScaleFactor":F
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$800()F

    move-result v3

    invoke-static {}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$900()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$702(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F

    .line 188
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScaleEnd tempScaleFactor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentScale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$300(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2, v5}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$302(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z

    .line 191
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 195
    return-void
.end method
