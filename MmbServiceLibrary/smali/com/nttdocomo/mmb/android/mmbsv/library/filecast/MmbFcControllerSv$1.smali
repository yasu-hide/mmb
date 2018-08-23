.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$1;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setVideoDisplay(Landroid/view/SurfaceHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V
    .locals 0

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;

    move-result-object v0

    .line 1345
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 1350
    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;->onCreatedDisplay()V

    .line 1355
    :cond_0
    return-void
.end method
