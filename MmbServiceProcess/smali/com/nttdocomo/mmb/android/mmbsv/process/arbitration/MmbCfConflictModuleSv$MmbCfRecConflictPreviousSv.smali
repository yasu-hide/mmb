.class public Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfRecConflictPreviousSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;
.source "MmbCfConflictModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbCfRecConflictPreviousSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V
    .locals 0

    .prologue
    .line 4946
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfRecConflictPreviousSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;-><init>()V

    return-void
.end method

.method private getRecCallbackList(I)Ljava/util/List;
    .locals 13
    .param p1, "aEvent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5006
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5008
    .local v3, "callbackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x4

    .line 5009
    .local v1, "CASE_CALLBACK_REC_OTHER_TS":I
    const/4 v2, 0x0

    .line 5010
    .local v2, "CASE_CALLBACK_REC_PLAY":I
    const/4 v6, 0x0

    .line 5012
    .local v6, "num":I
    sparse-switch p1, :sswitch_data_0

    .line 5020
    const-string v9, "Warning Not Support Event[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5055
    :cond_0
    return-object v3

    .line 5014
    :sswitch_0
    const/4 v6, 0x4

    .line 5028
    :goto_0
    const/4 v9, 0x5

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    .line 5035
    .local v0, "CALLBACKLIST":[I
    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5037
    .local v8, "tmpArray":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    const/4 v4, 0x0

    .line 5038
    .local v4, "cnt":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 5040
    .local v7, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    const/4 v4, 0x0

    .line 5042
    :cond_1
    iget v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    aget v10, v0, v4

    if-ne v9, v10, :cond_2

    .line 5043
    iget v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5045
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 5049
    if-le v4, v6, :cond_1

    goto :goto_1

    .line 5017
    .end local v0    # "CALLBACKLIST":[I
    .end local v4    # "cnt":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .end local v8    # "tmpArray":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    :sswitch_1
    const/4 v6, 0x0

    .line 5018
    goto :goto_0

    .line 5012
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 5028
    :array_0
    .array-data 4
        0xa91a
        0xa900
        0xad00
        0xa502
        0xa504
    .end array-data
.end method


# virtual methods
.method public executionConflict(II)I
    .locals 8
    .param p1, "aEvent"    # I
    .param p2, "aReturnValue"    # I

    .prologue
    .line 4966
    move v4, p2

    .line 4969
    .local v4, "ret":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfRecConflictPreviousSv;->getRecCallbackList(I)Ljava/util/List;

    move-result-object v0

    .line 4971
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;-><init>()V

    .line 4972
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;
    const/4 v2, 0x0

    .local v2, "cnt2":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "loop":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 4977
    const/4 v6, 0x2

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;->onFinishFunction(ILjava/lang/String;)V

    .line 4972
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4982
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfRecConflictPreviousSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1600(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Ljava/util/List;)V

    .line 4987
    return v4
.end method
