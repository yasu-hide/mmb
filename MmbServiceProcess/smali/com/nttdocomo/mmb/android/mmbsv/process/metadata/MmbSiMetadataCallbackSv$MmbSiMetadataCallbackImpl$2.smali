.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$2;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataItemRunnable;
.source "MmbSiMetadataCallbackSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->cancelSequence(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V
    .locals 0
    .param p2, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;

    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataItemRunnable;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V
    .locals 4
    .param p1, "aItem"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .prologue
    .line 548
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 555
    .local v1, "result":I
    :try_start_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->crid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->cancelBLayer(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 562
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
