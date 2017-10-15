.class Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$4;
.super Ljava/lang/Object;
.source "MtvUiSViewCover.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$4;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$4;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeMute()V

    .line 602
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$4;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    .line 603
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$4;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 604
    const/4 v0, 0x1

    return v0
.end method
