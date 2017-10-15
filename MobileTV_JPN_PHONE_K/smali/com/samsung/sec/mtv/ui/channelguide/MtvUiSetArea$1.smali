.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;
.super Ljava/lang/Object;
.source "MtvUiSetArea.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;I)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    iput p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 137
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    invoke-static {v2, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->access$002(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;I)I

    .line 138
    packed-switch p2, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    const-string v2, "MtvUiSetArea"

    const-string v3, "Reset the vaue"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->val$pos:I

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->update2Default(Landroid/content/Context;I)V

    .line 142
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;)V

    .line 143
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "noAreaSet"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v2, "setarea"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    invoke-virtual {v2, v4, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->setResult(ILandroid/content/Intent;)V

    .line 148
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v0

    .line 149
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 150
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->finish()V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
