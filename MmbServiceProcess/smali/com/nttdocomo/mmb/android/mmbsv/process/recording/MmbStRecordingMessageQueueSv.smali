.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
.super Ljava/lang/Object;
.source "MmbStRecordingMessageQueueSv.java"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mEventId:I

.field private mMwInst:Lmmb/android/MmbStRecMw/MmbStRecMwClient;


# direct methods
.method varargs constructor <init>(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "aEventId"    # I
    .param p2, "aMwInst"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p3, "aArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mEventId:I

    .line 31
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mArgs:[Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mMwInst:Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    .line 53
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mEventId:I

    .line 54
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mArgs:[Ljava/lang/Object;

    .line 55
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mMwInst:Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    .line 60
    return-void
.end method


# virtual methods
.method protected getArgument()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method protected getMwInstance()Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mMwInst:Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    return-object v0
.end method

.method protected getProcessId()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->mEventId:I

    return v0
.end method
