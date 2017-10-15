.class Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;
.super Landroid/os/Handler;
.source "MtvAppBml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

.field uiEvents:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    invoke-static {}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->values()[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->uiEvents:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    const-string v0, "MtvAppBml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$2;->$SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlUIEvents:[I

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->uiEvents:[Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$000(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_ANIMATION_TEXT:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 103
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$000(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    invoke-interface {v1, v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;->setBmlAnimationText(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$000(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 113
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$000(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;->startBmlAnimation()V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$000(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_STOP_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 123
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$000(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;->stopBmlAnimation()V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOG_BTN_NUM:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 133
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->setDialogBtnNum(I)V

    goto :goto_0

    .line 140
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_DESTROY_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 143
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->destroyBMLDialog()V

    goto/16 :goto_0

    .line 150
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SHOW_DIALOGUE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 154
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v0, v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->mdialogMessege:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;->BML_QUERY_SETLOCATION_HTTP:Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;

    if-ne v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$300(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataNotifyMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->showBMLDialog(I)Z

    goto/16 :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$300(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataNotifyMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_YES:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->sendDialogReply(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;I)V

    goto/16 :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$300(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataNotifyMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->showBMLDialog(I)Z

    goto/16 :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->showBMLDialog(I)Z

    goto/16 :goto_0

    .line 175
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->MTV_APP_BML_SRTING_NONE:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_SET_DIALOGUE_MSG:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 178
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    invoke-interface {v1, v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->setDialogMessege(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;)V

    goto/16 :goto_0

    .line 185
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;

    .line 187
    .local v6, "ImeParams":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_IME_INPUT_METHOD:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 190
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$200(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;

    move-result-object v0

    iget-object v1, v6, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->text:[B

    iget-boolean v2, v6, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->isPassword:Z

    iget-boolean v3, v6, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->isMultiLine:Z

    iget v4, v6, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->mode:I

    iget v5, v6, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->maxlength:I

    invoke-interface/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;->IMEStartPeer([BZZII)V

    goto/16 :goto_0

    .line 197
    .end local v6    # "ImeParams":Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$400(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_TVLINK_TAB:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 200
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$400(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;->startTvLinkTab()V

    goto/16 :goto_0

    .line 207
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$400(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_KEYPAD_CHANGED:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$102(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;)Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    .line 210
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBml$1;->this$0:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->access$400(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;->bmlControlTypeChanged()V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
