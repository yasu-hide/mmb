.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
.super Ljava/lang/Object;
.source "MmbStRecCmMwClient.java"


# static fields
.field private static final LIST_NUM_ZERO:I = 0x0

.field private static final MAX_COUNT_RETRY:I = 0x37

.field private static final MIN_NUM:I = 0x0

.field private static final SEPARATOR_URI:Ljava/lang/String; = "\t"

.field private static final SLEEP_TIME_RETRY:I = 0x32

.field public static idList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

.field private processId:I

.field sendLock:Ljava/lang/Object;

.field private socketName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "STRecCmClient"

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    invoke-direct {v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwClient() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getSokcetAdressStRecCmMw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    .line 96
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwClient() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private deleteClientId(I)V
    .locals 3
    .param p1, "aClientId"    # I

    .prologue
    .line 606
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "deleteClientId : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    sget-object v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    monitor-enter v1

    .line 609
    :try_start_0
    sget-object v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "deleteClientId : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .line 610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private formatMetadata(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .locals 9
    .param p1, "aMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 622
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "formatMetadata() -> START"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;-><init>()V

    .line 624
    .local v2, "result":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    move-object v2, p1

    .line 626
    iget-object v3, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    if-eqz v3, :cond_0

    .line 627
    invoke-direct {p0, p1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->splitKeyword(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)Ljava/util/ArrayList;

    move-result-object v1

    .line 628
    .local v1, "kerword_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    check-cast v3, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    .line 632
    .end local v1    # "kerword_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;>;"
    :cond_0
    iget-object v3, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    if-eqz v3, :cond_1

    .line 633
    invoke-direct {p0, p1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->splitGenre(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)Ljava/util/ArrayList;

    move-result-object v0

    .line 634
    .local v0, "genre_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    check-cast v3, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    .line 638
    .end local v0    # "genre_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;>;"
    :cond_1
    iget-object v3, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    .line 639
    iget-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iget-wide v4, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 640
    iget-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iput-wide v6, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    .line 641
    iget-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iput v8, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    .line 645
    :cond_2
    iget-object v3, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    .line 646
    iget-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iget v3, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    if-ge v3, v8, :cond_3

    .line 647
    iget-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iput v8, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    .line 648
    iget-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iput v8, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    .line 651
    :cond_3
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "formatMetadata() -> END"

    aput-object v7, v5, v6

    aput-object v2, v5, v8

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    return-object v2
.end method

.method private getClientId()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 567
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "getClientId : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v3, -0x1

    .line 569
    .local v3, "max_num":I
    const/4 v0, -0x1

    .line 571
    .local v0, "client_id":I
    sget-object v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    monitor-enter v5

    .line 573
    :try_start_0
    sget-object v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 574
    sget-object v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 575
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :goto_0
    return v4

    .line 579
    :cond_0
    :try_start_1
    sget-object v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 585
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 586
    :try_start_2
    sget-object v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 587
    move v0, v1

    .line 588
    sget-object v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    monitor-exit v5

    move v4, v0

    goto :goto_0

    .line 580
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/ClassCastException;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by get max index"

    invoke-virtual {v4, v6, v7, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    monitor-exit v5

    move v4, v0

    goto :goto_0

    .line 585
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 593
    sget-object v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->idList:Ljava/util/HashSet;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 594
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "getClientId : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    .line 597
    goto :goto_0

    .line 594
    .end local v1    # "count":I
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private getSokcetAdressStRecCmMw()Ljava/lang/String;
    .locals 7

    .prologue
    .line 538
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "getSokcetAdressStRecCmMw() : START"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    .line 542
    .local v0, "adress":Ljava/lang/String;
    new-instance v2, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 545
    .local v2, "moinfo":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    :try_start_0
    const-string v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getCommonDataPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "/streccm"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "/MMBSTRECCMMW_SOCKET"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 556
    :goto_0
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "getSokcetAdressStRecCmMw() : END"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-object v0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by get socket adress of NullPointerException"

    invoke-virtual {v3, v4, v5, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    const/4 v0, 0x0

    .line 554
    goto :goto_0

    .line 551
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 552
    .local v1, "e":Ljava/util/IllegalFormatException;
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by get socket adress of format socket name"

    invoke-virtual {v3, v4, v5, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private splitGenre(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "aMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v1, "genre_split":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 698
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 697
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 701
    :cond_1
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v5, v5, v3

    iget-object v5, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 703
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v5, v5, v3

    iget-object v5, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, "list_tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 706
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;-><init>()V

    .line 707
    .local v2, "genre_tmp":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;
    aget-object v5, v4, v0

    iput-object v5, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    .line 708
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v5, v5, v3

    iget v5, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    iput v5, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    .line 709
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 713
    .end local v0    # "count":I
    .end local v2    # "genre_tmp":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;
    .end local v4    # "list_tmp":[Ljava/lang/String;
    :cond_2
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 716
    :cond_3
    return-object v1
.end method

.method private splitKeyword(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "aMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v2, "keyword_split":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 667
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v5, v5, v1

    if-nez v5, :cond_1

    .line 666
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :cond_1
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v5, v5, v1

    iget-object v5, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 671
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v5, v5, v1

    iget-object v5, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "list_tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 673
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    invoke-direct {v3}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;-><init>()V

    .line 674
    .local v3, "keyword_tmp":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;
    aget-object v5, v4, v0

    iput-object v5, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    .line 675
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v5, v5, v1

    iget v5, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    iput v5, v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    .line 676
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 680
    .end local v0    # "count":I
    .end local v3    # "keyword_tmp":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;
    .end local v4    # "list_tmp":[Ljava/lang/String;
    :cond_2
    iget-object v5, p1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 683
    :cond_3
    return-object v2
.end method


# virtual methods
.method public deleteContents([I)V
    .locals 9
    .param p1, "aPrgNo"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 339
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "deleteContents() : START"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const/4 v1, -0x1

    .line 342
    .local v1, "result":I
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 343
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by SOCKET_NAME -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by SOCKET_NAME -> "

    invoke-direct {v3, v4, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 348
    :cond_0
    invoke-static {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPrgNoList([I)I

    move-result v1

    .line 349
    if-ne v1, v8, :cond_1

    .line 350
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by PrgNo list data"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by PrgNo list data"

    invoke-direct {v3, v4, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 354
    :cond_1
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v0

    .line 355
    .local v0, "deletid":I
    if-gez v0, :cond_2

    .line 356
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 357
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by clientId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by client id"

    invoke-direct {v3, v4, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 361
    :cond_2
    new-instance v2, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;

    iget v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v2, p1, v0, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;-><init>([III)V

    .line 362
    .local v2, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 363
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->sendCommand(Ljava/lang/String;)I

    move-result v1

    .line 365
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 369
    if-eqz v1, :cond_3

    .line 370
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCommand -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by sendCommand"

    invoke-direct {v3, v4, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 365
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 374
    :cond_3
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "deleteContents() : END"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public getContentsInfoDetail(I)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    .locals 12
    .param p1, "aPrgNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 226
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "getContentsInfoDetail() : START"

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const/4 v2, -0x1

    .line 228
    .local v2, "result":I
    const/4 v0, 0x0

    .line 230
    .local v0, "detail":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 231
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by SOCKET_NAME -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by SOCKET_NAME"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 236
    :cond_0
    invoke-static {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPrgNo(I)I

    move-result v2

    .line 237
    if-ne v2, v8, :cond_1

    .line 238
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by PrgNo data "

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by PrgNo data "

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 242
    :cond_1
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v1

    .line 243
    .local v1, "detailid":I
    if-gez v1, :cond_2

    .line 244
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 245
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by clientId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by get client id"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 249
    :cond_2
    new-instance v3, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;

    iget v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v3, p1, v1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;-><init>(III)V

    .line 250
    .local v3, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v5

    .line 251
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->sendCommand(Ljava/lang/String;)I

    move-result v2

    .line 252
    if-eqz v2, :cond_3

    .line 253
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by sendCommand"

    invoke-virtual {v4, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 255
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by sendCommand"

    invoke-direct {v4, v6, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 258
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 257
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->getInfoDetail()Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    move-result-object v0

    .line 258
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 262
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "getContentsInfoDetail() : END"

    aput-object v7, v6, v9

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    return-object v0
.end method

.method public getContentsInfoDetailList([ILmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    .locals 12
    .param p1, "aPrgNo"    # [I
    .param p2, "aSort"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 278
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "getContentsInfoDetailList() : START"

    aput-object v7, v6, v9

    aput-object p1, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const/4 v2, -0x1

    .line 280
    .local v2, "result":I
    const/4 v0, 0x0

    .line 282
    .local v0, "detaillist":[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 283
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by SOCKET_NAME -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by SOCKET_NAME"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    .line 289
    array-length v4, p1

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_1

    .line 290
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by PrgNo length"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by PrgNo length "

    const/16 v6, -0x65

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 294
    :cond_1
    invoke-static {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPrgNoList([I)I

    move-result v2

    .line 295
    if-ne v2, v8, :cond_2

    .line 296
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by PrgNo data "

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by PrgNo data "

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 300
    :cond_2
    invoke-static {p2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkSort(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)I

    move-result v2

    .line 301
    if-ne v2, v8, :cond_3

    .line 302
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sort data"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by sort data"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 306
    :cond_3
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v1

    .line 307
    .local v1, "detaillistid":I
    if-gez v1, :cond_4

    .line 308
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 309
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by clientId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by get client id"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 313
    :cond_4
    new-instance v3, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;

    iget v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v3, p1, p2, v1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;-><init>([ILmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;II)V

    .line 314
    .local v3, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v5

    .line 315
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sendCommand(Ljava/lang/String;)I

    move-result v2

    .line 316
    if-eqz v2, :cond_5

    .line 317
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by sendCommand"

    invoke-virtual {v4, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 319
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by sendCommand"

    invoke-direct {v4, v6, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 322
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 321
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->getInfoDetailList()[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    move-result-object v0

    .line 322
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 326
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "getContentsInfoDetailList() : END"

    aput-object v7, v6, v9

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    return-object v0
.end method

.method public getContentsInfoList(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    .locals 11
    .param p1, "aSort"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "getContentsInfoList() : START"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const/4 v4, -0x1

    .line 160
    .local v4, "result":I
    const/4 v2, 0x0

    .line 162
    .local v2, "list":[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 163
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "false by SOCKET_NAME -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v7, "false by SOCKET_NAME"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 168
    :cond_0
    invoke-static {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkSort(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)I

    move-result v4

    .line 169
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 170
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by sort data"

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v7, "false by sort data"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 174
    :cond_1
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v3

    .line 175
    .local v3, "listid":I
    if-gez v3, :cond_2

    .line 176
    invoke-direct {p0, v3}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 177
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "false by clientId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v7, "false by get client id"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 181
    :cond_2
    new-instance v5, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;

    iget v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v5, p1, v3, v6}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;-><init>(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;II)V

    .line 183
    .local v5, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    const/16 v6, 0x37

    if-ge v0, v6, :cond_5

    .line 185
    iget-object v7, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v7

    .line 186
    :try_start_0
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->sendCommand(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 188
    const/4 v6, -0x8

    if-ne v4, v6, :cond_3

    const/16 v6, 0x36

    if-ge v0, v6, :cond_3

    .line 191
    const-wide/16 v8, 0x32

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    monitor-exit v7

    .line 183
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v8, "STRecCmClient"

    const-string v9, "false by thread sleep"

    invoke-virtual {v6, v8, v9, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    monitor-exit v7

    goto :goto_1

    .line 207
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 198
    :cond_3
    if-eqz v4, :cond_4

    const/4 v6, -0x8

    if-eq v4, v6, :cond_4

    .line 200
    :try_start_3
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v8, "STRecCmClient"

    const-string v9, "false by sendCommand"

    invoke-virtual {v6, v8, v9}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v3}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 202
    new-instance v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v8, "false by sendCommand"

    invoke-direct {v6, v8, v4}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 205
    :cond_4
    invoke-virtual {v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->getInfoList()[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    move-result-object v2

    .line 206
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    :cond_5
    invoke-direct {p0, v3}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 212
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "getContentsInfoList() : END"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return-object v2
.end method

.method public getContentsInfoThumbnail(I)[B
    .locals 9
    .param p1, "aPrgNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 426
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "getContentsInfoThumbnail() : START"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v1, -0x1

    .line 428
    .local v1, "result":I
    const/4 v3, 0x0

    .line 429
    .local v3, "thumbnail":[B
    const/4 v0, 0x0

    .line 430
    .local v0, "getthumbid":I
    const/4 v2, 0x0

    .line 433
    .local v2, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;
    invoke-static {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPrgNo(I)I

    move-result v1

    .line 434
    if-eqz v1, :cond_0

    .line 435
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by check parameter"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by check parameter"

    invoke-direct {v4, v5, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 440
    :cond_0
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v0

    .line 441
    if-gez v0, :cond_1

    .line 442
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by client id"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by client id"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 447
    :cond_1
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 448
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 449
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by SOCKET_NAME -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by SOCKET_NAME -> "

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 454
    :cond_2
    new-instance v2, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;

    .end local v2    # "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;
    iget v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v2, p1, v0, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;-><init>(III)V

    .line 457
    .restart local v2    # "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v5

    .line 458
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->sendCommand(Ljava/lang/String;)I

    move-result v1

    .line 460
    if-eqz v1, :cond_4

    .line 462
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 463
    const/4 v4, -0x5

    if-ne v1, v4, :cond_3

    .line 464
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "false by sendCommand : ERROR CODE -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_0
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by sendCommand"

    invoke-direct {v4, v6, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 472
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 467
    :cond_3
    :try_start_1
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "false by sendCommand : ERROR CODE -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_4
    invoke-virtual {v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->getThumbnail()[B

    move-result-object v3

    .line 472
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 477
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "getContentsInfoThumbnail() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-object v3
.end method

.method public setContentsInfoMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)V
    .locals 10
    .param p1, "aMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 107
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "setContentsInfoMeta() : START"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/4 v2, -0x1

    .line 110
    .local v2, "result":I
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 111
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by SOCKET_NAME -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by false by SOCKET_NAME"

    invoke-direct {v4, v5, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->formatMetadata(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    move-result-object v0

    .line 119
    .local v0, "meta":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    invoke-static {v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)I

    move-result v2

    .line 120
    if-ne v2, v9, :cond_1

    .line 121
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by meta data"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by meta data"

    invoke-direct {v4, v5, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 125
    :cond_1
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v1

    .line 126
    .local v1, "metaid":I
    if-gez v1, :cond_2

    .line 127
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 128
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by clientId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by cliend id"

    invoke-direct {v4, v5, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 133
    :cond_2
    new-instance v3, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;

    iget v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v3, v0, v1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;-><init>(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;II)V

    .line 134
    .local v3, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v5

    .line 135
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->sendCommand(Ljava/lang/String;)I

    move-result v2

    .line 136
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 140
    if-eqz v2, :cond_3

    .line 141
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sendCommand"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by sendCommand"

    invoke-direct {v4, v5, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 136
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 145
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "setContentsInfoMeta() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public setContentsInfoThumbnail(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;)V
    .locals 8
    .param p1, "aSetThumbnail"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 488
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "setContentsInfoThumbnail() : START"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v0, -0x1

    .line 490
    .local v0, "result":I
    const/4 v2, 0x0

    .line 491
    .local v2, "setthumbid":I
    const/4 v1, 0x0

    .line 494
    .local v1, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;
    invoke-static {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkThumbnail(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;)I

    move-result v0

    .line 495
    if-eqz v0, :cond_0

    .line 496
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by check data"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by check data"

    invoke-direct {v3, v4, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 501
    :cond_0
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v2

    .line 502
    if-gez v2, :cond_1

    .line 503
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by client id"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by client id"

    invoke-direct {v3, v4, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 508
    :cond_1
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 509
    invoke-direct {p0, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 510
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by SOCKET_NAME -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by SOCKET_NAME -> "

    invoke-direct {v3, v4, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 515
    :cond_2
    new-instance v1, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;

    .end local v1    # "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;
    iget v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v1, p1, v2, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;-><init>(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;II)V

    .line 516
    .restart local v1    # "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 517
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->sendCommand(Ljava/lang/String;)I

    move-result v0

    .line 519
    if-eqz v0, :cond_3

    .line 520
    invoke-direct {p0, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 521
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by sendCommand : ERROR CODE ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by sendCommand"

    invoke-direct {v3, v5, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 524
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-direct {p0, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 529
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "setContentsInfoThumbnail() : END"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public setSdMountState(I)V
    .locals 9
    .param p1, "aMountState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 383
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "setSdMountState() : START"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    const/4 v1, -0x1

    .line 386
    .local v1, "result":I
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 387
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by SOCKET_NAME -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by SOCKET_NAME -> "

    invoke-direct {v3, v4, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 392
    :cond_0
    invoke-static {p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkMountState(I)I

    move-result v1

    .line 393
    if-ne v1, v8, :cond_1

    .line 394
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by mount state data "

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by mount state data"

    invoke-direct {v3, v4, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 398
    :cond_1
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getClientId()I

    move-result v0

    .line 399
    .local v0, "mouontid":I
    if-gez v0, :cond_2

    .line 400
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 401
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by clientId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by client id"

    invoke-direct {v3, v4, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 405
    :cond_2
    new-instance v2, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;

    iget v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->processId:I

    invoke-direct {v2, p1, v0, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;-><init>(III)V

    .line 406
    .local v2, "sender":Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 407
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->socketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->sendCommand(Ljava/lang/String;)I

    move-result v1

    .line 408
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-direct {p0, v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteClientId(I)V

    .line 412
    if-eqz v1, :cond_3

    .line 413
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by sendCommand()"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "false by sendCommand()"

    invoke-direct {v3, v4, v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 408
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 417
    :cond_3
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "setSdMountState() : END"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method
