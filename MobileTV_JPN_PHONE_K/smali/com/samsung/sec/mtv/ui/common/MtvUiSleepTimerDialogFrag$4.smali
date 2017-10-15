.class Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$4;
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
    .line 190
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->setAlarm(Landroid/content/Context;JZ)V

    .line 194
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$702(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 195
    return-void
.end method
