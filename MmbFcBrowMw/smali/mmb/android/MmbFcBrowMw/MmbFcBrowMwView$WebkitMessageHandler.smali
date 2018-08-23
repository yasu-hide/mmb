.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;
.super Landroid/os/Handler;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebkitMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 0

    .prologue
    .line 3746
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 58
    .param p1, "aMsg"    # Landroid/os/Message;

    .prologue
    .line 3749
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 4175
    :cond_0
    :goto_0
    return-void

    .line 3751
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    .line 3752
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 3753
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setUserAgent(Ljava/lang/String;)V

    .line 3754
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3755
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onEventOccurredListener.onInitialized()"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3756
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    invoke-interface {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onInitialized()V

    goto :goto_0

    .line 3761
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3762
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 3763
    .local v43, "errorcode":I
    packed-switch v43, :pswitch_data_0

    .line 3782
    :goto_1
    :pswitch_0
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventOccurredListener.onError(errorcode) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;)V

    .line 3783
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    move/from16 v0, v43

    invoke-interface {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onError(I)V

    goto :goto_0

    .line 3765
    :pswitch_1
    const/16 v43, 0x2c1

    .line 3766
    goto :goto_1

    .line 3768
    :pswitch_2
    const/16 v43, 0x320

    .line 3769
    goto :goto_1

    .line 3771
    :pswitch_3
    const/16 v43, 0x321

    .line 3772
    goto :goto_1

    .line 3774
    :pswitch_4
    const/16 v43, 0x322

    .line 3775
    goto :goto_1

    .line 3777
    :pswitch_5
    const/16 v43, 0x323

    .line 3778
    goto :goto_1

    .line 3780
    :pswitch_6
    const/16 v43, 0x324

    goto :goto_1

    .line 3788
    .end local v43    # "errorcode":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3789
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventOccurredListener.onLoadComplete(aMsg.obj) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3790
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onLoadComplete(Ljava/lang/String;)V

    .line 3791
    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2602(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 3796
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3797
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object/from16 v51, v2

    check-cast v51, [Ljava/lang/Object;

    .line 3798
    .local v51, "objs":[Ljava/lang/Object;
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventOccurredListener.onUnhandledUri(objs[0], objs[1]) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v51, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v51, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3799
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v4

    const/4 v2, 0x0

    aget-object v2, v51, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v51, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onUnhandledUri(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3804
    .end local v51    # "objs":[Ljava/lang/Object;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3805
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onEventOccurredListener.onVideoDimChange(msg.arg1); %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3806
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onVideoDimChange(I)V

    goto/16 :goto_0

    .line 3811
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->invalidate()V

    goto/16 :goto_0

    .line 3815
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 3819
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/graphics/Rect;

    .line 3820
    .local v53, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 3821
    .local v44, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3822
    .local v40, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3823
    move-object/from16 v0, v53

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v53

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v53

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v53

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->layout(IIII)V

    .line 3824
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->requestLayout()V

    goto/16 :goto_0

    .line 3829
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v44    # "id":I
    .end local v53    # "rect":Landroid/graphics/Rect;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Ljava/lang/String;

    .line 3830
    .local v56, "uri":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 3832
    .restart local v44    # "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3833
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_0

    .line 3834
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->layout(IIII)V

    .line 3835
    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->initMmbFcBrowMwVideoView()V

    .line 3836
    move-object/from16 v0, v40

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setUri(Ljava/lang/String;)V

    .line 3837
    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setVideoViewId(I)V

    .line 3839
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move/from16 v0, v44

    invoke-static {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    goto/16 :goto_0

    .line 3844
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v44    # "id":I
    .end local v56    # "uri":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 3846
    .restart local v44    # "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move/from16 v0, v44

    invoke-static {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    goto/16 :goto_0

    .line 3850
    .end local v44    # "id":I
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3851
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 3852
    .local v6, "state":I
    if-eqz v40, :cond_0

    .line 3854
    const/16 v2, 0xc

    if-ne v6, v2, :cond_1

    .line 3855
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 3856
    .local v7, "buffersize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v3

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v4

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v5

    invoke-static/range {v2 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3857
    .end local v7    # "buffersize":I
    :cond_1
    const/16 v2, 0x11

    if-ne v6, v2, :cond_2

    .line 3858
    move-object/from16 v0, p0

    iget-object v8, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v9

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v10

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v11

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVolume()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v13, v2

    move v12, v6

    invoke-static/range {v8 .. v13}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3859
    :cond_2
    const/16 v2, 0x12

    if-ne v6, v2, :cond_3

    .line 3860
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 3861
    .local v13, "speed":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v9

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v10

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v11

    move v12, v6

    invoke-static/range {v8 .. v13}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3862
    .end local v13    # "speed":I
    :cond_3
    const/16 v2, 0x13

    if-ne v6, v2, :cond_4

    .line 3863
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 3864
    .local v19, "duration":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v15

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v16

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v17

    move/from16 v18, v6

    invoke-static/range {v14 .. v19}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3865
    .end local v19    # "duration":I
    :cond_4
    const/16 v2, 0xd

    if-ne v6, v2, :cond_6

    .line 3866
    const/16 v39, 0x0

    .line 3867
    .local v39, "cnt":I
    :goto_2
    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isRegisterMedia()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x64

    move/from16 v0, v39

    if-ge v0, v2, :cond_5

    .line 3869
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3870
    add-int/lit8 v39, v39, 0x1

    goto :goto_2

    .line 3871
    :catch_0
    move-exception v42

    .line 3872
    .local v42, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 3875
    .end local v42    # "e":Ljava/lang/InterruptedException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v20, v0

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v21

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v22

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v23

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v25

    move/from16 v24, v6

    invoke-static/range {v20 .. v25}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3876
    .end local v39    # "cnt":I
    :cond_6
    const/4 v2, 0x5

    if-ne v6, v2, :cond_7

    .line 3877
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 3878
    .local v25, "errortype":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v20, v0

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v21

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v22

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v23

    move/from16 v24, v6

    invoke-static/range {v20 .. v25}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3879
    .end local v25    # "errortype":I
    :cond_7
    const/16 v2, 0x15

    if-ne v6, v2, :cond_8

    .line 3880
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 3881
    .local v31, "respondrejected":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v26, v0

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v27

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v28

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v29

    move/from16 v30, v6

    invoke-static/range {v26 .. v31}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3883
    .end local v31    # "respondrejected":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v32, v0

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewId()I

    move-result v33

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaData()I

    move-result v34

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaCB()I

    move-result v35

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v37

    move/from16 v36, v6

    invoke-static/range {v32 .. v37}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3888
    .end local v6    # "state":I
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3889
    .local v38, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 3890
    .restart local v6    # "state":I
    if-eqz v38, :cond_0

    .line 3892
    const/16 v2, 0xc

    if-ne v6, v2, :cond_9

    .line 3893
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 3894
    .restart local v7    # "buffersize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioId()I

    move-result v3

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaData()I

    move-result v4

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaCB()I

    move-result v5

    invoke-static/range {v2 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3895
    .end local v7    # "buffersize":I
    :cond_9
    const/16 v2, 0x11

    if-ne v6, v2, :cond_a

    .line 3896
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v32, v0

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioId()I

    move-result v33

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaData()I

    move-result v34

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaCB()I

    move-result v35

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getVolume()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v37, v0

    move/from16 v36, v6

    invoke-static/range {v32 .. v37}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3897
    :cond_a
    const/16 v2, 0x13

    if-ne v6, v2, :cond_b

    .line 3898
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 3899
    .restart local v19    # "duration":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioId()I

    move-result v15

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaData()I

    move-result v16

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaCB()I

    move-result v17

    move/from16 v18, v6

    invoke-static/range {v14 .. v19}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3900
    .end local v19    # "duration":I
    :cond_b
    const/16 v2, 0xd

    if-ne v6, v2, :cond_d

    .line 3901
    const/16 v39, 0x0

    .line 3902
    .restart local v39    # "cnt":I
    :goto_3
    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isRegisterMedia()Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0x64

    move/from16 v0, v39

    if-ge v0, v2, :cond_c

    .line 3904
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3905
    add-int/lit8 v39, v39, 0x1

    goto :goto_3

    .line 3906
    :catch_1
    move-exception v42

    .line 3907
    .restart local v42    # "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 3910
    .end local v42    # "e":Ljava/lang/InterruptedException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v32, v0

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioId()I

    move-result v33

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaData()I

    move-result v34

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaCB()I

    move-result v35

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaState()I

    move-result v37

    move/from16 v36, v6

    invoke-static/range {v32 .. v37}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3911
    .end local v39    # "cnt":I
    :cond_d
    const/4 v2, 0x5

    if-ne v6, v2, :cond_e

    .line 3912
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 3913
    .restart local v25    # "errortype":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v20, v0

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioId()I

    move-result v21

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaData()I

    move-result v22

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaCB()I

    move-result v23

    move/from16 v24, v6

    invoke-static/range {v20 .. v25}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3914
    .end local v25    # "errortype":I
    :cond_e
    const/16 v2, 0x15

    if-ne v6, v2, :cond_f

    .line 3915
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 3916
    .restart local v31    # "respondrejected":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v26, v0

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioId()I

    move-result v27

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaData()I

    move-result v28

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaCB()I

    move-result v29

    move/from16 v30, v6

    invoke-static/range {v26 .. v31}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3918
    .end local v31    # "respondrejected":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v32, v0

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioId()I

    move-result v33

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaData()I

    move-result v34

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaCB()I

    move-result v35

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaState()I

    move-result v37

    move/from16 v36, v6

    invoke-static/range {v32 .. v37}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V

    goto/16 :goto_0

    .line 3923
    .end local v6    # "state":I
    .end local v38    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3925
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 3926
    .restart local v44    # "id":I
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_10

    const/16 v46, 0x1

    .line 3927
    .local v46, "isquirksmode":Z
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v47

    .line 3928
    .local v47, "loop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3929
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_0

    .line 3930
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2802(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    .line 3931
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move/from16 v0, v44

    invoke-static {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)I

    .line 3932
    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setQuirksMode(Z)V

    .line 3933
    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setLoop(Z)V

    .line 3934
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v46

    invoke-direct {v3, v4, v5, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/content/Context;Z)V

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .line 3935
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 3936
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getHeight()I

    move-result v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->layout(IIII)V

    .line 3937
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v5, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->layout(IIII)V

    .line 3938
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    .line 3940
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->requestLayout()V

    .line 3941
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3942
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onEventOccurredListener.onEnterFullScreen()"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3943
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    invoke-interface {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onEnterFullScreen()V

    goto/16 :goto_0

    .line 3926
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v46    # "isquirksmode":Z
    .end local v47    # "loop":Z
    :cond_10
    const/16 v46, 0x0

    goto/16 :goto_4

    .line 3949
    .end local v44    # "id":I
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3950
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_0

    .line 3953
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->hide()V

    .line 3954
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 3955
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .line 3956
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getHeight()I

    move-result v8

    invoke-virtual {v2, v3, v4, v5, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->layout(IIII)V

    .line 3958
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->requestLayout()V

    .line 3959
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 3960
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onEventOccurredListener.onExitFullScreen()"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3961
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    invoke-interface {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onExitFullScreen()V

    .line 3963
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x69

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-static {v2, v3, v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v55

    .line 3964
    .local v55, "tmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3969
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v55    # "tmsg":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 3971
    .restart local v44    # "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v2

    move/from16 v0, v44

    if-ne v2, v0, :cond_12

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingAudio()Z

    move-result v3

    if-ne v2, v3, :cond_12

    .line 3972
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x73

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v3, v4, v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    .line 3973
    .local v50, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3976
    .end local v50    # "msg":Landroid/os/Message;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3977
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_0

    .line 3978
    monitor-enter v40

    .line 3979
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    move/from16 v0, v44

    if-ne v2, v0, :cond_14

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 3980
    const/4 v2, 0x1

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isStopable()Z

    move-result v3

    if-ne v2, v3, :cond_15

    .line 3981
    const/4 v2, 0x1

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->stopPlayback()Z

    move-result v3

    if-eq v2, v3, :cond_13

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3700()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_13

    .line 3982
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3708()I

    .line 3983
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v44

    invoke-static {v2, v3, v0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    .line 3984
    .restart local v50    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const-wide/16 v4, 0x64

    move-object/from16 v0, v50

    invoke-virtual {v2, v0, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3985
    monitor-exit v40
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4005
    .end local v50    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    move-object/from16 v41, v40

    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .local v41, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :goto_5
    :try_start_3
    monitor-exit v40
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 3987
    .end local v41    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :cond_13
    const/4 v2, 0x0

    :try_start_4
    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3702(I)I

    .line 4002
    :cond_14
    :goto_6
    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->releaseMmbFcBrowMwVideoView()V

    .line 4003
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->removeView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4004
    const/16 v41, 0x0

    .line 4005
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .restart local v41    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :try_start_5
    monitor-exit v40
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4006
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4007
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4008
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v40, v41

    .end local v41    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    goto/16 :goto_0

    .line 3990
    :cond_15
    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v3

    if-ne v2, v3, :cond_14

    .line 3991
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : reset() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3992
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 3993
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : reset() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3994
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : release() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3995
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 3996
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : release() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3997
    const/4 v2, 0x0

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 3998
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, -0x1

    iput v3, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 4008
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .restart local v41    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 4013
    .end local v41    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v44    # "id":I
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 4015
    .restart local v44    # "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v2

    move/from16 v0, v44

    if-ne v2, v0, :cond_16

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingAudio()Z

    move-result v3

    if-ne v2, v3, :cond_16

    .line 4016
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v3, v4, v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    .line 4017
    .restart local v50    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4019
    .end local v50    # "msg":Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 4020
    .restart local v38    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v38, :cond_0

    .line 4021
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    move/from16 v0, v44

    if-ne v2, v0, :cond_18

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 4022
    const/4 v2, 0x1

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isStopable()Z

    move-result v3

    if-ne v2, v3, :cond_19

    .line 4023
    const/4 v2, 0x1

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->stopPlayback()Z

    move-result v3

    if-eq v2, v3, :cond_17

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3700()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_17

    .line 4024
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3708()I

    .line 4025
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v44

    invoke-static {v2, v3, v0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    .line 4026
    .restart local v50    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const-wide/16 v4, 0x64

    move-object/from16 v0, v50

    invoke-virtual {v2, v0, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4029
    .end local v50    # "msg":Landroid/os/Message;
    :cond_17
    const/4 v2, 0x0

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3702(I)I

    .line 4044
    :cond_18
    :goto_7
    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->trickPlayAreaClear()V

    .line 4045
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 4046
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2

    .line 4032
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v3

    if-ne v2, v3, :cond_18

    .line 4033
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : reset() 3"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4034
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 4035
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : reset() 3"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4036
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : release() 3"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4037
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 4038
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : release() 3"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4039
    const/4 v2, 0x0

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 4040
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, -0x1

    iput v3, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    goto :goto_7

    .line 4054
    .end local v38    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .end local v44    # "id":I
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    .line 4055
    .local v52, "playing":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move/from16 v0, v52

    invoke-static {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3802(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    .line 4056
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4057
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEventOccurredListener.onPlayingAudio(playing) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4058
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    move-result-object v2

    move/from16 v0, v52

    invoke-interface {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;->onPlayingAudio(Z)V

    goto/16 :goto_0

    .line 4063
    .end local v52    # "playing":Z
    :sswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 4064
    .restart local v44    # "id":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 4065
    .local v57, "view":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4066
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_0

    .line 4067
    move-object/from16 v0, v40

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMmbFcBrowMwView(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    .line 4068
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaPlayer(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 4069
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setAudioOutDev(I)V

    .line 4070
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setAudioMute(I)V

    .line 4071
    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getUri()Ljava/lang/String;

    move-result-object v56

    .line 4072
    .restart local v56    # "uri":Ljava/lang/String;
    if-eqz v56, :cond_0

    .line 4075
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v48

    .line 4076
    .local v48, "low":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/16 v5, 0xa

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->layout(IIII)V

    .line 4077
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move/from16 v0, v44

    iput v0, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 4078
    move-object/from16 v0, v40

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 4080
    invoke-virtual/range {v57 .. v57}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getChildCount()I

    move-result v2

    add-int/lit8 v54, v2, -0x1

    .line 4081
    .local v54, "size":I
    if-lez v54, :cond_1a

    .line 4082
    const/4 v2, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v54

    invoke-virtual {v0, v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->removeViews(II)V

    .line 4083
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 4088
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v44    # "id":I
    .end local v48    # "low":Ljava/lang/String;
    .end local v54    # "size":I
    .end local v56    # "uri":Ljava/lang/String;
    .end local v57    # "view":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    :sswitch_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 4089
    .restart local v44    # "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 4090
    .restart local v38    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v38, :cond_0

    .line 4091
    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getUri()Ljava/lang/String;

    move-result-object v56

    .line 4092
    .restart local v56    # "uri":Ljava/lang/String;
    if-eqz v56, :cond_0

    .line 4095
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaPlayer(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    .line 4096
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setAudioMute(I)V

    .line 4097
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move/from16 v0, v44

    iput v0, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 4098
    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setAudioPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4103
    .end local v38    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .end local v44    # "id":I
    .end local v56    # "uri":Ljava/lang/String;
    :sswitch_13
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 4104
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : new MmbFcMp4MwPlayer() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4105
    new-instance v2, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-direct {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;-><init>()V

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 4106
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out:new MmbFcMp4MwPlayer() 2"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4108
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v3, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4109
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_1e

    .line 4110
    const/4 v2, 0x1

    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isStopable()Z

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 4111
    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isPlaying()Z

    move-result v45

    .line 4112
    .local v45, "isPlaying":Z
    invoke-virtual/range {v40 .. v40}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->stopPlayback()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    move/from16 v0, v45

    if-ne v2, v0, :cond_1c

    .line 4113
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x73

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v3, v4, v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    .line 4114
    .restart local v50    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4116
    .end local v50    # "msg":Landroid/os/Message;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    goto/16 :goto_0

    .line 4118
    .end local v45    # "isPlaying":Z
    :cond_1d
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : reset() 4"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4119
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 4120
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : reset() 4"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4121
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : release() 4"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4122
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 4123
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : release() 4"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4124
    const/4 v2, 0x0

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 4125
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, -0x1

    iput v3, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 4126
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : new MmbFcMp4MwPlayer() 4"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4127
    new-instance v2, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-direct {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;-><init>()V

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 4128
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : new MmbFcMp4MwPlayer() 4"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4129
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    goto/16 :goto_0

    .line 4133
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v3, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 4134
    .restart local v38    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v38, :cond_0

    .line 4135
    const/4 v2, 0x1

    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isStopable()Z

    move-result v3

    if-ne v2, v3, :cond_20

    .line 4136
    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isPlaying()Z

    move-result v45

    .line 4137
    .restart local v45    # "isPlaying":Z
    invoke-virtual/range {v38 .. v38}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->stopPlayback()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    move/from16 v0, v45

    if-ne v2, v0, :cond_1f

    .line 4138
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v3, v4, v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    .line 4139
    .restart local v50    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4141
    .end local v50    # "msg":Landroid/os/Message;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    goto/16 :goto_0

    .line 4143
    .end local v45    # "isPlaying":Z
    :cond_20
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : reset() 5"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4144
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 4145
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : reset() 5"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4146
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : release() 5"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4147
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 4148
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : release() 5"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4149
    const/4 v2, 0x0

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 4150
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, -0x1

    iput v3, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 4151
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : new MmbFcMp4MwPlayer() 5"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4152
    new-instance v2, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-direct {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;-><init>()V

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 4153
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : new MmbFcMp4MwPlayer() 5"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 4154
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    goto/16 :goto_0

    .line 4161
    .end local v38    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :sswitch_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 4162
    .restart local v44    # "id":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v49

    .line 4163
    .local v49, "mode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4164
    .restart local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v40, :cond_0

    .line 4167
    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaDisplay(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4168
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v0, v44

    invoke-static {v2, v3, v0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    .line 4169
    .restart local v50    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/16 v3, 0xc8

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4170
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const-wide/16 v4, 0x64

    move-object/from16 v0, v50

    invoke-virtual {v2, v0, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4005
    .end local v40    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v49    # "mode":I
    .end local v50    # "msg":Landroid/os/Message;
    .restart local v41    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :catchall_3
    move-exception v2

    goto/16 :goto_5

    .line 3749
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6a -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_e
        0x6e -> :sswitch_f
        0x6f -> :sswitch_10
        0x70 -> :sswitch_11
        0x71 -> :sswitch_13
        0x72 -> :sswitch_12
        0x73 -> :sswitch_10
        0xc8 -> :sswitch_14
    .end sparse-switch

    .line 3763
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
