.class Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$2;
.super Ljava/lang/Object;
.source "MtvUiRecordFrag.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    .line 243
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/PopupMenu;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;Z)Z

    .line 247
    return-void
.end method
