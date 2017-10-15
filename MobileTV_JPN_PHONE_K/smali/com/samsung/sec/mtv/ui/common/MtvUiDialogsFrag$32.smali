.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$32;
.super Ljava/lang/Object;
.source "MtvUiDialogsFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->createDialogByType(ILandroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$32;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "itemPosition"    # I

    .prologue
    .line 780
    packed-switch p2, :pswitch_data_0

    .line 790
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 791
    const/4 p1, 0x0

    .line 792
    return-void

    .line 782
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$32;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAutoPlayNext(Z)V

    goto :goto_0

    .line 785
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$32;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAutoPlayNext(Z)V

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
