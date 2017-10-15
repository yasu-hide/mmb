.class Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MtvBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 216
    const-string v0, "MtvBaseActivity"

    const-string v1, "onRoutePresentationDisplayChanged"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->updatePresentation(Landroid/content/Context;Landroid/media/MediaRouter;)V

    .line 219
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 204
    const-string v0, "MtvBaseActivity"

    const-string v1, "onRouteSelected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->updatePresentation(Landroid/content/Context;Landroid/media/MediaRouter;)V

    .line 206
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->updatePresentation(Landroid/content/Context;Landroid/media/MediaRouter;)V

    .line 211
    const-string v0, "MtvBaseActivity"

    const-string v1, "onRouteUnselected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
