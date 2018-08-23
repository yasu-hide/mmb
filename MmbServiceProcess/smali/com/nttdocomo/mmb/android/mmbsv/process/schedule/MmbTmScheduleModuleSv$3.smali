.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$3;
.super Ljava/lang/Object;
.source "MmbTmScheduleModuleSv.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getSeries(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)V
    .locals 0

    .prologue
    .line 3067
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I
    .locals 4
    .param p1, "aObject1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;
    .param p2, "aObject2"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .prologue
    .line 3070
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3067
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv$3;->compare(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)I

    move-result v0

    return v0
.end method
