.class Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;
.super Landroid/os/Handler;
.source "MtvUiTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v11, -0x10000

    const v10, -0xffff01

    .line 151
    iget v7, p1, Landroid/os/Message;->what:I

    if-nez v7, :cond_7

    .line 153
    invoke-static {}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 154
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$100(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v6

    .line 163
    .local v6, "signalValue":Landroid/broadcast/helper/types/MtvOneSegSignal;
    const-string v7, "MtvUiTestMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage getSignalValue "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    const v8, 0x7f0a004b

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 167
    .local v5, "signalLayout":Landroid/view/View;
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 168
    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getRSSI()I

    move-result v7

    int-to-long v2, v7

    .line 169
    .local v2, "rssi":J
    const-wide/16 v8, -0x58

    cmp-long v7, v2, v8

    if-ltz v7, :cond_2

    .line 170
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$200(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 171
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$200(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 172
    :cond_0
    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    :goto_0
    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getSignalQuality()I

    move-result v4

    .line 179
    .local v4, "sigValue":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$400(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v8, v6}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$300(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Landroid/broadcast/helper/types/MtvOneSegSignal;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .end local v2    # "rssi":J
    :goto_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 187
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Signal[0.. 4]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .end local v4    # "sigValue":I
    .end local v5    # "signalLayout":Landroid/view/View;
    .end local v6    # "signalValue":Landroid/broadcast/helper/types/MtvOneSegSignal;
    :cond_1
    :goto_2
    return-void

    .line 174
    .restart local v2    # "rssi":J
    .restart local v5    # "signalLayout":Landroid/view/View;
    .restart local v6    # "signalValue":Landroid/broadcast/helper/types/MtvOneSegSignal;
    :cond_2
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$200(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 175
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$200(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 176
    :cond_3
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 181
    .end local v2    # "rssi":J
    :cond_4
    if-eqz v5, :cond_5

    .line 182
    const v7, -0xbbbbbc

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 183
    :cond_5
    const/4 v4, 0x0

    .line 184
    .restart local v4    # "sigValue":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$400(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    .end local v4    # "sigValue":I
    .end local v5    # "signalLayout":Landroid/view/View;
    .end local v6    # "signalValue":Landroid/broadcast/helper/types/MtvOneSegSignal;
    :cond_6
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$400(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 192
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$400(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 194
    :cond_7
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 198
    new-instance v1, Landroid/broadcast/helper/MtvURI;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v8}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$600(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    .line 199
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$700(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    .line 200
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$802(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 202
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$800(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 203
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    new-instance v8, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$900(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Channel ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1000(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " searching started... SwapTime(msecs) ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1100(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 206
    .local v0, "date":Ljava/util/Date;
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1202(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;J)J

    .line 207
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1300(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 208
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;->this$0:Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->access$1300(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v7

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_2
.end method
