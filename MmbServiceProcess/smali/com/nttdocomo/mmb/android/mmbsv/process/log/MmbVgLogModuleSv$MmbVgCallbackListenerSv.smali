.class Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;
.super Ljava/lang/Object;
.source "MmbVgLogModuleSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbVgCallbackListenerSv"
.end annotation


# instance fields
.field private instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;)V
    .locals 1
    .param p1, "aInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .prologue
    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .line 1490
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .line 1495
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;)V

    .line 1521
    :cond_0
    return-void
.end method
