.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFwSignalHandlerSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    return-void
.end method


# virtual methods
.method protected getFlags()I
    .locals 1

    .prologue
    .line 1800
    const/16 v0, 0x22

    return v0
.end method

.method protected getIconId(I)I
    .locals 2
    .param p1, "aValue"    # I

    .prologue
    .line 1809
    packed-switch p1, :pswitch_data_0

    .line 1826
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 1811
    :pswitch_0
    const/high16 v0, 0x7f020000

    .line 1831
    .local v0, "result":I
    :goto_0
    return v0

    .line 1814
    .end local v0    # "result":I
    :pswitch_1
    const v0, 0x7f020001

    .line 1815
    .restart local v0    # "result":I
    goto :goto_0

    .line 1817
    .end local v0    # "result":I
    :pswitch_2
    const v0, 0x7f020002

    .line 1818
    .restart local v0    # "result":I
    goto :goto_0

    .line 1820
    .end local v0    # "result":I
    :pswitch_3
    const v0, 0x7f020003

    .line 1821
    .restart local v0    # "result":I
    goto :goto_0

    .line 1823
    .end local v0    # "result":I
    :pswitch_4
    const v0, 0x7f020004

    .line 1824
    .restart local v0    # "result":I
    goto :goto_0

    .line 1809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getText(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "aValue"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1870
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/high16 v6, 0x10000

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)I

    move-result v5

    shl-int v4, v7, v5

    .line 1871
    .local v4, "stBit":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const v6, 0x10002

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)I

    move-result v5

    shl-int v0, v7, v5

    .line 1872
    .local v0, "contentBit":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const v6, 0x10001

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)I

    move-result v5

    shl-int v1, v7, v5

    .line 1873
    .local v1, "metaBit":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const v6, 0x10003

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)I

    move-result v5

    shl-int v2, v7, v5

    .line 1875
    .local v2, "recBit":I
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->mShowBits:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 1877
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Ljava/lang/String;

    move-result-object v3

    .line 1893
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1878
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->mShowBits:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 1880
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1881
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->mShowBits:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_2

    .line 1883
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1884
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->mShowBits:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_3

    .line 1886
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1888
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aValue"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    .line 1848
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1849
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f04000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1853
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method
