.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;
.super Ljava/lang/Object;
.source "MmbStRecordingMetaEventListenerSv.java"

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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 35
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mCrid:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 51
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mCrid:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public onAcquireNotice()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mCrid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->executeTaskReschedule(Ljava/lang/String;)V

    goto :goto_0
.end method
