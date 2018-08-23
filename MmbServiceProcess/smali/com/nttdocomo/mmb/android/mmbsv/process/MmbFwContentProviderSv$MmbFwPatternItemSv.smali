.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;
.super Ljava/lang/Object;
.source "MmbFwContentProviderSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwPatternItemSv"
.end annotation


# instance fields
.field mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mIndex:I

.field mKeyword:Ljava/lang/String;

.field mType:I

.field mUri:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aKeyword"    # Ljava/lang/String;
    .param p3, "aIndex"    # I
    .param p4, "aUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p5, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mType:I

    .line 319
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mKeyword:Ljava/lang/String;

    .line 320
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mIndex:I

    .line 321
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mUri:Ljava/lang/String;

    .line 322
    iput-object p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mClass:Ljava/lang/Class;

    .line 326
    return-void
.end method


# virtual methods
.method newInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 342
    const/4 v2, 0x0

    .line 344
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv$MmbFwPatternItemSv;->mClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    :goto_0
    return-object v2

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v3, "exception %s : %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "exception %s : %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
