.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitGetThumbnailUri(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 1750
    return-void
.end method

.method public noticeBroadcastLevel(I)V
    .locals 0
    .param p1, "aArg"    # I

    .prologue
    .line 1759
    return-void
.end method

.method public noticeDownload(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;)V
    .locals 0
    .param p1, "aArg"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;

    .prologue
    .line 1753
    return-void
.end method

.method public noticeEntryFdtInstance(Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;)V
    .locals 0
    .param p1, "aArg"    # Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;

    .prologue
    .line 1762
    return-void
.end method

.method public noticeRepair(Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;)V
    .locals 0
    .param p1, "aArg"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;

    .prologue
    .line 1756
    return-void
.end method
