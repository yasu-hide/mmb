.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchSavedListSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;
.source "MmbFcContMwExtSearchSavedListSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_SAVED_EXT_SEARCH_LIST"


# direct methods
.method public constructor <init>(IJLmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V
    .locals 10
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p5, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p6, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p7, "aDictionaryChange"    # Z
    .param p8, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v9, "MESSAGE_MMBFCCONTMW_SAVED_EXT_SEARCH_LIST"

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;-><init>(IJLmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
