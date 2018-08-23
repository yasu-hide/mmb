.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;
.super Ljava/lang/Object;
.source "MmbFcContentScheduleSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbRunReschedule"
.end annotation


# instance fields
.field private mCrid:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Ljava/lang/String;)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3548
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;->mCrid:Ljava/lang/String;

    .line 3549
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;->mCrid:Ljava/lang/String;

    .line 3550
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3566
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;->mCrid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3572
    :goto_0
    return-void

    .line 3568
    :catch_0
    move-exception v0

    .line 3570
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
