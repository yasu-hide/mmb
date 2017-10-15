.class Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;
.super Ljava/lang/Object;
.source "MtvAppPlayerOneSeg.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1047
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Command["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1050
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Resetting  command status and pending cmd "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$402(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I

    .line 1052
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$202(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I

    .line 1055
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1056
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1057
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$502(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1058
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->setCurrentContext(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 1064
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 1065
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2214
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Command ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Ignoring..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    :cond_2
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 1060
    :cond_3
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Problem in receiving message, cannot set context:: Cannont continue operation"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1073
    :sswitch_0
    const/4 v15, 0x0

    .line 1075
    .local v15, "bCreate":Z
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Create Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5001

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1078
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5001

    const/16 v4, 0x6001

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1082
    :cond_4
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getService()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$902(Landroid/broadcast/oneseg/MtvOneSegService;)Landroid/broadcast/oneseg/MtvOneSegService;

    .line 1083
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1084
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-virtual {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->unregisterListener(Landroid/broadcast/IMtvOneSegServiceListener;)V

    .line 1085
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-virtual {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->registerListener(Landroid/broadcast/IMtvOneSegServiceListener;)Z

    move-result v15

    .line 1087
    if-eqz v15, :cond_5

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1088
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->create(Landroid/content/Context;I)Z

    move-result v15

    .line 1092
    :cond_5
    if-nez v15, :cond_2

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5001

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1108
    .end local v15    # "bCreate":Z
    :sswitch_1
    const/16 v17, 0x0

    .line 1110
    .local v17, "bOpen":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v31

    .line 1112
    .local v31, "mLocalPendingParam":Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open Operation Started ChnlNum ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fileIndex ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_b

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5007

    if-ne v2, v3, :cond_b

    .line 1117
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Already Background Recording is going on... Not Setting Current operation as open in here !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1125
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Posting OPEN_START to UiPlayer "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5002

    const/16 v4, 0x6001

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1130
    :cond_6
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz v31, :cond_d

    .line 1131
    invoke-static/range {v31 .. v31}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v32

    .line 1133
    .local v32, "pbType":I
    const/4 v2, 0x2

    move/from16 v0, v32

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    move/from16 v0, v32

    if-ne v0, v2, :cond_c

    .line 1135
    :cond_7
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "As it is live/testmode, starting SignalQty Runnable "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1145
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1146
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1147
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Enabling Captions "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1150
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    move-result-object v2

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getCaptionControl()Landroid/broadcast/IMtvOneSegCaptionControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegCaptionControl;)V

    .line 1151
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->enable()V

    .line 1155
    :cond_8
    const/4 v2, 0x2

    move/from16 v0, v32

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    move/from16 v0, v32

    if-eq v0, v2, :cond_9

    const/4 v2, 0x6

    move/from16 v0, v32

    if-ne v0, v2, :cond_a

    .line 1158
    :cond_9
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-static/range {v31 .. v31}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setCurrentOpenedChannel(I)V

    .line 1160
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-static/range {v31 .. v31}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvURI;->serviceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setCurrentOpenedChannelServiceId(I)V

    .line 1163
    :cond_a
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Calling OneSegService.Open() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-static/range {v31 .. v31}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->open(Landroid/broadcast/helper/MtvURI;)Z

    move-result v17

    .line 1173
    .end local v32    # "pbType":I
    :goto_4
    if-nez v17, :cond_2

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5002

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1121
    :cond_b
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5002

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    goto/16 :goto_2

    .line 1141
    .restart local v32    # "pbType":I
    :cond_c
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "As it is local ,pde, removing SignalQty Runnable "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_3

    .line 1166
    .end local v32    # "pbType":I
    :cond_d
    if-nez v31, :cond_e

    .line 1167
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "OpenURI is not set -- Cannot start playback session"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1169
    :cond_e
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid Handler: OneSegServiceHdl - null. Cannot start playback session"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1180
    .end local v17    # "bOpen":Z
    .end local v31    # "mLocalPendingParam":Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    :sswitch_2
    const/4 v14, 0x0

    .line 1181
    .local v14, "bCapture":Z
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CAPTURE Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5008

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1184
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1185
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->captureFrame()Z

    move-result v14

    .line 1188
    :cond_f
    if-nez v14, :cond_2

    .line 1189
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5008

    const/16 v4, 0x6004

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1195
    .end local v14    # "bCapture":Z
    :sswitch_3
    const/16 v19, 0x0

    .line 1196
    .local v19, "bRecord":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5007

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1198
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1199
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 1227
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Status ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with REC Command. Cannot service it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :goto_5
    if-nez v19, :cond_2

    .line 1236
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1237
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5007

    const/16 v4, 0x6004

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1201
    :pswitch_0
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "startRecord() Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v2, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->startRecord(Ljava/lang/String;I)Z

    move-result v19

    .line 1204
    goto :goto_5

    .line 1207
    :pswitch_1
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "cancelRecord() Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->cancelRecord()Z

    move-result v19

    .line 1210
    goto :goto_5

    .line 1213
    :pswitch_2
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "stopRecord() Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->stopRecord()Z

    move-result v19

    .line 1216
    goto :goto_5

    .line 1219
    :pswitch_3
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Continuation of BG recording in Live"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5007

    const/16 v4, 0x6002

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1222
    const/16 v19, 0x1

    .line 1224
    goto :goto_5

    .line 1232
    :cond_10
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid Service Handle. Cannot Continue Recording"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1243
    .end local v19    # "bRecord":Z
    :sswitch_4
    const/16 v22, 0x0

    .line 1244
    .local v22, "bScan":Z
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "SCAN Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V

    .line 1246
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5005

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1248
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5005

    const/16 v4, 0x6001

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1252
    :cond_11
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1253
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->scanChannels()Z

    move-result v22

    .line 1256
    :cond_12
    if-nez v22, :cond_2

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5005

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1263
    .end local v22    # "bScan":Z
    :sswitch_5
    const/4 v13, 0x0

    .line 1264
    .local v13, "bCancelScan":Z
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CANCEL SCAN Operation Started LastSetScanned Chnl ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getLastScannedChannel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5006

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1267
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1268
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->cancelScanChannels()Z

    move-result v13

    .line 1271
    :cond_13
    if-nez v13, :cond_2

    .line 1273
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "cancel scan failure reset context"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->reset()V

    .line 1275
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1276
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5006

    const/16 v4, 0x6004

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1282
    .end local v13    # "bCancelScan":Z
    :sswitch_6
    const/16 v18, 0x0

    .line 1283
    .local v18, "bPause":Z
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Pause Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1285
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_15

    .line 1287
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5009

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1288
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1289
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->pause()Z

    move-result v18

    .line 1302
    :cond_14
    :goto_6
    if-nez v18, :cond_2

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5009

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1294
    :cond_15
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid Playback Type - PTYPE_IMAGE Cannot Pause !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1299
    :cond_16
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "mPendingParam is null!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1309
    .end local v18    # "bPause":Z
    :sswitch_7
    const/16 v21, 0x0

    .line 1310
    .local v21, "bResume":Z
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Resume Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1313
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_18

    .line 1315
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500a

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1316
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1317
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->resume()Z

    move-result v21

    .line 1330
    :cond_17
    :goto_7
    if-nez v21, :cond_2

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x500a

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1322
    :cond_18
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid Playback Type - PTYPE_IMAGE Cannot Resume !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1327
    :cond_19
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "mPendingParam is null!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1337
    .end local v21    # "bResume":Z
    :sswitch_8
    const/16 v23, 0x0

    .line 1338
    .local v23, "bSeek":Z
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "TrcikMode Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1341
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1b

    .line 1343
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500b

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1344
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 1345
    new-instance v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;)V

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1402(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .line 1346
    :cond_1a
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1602(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 1347
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1702(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 1348
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 1349
    .local v27, "currTimeStamp":I
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v3

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v4

    move/from16 v0, v27

    invoke-virtual {v2, v3, v4, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->trickmodePlay(III)Z

    move-result v23

    .line 1361
    .end local v27    # "currTimeStamp":I
    :goto_8
    if-nez v23, :cond_2

    .line 1363
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Failure in trickMode !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x500b

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1353
    :cond_1b
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid Playback Type - PTYPE_IMAGE Cannot Trick !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1358
    :cond_1c
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "mPendingParam is null!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1371
    .end local v23    # "bSeek":Z
    :sswitch_9
    const/16 v20, 0x0

    .line 1372
    .local v20, "bReposition":Z
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reposition Operation Started repositionTimeStamp ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1375
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1d

    .line 1377
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500c

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1378
    new-instance v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;)V

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1402(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .line 1379
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 1380
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->repositionPlay(I)Z

    move-result v20

    .line 1392
    :goto_9
    if-nez v20, :cond_2

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x500c

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1384
    :cond_1d
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid Playback Type - PTYPE_IMAGE Cannot Reposition !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1389
    :cond_1e
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "mPendingParam is null!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1400
    .end local v20    # "bReposition":Z
    :sswitch_a
    const/16 v25, 0x0

    .line 1402
    .local v25, "bTVLink":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1403
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_1

    .line 1451
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in TVLink Operation. Failure in TVLInk Operation()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :cond_1f
    :goto_a
    if-nez v25, :cond_2

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x500d

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1405
    :pswitch_4
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "TVLink Operation Started "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500d

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1408
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;

    invoke-virtual {v3, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->startTVLink(Landroid/broadcast/helper/types/MtvOneSegTVLink;)Z

    move-result v25

    .line 1410
    goto :goto_a

    .line 1413
    :pswitch_5
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->stopTVLink()Z

    move-result v25

    .line 1415
    goto :goto_a

    .line 1418
    :pswitch_6
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1419
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TVLink - delete Operation Started for index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteTvLink(I)Z

    move-result v25

    goto :goto_a

    .line 1426
    :pswitch_7
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1427
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "TVLink - Deleteing all tvlinks "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteAllTvLink()Z

    move-result v25

    goto/16 :goto_a

    .line 1434
    :pswitch_8
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1435
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "TVLink - Deleteing all affiliation areas "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteAllAffililiationAreas()Z

    move-result v25

    goto/16 :goto_a

    .line 1442
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 1443
    .local v12, "TvlinkUri":Landroid/broadcast/helper/types/MtvOneSegTVLink;
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1444
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TVLink - Deleteing broadcast area with affiliation id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "original net id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    iget v4, v12, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    invoke-virtual {v2, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteBroadCasterArea(II)Z

    move-result v25

    goto/16 :goto_a

    .line 1464
    .end local v12    # "TvlinkUri":Landroid/broadcast/helper/types/MtvOneSegTVLink;
    .end local v25    # "bTVLink":Z
    :sswitch_b
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Close Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->reset()V

    .line 1466
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x600d

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1467
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500e

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1900(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)Z

    goto/16 :goto_1

    .line 1473
    :sswitch_c
    const/16 v16, 0x0

    .line 1474
    .local v16, "bDelete":Z
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Delete Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1477
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500f

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1478
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->delete()Z

    move-result v16

    .line 1485
    :goto_b
    if-nez v16, :cond_2

    .line 1486
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Failure in deleting Playback Session ! Posting DELETE success and Stopping RemoteService !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v4, 0x500f

    const/16 v5, 0x6005

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V

    goto/16 :goto_1

    .line 1482
    :cond_20
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "OneSegService instance is null !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1495
    .end local v16    # "bDelete":Z
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    goto/16 :goto_1

    .line 1501
    :sswitch_e
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1502
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteTVFile(I)Z

    goto/16 :goto_1

    .line 1509
    :sswitch_f
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_21

    .line 1510
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Successfully created the playback session"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v4, 0x5001

    const/16 v5, 0x6005

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    goto/16 :goto_1

    .line 1525
    :cond_21
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Failure in creating the playback session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5001

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1532
    :sswitch_10
    const/16 v24, 0x0

    .line 1534
    .local v24, "bServCmd":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1536
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_23

    .line 1538
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Current open command success ! Checking if any pendng command needs to be processed !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5002

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    move-result v24

    .line 1548
    :cond_22
    :goto_c
    if-nez v24, :cond_2

    .line 1549
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_2

    .line 1618
    :pswitch_a
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Status ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "With OPEN command from backend.. Verify the commands once again!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1541
    :cond_23
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_22

    .line 1543
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Current open command failed ! Checking if any pendng command needs to be processed !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    move-result v24

    goto :goto_c

    .line 1557
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 1558
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Successfully opened the playback session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v4, 0x5002

    const/16 v5, 0x6005

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    .line 1561
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_24

    .line 1563
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)V

    .line 1567
    :cond_24
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Play Operation Started"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5002

    if-ne v2, v3, :cond_25

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5004

    const/16 v5, 0x6001

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1572
    :cond_25
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5007

    if-ne v2, v3, :cond_2

    .line 1573
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5004

    const/16 v4, 0x6001

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1600
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5002

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;III)V

    goto/16 :goto_1

    .line 1605
    :pswitch_d
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Failure in opening the playback session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_27

    .line 1610
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_1

    .line 1612
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5002

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1627
    .end local v24    # "bServCmd":Z
    :sswitch_11
    const/16 v24, 0x0

    .line 1630
    .restart local v24    # "bServCmd":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xd7

    if-ne v2, v3, :cond_28

    .line 1631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5004

    const/16 v5, 0x6011

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1637
    :cond_28
    if-nez v24, :cond_2

    .line 1638
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_3

    .line 1667
    :pswitch_e
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Status ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "With PLAY command from backend.. Verify the commands once again!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1640
    :pswitch_f
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Successfully started the playback session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v4, 0x5004

    const/16 v5, 0x6005

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    goto/16 :goto_1

    .line 1649
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5004

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;III)V

    goto/16 :goto_1

    .line 1655
    :pswitch_11
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "End of file reached"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5004

    const/16 v5, 0x6010

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1661
    :pswitch_12
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Failure in starting the playback session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5004

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1677
    .end local v24    # "bServCmd":Z
    :sswitch_12
    const/16 v24, 0x0

    .line 1678
    .restart local v24    # "bServCmd":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2a

    .line 1680
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Current open command success ! Checking if any pendng command needs to be processed !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5002

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    move-result v24

    .line 1691
    :cond_29
    :goto_d
    if-nez v24, :cond_2

    .line 1693
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_1

    .line 1723
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1683
    :cond_2a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xde

    if-ne v2, v3, :cond_29

    .line 1685
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Current open command failed ! Checking if any pendng command needs to be processed !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    move-result v24

    goto :goto_d

    .line 1696
    :sswitch_13
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Successfully opened the Recorder session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v4, 0x5002

    const/16 v5, 0x6005

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    goto/16 :goto_1

    .line 1702
    :sswitch_14
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Failure in opening the Recorder session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5002

    const/16 v5, 0x6004

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 1707
    :sswitch_15
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "REC_OPEN NIT recieved "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 1710
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setCurrentChannelName(Ljava/lang/String;)V

    .line 1711
    :cond_2b
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5002

    const/16 v4, 0x6019

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1715
    :sswitch_16
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "REC_OPEN EIT recieved "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 1717
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setCurrentProgramName(Ljava/lang/String;)V

    .line 1718
    :cond_2c
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5002

    const/16 v4, 0x6018

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1730
    .end local v24    # "bServCmd":Z
    :sswitch_17
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2

    .line 1732
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Successfully closed  the Recorder session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_2d

    .line 1735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1900(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)Z

    goto/16 :goto_1

    .line 1737
    :cond_2d
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_2

    .line 1739
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Ignoring Recorder Module close success command as player module is also in open state !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1747
    :sswitch_18
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_REC_START status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const/16 v5, 0x6002

    .local v5, "status":I
    const/16 v30, 0x6011

    .line 1750
    .local v30, "extra":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_2

    .line 1783
    :goto_e
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5007

    move/from16 v0, v30

    invoke-virtual {v2, v3, v5, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1752
    :sswitch_19
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->setCaptFrameName(Ljava/lang/String;)V

    .line 1754
    const/16 v30, 0x0

    .line 1756
    goto :goto_e

    .line 1758
    :sswitch_1a
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1759
    const/16 v5, 0x6004

    .line 1760
    const/16 v30, 0x6011

    .line 1762
    goto :goto_e

    .line 1764
    :sswitch_1b
    const/16 v5, 0x6004

    .line 1765
    const/16 v30, 0x6012

    .line 1767
    goto :goto_e

    .line 1770
    :sswitch_1c
    const/16 v5, 0x6004

    .line 1771
    const/16 v30, 0x6013

    .line 1773
    goto :goto_e

    .line 1776
    :sswitch_1d
    const/16 v5, 0x600c

    .line 1777
    const/16 v30, 0x0

    .line 1779
    goto :goto_e

    .line 1789
    .end local v5    # "status":I
    .end local v30    # "extra":I
    :sswitch_1e
    const/16 v5, 0x6004

    .line 1790
    .restart local v5    # "status":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2e

    .line 1791
    const/16 v5, 0x6005

    .line 1794
    :cond_2e
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1795
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5007

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    goto/16 :goto_1

    .line 1801
    .end local v5    # "status":I
    :sswitch_1f
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v26

    .line 1802
    .local v26, "curCmd":I
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Got the captured frame"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const/16 v2, 0x5008

    move/from16 v0, v26

    if-ne v0, v2, :cond_30

    .line 1805
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 1807
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2f

    .line 1808
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->setCaptFrame(Landroid/graphics/Bitmap;)V

    .line 1809
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x6005

    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1811
    :cond_2f
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x6004

    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1813
    :cond_30
    const/16 v2, 0x5007

    move/from16 v0, v26

    if-ne v0, v2, :cond_31

    .line 1814
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2

    .line 1815
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->setCaptFrame(Landroid/graphics/Bitmap;)V

    .line 1816
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x6014

    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1819
    :cond_31
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid curCmd ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. CaptureFrame CB Cannot be handled!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1825
    .end local v26    # "curCmd":I
    :sswitch_20
    const/16 v24, 0x0

    .line 1827
    .restart local v24    # "bServCmd":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5005

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    move-result v24

    .line 1828
    if-nez v24, :cond_2

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5005

    if-ne v2, v3, :cond_2

    .line 1829
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_4

    .line 1858
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Status ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "With SCAN command from backend.. Verify the commands once again!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1831
    :pswitch_13
    const/16 v5, 0x6016

    .line 1832
    .restart local v5    # "status":I
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setLastScannedChannel(I)V

    .line 1833
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_32

    .line 1834
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)V

    .line 1835
    const/16 v5, 0x6015

    .line 1842
    :cond_32
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5005

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1848
    .end local v5    # "status":I
    :pswitch_14
    const/16 v5, 0x6004

    .line 1849
    .restart local v5    # "status":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_33

    .line 1850
    const/16 v5, 0x6005

    .line 1852
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    const/16 v4, 0x5005

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    .line 1853
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->reset()V

    goto/16 :goto_1

    .line 1868
    .end local v5    # "status":I
    .end local v24    # "bServCmd":Z
    :sswitch_21
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Got CANCEL_SCAN from Service"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x5006

    const/16 v9, 0x6005

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    .line 1870
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->reset()V

    .line 1872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x5000

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z

    goto/16 :goto_1

    .line 1877
    :sswitch_22
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_5

    .line 2042
    :pswitch_15
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Status ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with STATUS_UPDT from Service. Dont know, what to do!?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1879
    :pswitch_16
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x500e

    if-eq v2, v3, :cond_2

    .line 1881
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setProgram([Landroid/broadcast/helper/types/MtvOneSegProgram;)V

    goto/16 :goto_1

    .line 1890
    :pswitch_17
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x500e

    if-eq v2, v3, :cond_2

    .line 1891
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    check-cast v2, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)V

    goto/16 :goto_1

    .line 1896
    :pswitch_18
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x601a

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1900
    :pswitch_19
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x500e

    if-eq v2, v3, :cond_2

    .line 1901
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setTot(J)V

    goto/16 :goto_1

    .line 1911
    :pswitch_1a
    const/16 v33, 0x0

    .line 1913
    .local v33, "sigQuality":I
    sget v2, Landroid/broadcast/oneseg/MtvOneSegService;->MTV_SERVICE_NO_SIGNAL:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eq v2, v3, :cond_34

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3a

    .line 1915
    :cond_34
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_37

    .line 1917
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/broadcast/helper/types/MtvOneSegSignal;

    .line 1918
    .local v29, "currentSignalStat":Landroid/broadcast/helper/types/MtvOneSegSignal;
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setSignalStatistics(Landroid/broadcast/helper/types/MtvOneSegSignal;)V

    .line 1921
    if-eqz v29, :cond_35

    .line 1923
    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getSignalQuality()I

    move-result v33

    .line 1927
    :cond_35
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current SignalQuality ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setSignalLevel(I)V

    .line 1936
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2500()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_36

    .line 1937
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Low- Signal:: Go to good signal area else TV will be stopped immediately!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x600c

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_1

    .line 1941
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_1

    .line 1951
    .end local v29    # "currentSignalStat":Landroid/broadcast/helper/types/MtvOneSegSignal;
    :cond_37
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setSignalLevel(I)V

    .line 1952
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2500()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_39

    .line 1953
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Low- Signal:: Go to good signal area else TV will be stopped immediately!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    const/16 v28, 0x0

    .line 1955
    .local v28, "currentOpenedChannel":I
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 1956
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v28

    .line 1957
    :cond_38
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x600c

    move/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_1

    .line 1960
    .end local v28    # "currentOpenedChannel":I
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_1

    .line 1965
    :cond_3a
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v2

    if-nez v2, :cond_3c

    .line 1966
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    .line 1967
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->setSignalLevel(I)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_1

    .line 1970
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    goto/16 :goto_1

    .line 1973
    :cond_3c
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "As there are pending commands ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to be serviced, ignoring LOW_SIGNAL from Player"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1980
    .end local v33    # "sigQuality":I
    :pswitch_1b
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "LOW SIGNAL  event !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const/16 v28, -0x1

    .line 1982
    .restart local v28    # "currentOpenedChannel":I
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 1983
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v28

    .line 1984
    :cond_3d
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x600c

    move/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 1988
    .end local v28    # "currentOpenedChannel":I
    :pswitch_1c
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v26

    .line 1990
    .restart local v26    # "curCmd":I
    const/16 v2, 0x500e

    move/from16 v0, v26

    if-eq v0, v2, :cond_2

    const/16 v2, 0x500b

    move/from16 v0, v26

    if-eq v0, v2, :cond_2

    const/16 v2, 0x500c

    move/from16 v0, v26

    if-eq v0, v2, :cond_2

    .line 1993
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->setBuffer(Landroid/text/SpannableStringBuilder;)V

    .line 1994
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x600d

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 2000
    .end local v26    # "curCmd":I
    :pswitch_1d
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Time Update:: New time is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x600e

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 2007
    :pswitch_1e
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x600f

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 2012
    :pswitch_1f
    const/16 v5, 0x6004

    .line 2014
    .restart local v5    # "status":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_3e

    .line 2015
    const/16 v5, 0x6003

    .line 2017
    :cond_3e
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x6017

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 2023
    .end local v5    # "status":I
    :pswitch_20
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5003

    const/16 v4, 0x6009

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 2050
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IILcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;I)Z

    goto/16 :goto_1

    .line 2055
    :sswitch_24
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Resume SUCCESS from Service: New time is: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v3, 0x100

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4, v6, v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IILcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;I)Z

    goto/16 :goto_1

    .line 2061
    :sswitch_25
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_40

    .line 2062
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Trickmode SUCCESS from Service: New time is: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 2065
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1602(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2066
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1702(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2068
    :cond_3f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500b

    const/16 v9, 0x6005

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2070
    :cond_40
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_42

    .line 2072
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Trickmode Progress from Service: New time is: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    if-nez v2, :cond_41

    .line 2075
    new-instance v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;)V

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1402(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .line 2077
    :cond_41
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2080
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500b

    const/16 v9, 0x6002

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2083
    :cond_42
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xd6

    if-ne v2, v3, :cond_2

    .line 2085
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Got Trickmode  End of file reached"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x5004

    const/16 v9, 0x6010

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2092
    :sswitch_26
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Reposition SUCCESS from Service: New time is: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    const/16 v5, 0x6004

    .line 2095
    .restart local v5    # "status":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_44

    .line 2096
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "SEEK - SEEK Done"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    const/16 v5, 0x6005

    .line 2098
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 2099
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2105
    :cond_43
    :goto_f
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 2107
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v4, 0x500c

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    goto/16 :goto_1

    .line 2102
    :cond_44
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Failure in [112] session. resuming the playback"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2902(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;Z)Z

    goto :goto_f

    .line 2116
    .end local v5    # "status":I
    :sswitch_27
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_45

    .line 2118
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Got CMD_TVLINK_START SUCCESS from Service:"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500d

    const/16 v4, 0x6002

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    goto/16 :goto_1

    .line 2121
    :cond_45
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Got CMD_TVLINK_START FAILURE!!! from Service:"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500d

    const/16 v9, 0x6004

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2128
    :sswitch_28
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_46

    .line 2129
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_STOP:TVLink Operation Completed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500d

    const/16 v9, 0x6005

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2133
    :cond_46
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_STOP FAILURE!!!! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500d

    const/16 v9, 0x6004

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2140
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1900(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)Z

    .line 2141
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x500e

    if-ne v2, v3, :cond_2

    .line 2142
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "As the current command is CMD_CLOSE, resetting the cur cmd to NONE - Else other commands will never be serviced"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x5000

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    goto/16 :goto_1

    .line 2149
    :sswitch_2a
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Successfully deleted the playback session "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    sget-object v7, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v8, 0x500f

    const/16 v9, 0x6005

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V

    goto/16 :goto_1

    .line 2157
    :sswitch_2b
    const/16 v9, 0x6004

    .line 2158
    .local v9, "iDelStatus":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_47

    .line 2159
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_DEL Operation Completed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    const/16 v9, 0x6005

    .line 2166
    :goto_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500d

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2163
    :cond_47
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_DEL FAILURE!!!! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2171
    .end local v9    # "iDelStatus":I
    :sswitch_2c
    const/16 v9, 0x6004

    .line 2172
    .restart local v9    # "iDelStatus":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_48

    .line 2173
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_DEL Operation Completed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const/16 v9, 0x6005

    .line 2181
    :goto_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500d

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2177
    :cond_48
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_DEL_ALL FAILURE!!!! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 2186
    .end local v9    # "iDelStatus":I
    :sswitch_2d
    const/16 v9, 0x6004

    .line 2187
    .restart local v9    # "iDelStatus":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_49

    .line 2188
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_DEL Operation Completed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const/16 v9, 0x6005

    goto/16 :goto_1

    .line 2192
    :cond_49
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_AFFI_DEL FAILURE!!!! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500d

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2199
    .end local v9    # "iDelStatus":I
    :sswitch_2e
    const/16 v9, 0x6004

    .line 2200
    .restart local v9    # "iDelStatus":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_4a

    .line 2201
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_DEL Operation Completed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    const/16 v9, 0x6005

    .line 2209
    :goto_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v7, 0x5000

    const/16 v8, 0x500d

    const/4 v10, 0x6

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V

    goto/16 :goto_1

    .line 2206
    :cond_4a
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "CMD_TVLINK_BROADCAST_AREA_DEL FAILURE!!!! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 2219
    .end local v9    # "iDelStatus":I
    :cond_4b
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "******Invalid Context. Cannot Handle commands in PlayerThread******"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1065
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_e
        0x11 -> :sswitch_d
        0x65 -> :sswitch_f
        0x66 -> :sswitch_10
        0x67 -> :sswitch_18
        0x69 -> :sswitch_1e
        0x6a -> :sswitch_1f
        0x6b -> :sswitch_20
        0x6c -> :sswitch_21
        0x6d -> :sswitch_23
        0x6e -> :sswitch_24
        0x6f -> :sswitch_25
        0x70 -> :sswitch_26
        0x71 -> :sswitch_22
        0x72 -> :sswitch_11
        0x73 -> :sswitch_27
        0x74 -> :sswitch_28
        0x75 -> :sswitch_29
        0x76 -> :sswitch_2a
        0x77 -> :sswitch_2b
        0x78 -> :sswitch_2c
        0x79 -> :sswitch_2d
        0x7a -> :sswitch_2e
        0x7f -> :sswitch_12
        0x80 -> :sswitch_17
        0x5001 -> :sswitch_0
        0x5002 -> :sswitch_1
        0x5005 -> :sswitch_4
        0x5006 -> :sswitch_5
        0x5007 -> :sswitch_3
        0x5008 -> :sswitch_2
        0x5009 -> :sswitch_6
        0x500a -> :sswitch_7
        0x500b -> :sswitch_8
        0x500c -> :sswitch_9
        0x500d -> :sswitch_a
        0x500e -> :sswitch_b
        0x500f -> :sswitch_c
    .end sparse-switch

    .line 1199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1403
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1549
    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 1638
    :pswitch_data_3
    .packed-switch 0xc9
        :pswitch_f
        :pswitch_e
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 1693
    :sswitch_data_1
    .sparse-switch
        0xc9 -> :sswitch_13
        0xdc -> :sswitch_16
        0xdd -> :sswitch_15
        0xde -> :sswitch_14
    .end sparse-switch

    .line 1750
    :sswitch_data_2
    .sparse-switch
        0xc9 -> :sswitch_19
        0xcb -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xd9 -> :sswitch_1c
        0xde -> :sswitch_1d
    .end sparse-switch

    .line 1829
    :pswitch_data_4
    .packed-switch 0xc9
        :pswitch_14
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 1877
    :pswitch_data_5
    .packed-switch 0xcf
        :pswitch_20
        :pswitch_16
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1f
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method
