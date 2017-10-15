.class Lcom/access/bml_aprofile/TVSystem$1;
.super Landroid/os/Handler;
.source "TVSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml_aprofile/TVSystem;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/TVSystem;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/TVSystem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem$1;->this$0:Lcom/access/bml_aprofile/TVSystem;

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :pswitch_0
    const-string v0, "Unknown message was detected."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 128
    :pswitch_1
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem$1;->this$0:Lcom/access/bml_aprofile/TVSystem;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/access/bml_aprofile/TDTVDialogParameter;

    invoke-static {v1, v0}, Lcom/access/bml_aprofile/TVSystem;->access$1(Lcom/access/bml_aprofile/TVSystem;Lcom/access/bml_aprofile/TDTVDialogParameter;)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem$1;->this$0:Lcom/access/bml_aprofile/TVSystem;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/access/bml_aprofile/TVSystem;->access$2(Lcom/access/bml_aprofile/TVSystem;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem$1;->this$0:Lcom/access/bml_aprofile/TVSystem;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/access/bml_aprofile/KeyboardInputParameter;

    invoke-static {v1, v0}, Lcom/access/bml_aprofile/TVSystem;->access$3(Lcom/access/bml_aprofile/TVSystem;Lcom/access/bml_aprofile/KeyboardInputParameter;)V

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/access/bml_aprofile/TVSystem$1;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-static {v1}, Lcom/access/bml_aprofile/TVSystem;->access$4(Lcom/access/bml_aprofile/TVSystem;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/access/bml_aprofile/DTVUtil;->show(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
