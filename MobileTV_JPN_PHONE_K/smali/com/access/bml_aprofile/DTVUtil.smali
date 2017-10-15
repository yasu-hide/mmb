.class public final Lcom/access/bml_aprofile/DTVUtil;
.super Ljava/lang/Object;
.source "DTVUtil.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/access/bml_aprofile/DTVUtil;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCallingClassName(I)Ljava/lang/String;
    .locals 7
    .param p0, "step"    # I

    .prologue
    .line 96
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 97
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 99
    .local v1, "element":[Ljava/lang/StackTraceElement;
    array-length v5, v1

    if-gt v5, p0, :cond_0

    .line 100
    const-string v3, "unknownclass"

    .line 110
    :goto_0
    return-object v3

    .line 102
    :cond_0
    aget-object v5, v1, p0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "fullClassName":Ljava/lang/String;
    :try_start_0
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 107
    .local v3, "simpleClassName":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v3    # "simpleClassName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v3, v2

    .line 110
    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->getCallingClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "callingClassName":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->getCallingClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "callingClassName":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->getCallingClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "callingClassName":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static logV(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->getCallingClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "callingClassName":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->getCallingClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "callingClassName":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public static show(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const-class v2, Lcom/access/bml_aprofile/DTVUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/access/bml_aprofile/DTVUtil;->getCallingClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "callingClassName":Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    sget-object v2, Lcom/access/bml_aprofile/DTVUtil;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 32
    const/4 v2, 0x0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/access/bml_aprofile/DTVUtil;->mToast:Landroid/widget/Toast;

    .line 37
    :goto_1
    sget-object v2, Lcom/access/bml_aprofile/DTVUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    const-class v2, Lcom/access/bml_aprofile/DTVUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to show message."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/access/bml_aprofile/DTVUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
