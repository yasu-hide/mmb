.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;
.super Landroid/os/Handler;
.source "MtvUiChannelGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 166
    :cond_0
    return-void

    .line 145
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v2

    .line 147
    .local v2, "oneSegProgramList":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v4

    if-nez v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$002(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v3

    .line 151
    .local v3, "vch":I
    const/4 v1, 0x0

    .line 152
    .local v1, "mtvDBProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    .line 153
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 155
    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    .line 157
    new-instance v1, Lcom/samsung/sec/mtv/provider/MtvProgram;

    .end local v1    # "mtvDBProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    aget-object v4, v2, v0

    invoke-direct {v1, v4, v3}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(Landroid/broadcast/helper/types/MtvOneSegProgram;I)V

    .line 158
    .restart local v1    # "mtvDBProgram":Lcom/samsung/sec/mtv/provider/MtvProgram;
    if-eqz v1, :cond_2

    .line 159
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v4, v1}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvProgram;)V

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x15f
        :pswitch_0
    .end packed-switch
.end method
