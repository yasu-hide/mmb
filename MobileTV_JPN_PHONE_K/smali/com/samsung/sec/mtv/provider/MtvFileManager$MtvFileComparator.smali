.class Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileComparator;
.super Ljava/lang/Object;
.source "MtvFileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/provider/MtvFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtvFileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/sec/mtv/provider/MtvFile;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/provider/MtvFileManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/provider/MtvFileManager$1;

    .prologue
    .line 1615
    invoke-direct {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/sec/mtv/provider/MtvFile;Lcom/samsung/sec/mtv/provider/MtvFile;)I
    .locals 6
    .param p1, "obj1"    # Lcom/samsung/sec/mtv/provider/MtvFile;
    .param p2, "obj2"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    .line 1617
    move-object v0, p1

    .line 1618
    .local v0, "file1":Lcom/samsung/sec/mtv/provider/MtvFile;
    move-object v1, p2

    .line 1620
    .local v1, "file2":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1622
    :cond_0
    const-string v2, "MtvFileManager"

    const-string v3, "compare - null handling not supported - SERIOUS ERROR"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const/4 v2, 0x0

    .line 1626
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1615
    check-cast p1, Lcom/samsung/sec/mtv/provider/MtvFile;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/samsung/sec/mtv/provider/MtvFile;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileComparator;->compare(Lcom/samsung/sec/mtv/provider/MtvFile;Lcom/samsung/sec/mtv/provider/MtvFile;)I

    move-result v0

    return v0
.end method
