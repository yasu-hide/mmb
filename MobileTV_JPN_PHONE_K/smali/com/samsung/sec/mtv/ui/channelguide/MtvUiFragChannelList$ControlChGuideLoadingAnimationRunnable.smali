.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;
.super Ljava/lang/Object;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlChGuideLoadingAnimationRunnable"
.end annotation


# instance fields
.field private isEnable:Z

.field private mStrAnimation:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V
    .locals 2

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->isEnable:Z

    .line 1134
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlChGuideLoadingAnimationRunnable..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method private controlAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1168
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlAnimation: called :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->isEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->isEnable:Z

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1171
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;Z)Z

    .line 1181
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->mStrAnimation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->mStrAnimation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1201
    return-void

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1190
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;Z)Z

    .line 1191
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1195
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public postAnimationToRunInUIThread()V
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1221
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1222
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->controlAnimation()V

    .line 1163
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 3
    .param p1, "bEnableAnimation"    # Z

    .prologue
    .line 1148
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlAnimationRunnable: setAnimationEnable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->isEnable:Z

    .line 1150
    return-void
.end method

.method protected setAnimationText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1205
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlAnimationRunnable: setAnimationText :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->mStrAnimation:Ljava/lang/String;

    .line 1207
    return-void
.end method
