.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;
.super Ljava/lang/Object;
.source "MmbStCtlMwJniWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$1;,
        Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;,
        Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;
    }
.end annotation


# static fields
.field private static final MSGID_STCTL_CAPTIONNOTIFYEXIST:I = 0x139d

.field private static final MSGID_STCTL_CAPTIONNOTIFYLANGNUM:I = 0x1399

.field private static final MSGID_STCTL_CAPTIONNOTIFYNOTHING:I = 0x139a

.field private static final MSGID_STCTL_CAPTIONNOTIFYRECV:I = 0x139c

.field private static final MSGID_STCTL_CAPTIONNOTIFYRESTART:I = 0x139b

.field private static final MSGID_STCTL_ONAUDIOINFORMATION:I = 0x1397

.field private static final MSGID_STCTL_ONCHANGEANTENNALEVEL:I = 0x138c

.field private static final MSGID_STCTL_ONCHANGEAUDIOCOMPONENT:I = 0x1398

.field private static final MSGID_STCTL_ONCHANGEVIEWINGSTATUS:I = 0x138b

.field private static final MSGID_STCTL_ONCOMPLETESCAN:I = 0x1388

.field private static final MSGID_STCTL_ONCOMPLETESELECTCH:I = 0x138a

.field private static final MSGID_STCTL_ONCOMPLETESTARTPLAY:I = 0x139e

.field private static final MSGID_STCTL_ONCOMPLETESTARTST:I = 0x1389

.field private static final MSGID_STCTL_ONFASTFORWARDTOEND:I = 0x13a0

.field private static final MSGID_STCTL_ONNOTIFYERROR:I = 0x1395

.field private static final MSGID_STCTL_ONNOTIFYSERVICENG:I = 0x138d

.field private static final MSGID_STCTL_ONPLAYTOEND:I = 0x139f

.field private static final MSGID_STCTL_ONREWINDTOTOP:I = 0x13a1

.field private static final MSGID_STCTL_ONUPDATEBIT:I = 0x1391

.field private static final MSGID_STCTL_ONUPDATEEIT:I = 0x1392

.field private static final MSGID_STCTL_ONUPDATEEMM:I = 0x1394

.field private static final MSGID_STCTL_ONUPDATEINT:I = 0x1390

.field private static final MSGID_STCTL_ONUPDATENIT:I = 0x138f

.field private static final MSGID_STCTL_ONUPDATEPMT:I = 0x138e

.field private static final MSGID_STCTL_ONUPDATESDT:I = 0x1393

.field private static final MSGID_STCTL_ONVIDEOINFORMATION:I = 0x1396

.field private static final STCTL_ARGUMENT_NUM_1:I = 0x1

.field private static final STCTL_ARGUMENT_NUM_2:I = 0x2

.field private static final STCTL_ARGUMENT_NUM_3:I = 0x3

.field private static final STCTL_ARGUMENT_NUM_6:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MmbStCtlMwJniWrapper"


# instance fields
.field private log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

.field private mMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageThread:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;

.field private mMessageThreadEndFlag:Z

.field private mMwListener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThreadEndFlag:Z

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    .line 44
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    .line 593
    return-void
.end method

.method static synthetic access$100(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    return-object v0
.end method

.method static synthetic access$200(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$302(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThreadEndFlag:Z

    return p1
.end method

.method static synthetic access$400(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMwListener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

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

    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v3, "MmbStCtlMwJniWrapper"

    const-string v4, "onReceiveJniNotification() start!"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;I[II)V

    .line 154
    .local v0, "message":Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;
    iget-object v3, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageQueue is empty"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x1

    iget-boolean v4, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThreadEndFlag:Z

    if-ne v2, v4, :cond_2

    .line 164
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageThreadEndFlag is true"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    iput-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThread:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;

    .line 167
    new-instance v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$1;)V

    iput-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThread:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;

    .line 170
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThread:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->setQueue(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;)I

    move-result v1

    .line 171
    .local v1, "ret":I
    if-ne v6, v1, :cond_1

    .line 172
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() set message failure!"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v1    # "ret":I
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThread:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->setQueue(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;)I

    move-result v1

    .line 196
    .restart local v1    # "ret":I
    if-ne v6, v1, :cond_0

    .line 197
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() set message failure!"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :try_start_2
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v3, "MmbStCtlMwJniWrapper"

    const-string v4, "onReceiveJniNotification() end!"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :goto_1
    monitor-exit p0

    return-void

    .line 176
    :cond_1
    :try_start_3
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() request thread start"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThreadEndFlag:Z

    .line 178
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMessageThread:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessageThread;->start()V

    .line 180
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() end!"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    monitor-exit v3

    goto :goto_1

    .line 199
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

    .line 149
    .end local v0    # "message":Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 186
    .restart local v0    # "message":Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper$MmbStCtlMwNotifyMessage;
    :cond_2
    :try_start_5
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageThreadEndFlag is false"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v2, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v4, "MmbStCtlMwJniWrapper"

    const-string v5, "onReceiveJniNotification() mMessageQueue is not empty"

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public setMmbStCtlMwListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    .locals 0
    .param p1, "listener"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    .prologue
    .line 132
    iput-object p1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->mMwListener:Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    .line 133
    return-void
.end method
