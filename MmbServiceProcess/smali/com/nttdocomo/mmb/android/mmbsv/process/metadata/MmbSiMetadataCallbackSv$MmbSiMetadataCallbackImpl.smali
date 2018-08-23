.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;
.super Ljava/lang/Object;
.source "MmbSiMetadataCallbackSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmbSiMetadataCallbackImpl"
.end annotation


# instance fields
.field protected callType:I

.field protected mItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;",
            ">;"
        }
    .end annotation
.end field

.field protected service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aCallType"    # I

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    .line 393
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->callType:I

    .line 397
    return-void
.end method

.method private cancelSequence(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;I)I
    .locals 4
    .param p1, "aItem"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .param p2, "aErrorCode"    # I

    .prologue
    .line 516
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    .line 519
    .local v0, "result":I
    packed-switch p2, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 523
    :pswitch_0
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->callType:I

    if-nez v2, :cond_1

    .line 524
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 544
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_1
    const/4 v2, 0x1

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->callType:I

    if-ne v2, v3, :cond_2

    .line 545
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 564
    .restart local v1    # "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 565
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x2

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->callType:I

    if-ne v2, v3, :cond_0

    .line 566
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 577
    .restart local v1    # "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)V
    .locals 8
    .param p1, "aCallType"    # I
    .param p2, "aStartTime"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aStateDate"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .param p6, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 439
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    monitor-enter v7

    .line 440
    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;-><init>(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)V

    .line 442
    .local v0, "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    invoke-interface {v1, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    monitor-exit v7

    .line 448
    return-void

    .line 443
    .end local v0    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 605
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 609
    .local v0, "b":Landroid/os/Binder;
    return-object v0
.end method

.method public onFinishFunctionCallback(I)V
    .locals 13
    .param p1, "aErrorCode"    # I

    .prologue
    const/4 v12, 0x2

    .line 631
    const/4 v5, 0x0

    .line 632
    .local v5, "itemAry":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    monitor-enter v10

    .line 633
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    invoke-interface {v9, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    move-object v5, v0

    .line 634
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    if-eqz v5, :cond_4

    .line 638
    move-object v1, v5

    .local v1, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v3, v1, v4

    .line 641
    .local v3, "i":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->cancelSequence(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;I)I

    move-result v7

    .line 644
    .local v7, "result":I
    sget-object v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 645
    iget-object v9, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 638
    .end local v7    # "result":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .end local v3    # "i":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 646
    .restart local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .restart local v3    # "i":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "result":I
    :cond_0
    :try_start_3
    sget-object v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v9

    if-eq v9, v7, :cond_1

    sget-object v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v9

    if-eq v9, v7, :cond_1

    sget-object v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_DB_THRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v9

    if-eq v9, v7, :cond_1

    sget-object v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v9

    if-ne v9, v7, :cond_2

    .line 650
    :cond_1
    iget-object v9, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 659
    .end local v7    # "result":I
    :catch_0
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 653
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "result":I
    :cond_2
    if-nez p1, :cond_3

    .line 654
    :try_start_4
    iget-object v9, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    goto :goto_1

    .line 656
    :cond_3
    iget-object v9, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 666
    .end local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .end local v3    # "i":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "result":I
    :cond_4
    iget v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->callType:I

    const v10, 0xa504

    if-ne v9, v10, :cond_5

    if-eqz v5, :cond_5

    array-length v9, v5

    if-lt v9, v12, :cond_5

    if-ne p1, v12, :cond_5

    .line 671
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->sortItemArray([Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V

    .line 673
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$4;

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/4 v11, 0x0

    aget-object v11, v5, v11

    iget-object v11, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->crid:Ljava/lang/String;

    invoke-direct {v9, p0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 689
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 695
    .end local v8    # "thread":Ljava/lang/Thread;
    :cond_5
    return-void
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 716
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 465
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 467
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->mItemMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    monitor-exit v2

    .line 473
    return v0

    .line 468
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 415
    return-void
.end method

.method protected sortItemArray([Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V
    .locals 1
    .param p1, "aItemAry"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .prologue
    .line 730
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$5;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method
