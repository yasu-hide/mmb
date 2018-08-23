.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
.super Ljava/lang/Object;
.source "MmbFwParserSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwNodeSv"
.end annotation


# instance fields
.field protected mKind:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "aKind"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;->mKind:I

    .line 62
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->VALUES:[Ljava/lang/String;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;->mKind:I

    aget-object v0, v0, v1

    return-object v0
.end method
