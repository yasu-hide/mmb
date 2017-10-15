.class Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$1;
.super Ljava/lang/Object;
.source "MtvUiVolumeControlBarFrag.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isPhoneLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
