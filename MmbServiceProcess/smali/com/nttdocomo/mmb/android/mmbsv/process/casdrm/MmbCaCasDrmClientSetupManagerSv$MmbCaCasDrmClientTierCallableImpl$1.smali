.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl$1;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientSetupManagerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;)V
    .locals 0

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 1663
    return-void
.end method
