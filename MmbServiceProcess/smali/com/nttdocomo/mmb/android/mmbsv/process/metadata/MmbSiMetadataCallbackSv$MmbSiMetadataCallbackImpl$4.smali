.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$4;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;
.source "MmbSiMetadataCallbackSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->onFinishFunctionCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;

    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbStMeataAriBRunnable;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V
    .locals 4
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 678
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 682
    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    .line 683
    .local v1, "meta":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvFromAirB(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v1    # "meta":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
