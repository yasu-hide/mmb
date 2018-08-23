.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;
.super Ljava/lang/Object;
.source "MmbFcMetaEventListenerSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;


# instance fields
.field private mCrid:Ljava/lang/String;

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 38
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mCrid:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 54
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mCrid:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public onAcquireNotice()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mCrid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->executeTaskReschedule(Ljava/lang/String;)V

    goto :goto_0
.end method
