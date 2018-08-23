.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;
.super Ljava/lang/Object;
.source "MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mmbPosition:I

.field public mmbVerticalRatio:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;
    .locals 2

    .prologue
    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 89
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
    .line 27
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->clone()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv [mmbPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", mmbVerticalRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
