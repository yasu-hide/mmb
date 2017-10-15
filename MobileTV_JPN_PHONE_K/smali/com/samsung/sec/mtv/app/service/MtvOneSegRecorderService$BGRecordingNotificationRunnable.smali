.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;
.super Ljava/lang/Object;
.source "MtvOneSegRecorderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BGRecordingNotificationRunnable"
.end annotation


# instance fields
.field private isOnGoing:Z

.field private myOneSegRecorderService:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;


# direct methods
.method protected constructor <init>(ZLcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;)V
    .locals 1
    .param p1, "isOnGoing"    # Z
    .param p2, "myOneSegRecorderService"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;->isOnGoing:Z

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;->myOneSegRecorderService:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    .line 1075
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;->isOnGoing:Z

    .line 1076
    iput-object p2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;->myOneSegRecorderService:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    .line 1077
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;->myOneSegRecorderService:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;->myOneSegRecorderService:Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService$BGRecordingNotificationRunnable;->isOnGoing:Z

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;->access$300(Lcom/samsung/sec/mtv/app/service/MtvOneSegRecorderService;Z)V

    .line 1086
    :goto_0
    return-void

    .line 1084
    :cond_0
    const-string v0, "MtvOneSegRecorderService"

    const-string v1, "ReocrderService arguement passed is null !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
