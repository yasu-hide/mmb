.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchDownloadingListSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;
.source "MmbFcContMwSearchDownloadingListSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_DOWNLAODING_SEARCH_LIST"


# direct methods
.method public constructor <init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V
    .locals 12
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p5, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p6, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p7, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p8, "aDictionaryChange"    # Z
    .param p9, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v10, "MESSAGE_MMBFCCONTMW_DOWNLAODING_SEARCH_LIST"

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
