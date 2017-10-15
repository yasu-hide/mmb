.class Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;
.super Ljava/lang/Object;
.source "MtvUiVolumeControlBarFrag.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private notifytouchtoactivity:Z

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->notifytouchtoactivity:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 127
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "VolumeFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeSeekBarChangeListener:onProgressChanged( progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fromTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setVolumeLevel(I)V

    .line 130
    const/16 v0, 0xa

    if-ge p2, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0xda

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 140
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 144
    const-string v0, "VolumeFrag"

    const-string v1, "onStartTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 147
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->notifytouchtoactivity:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "VolumeFrag"

    const-string v1, "Notifing to activity"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->notifytouchtoactivity:Z

    .line 150
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0xd9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 156
    const-string v0, "VolumeFrag"

    const-string v1, "onStopTrackingTouch() is called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->notifytouchtoactivity:Z

    .line 158
    const-string v0, "VolumeFrag"

    const-string v1, "Notifing to activity touch ends..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0xdb

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 160
    return-void
.end method
