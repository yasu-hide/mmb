.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetSavedContentListSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;
.source "MmbFcContMwGetSavedContentListSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_GET_SAVED_CONTENTS_LIST"


# direct methods
.method public constructor <init>(IILmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V
    .locals 6
    .param p1, "aClientId"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p4, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .prologue
    .line 31
    const-string v5, "MESSAGE_MMBFCCONTMW_GET_SAVED_CONTENTS_LIST"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;-><init>(IILmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;Ljava/lang/String;)V

    .line 32
    return-void
.end method
