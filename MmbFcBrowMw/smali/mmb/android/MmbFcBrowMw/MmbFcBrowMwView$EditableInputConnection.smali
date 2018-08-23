.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditableInputConnection"
.end annotation


# instance fields
.field private mEditable:Landroid/text/SpannableStringBuilder;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/view/View;)V
    .locals 3
    .param p2, "aTextview"    # Landroid/view/View;

    .prologue
    .line 3496
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 3497
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 3498
    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->mView:Landroid/view/View;

    .line 3499
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->mEditable:Landroid/text/SpannableStringBuilder;

    .line 3500
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->mEditable:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->mEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->mEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3501
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "EditableInputConnection()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3502
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "aText"    # Ljava/lang/CharSequence;
    .param p2, "aNewCursorPosition"    # I

    .prologue
    .line 3565
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "commitText()"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3567
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3568
    .local v0, "span":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 3570
    .local v1, "textlength":I
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Ljava/lang/String;II)Z

    .line 3571
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    return v2
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .param p1, "aLeftLength"    # I
    .param p2, "aRightLength"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v1, 0x43

    const/4 v3, 0x0

    .line 3531
    if-nez p2, :cond_0

    .line 3532
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move v2, v1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIZZZ)Z

    .line 3538
    :goto_0
    return v7

    .line 3535
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move v5, v1

    move v6, v1

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v9}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIZZZ)Z

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 3576
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "finishComposingText()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3578
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    .line 3580
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 3506
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getEditable()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3507
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->mEditable:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "aN"    # I
    .param p2, "aFlags"    # I

    .prologue
    .line 3512
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)Ljava/lang/String;

    move-result-object v0

    .line 3513
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3514
    const-string v0, ""

    .line 3516
    :cond_0
    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "aN"    # I
    .param p2, "aFlags"    # I

    .prologue
    .line 3521
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)Ljava/lang/String;

    move-result-object v0

    .line 3522
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3523
    const-string v0, ""

    .line 3526
    :cond_0
    return-object v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p1, "aText"    # Ljava/lang/CharSequence;
    .param p2, "aNewCursorPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 3543
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "setComposingText()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3545
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3546
    .local v3, "span":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 3548
    .local v5, "textlength":I
    const-class v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/BackgroundColorSpan;

    .line 3550
    .local v4, "spanColorObj":[Landroid/text/style/BackgroundColorSpan;
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 3551
    .local v0, "arrowState":I
    const/4 v2, 0x0

    .line 3552
    .local v2, "cursoroffset":I
    const/4 v6, 0x2

    if-ge v0, v6, :cond_0

    .line 3553
    const/4 v6, -0x1

    const-class v7, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 3557
    :goto_0
    if-nez p2, :cond_1

    .line 3558
    .local v1, "currentpos":I
    :goto_1
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1, v5, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Ljava/lang/String;III)Z

    .line 3560
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v6

    return v6

    .line 3555
    .end local v1    # "currentpos":I
    :cond_0
    const-class v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3557
    goto :goto_1
.end method
