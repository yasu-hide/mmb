.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;
.super Ljava/lang/Object;
.source "MmbStRecordingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbStRecordingReschedule"
.end annotation


# instance fields
.field private mCrid:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Ljava/lang/String;)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;->mCrid:Ljava/lang/String;

    .line 1923
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;->mCrid:Ljava/lang/String;

    .line 1927
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1948
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschedule;->mCrid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->rescheduleChangedTime([Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :goto_0
    return-void

    .line 1949
    :catch_0
    move-exception v0

    .line 1951
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
