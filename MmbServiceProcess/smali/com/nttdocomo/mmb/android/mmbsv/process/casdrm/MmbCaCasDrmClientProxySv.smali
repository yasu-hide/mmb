.class final Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientProxySv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmMwClientListenerImpl;
    }
.end annotation


# static fields
.field public static final LISTENER_IMPL:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmMwClientListenerImpl;

.field public static final LOCK_EMM:Ljava/util/concurrent/locks/Lock;

.field private static final LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

.field public static final POLL_TYPE:Ljava/util/concurrent/TimeUnit;

.field public static final QUEUE_COMPLETE_CREATE_KL:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUEUE_COMPLETE_UPDATE_EMM:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;",
            ">;"
        }
    .end annotation
.end field

.field private static mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->POLL_TYPE:Ljava/util/concurrent/TimeUnit;

    .line 63
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->QUEUE_COMPLETE_CREATE_KL:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 67
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->QUEUE_COMPLETE_UPDATE_EMM:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 71
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_EMM:Ljava/util/concurrent/locks/Lock;

    .line 74
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    .line 77
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmMwClientListenerImpl;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmMwClientListenerImpl;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LISTENER_IMPL:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmMwClientListenerImpl;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    return-void
.end method

.method static synthetic access$000()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    return-object v0
.end method

.method public static checkCasResType(I)I
    .locals 6
    .param p0, "aCasResType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1588
    sparse-switch p0, :sswitch_data_0

    .line 1682
    const/high16 v0, -0x80000000

    .line 1683
    .local v0, "result":I
    const-string v1, "Unknown response type. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1689
    :goto_0
    return v0

    .line 1590
    .end local v0    # "result":I
    :sswitch_0
    const/4 v0, -0x1

    .line 1591
    .restart local v0    # "result":I
    const-string v1, "Argument error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1594
    .end local v0    # "result":I
    :sswitch_1
    const/4 v0, -0x2

    .line 1595
    .restart local v0    # "result":I
    const-string v1, "Memory error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1598
    .end local v0    # "result":I
    :sswitch_2
    const/4 v0, -0x3

    .line 1599
    .restart local v0    # "result":I
    const-string v1, "File IO error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1602
    .end local v0    # "result":I
    :sswitch_3
    const/4 v0, -0x4

    .line 1603
    .restart local v0    # "result":I
    const-string v1, "Failed secure connect to keymgr. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1606
    .end local v0    # "result":I
    :sswitch_4
    const/4 v0, -0x5

    .line 1607
    .restart local v0    # "result":I
    const-string v1, "CAS/DRM function is not supported. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1610
    .end local v0    # "result":I
    :sswitch_5
    const/4 v0, -0x6

    .line 1611
    .restart local v0    # "result":I
    const-string v1, "CAS client ID has changed. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1614
    .end local v0    # "result":I
    :sswitch_6
    const/4 v0, -0x7

    .line 1615
    .restart local v0    # "result":I
    const-string v1, "Not executed initial setting. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1618
    .end local v0    # "result":I
    :sswitch_7
    const/4 v0, -0x8

    .line 1619
    .restart local v0    # "result":I
    const-string v1, "Not found. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1622
    .end local v0    # "result":I
    :sswitch_8
    const/16 v0, -0x9

    .line 1623
    .restart local v0    # "result":I
    const-string v1, "In use. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1626
    .end local v0    # "result":I
    :sswitch_9
    const/16 v0, -0xa

    .line 1627
    .restart local v0    # "result":I
    const-string v1, "Maximum number excess. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1630
    .end local v0    # "result":I
    :sswitch_a
    const/16 v0, -0xb

    .line 1631
    .restart local v0    # "result":I
    const-string v1, "Valid license already exists. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1634
    .end local v0    # "result":I
    :sswitch_b
    const/16 v0, -0xc

    .line 1635
    .restart local v0    # "result":I
    const-string v1, "Receiver ID check error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1638
    .end local v0    # "result":I
    :sswitch_c
    const/16 v0, -0xd

    .line 1639
    .restart local v0    # "result":I
    const-string v1, "CAS client ID check error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1642
    .end local v0    # "result":I
    :sswitch_d
    const/16 v0, -0xe

    .line 1643
    .restart local v0    # "result":I
    const-string v1, "CRID Check error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1646
    .end local v0    # "result":I
    :sswitch_e
    const/16 v0, -0xf

    .line 1647
    .restart local v0    # "result":I
    const-string v1, "Message ID check error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1650
    .end local v0    # "result":I
    :sswitch_f
    const/16 v0, -0x10

    .line 1651
    .restart local v0    # "result":I
    const-string v1, "Entity ID check error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1654
    .end local v0    # "result":I
    :sswitch_10
    const/16 v0, -0x11

    .line 1655
    .restart local v0    # "result":I
    const-string v1, "Card ID check error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1658
    .end local v0    # "result":I
    :sswitch_11
    const/16 v0, -0x12

    .line 1659
    .restart local v0    # "result":I
    const-string v1, "Detected falsification. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1662
    .end local v0    # "result":I
    :sswitch_12
    const/16 v0, -0x13

    .line 1663
    .restart local v0    # "result":I
    const-string v1, "Couldn\'t delete part. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1666
    .end local v0    # "result":I
    :sswitch_13
    const/16 v0, -0x14

    .line 1667
    .restart local v0    # "result":I
    const-string v1, "No UIM. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1670
    .end local v0    # "result":I
    :sswitch_14
    const/high16 v0, -0x1000000

    .line 1671
    .restart local v0    # "result":I
    const-string v1, "Secure clock error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1674
    .end local v0    # "result":I
    :sswitch_15
    const/high16 v0, -0x80000000

    .line 1675
    .restart local v0    # "result":I
    const-string v1, "Unknown error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1678
    .end local v0    # "result":I
    :sswitch_16
    const/16 v0, -0x17

    .line 1679
    .restart local v0    # "result":I
    const-string v1, "Not executed initial setting and Secure clock error. (Mw<%d>, Sv<%d>)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1588
    nop

    :sswitch_data_0
    .sparse-switch
        -0x79 -> :sswitch_16
        -0x77 -> :sswitch_14
        -0x76 -> :sswitch_13
        -0x75 -> :sswitch_12
        -0x72 -> :sswitch_11
        -0x71 -> :sswitch_10
        -0x70 -> :sswitch_f
        -0x6f -> :sswitch_e
        -0x6e -> :sswitch_d
        -0x6d -> :sswitch_c
        -0x6c -> :sswitch_b
        -0x6b -> :sswitch_a
        -0x6a -> :sswitch_9
        -0x69 -> :sswitch_8
        -0x68 -> :sswitch_7
        -0x67 -> :sswitch_6
        -0x66 -> :sswitch_5
        -0x65 -> :sswitch_4
        -0x64 -> :sswitch_3
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_15
    .end sparse-switch
