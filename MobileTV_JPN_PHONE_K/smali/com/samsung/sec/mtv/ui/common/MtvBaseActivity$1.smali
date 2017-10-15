.class Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;
.super Landroid/database/ContentObserver;
.source "MtvBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 119
    const-string v0, "MtvBaseActivity"

    const-string v1, "registerContentObserver onChange()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 122
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.sec.mtv.ui.tvlink.MtvUiTvLinks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string v0, "MtvBaseActivity"

    const-string v1, "MtvUiTvLinks: Restricting the rotation to portrait only"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->requestOrientation(I)V

    .line 131
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 134
    :cond_1
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.sec.mtv.ui.fileplayer.MtvUFilePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->requestOrientation(I)V

    goto :goto_0
.end method
