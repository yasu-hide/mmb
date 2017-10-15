.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;
.super Ljava/lang/Object;
.source "MtvUiDialogsFrag.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgramNameInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$1;

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v2, 0x0

    const v8, 0x7f0702a8

    const/16 v7, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 901
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    rsub-int/lit8 v1, v3, 0x32

    .line 903
    .local v1, "keep":I
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-object v2

    .line 906
    :cond_1
    if-lez p3, :cond_2

    if-gtz v1, :cond_2

    .line 907
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "format":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Ljava/lang/String;)V

    .line 909
    const-string v2, ""

    goto :goto_0

    .line 910
    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    .line 913
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    .restart local v0    # "format":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Ljava/lang/String;)V

    .line 915
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method
