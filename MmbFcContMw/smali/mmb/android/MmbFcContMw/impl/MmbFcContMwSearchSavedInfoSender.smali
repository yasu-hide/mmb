.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchSavedInfoSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;
.source "MmbFcContMwSearchSavedInfoSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_SAVED_SEARCH_INFO"


# direct methods
.method public constructor <init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)V
    .locals 12
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p5, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p6, "aIdentifier"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p7, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p8, "aVersion"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .param p9, "aDictionaryChange"    # Z
    .param p10, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v11, "MESSAGE_MMBFCCONTMW_SAVED_SEARCH_INFO"

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
