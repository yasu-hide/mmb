.class Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$3;
.super Ljava/lang/Object;
.source "MtvUiAntennaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 120
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$3;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog$3;->this$0:Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/externalantenna/MtvUiAntennaDialog;->finish()V

    .line 125
    return-void
.end method
