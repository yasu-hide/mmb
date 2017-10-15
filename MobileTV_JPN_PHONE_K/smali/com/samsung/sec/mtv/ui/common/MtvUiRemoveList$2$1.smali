.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$1;
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
    .line 246
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2$1;->this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 249
    return-void
.end method
