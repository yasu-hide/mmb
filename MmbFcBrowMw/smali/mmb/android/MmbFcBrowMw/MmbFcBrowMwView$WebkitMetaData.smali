.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebkitMetaData"
.end annotation


# instance fields
.field private bitmapHeight:I

.field private bitmapWidth:I

.field private duration:I

.field private initbitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4421
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4422
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->duration:I

    .line 4423
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->bitmapWidth:I

    .line 4424
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->bitmapHeight:I

    .line 4425
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->initbitmap:Landroid/graphics/Bitmap;

    .line 4426
    return-void
.end method

.method static synthetic access$402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;
    .param p1, "x1"    # I

    .prologue
    .line 4415
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->duration:I

    return p1
.end method

.method static synthetic access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    .prologue
    .line 4415
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->bitmapHeight:I

    return v0
.end method

.method static synthetic access$502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;
    .param p1, "x1"    # I

    .prologue
    .line 4415
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->bitmapHeight:I

    return p1
.end method

.method static synthetic access$600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    .prologue
    .line 4415
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->bitmapWidth:I

    return v0
.end method

.method static synthetic access$602(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;
    .param p1, "x1"    # I

    .prologue
    .line 4415
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->bitmapWidth:I

    return p1
.end method

.method static synthetic access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    .prologue
    .line 4415
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->initbitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4415
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->initbitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
