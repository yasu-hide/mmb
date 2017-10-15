.class Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14$1;
.super Ljava/lang/Object;
.source "MtvUiSViewCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14;)V
    .locals 0

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14$1;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2047
    invoke-static {}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$5800()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2048
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v2, "reserve_end_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 2049
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 2051
    :cond_0
    return-void
.end method
