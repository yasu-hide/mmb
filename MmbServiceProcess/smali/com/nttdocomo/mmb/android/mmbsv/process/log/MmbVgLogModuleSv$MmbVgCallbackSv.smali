.class Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;
.super Ljava/lang/Object;
.source "MmbVgLogModuleSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbVgCallbackSv"
.end annotation


# instance fields
.field private instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;)V
    .locals 1
    .param p1, "aInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .prologue
    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .line 1382
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .line 1387
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1428
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1432
    .local v0, "binder":Landroid/os/Binder;
    return-object v0
.end method

.method public onFinishFunctionCallback(I)V
    .locals 1
    .param p1, "aErrorCode"    # I

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;)V

    .line 1412
    :cond_0
    return-void
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 1454
    return-void
.end method