.end method

.method public static checkCompletedInitSetting()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 315
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 320
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->checkCompletedInitSetting()V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 342
    return-void

    .line 324
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 333
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 334
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 335
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static checkSupportCasFunction()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 265
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 270
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->checkSupportCasFunction()V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 292
    return-void

    .line 274
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 283
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 284
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 285
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static clearClient()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    .line 148
    return-void
.end method

.method public static createKl()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 361
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 366
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->createKl()V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-void

    .line 370
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 378
    .local v0, "casrestype":I
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 379
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 380
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 381
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
.end method

.method public static deleteAccumulatedCrId([B)V
    .locals 6
    .param p0, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1189
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1206
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->deleteAccumulatedCrId([B)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1230
    return-void

    .line 1212
    :catch_0
    move-exception v1

    .line 1216
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1221
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1222
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1223
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static deleteAllLicenseInfo(B[B)V
    .locals 6
    .param p0, "aEntityId"    # B
    .param p1, "aAuthority"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 956
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 961
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->deleteAllLicenseInfo(B[B)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 983
    return-void

    .line 965
    :catch_0
    move-exception v1

    .line 969
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 974
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 975
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 976
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static deleteInvalidLicenseInfo(BLjava/util/Date;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "aEntityId"    # B
    .param p1, "aDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1014
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1019
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5, p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->deleteInvalidLicenseInfo(BLjava/util/Date;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1036
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;>;"
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1041
    return-object v4

    .line 1023
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;>;"
    :catch_0
    move-exception v1

    .line 1027
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1032
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1033
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1034
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1036
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static deleteLicenseInfo(B[B)V
    .locals 6
    .param p0, "aEntityId"    # B
    .param p1, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 899
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 904
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->deleteLicenseInfo(B[B)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 926
    return-void

    .line 908
    :catch_0
    move-exception v1

    .line 912
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 917
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 918
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 919
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 921
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static deleteManagementInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1249
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1254
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->deleteManagementInfo()V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1276
    return-void

    .line 1258
    :catch_0
    move-exception v1

    .line 1262
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1267
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1268
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1269
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static getAccumulatedCrIdCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1067
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1072
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->getAccumulatedCrIdCount()I
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1089
    .local v4, "result":I
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1094
    return v4

    .line 1076
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1085
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1086
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1087
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static getCaSystemId()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1304
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1309
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->getCaSystemId()I
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1326
    .local v4, "result":I
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1331
    return v4

    .line 1313
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 1317
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1322
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1323
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1324
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1326
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static getLicenseCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 626
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 631
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->getLicenseCount()I
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 648
    .local v4, "result":I
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 653
    return v4

    .line 635
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 644
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 645
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 646
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    .locals 7
    .param p0, "aEntityId"    # B
    .param p1, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 684
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 689
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5, p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 706
    .local v4, "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 712
    return-object v4

    .line 693
    .end local v4    # "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 702
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 703
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 704
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static getRequestEmmInfo()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 467
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 472
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->getRequestEmmInfo()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 489
    .local v4, "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 495
    return-object v4

    .line 476
    .end local v4    # "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 485
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 486
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 487
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static getRequestLicenseInfo([B[B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    .locals 7
    .param p0, "aCrId"    # [B
    .param p1, "aAreaCode"    # [B
    .param p2, "aMsgId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 746
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 784
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5, p0, p1, p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->getRequestLicenseInfo([B[B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 803
    .local v4, "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 809
    return-object v4

    .line 790
    .end local v4    # "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 799
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 800
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 801
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .locals 7
    .param p0, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 572
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 577
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 594
    .local v4, "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 600
    return-object v4

    .line 581
    .end local v4    # "result":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 590
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 591
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 592
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;)V
    .locals 6
    .param p0, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 174
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 196
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 187
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 188
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 189
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static initializeUseFlg()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1357
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1362
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->initializeUseFlg()V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1384
    return-void

    .line 1366
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1375
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1376
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1377
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static newClient()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientFactory;->newClient()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    .line 118
    return-void
.end method

.method public static registerAccumulatedCrId([B)V
    .locals 6
    .param p0, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1121
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1138
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->registerAccumulatedCrId([B)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1162
    return-void

    .line 1144
    :catch_0
    move-exception v1

    .line 1148
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1153
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1154
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1155
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static registerKl([BLjava/util/ArrayList;)V
    .locals 6
    .param p0, "aReceiverId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "aCryptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 419
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->registerKl([BLjava/util/ArrayList;)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 441
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 432
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 433
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 434
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static registerLicense(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;)V
    .locals 6
    .param p0, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 842
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 847
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->registerLicense(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 869
    return-void

    .line 851
    :catch_0
    move-exception v1

    .line 855
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 860
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 861
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 862
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static searchAccumulatedCrId([B)Z
    .locals 7
    .param p0, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1539
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1544
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v5, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->searchAccumulatedCrId([B)Z
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1561
    .local v4, "result":Z
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1566
    return v4

    .line 1548
    .end local v4    # "result":Z
    :catch_0
    move-exception v1

    .line 1552
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1557
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1558
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1559
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1561
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v5
.end method

.method public static secureAccess(Z)V
    .locals 6
    .param p0, "aOnOff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1408
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 1413
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->secureAccess(Z)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1435
    return-void

    .line 1417
    :catch_0
    move-exception v1

    .line 1421
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 1426
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 1427
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1428
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    .end local v0    # "casrestype":I
    .end local v1    # "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static uninitialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 220
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->uninitialize()V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 242
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    :try_start_1
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 233
    .local v0, "casrestype":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 234
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 235
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v0    # "casrestype":I
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "restype":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v4
.end method

.method public static updateEmm(B[B)V
    .locals 5
    .param p0, "aEntityId"    # B
    .param p1, "aEmmData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->lock()V

    .line 524
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->mwClient:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;

    invoke-interface {v4, p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;->updateEmm(B[B)V
    :try_end_0
    .catch Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    return-void

    .line 528
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->getCasResType()I

    move-result v0

    .line 536
    .local v0, "casrestype":I
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->LOCK_PROXY:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 537
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v3

    .line 538
    .local v3, "restype":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    invoke-direct {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 539
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v2
.end method

.method public static waitCreateKl()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1453
    const/4 v2, 0x0

    .line 1458
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->QUEUE_COMPLETE_CREATE_KL:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    return-object v2

    .line 1459
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v3, -0x80000000

    const-string v4, "Interrupted."

    invoke-direct {v1, v3, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1463
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1464
    throw v1
.end method

.method public static waitUpdateEmm()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1488
    const/4 v2, 0x0

    .line 1493
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->QUEUE_COMPLETE_UPDATE_EMM:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    return-object v2

    .line 1494
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v3, -0x80000000

    const-string v4, "Interrupted."

    invoke-direct {v1, v3, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1498
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    throw v1
.end method
