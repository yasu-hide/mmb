.class Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$5;
.super Ljava/lang/Object;
.source "MtvUiSleepTimerDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->createDialogByType(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0xe0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$702(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 188
    return-void
.end method
