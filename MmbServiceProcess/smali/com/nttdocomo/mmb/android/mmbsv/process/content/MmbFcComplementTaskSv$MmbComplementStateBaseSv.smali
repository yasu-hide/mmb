.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;
.super Ljava/lang/Object;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MmbComplementStateBaseSv"
.end annotation


# instance fields
.field protected mCrid:Ljava/lang/String;

.field protected mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V
    .locals 1
    .param p2, "aTask"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3474
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3454
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .line 3458
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mCrid:Ljava/lang/String;

    .line 3478
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .line 3479
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mCrid:Ljava/lang/String;

    .line 3483
    return-void
.end method


# virtual methods
.method public canCancel()Z
    .locals 1

    .prologue
    .line 3501
    const/4 v0, 0x1

    return v0
.end method

.method public changeState(I)V
    .locals 5
    .param p1, "aNextState"    # I

    .prologue
    .line 3555
    sparse-switch p1, :sswitch_data_0

    .line 3572
    :goto_0
    return-void

    .line 3557
    :sswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastFileComplementStateSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mCrid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastFileComplementStateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    goto :goto_0

    .line 3560
    :sswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastDataComplementStateSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mCrid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastDataComplementStateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    goto :goto_0

    .line 3563
    :sswitch_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbWaitingDecodeStateSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->mCrid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbWaitingDecodeStateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    goto :goto_0

    .line 3566
    :sswitch_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    goto :goto_0

    .line 3555
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x63 -> :sswitch_3
    .end sparse-switch
.end method

.method public checkStartDecoding()V
    .locals 0

    .prologue
    .line 3521
    return-void
.end method

.method public abstract getState()I
.end method
