.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;
.super Ljava/lang/Object;
.source "MtvUiRemoveList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const v6, 0x7f070298

    const v5, 0x7f070237

    const v4, 0x7f07020b

    const/16 v3, 0x400

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 232
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v1

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    .line 284
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    goto :goto_1

    .line 237
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0702ce

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$2;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 254
    :pswitch_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "bInfo":Landroid/os/Bundle;
    const-string v1, "dialogType"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tv_files_delete_ok_cancel"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 259
    .end local v0    # "bInfo":Landroid/os/Bundle;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0702d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$4;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$3;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_1

    .line 278
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    goto/16 :goto_1

    .line 288
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    goto/16 :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x7f0a014c
        :pswitch_6
        :pswitch_0
    .end packed-switch

    .line 232
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
