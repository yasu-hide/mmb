.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;
.super Ljava/lang/Object;
.source "MmbStRecordingConflictCallbackSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;


# instance fields
.field private mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V
    .locals 2
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .line 43
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 93
    .local v0, "b":Landroid/os/Binder;
    return-object v0
.end method

.method public onFinishFunctionCallback(I)V
    .locals 2
    .param p1, "aErrorCode"    # I

    .prologue
    .line 116
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_0
    return-void
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 162
    return-void
.end method
