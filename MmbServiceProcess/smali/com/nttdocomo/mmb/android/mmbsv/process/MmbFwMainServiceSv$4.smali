.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$4;
.super Ljava/lang/Object;
.source "MmbFwMainServiceSv.java"

# interfaces
.implements Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0

    .prologue
    .line 3469
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 3488
    return-void
.end method

.method public acquireNotice(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;)V
    .locals 0
    .param p1, "aNotice"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;

    .prologue
    .line 3484
    return-void
.end method

.method public noticeBroadcastLevel(I)V
    .locals 0
    .param p1, "aLevel"    # I

    .prologue
    .line 3480
    return-void
.end method

.method public noticeBroadcastTimeChanged([Ljava/lang/String;)V
    .locals 0
    .param p1, "aCrid"    # [Ljava/lang/String;

    .prologue
    .line 3476
    return-void
.end method

.method public reserveBLayer(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;)V
    .locals 0
    .param p1, "aInformation"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    .prologue
    .line 3472
    return-void
.end method
