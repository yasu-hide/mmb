.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$3;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MtvMiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$3;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1289
    const-string v0, "MtvMiniModeService"

    const-string v1, " onRoutePresentationDisplayChanged "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$3;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->updatePresentation()V

    .line 1292
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1275
    const-string v0, "MtvMiniModeService"

    const-string v1, " onRouteSelected "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$3;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->updatePresentation()V

    .line 1278
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1282
    const-string v0, "MtvMiniModeService"

    const-string v1, " onRouteUnselected "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$3;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->updatePresentation()V

    .line 1285
    return-void
.end method
