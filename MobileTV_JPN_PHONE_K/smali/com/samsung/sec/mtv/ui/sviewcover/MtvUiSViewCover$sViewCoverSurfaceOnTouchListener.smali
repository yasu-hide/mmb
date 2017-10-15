.class Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$sViewCoverSurfaceOnTouchListener;
.super Ljava/lang/Object;
.source "MtvUiSViewCover.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sViewCoverSurfaceOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$sViewCoverSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1020
    const-string v0, "MtvUiSViewCover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnTouchListener event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const/4 v0, 0x1

    .line 1023
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$sViewCoverSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
