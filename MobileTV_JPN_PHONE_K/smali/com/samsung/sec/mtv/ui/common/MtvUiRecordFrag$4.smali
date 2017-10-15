.class Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$4;
.super Ljava/lang/Object;
.source "MtvUiRecordFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;
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
    .line 555
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    return-void
.end method
