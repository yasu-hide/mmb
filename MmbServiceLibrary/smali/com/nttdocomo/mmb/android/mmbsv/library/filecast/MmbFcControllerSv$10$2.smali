.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10$2;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;)V
    .locals 0

    .prologue
    .line 2895
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10$2;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2898
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10$2;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;

    move-result-object v0

    .line 2900
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    if-eqz v0, :cond_0

    .line 2904
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;->onError(I)V

    .line 2910
    :cond_0
    return-void
.end method
