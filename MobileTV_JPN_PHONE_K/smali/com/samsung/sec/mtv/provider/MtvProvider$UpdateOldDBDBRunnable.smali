.class Lcom/samsung/sec/mtv/provider/MtvProvider$UpdateOldDBDBRunnable;
.super Ljava/lang/Object;
.source "MtvProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/provider/MtvProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateOldDBDBRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 600
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvProvider;->setReservations()Z

    .line 601
    return-void
.end method
