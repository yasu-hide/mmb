.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11$1;
.super Ljava/lang/Object;
.source "MtvUiPopUpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11$1;->this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11$1;->this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 392
    return-void
.end method
