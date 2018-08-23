.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;
.source "MmbFcIndividualEventManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->notifyIndividualStateChange(ILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

.field final synthetic val$aCrid:Ljava/lang/String;

.field final synthetic val$aFilePath:Ljava/lang/String;

.field final synthetic val$aState:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 336
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;->val$aCrid:Ljava/lang/String;

    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;->val$aState:I

    iput-object p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;->val$aFilePath:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;I)V

    return-void
.end method


# virtual methods
.method public doCallback(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;)V
    .locals 3
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .param p2, "aListenerInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;->val$aCrid:Ljava/lang/String;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;->val$aState:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$2;->val$aFilePath:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;->onIndividualStateChange(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    return-void
.end method
