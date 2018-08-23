.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;
.super Landroid/os/Handler;
.source "MmbFcBrowMwViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitPopupHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "aMsg"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 153
    :pswitch_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "realm"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "authtype"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "cbFunc"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cbFunc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;I)V

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cbFunc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;I)V

    goto :goto_0

    .line 173
    :pswitch_4
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "defaultStr"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "cbFunc"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 180
    :pswitch_5
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "userdata"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;I)V

    goto/16 :goto_0

    .line 184
    :pswitch_6
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "index"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "userdata"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;[Ljava/lang/String;[Z[ZII)V

    goto/16 :goto_0

    .line 192
    :pswitch_7
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

    .line 193
    .local v6, "res":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-static {v0, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;)V

    goto/16 :goto_0

    .line 197
    .end local v6    # "res":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;
    :pswitch_8
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 199
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
