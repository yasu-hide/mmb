.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;
.super Ljava/lang/Object;
.source "MmbTmScheduleModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteMultiSeriesForSession([Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbTimerDeleteItem"
.end annotation


# instance fields
.field private memSeleteRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

.field private memSeriesId:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)V
    .locals 0

    .prologue
    .line 3778
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->memSeleteRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .prologue
    .line 3778
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->memSeleteRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->memSeriesId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3778
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$1MmbTimerDeleteItem;->memSeriesId:Ljava/lang/String;

    return-object p1
.end method
