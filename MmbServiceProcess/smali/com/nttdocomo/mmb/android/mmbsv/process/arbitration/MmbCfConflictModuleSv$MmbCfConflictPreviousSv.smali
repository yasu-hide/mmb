.class public Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictPreviousSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;
.source "MmbCfConflictModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbCfConflictPreviousSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V
    .locals 0

    .prologue
    .line 4786
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictPreviousSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;-><init>()V

    return-void
.end method

.method private getCallbackList(I)Ljava/util/List;
    .locals 14
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
    .line 4848
    const/4 v1, 0x3

    .line 4849
    .local v1, "CALLBACK_ALL":I
    const/4 v3, 0x1

    .line 4850
    .local v3, "CALLBACK_META_ALL":I
    const/4 v2, 0x0

    .line 4852
    .local v2, "CALLBACK_META_A":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4854
    .local v4, "callbackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 4855
    .local v7, "num":I
    packed-switch p1, :pswitch_data_0

    .line 4869
    :pswitch_0
    const-string v10, "Warning Not Support Event[%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4903
    :cond_0
    return-object v4

    .line 4859
    :pswitch_1
    const/4 v7, 0x3

    .line 4877
    :goto_0
    const/4 v10, 0x4

    new-array v0, v10, [I

    fill-array-data v0, :array_0

    .line 4883
    .local v0, "CALLBACKLIST":[I
    new-instance v9, Ljava/util/ArrayList;

    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4885
    .local v9, "tmpArray":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    const/4 v5, 0x0

    .line 4886
    .local v5, "cnt":I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 4888
    .local v8, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    const/4 v5, 0x0

    .line 4890
    :cond_1
    iget v10, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    aget v11, v0, v5

    if-ne v10, v11, :cond_2

    .line 4891
    iget v10, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4893
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 4897
    if-le v5, v7, :cond_1

    goto :goto_1

    .line 4863
    .end local v0    # "CALLBACKLIST":[I
    .end local v5    # "cnt":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .end local v9    # "tmpArray":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    :pswitch_2
    const/4 v7, 0x1

    .line 4864
    goto :goto_0

    .line 4866
    :pswitch_3
    const/4 v7, 0x0

    .line 4867
    goto :goto_0

    .line 4855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 4877
    :array_0
    .array-data 4
        0xa502
        0xa504
        0xad00
        0xa900
    .end array-data
.end method


# virtual methods
.method public executionConflict(II)I
    .locals 7
    .param p1, "aEvent"    # I
    .param p2, "aReturnValue"    # I

    .prologue
    .line 4809
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictPreviousSv;->getCallbackList(I)Ljava/util/List;

    move-result-object v0

    .line 4811
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;-><init>()V

    .line 4812
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;
    const/4 v2, 0x0

    .local v2, "cnt2":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "loop":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 4817
    const/4 v5, 0x2

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;->onFinishFunction(ILjava/lang/String;)V

    .line 4812
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4822
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictPreviousSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1600(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Ljava/util/List;)V

    .line 4827
    return p2
.end method
