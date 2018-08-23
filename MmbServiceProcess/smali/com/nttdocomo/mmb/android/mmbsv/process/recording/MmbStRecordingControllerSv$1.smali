.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$1;
.super Ljava/lang/Thread;
.source "MmbStRecordingControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->notifyBroadcastAction(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 992
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->recAllStopProcessing(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
