.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;
.super Ljava/lang/Object;
.source "MmbFwIpcStubSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->gatherMmbSiInfSvByFragmentVersionFromNet(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

.field final synthetic val$aFragmentVersion:Ljava/lang/String;

.field final synthetic val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field final synthetic val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0

    .prologue
    .line 6990
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$aFragmentVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6993
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$aFragmentVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->gatherMmbSiInfSvByFragmentVersionFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6994
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6999
    :goto_0
    return-void

    .line 6995
    :catch_0
    move-exception v0

    .line 6996
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6997
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
