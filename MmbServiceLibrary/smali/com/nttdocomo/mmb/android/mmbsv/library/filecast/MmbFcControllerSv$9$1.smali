.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;->onDimChange(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;ILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;

.field final synthetic val$ainfo:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;ILcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;)V
    .locals 0

    .prologue
    .line 2730
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;->val$type:I

    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;->val$ainfo:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2733
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;

    move-result-object v0

    .line 2735
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    if-eqz v0, :cond_0

    .line 2740
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;->val$type:I

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;->val$ainfo:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;->onDimInfoChanged(ILcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;)V

    .line 2745
    :cond_0
    return-void
.end method
