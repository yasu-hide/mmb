.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$2;
.super Ljava/lang/Object;
.source "MtvUiRemoveList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$2;->this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$2;->this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    .line 243
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    return-void
.end method
