.class Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$1;
.super Ljava/lang/Object;
.source "MtvUiAntennaDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 94
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$1;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$1;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$1;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$1;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->antennaCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0
.end method
