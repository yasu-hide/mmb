.class public Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;
.super Ljava/lang/Object;
.source "MmbStRecMwJniWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$1;,
        Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;,
        Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;
    }
.end annotation


# static fields
.field private static final MSGID_STREC_ONCHANGEANTENNALEVEL:I = 0x1771

.field private static final MSGID_STREC_ONCOMPLETEPREPREC:I = 0x1770

.field private static final MSGID_STREC_ONCOMPLETEREC:I = 0x1775

.field private static final MSGID_STREC_ONUPDATEEIT:I = 0x1773

.field private static final MSGID_STREC_ONUPDATEPMT:I = 0x1772

.field private static final MSGID_STREC_ONUPDATESDT:I = 0x1774

.field private static final STREC_ARGUMENT_NUM_1:I = 0x1

.field private static final STREC_ARGUMENT_NUM_2:I = 0x2

.field private static final STREC_ARGUMENT_NUM_3:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MmbStRecMwJniWrapper"


# instance fields
.field private log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

.field private mMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageThread:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;

.field private mMessageThreadEndFlag:Z

.field private mMwListener:Lmmb/android/MmbStRecMw/MmbStRecMwListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThreadEndFlag:Z

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    .line 44
    new-instance v0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    invoke-direct {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    .line 343
    return-void
.end method

.method static synthetic access$100(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwCommon;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    return-object v0
.end method

.method static synthetic access$200(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$302(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThreadEndFlag:Z

    return p1
.end method

.method static synthetic access$400(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)Lmmb/android/MmbStRecMw/MmbStRecMwListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMwListener:Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized onReceiveJniNotification(I[II)V
    .locals 7
    .param p1, "aEventId"    # I
    .param p2, "aData"    # [I
    .param p3, "aSize"    # I

    .prologue
    const/4 v6, -0x1

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v3, "MmbStRecMwJniWrapper"

    const-string v4, "onReceiveJniNotification() start!"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;-><init>(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;I[II)V

    .line 111
    .local v0, "message":Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;
    iget-object v3, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageQueue is empty"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v2, 0x1

    iget-boolean v4, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThreadEndFlag:Z

    if-ne v2, v4, :cond_2

    .line 121
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageThreadEndFlag is true"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThread:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;

    .line 124
    new-instance v2, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;-><init>(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$1;)V

    iput-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThread:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;

    .line 127
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThread:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->setQueue(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;)I

    move-result v1

    .line 128
    .local v1, "ret":I
    if-ne v6, v1, :cond_1

    .line 129
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() set message failure!"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "ret":I
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThread:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->setQueue(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;)I

    move-result v1

    .line 153
    .restart local v1    # "ret":I
    if-ne v6, v1, :cond_0

    .line 154
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() set message failure!"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v3, "MmbStRecMwJniWrapper"

    const-string v4, "onReceiveJniNotification() end!"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :goto_1
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_3
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() request thread start"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThreadEndFlag:Z

    .line 135
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMessageThread:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;

    invoke-virtual {v2}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessageThread;->start()V

    .line 137
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() end!"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    monitor-exit v3

    goto :goto_1

    .line 156
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    .end local v0    # "message":Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 143
    .restart local v0    # "message":Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper$MmbStRecMwNotifyMessage;
    :cond_2
    :try_start_5
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageThreadEndFlag is false"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v2, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageQueue is not empty"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public setMmbStRecMwListener(Lmmb/android/MmbStRecMw/MmbStRecMwListener;)V
    .locals 0
    .param p1, "listener"    # Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    .prologue
    .line 89
    iput-object p1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->mMwListener:Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    .line 90
    return-void
.end method
