.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;
.super Ljava/util/TimerTask;
.source "MmbStRecordingTimerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbStRecordingTimerTaskSv"
.end annotation


# instance fields
.field mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

.field mUserParam:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;I)V
    .locals 2
    .param p2, "aUserParam"    # I

    .prologue
    const/4 v1, 0x0

    .line 134
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mUserParam:I

    .line 124
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 139
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mUserParam:I

    .line 140
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 145
    return-void
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    .locals 2
    .param p2, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .prologue
    const/4 v1, 0x0

    .line 156
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 122
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mUserParam:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 161
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mUserParam:I

    .line 162
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;

    move-result-object v0

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-interface {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;->onTimerExpired(Ljava/lang/Object;)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mUserParam:I

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->access$102(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;Ljava/util/Timer;)Ljava/util/Timer;

    .line 204
    monitor-exit v1

    .line 209
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;

    move-result-object v0

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerTaskSv;->mUserParam:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;->onTimerExpired(Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
