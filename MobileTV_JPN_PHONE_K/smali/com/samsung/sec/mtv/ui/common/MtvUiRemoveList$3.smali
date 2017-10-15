.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$3;
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
    .line 347
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 349
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->toggle(I)V

    .line 350
    return-void
.end method
