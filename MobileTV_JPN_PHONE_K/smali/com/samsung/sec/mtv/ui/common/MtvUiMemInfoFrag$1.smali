.class Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag$1;
.super Ljava/lang/Object;
.source "MtvUiMemInfoFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->buildDialog(Landroid/view/View;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->dismiss()V

    .line 79
    return-void
.end method
