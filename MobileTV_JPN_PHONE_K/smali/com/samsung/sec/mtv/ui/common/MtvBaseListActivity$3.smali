.class Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$3;
.super Landroid/database/ContentObserver;
.source "MtvBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, -0x1

    .line 307
    const-string v0, "MtvBaseListActivity"

    const-string v1, "registerContentObserver onChange()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-static {v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;I)V

    .line 312
    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 315
    :cond_0
    return-void
.end method
