.class Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$3;
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
    .line 254
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 257
    const-string v0, "MtvUiLauncher"

    const-string v1, "User Wants OneSegLaunch...!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$3;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->handleAssignResource()V

    .line 260
    return-void
.end method
