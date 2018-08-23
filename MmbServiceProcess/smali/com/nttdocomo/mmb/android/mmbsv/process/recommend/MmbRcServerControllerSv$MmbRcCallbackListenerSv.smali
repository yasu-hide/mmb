.class Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;
.super Ljava/lang/Object;
.source "MmbRcServerControllerSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbRcCallbackListenerSv"
.end annotation


# instance fields
.field private instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;)V
    .locals 1
    .param p1, "aInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .line 1126
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .line 1131
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;)V

    .line 1157
    :cond_0
    return-void
.end method
