.class Lcom/access/bml/BMLFont;
.super Ljava/lang/Object;
.source "BMLFont.java"


# static fields
.field private static mFontPath:Ljava/lang/String;

.field private static mTypeface:Landroid/graphics/Typeface;


# instance fields
.field private _ascent:F

.field private _descent:F

.field private _family:Ljava/lang/String;

.field private _isBold:Z

.field private _isItalic:Z

.field private _paint:Landroid/graphics/Paint;

.field private _size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    sput-object v0, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;

    .line 276
    sput-object v0, Lcom/access/bml/BMLFont;->mFontPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 2
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "fontIsBold"    # Z
    .param p4, "fontIsItalic"    # Z

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/access/bml/BMLFont;->_family:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/access/bml/BMLFont;->_size:I

    .line 27
    iput-boolean p3, p0, Lcom/access/bml/BMLFont;->_isBold:Z

    .line 28
    iput-boolean p4, p0, Lcom/access/bml/BMLFont;->_isItalic:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    .line 30
    iput v1, p0, Lcom/access/bml/BMLFont;->_ascent:F

    .line 31
    iput v1, p0, Lcom/access/bml/BMLFont;->_descent:F

    .line 32
    return-void
.end method

.method public static Finalize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    sput-object v0, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;

    .line 264
    sput-object v0, Lcom/access/bml/BMLFont;->mFontPath:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public static setFont(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "asmgr"    # Landroid/content/res/AssetManager;
    .param p1, "ttfStr"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setFont(Landroid/graphics/Typeface;)V
    .locals 0
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 84
    sput-object p0, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;

    .line 85
    return-void
.end method

.method public static setFontPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 90
    sput-object p0, Lcom/access/bml/BMLFont;->mFontPath:Ljava/lang/String;

    .line 91
    sget-object v1, Lcom/access/bml/BMLFont;->mFontPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/access/bml/BMLFont;->mFontPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/access/bml/BMLFont;->mFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;

    .line 101
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private setProperPaintSize()V
    .locals 7

    .prologue
    const/high16 v6, 0x3e800000    # 0.25f

    .line 108
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 109
    .local v1, "minDelta":F
    const/high16 v3, 0x3e800000    # 0.25f

    .line 110
    .local v3, "step":F
    iget v4, p0, Lcom/access/bml/BMLFont;->_size:I

    int-to-float v2, v4

    .local v2, "s":F
    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_0

    .line 126
    :goto_1
    return-void

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v4, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lcom/access/bml/BMLFont;->_ascent:F

    .line 113
    iget-object v4, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lcom/access/bml/BMLFont;->_descent:F

    .line 114
    iget v4, p0, Lcom/access/bml/BMLFont;->_size:I

    int-to-float v4, v4

    iget v5, p0, Lcom/access/bml/BMLFont;->_ascent:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/access/bml/BMLFont;->_descent:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 115
    .local v0, "delta":F
    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    .line 116
    move v1, v0

    .line 110
    sub-float/2addr v2, v6

    goto :goto_0

    .line 118
    :cond_1
    iget-object v4, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    add-float v5, v2, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    iget-object v4, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lcom/access/bml/BMLFont;->_ascent:F

    .line 120
    iget-object v4, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lcom/access/bml/BMLFont;->_descent:F

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "font"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 35
    instance-of v2, p1, Lcom/access/bml/BMLFont;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 36
    check-cast v0, Lcom/access/bml/BMLFont;

    .line 37
    .local v0, "f":Lcom/access/bml/BMLFont;
    iget-object v2, p0, Lcom/access/bml/BMLFont;->_family:Ljava/lang/String;

    iget-object v3, v0, Lcom/access/bml/BMLFont;->_family:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget v2, p0, Lcom/access/bml/BMLFont;->_size:I

    iget v3, v0, Lcom/access/bml/BMLFont;->_size:I

    if-ne v2, v3, :cond_0

    .line 39
    iget-boolean v2, p0, Lcom/access/bml/BMLFont;->_isBold:Z

    iget-boolean v3, v0, Lcom/access/bml/BMLFont;->_isBold:Z

    if-ne v2, v3, :cond_0

    .line 40
    iget-boolean v2, p0, Lcom/access/bml/BMLFont;->_isItalic:Z

    iget-boolean v3, v0, Lcom/access/bml/BMLFont;->_isItalic:Z

    if-ne v2, v3, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 42
    .end local v0    # "f":Lcom/access/bml/BMLFont;
    :cond_0
    return v1
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/access/bml/BMLFont;->_family:Ljava/lang/String;

    return-object v0
.end method

.method protected getFloatAscent()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/access/bml/BMLFont;->getPaint()Landroid/graphics/Paint;

    .line 189
    :cond_0
    iget v0, p0, Lcom/access/bml/BMLFont;->_ascent:F

    return v0
.end method

.method protected getFloatDescent()F
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/access/bml/BMLFont;->getPaint()Landroid/graphics/Paint;

    .line 196
    :cond_0
    iget v0, p0, Lcom/access/bml/BMLFont;->_descent:F

    return v0
.end method

.method public getIntAscent()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/access/bml/BMLFont;->getPaint()Landroid/graphics/Paint;

    .line 208
    :cond_0
    iget v0, p0, Lcom/access/bml/BMLFont;->_ascent:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getIntDescent()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/access/bml/BMLFont;->getPaint()Landroid/graphics/Paint;

    .line 220
    :cond_0
    iget v0, p0, Lcom/access/bml/BMLFont;->_descent:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getIntHeight()I
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/access/bml/BMLFont;->getIntAscent()I

    move-result v0

    invoke-virtual {p0}, Lcom/access/bml/BMLFont;->getIntDescent()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getIsBold()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/access/bml/BMLFont;->_isBold:Z

    return v0
.end method

.method public getIsItalic()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/access/bml/BMLFont;->_isItalic:Z

    return v0
.end method

.method public getMaxCharWidth()I
    .locals 1

    .prologue
    .line 250
    const-string v0, "W"

    invoke-virtual {p0, v0}, Lcom/access/bml/BMLFont;->measureTextWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinCharWidth()I
    .locals 1

    .prologue
    .line 259
    const-string v0, "i"

    invoke-virtual {p0, v0}, Lcom/access/bml/BMLFont;->measureTextWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v1, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    if-nez v1, :cond_4

    .line 134
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    .line 135
    iget-object v1, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "style":I
    iget-boolean v1, p0, Lcom/access/bml/BMLFont;->_isBold:Z

    if-eqz v1, :cond_0

    .line 138
    or-int/lit8 v0, v0, 0x1

    .line 139
    :cond_0
    iget-boolean v1, p0, Lcom/access/bml/BMLFont;->_isItalic:Z

    if-eqz v1, :cond_1

    .line 140
    or-int/lit8 v0, v0, 0x2

    .line 169
    :cond_1
    sget-object v1, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    .line 170
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    sget-object v2, Lcom/access/bml/BMLFont;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 174
    iget-boolean v1, p0, Lcom/access/bml/BMLFont;->_isBold:Z

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/access/bml/BMLFont;->setProperPaintSize()V

    .line 181
    .end local v0    # "style":I
    :cond_4
    iget-object v1, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/access/bml/BMLFont;->_size:I

    return v0
.end method

.method public measureTextWidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/access/bml/BMLFont;->getPaint()Landroid/graphics/Paint;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLFont;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
