.class Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;
.super Landroid/os/Handler;
.source "MtvConflictHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    const-string v4, "MtvConflictHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget v4, p1, Landroid/os/Message;->what:I

    if-ltz v4, :cond_0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$100()[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    move-result-object v5

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 103
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid Message Id !"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$100()[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    aget-object v1, v4, v5

    .line 106
    .local v1, "messageId":Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;
    sget-object v4, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$4;->$SwitchMap$com$samsung$sec$mtv$ui$conflict$MtvConflictHandler$MESSAGE_ID:[I

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 165
    :cond_2
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->handleAssignResource()V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    check-cast v4, Ljava/lang/Integer;

    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    .line 114
    .local v2, "resourceReleaseStatus":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_5

    .line 116
    const-string v4, "MtvConflictHandler"

    const-string v5, "ONE-SEG sucessfully Obtained/Released Tuner Resource ! "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "MtvConflictHandler"

    const-string v5, "Querying the current User Again... To check if at all anyone acquired the resource after release..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v3, 0x0

    .line 121
    .local v3, "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_4

    .line 124
    const-string v4, "MtvConflictHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resourceUser getPackageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v4, "MtvConflictHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resourceUser getTmmStatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->getTmmStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_2
    const-string v4, "MtvConflictHandler"

    const-string v5, "calling handleAssignResource again... so that Resource will be assigned to us and we can setApplicationMode as ONE_SEG"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->handleAssignResource()V

    goto :goto_0

    .line 113
    .end local v2    # "resourceReleaseStatus":Ljava/lang/Integer;
    .end local v3    # "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :cond_3
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 129
    .restart local v2    # "resourceReleaseStatus":Ljava/lang/Integer;
    .restart local v3    # "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :cond_4
    :try_start_1
    const-string v4, "MtvConflictHandler"

    const-string v5, "null resourceUser returned"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MtvConflictHandler"

    const-string v5, "RemoteException occured whyle performing getResourceUser..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 142
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$200(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_6

    .line 144
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$208(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)I

    .line 145
    const-string v4, "MtvConflictHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ONE-SEG resource assign request Timed Out... Trying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$200(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "th time..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$300(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssignTimedOut(Z)V

    .line 147
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->handleAssignResource()V

    goto/16 :goto_0

    .line 152
    :cond_6
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v4, v7}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$402(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;Z)Z

    .line 153
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$500(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V

    .line 154
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$300(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssignTimedOut(Z)V

    .line 155
    const-string v4, "MtvConflictHandler"

    const-string v5, "ONE-SEG resource assign request Timed Out... Closing OneSeg"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v4, "MtvConflictHandler"

    const-string v5, "Resetting assignTryCount..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-static {v4, v7}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->access$202(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;I)I

    goto/16 :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
