.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwWordSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
.source "MmbFwParserSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwWordSv"
.end annotation


# instance fields
.field protected mWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aWord"    # Ljava/lang/String;

    .prologue
    .line 103
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;-><init>(I)V

    .line 104
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwWordSv;->mWord:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwWordSv;->mWord:Ljava/lang/String;

    return-object v0
.end method
