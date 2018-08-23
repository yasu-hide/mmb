.class public Lmmb/android/MmbStRecMw/MmbStRecMwSdt;
.super Ljava/lang/Object;
.source "MmbStRecMwSdt.java"


# instance fields
.field public mOriginal_network_id:I

.field public mSdt_service_loop:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbStRecMw/MmbStRecMwSdtService;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwSdt;->mSdt_service_loop:Ljava/util/List;

    return-void
.end method
