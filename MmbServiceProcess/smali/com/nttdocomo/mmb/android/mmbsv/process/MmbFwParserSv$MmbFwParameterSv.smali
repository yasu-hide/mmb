.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
.source "MmbFwParserSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwParameterSv"
.end annotation


# instance fields
.field protected mString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;-><init>(I)V

    .line 147
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;->mString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;->mString:Ljava/lang/String;

    .line 164
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
