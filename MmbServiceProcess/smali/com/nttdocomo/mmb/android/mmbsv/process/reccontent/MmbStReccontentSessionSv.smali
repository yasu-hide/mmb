.class public Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbStReccontentSessionSv.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method


# virtual methods
.method public checkRecOverlapSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->checkRecOverlapSchedule(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public deleteRecContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 2
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "aPrgNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->deleteRecContents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public deleteRecSchedule(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->deleteRecSchedule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "ret":I
    return v0
.end method

.method public reserveRec(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->reserveRec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "ret":I
    return v0
.end method

.method public startExportRecThumbnail(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    .locals 2
    .param p1, "aPrgNo"    # I
    .param p2, "aUri"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->startExportRecThumbnail(ILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    move-result-object v0

    .line 215
    .local v0, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    return-object v0
.end method
