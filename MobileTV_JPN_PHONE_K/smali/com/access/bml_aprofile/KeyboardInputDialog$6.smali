.class Lcom/access/bml_aprofile/KeyboardInputDialog$6;
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
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$6;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 287
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "text":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 290
    .local v9, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 299
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 300
    const-string v0, "[^\u30a1-\u30ef\u30f2\u30f3\u3000\u3001\u3002\u30fb\u30fc\u2015\u300c\u300d]"

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 302
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 303
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, "spannableString":Landroid/text/SpannableString;
    move-object v0, p1

    .line 304
    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 308
    .end local v4    # "spannableString":Landroid/text/SpannableString;
    :goto_1
    return-object v4

    .line 291
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    .line 293
    .local v6, "c":C
    const/16 v0, 0x3040

    if-gt v0, v6, :cond_1

    const/16 v0, 0x309f

    if-gt v6, v0, :cond_1

    .line 294
    add-int/lit16 v0, v6, -0x3040

    add-int/lit16 v0, v0, 0x30a0

    int-to-char v7, v0

    .line 295
    .local v7, "convert":C
    invoke-virtual {v9, v8, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 290
    .end local v7    # "convert":C
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v6    # "c":C
    :cond_2
    move-object v4, v10

    .line 308
    goto :goto_1
.end method
