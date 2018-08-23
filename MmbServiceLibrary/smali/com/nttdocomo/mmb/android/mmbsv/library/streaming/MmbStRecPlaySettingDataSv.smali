.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
.super Ljava/lang/Object;
.source "MmbStRecPlaySettingDataSv.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mmbIsBmlDraw:Z

.field public mmbPrgNoSetting:I

.field public mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

.field public mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
    .locals 2

    .prologue
    .line 91
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    .line 102
    .local v1, "exception":Ljava/lang/CloneNotSupportedException;
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
    .line 28
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbStRecPlaySettingDataSv [mmbPrgNoSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbPrgNoSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", mmbSubtitleLibrarySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", mmbSuperimposeLibrarySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", mmbIsBmlDraw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbIsBmlDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
