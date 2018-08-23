.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;
.super Ljava/lang/Object;
.source "MmbStCtlMwBit.java"


# instance fields
.field public mBit_second_loop:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;",
            ">;"
        }
    .end annotation
.end field

.field public mOriginal_network_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;->mBit_second_loop:Ljava/util/List;

    return-void
.end method
