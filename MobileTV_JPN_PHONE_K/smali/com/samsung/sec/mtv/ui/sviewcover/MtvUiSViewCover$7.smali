.class Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;
.super Ljava/lang/Object;
.source "MtvUiSViewCover.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 782
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 784
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    const/16 v1, 0x6a

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    .line 788
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$7;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 789
    :cond_1
    return-void
.end method
