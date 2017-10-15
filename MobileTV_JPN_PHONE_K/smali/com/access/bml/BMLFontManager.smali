.class Lcom/access/bml/BMLFontManager;
.super Ljava/lang/Object;
.source "BMLFontManager.java"


# instance fields
.field private fontLib:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/access/bml/BMLFont;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    .line 48
    return-void
.end method


# virtual methods
.method public addFontToLib(Lcom/access/bml/BMLFont;)I
    .locals 1
    .param p1, "font"    # Lcom/access/bml/BMLFont;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final createFont(Ljava/lang/String;IZZ)Lcom/access/bml/BMLFont;
    .locals 1
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "fontIsBold"    # Z
    .param p4, "fontIsItalic"    # Z

    .prologue
    .line 54
    new-instance v0, Lcom/access/bml/BMLFont;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/access/bml/BMLFont;-><init>(Ljava/lang/String;IZZ)V

    return-object v0
.end method

.method public findFont(Lcom/access/bml/BMLFont;)I
    .locals 1
    .param p1, "font"    # Lcom/access/bml/BMLFont;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getFont(I)Lcom/access/bml/BMLFont;
    .locals 3
    .param p1, "fontId"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    const-string v1, ""

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/access/bml/BMLFontManager;->createFont(Ljava/lang/String;IZZ)Lcom/access/bml/BMLFont;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 81
    const/4 p1, 0x0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLFontManager;->fontLib:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/access/bml/BMLFont;

    return-object v0
.end method

.method public getFontId(Lcom/access/bml/BMLFont;)I
    .locals 1
    .param p1, "font"    # Lcom/access/bml/BMLFont;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLFontManager;->findFont(Lcom/access/bml/BMLFont;)I

    move-result v0

    .line 67
    .local v0, "fontId":I
    if-gez v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLFontManager;->addFontToLib(Lcom/access/bml/BMLFont;)I

    move-result v0

    .line 73
    :cond_0
    return v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1
    .param p1, "fontId"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLFontManager;->getFont(I)Lcom/access/bml/BMLFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/access/bml/BMLFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public setFont(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "asmgr"    # Landroid/content/res/AssetManager;
    .param p2, "ttfStr"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1, p2}, Lcom/access/bml/BMLFont;->setFont(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/access/bml/BMLFont;->setFont(Landroid/graphics/Typeface;)V

    .line 44
    return-void
.end method

.method public setFontPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/access/bml/BMLFont;->setFontPath(Ljava/lang/String;)V

    .line 25
    return-void
.end method
