.class Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$UpdateDBRunnable;
.super Ljava/lang/Object;
.source "MtvBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDBRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvControl;->updateTVFilesDB()V

    .line 515
    return-void
.end method
