.class Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$1;
.super Ljava/lang/Object;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->initViewControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 356
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 357
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    .line 358
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mCurrentAcitivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 359
    const-string v1, ""

    .line 368
    :goto_1
    return-object v1

    .line 356
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x78

    if-lt v1, v2, :cond_3

    .line 366
    const-string v1, ""

    goto :goto_1

    .line 368
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
