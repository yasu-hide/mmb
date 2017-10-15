.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$4;
.super Ljava/lang/Object;
.source "MtvUiPopUpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->createPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 200
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$400()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAutoPowerOffTime(I)V

    .line 201
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 202
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method
