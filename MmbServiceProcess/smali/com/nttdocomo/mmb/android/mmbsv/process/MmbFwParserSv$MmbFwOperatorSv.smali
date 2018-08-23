.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
.source "MmbFwParserSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwOperatorSv"
.end annotation


# instance fields
.field protected mCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

.field protected mExpression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

.field protected mOperands:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 2
    .param p1, "aKind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "aOperands":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;>;"
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;-><init>(I)V

    .line 204
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    .line 205
    .local v0, "array":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;->mOperands:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    .line 207
    return-void
.end method

.method varargs constructor <init>(I[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;)V
    .locals 0
    .param p1, "aKind"    # I
    .param p2, "aOperands"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;-><init>(I)V

    .line 221
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;->mOperands:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    .line 222
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;->mOperands:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
