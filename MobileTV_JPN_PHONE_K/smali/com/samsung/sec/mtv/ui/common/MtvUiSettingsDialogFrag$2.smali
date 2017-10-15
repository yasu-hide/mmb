.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$2;
.super Ljava/lang/Object;
.source "MtvUiSettingsDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->createDialogByType()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 188
    const/4 p1, 0x0

    .line 189
    return-void
.end method
