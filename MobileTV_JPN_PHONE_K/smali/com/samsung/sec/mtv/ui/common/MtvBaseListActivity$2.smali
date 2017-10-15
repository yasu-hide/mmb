.class Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$2;
.super Ljava/lang/Object;
.source "MtvBaseListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->mPresentation:Landroid/app/Presentation;

    .line 140
    :cond_0
    return-void
.end method
