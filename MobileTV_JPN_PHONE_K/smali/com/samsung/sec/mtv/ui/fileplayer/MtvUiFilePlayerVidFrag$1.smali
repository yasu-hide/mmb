.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;
.super Ljava/lang/Object;
.source "MtvUiFilePlayerVidFrag.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 94
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->access$002(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;Z)Z

    .line 98
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->access$100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0x119

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->access$002(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;Z)Z

    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->access$100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0x118

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    const/16 v1, 0x196

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->onUpdate(ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->access$100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0x119

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method
