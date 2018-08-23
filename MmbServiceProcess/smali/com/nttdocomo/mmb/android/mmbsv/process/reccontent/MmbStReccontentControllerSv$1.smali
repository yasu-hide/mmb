.class Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;
.super Ljava/lang/Object;
.source "MmbStReccontentControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->saveThumbnailData(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

.field final synthetic val$aPrgNo:I

.field final synthetic val$aThumbnailData:[B


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;I[B)V
    .locals 0

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;->val$aPrgNo:I

    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;->val$aThumbnailData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1265
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 1266
    .local v1, "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;-><init>()V

    .line 1269
    .local v2, "thumbnailData":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;
    :try_start_0
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;->val$aPrgNo:I

    iput v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mPrgNo:I

    .line 1270
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;->val$aThumbnailData:[B

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mThumbnail:[B

    .line 1275
    invoke-virtual {v1, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->setContentsInfoThumbnail(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;)V
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
