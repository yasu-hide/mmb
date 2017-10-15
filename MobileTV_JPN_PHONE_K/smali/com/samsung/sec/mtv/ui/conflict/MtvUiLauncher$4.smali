.class Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$4;
.super Ljava/lang/Object;
.source "MtvUiLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 279
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher$4;->this$0:Lcom/samsung/sec/mtv/ui/conflict/MtvUiLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 282
    const-string v0, "MtvUiLauncher"

    const-string v1, "onDismiss of OneSeg Popup..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method
