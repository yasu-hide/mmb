.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$MmbFcDownloadEventListenerForSearchSv;
.super Ljava/lang/Object;
.source "MmbFcUtilitySv.java"

# interfaces
.implements Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbFcDownloadEventListenerForSearchSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;)V
    .locals 0

    .prologue
    .line 3021
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv$MmbFcDownloadEventListenerForSearchSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 3039
    const-string v0, "MW abort."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3040
    return-void
.end method

.method public noticeBroadcastLevel(I)V
    .locals 0
    .param p1, "aLevel"    # I

    .prologue
    .line 3063
    return-void
.end method

.method public noticeDownload(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;)V
    .locals 0
    .param p1, "aAnb"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;

    .prologue
    .line 3086
    return-void
.end method

.method public noticeEntryFdtInstance(Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;)V
    .locals 0
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;

    .prologue
    .line 3132
    return-void
.end method

.method public noticeRepair(Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;)V
    .locals 0
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;

    .prologue
    .line 3109
    return-void
.end method
