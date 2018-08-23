.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$3;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;
.source "MmbFcIndividualEventManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->notifyIndividualProgressChange(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

.field final synthetic val$aCrid:Ljava/lang/String;

.field final synthetic val$aProgress:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;ILjava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 380
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$3;->val$aCrid:Ljava/lang/String;

    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$3;->val$aProgress:I

    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcInnerCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;I)V

    return-void
.end method


# virtual methods
.method public doCallback(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .param p2, "aListenerInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$MmbFcListenerInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$3;->val$aCrid:Ljava/lang/String;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv$3;->val$aProgress:I

    invoke-interface {p1, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;->onIndividualProgressChange(Ljava/lang/String;I)V

    .line 394
    return-void
.end method
