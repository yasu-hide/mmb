.class public Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiStationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StationDataAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mCountText:Landroid/widget/TextView;

.field private mNameText:Landroid/widget/TextView;

.field private mTitleName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "objects"    # [Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 79
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mTitleName:[Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    move-object v0, p2

    .line 85
    .local v0, "stationDataView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 87
    .local v2, "vi":Landroid/view/LayoutInflater;
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .end local v2    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mTitleName:[Ljava/lang/String;

    aget-object v1, v3, p1

    .line 90
    .local v1, "temp":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->deleteStationData_GetNetworkItemCount(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mCount:I

    .line 92
    const v3, 0x7f0a005c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mNameText:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f0a005d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mCountText:Landroid/widget/TextView;

    .line 95
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mCountText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-object v0
.end method
