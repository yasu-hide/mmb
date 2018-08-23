.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv$1;
.super Ljava/lang/Object;
.source "MmbStRecordingConflictCallbackSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->onFinishFunctionCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingConflictCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->recAllStopProcessing(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
