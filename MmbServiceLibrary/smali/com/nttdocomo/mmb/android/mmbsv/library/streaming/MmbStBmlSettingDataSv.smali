.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
.super Ljava/lang/Object;
.source "MmbStBmlSettingDataSv.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mmbIsDraw:Z

.field public mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
    .locals 2

    .prologue
    .line 73
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbStBmlSettingDataSv [mmbIsDraw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->mmbIsDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", mmbTvLinkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
