.class public Lmmb/android/MmbStRecMw/MmbStRecMwEit;
.super Ljava/lang/Object;
.source "MmbStRecMwEit.java"


# instance fields
.field public mEit_program_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbStRecMw/MmbStRecMwEitProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mOriginal_network_id:I

.field public mService_id:I

.field public mTransport_stream_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwEit;->mEit_program_info:Ljava/util/List;

    return-void
.end method
