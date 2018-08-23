.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$1;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;I)V
    .locals 0

    .prologue
    .line 2133
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2136
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;

    move-result-object v0

    .line 2138
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    if-eqz v0, :cond_0

    .line 2143
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$1;->val$code:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;->onPlayStatusChanged(II)V

    .line 2148
    :cond_0
    return-void
.end method
