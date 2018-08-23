.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;
.super Ljava/lang/Object;
.source "MmbTmScheduleModuleSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->organizeSeries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbDeleteAlarmWorker"
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;I)V
    .locals 0
    .param p2, "aId"    # I

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2133
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;->id:I

    .line 2134
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2139
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;->id:I

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmTimerControlSv;->deleteAlarmTimer(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    :goto_0
    return-void

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbDeleteAlarmWorker;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;Z)V

    goto :goto_0
.end method
