.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwBasicDescription.java"


# instance fields
.field public contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

.field public duration:I

.field public genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

.field public keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

.field public parentalGuidance:Ljava/lang/String;

.field public synopsis:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

.field public title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

.field public titleImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .line 25
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->titleImage:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .line 31
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    .line 34
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->parentalGuidance:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->duration:I

    .line 43
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->synopsis:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

    return-void
.end method
