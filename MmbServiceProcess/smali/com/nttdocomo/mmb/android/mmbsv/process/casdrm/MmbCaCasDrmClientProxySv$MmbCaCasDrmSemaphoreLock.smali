.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientProxySv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmSemaphoreLock"
.end annotation


# static fields
.field public static final SEMAPHORE_LOCK:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1879
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->SEMAPHORE_LOCK:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 1

    .prologue
    .line 1893
    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->SEMAPHORE_LOCK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :goto_0
    return-void

    .line 1894
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1910
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->SEMAPHORE_LOCK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1911
    return-void
.end method
