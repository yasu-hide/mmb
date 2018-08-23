.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;
.super Ljava/lang/Object;
.source "MmbStCtlMwNit.java"


# instance fields
.field public mNetwork_id:S

.field public mNetwork_name:[S

.field public mNetwork_name_length:C

.field public mNit_second_loop:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNetwork_name:[S

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    return-void
.end method
