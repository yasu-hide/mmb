.class Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MtvBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->updatePresentation()V

    .line 92
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->updatePresentation()V

    .line 82
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->updatePresentation()V

    .line 87
    return-void
.end method
