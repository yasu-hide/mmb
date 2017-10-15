.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$5;
.super Ljava/lang/Object;
.source "MtvUiRemoveList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->createTabList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0a005c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 430
    .local v0, "textview":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    const v3, 0x7f070241

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$900(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->toggle(I)V

    goto :goto_0
.end method
