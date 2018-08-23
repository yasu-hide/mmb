.class final Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;
.super Ljava/lang/Object;
.source "MmbStParentViewSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MmbStViewSettingInformationSv"
.end annotation


# instance fields
.field private mIndex:I

.field private mParams:Landroid/view/ViewGroup$LayoutParams;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;


# direct methods
.method private constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p2, "aChild"    # Landroid/view/View;
    .param p3, "aIndex"    # I
    .param p4, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->mView:Landroid/view/View;

    .line 1294
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->mIndex:I

    .line 1295
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->mParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1299
    return-void
.end method

.method synthetic constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/view/ViewGroup$LayoutParams;
    .param p5, "x4"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;

    .prologue
    .line 1258
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->mParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    .prologue
    .line 1258
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->mIndex:I

    return v0
.end method
