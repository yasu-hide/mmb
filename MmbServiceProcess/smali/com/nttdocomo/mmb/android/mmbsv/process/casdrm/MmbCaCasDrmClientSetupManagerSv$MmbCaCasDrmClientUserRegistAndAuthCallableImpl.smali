.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientSetupManagerSv.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbCaCasDrmClientUserRegistAndAuthCallableImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field private carrier:Ljava/lang/String;

.field final future:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<[B>;"
        }
    .end annotation
.end field

.field private rcvrType:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

.field private uimid:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "aUrl"    # Ljava/lang/String;
    .param p3, "aUimId"    # Ljava/lang/String;
    .param p4, "aCarrier"    # Ljava/lang/String;
    .param p5, "aRcvrType"    # Ljava/lang/String;

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1857
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->future:Ljava/util/concurrent/FutureTask;

    .line 1858
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->url:Ljava/lang/String;

    .line 1859
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->uimid:Ljava/lang/String;

    .line 1860
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->carrier:Ljava/lang/String;

    .line 1861
    iput-object p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->rcvrType:Ljava/lang/String;

    .line 1862
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->uimid:Ljava/lang/String;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->carrier:Ljava/lang/String;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->rcvrType:Ljava/lang/String;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->setupUserRegistAndAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Future;)[B

    move-result-object v6

    .line 1910
    .local v6, "result":[B
    return-object v6
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1877
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientUserRegistAndAuthCallableImpl;)V

    const-string v2, "MmbCaCasDrmClientUserRegistAndAuthCallableImpl"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1884
    return-void
.end method
