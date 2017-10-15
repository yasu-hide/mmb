.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32$1;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;)V
    .locals 0

    .prologue
    .line 5844
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5847
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16800()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 5848
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v2, "reserve_end_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 5849
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 5850
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 5851
    :cond_0
    return-void
.end method
