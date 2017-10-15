.class Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;
.super Ljava/lang/Object;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

.field final synthetic val$channelNameList:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->val$channelNameList:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->val$channelNameList:[Ljava/lang/CharSequence;

    aget-object v0, v1, p2

    check-cast v0, Ljava/lang/String;

    .line 1098
    .local v0, "itemString":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$502(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;I)I

    .line 1100
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    iput v2, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mPch:I

    .line 1101
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    iput v2, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mVch:I

    .line 1102
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    iput v2, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mChannelServiceID:I

    .line 1103
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->checkInputAllField(Z)V

    .line 1104
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1105
    return-void
.end method
