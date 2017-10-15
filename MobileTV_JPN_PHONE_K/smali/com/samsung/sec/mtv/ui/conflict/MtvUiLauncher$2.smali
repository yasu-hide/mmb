.class Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;
.super Ljava/lang/Object;
.source "MtvUiLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->createNOTTvRunningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, -0x1

    .line 265
    const-string v3, "MtvUiLauncher"

    const-string v4, "User Canceled OneSegLaunch..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->access$000()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->access$100()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 267
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->access$000()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->access$100()I

    move-result v2

    .line 268
    .local v2, "reserveID":I
    :goto_0
    const-string v3, "MtvUiLauncher"

    const-string v4, "Reservation fail due to  User Canceled OneSegLaunch..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-static {v3, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v0

    .line 270
    .local v0, "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    const/4 v4, 0x7

    invoke-static {v3, v0, v4}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 271
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-direct {v1, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 272
    .local v1, "mMtvPreferences":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    invoke-virtual {v1, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setComingReservationID(I)V

    .line 274
    .end local v0    # "mCurrentReservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v1    # "mMtvPreferences":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .end local v2    # "reserveID":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$2;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->closeServiceAndFinish()V

    .line 275
    return-void

    .line 267
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->access$000()I

    move-result v2

    goto :goto_0
.end method
