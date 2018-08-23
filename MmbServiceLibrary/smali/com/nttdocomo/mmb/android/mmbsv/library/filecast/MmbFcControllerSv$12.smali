.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$12;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->handlerPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

.field final synthetic val$intintsec:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;I)V
    .locals 0

    .prologue
    .line 3342
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$12;->val$intintsec:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3345
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;

    move-result-object v0

    .line 3347
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    if-eqz v0, :cond_0

    .line 3352
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$12;->val$intintsec:I

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;->onNotifyPosition(I)V

    .line 3357
    :cond_0
    return-void
.end method
