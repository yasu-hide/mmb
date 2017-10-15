.class Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;
.super Ljava/lang/Object;
.source "MtvUiAntennaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->access$000(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsAntenaDialogRequired(Z)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->access$100(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$2;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->access$000(Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsAntenaDialogRequired(Z)V

    goto :goto_0
.end method
