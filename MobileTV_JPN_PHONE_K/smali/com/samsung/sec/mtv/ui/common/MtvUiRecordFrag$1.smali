.class Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$1;
.super Ljava/lang/Object;
.source "MtvUiRecordFrag.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->showPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 239
    return v1
.end method
