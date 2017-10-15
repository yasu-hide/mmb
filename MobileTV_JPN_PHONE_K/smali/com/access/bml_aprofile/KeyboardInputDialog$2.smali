.class Lcom/access/bml_aprofile/KeyboardInputDialog$2;
.super Ljava/lang/Object;
.source "KeyboardInputDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml_aprofile/KeyboardInputDialog;->setLayout(IIILjava/lang/String;Landroid/app/AlertDialog$Builder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$2;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 206
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "text":Ljava/lang/String;
    const-string v0, "[^0-9]"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 210
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, "spannableString":Landroid/text/SpannableString;
    move-object v0, p1

    .line 211
    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 215
    .end local v4    # "spannableString":Landroid/text/SpannableString;
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v6

    goto :goto_0
.end method
