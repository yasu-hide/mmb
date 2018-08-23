.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;
.super Ljava/lang/Object;
.source "MmbFwLexerSv.java"


# static fields
.field private static final FIRST_TOKENS:[I

.field public static final OPERATORS:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

.field private static final RESERVED_WORD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES:[Ljava/lang/String;


# instance fields
.field private mIndex:I

.field private mKind:I

.field private mLast:I

.field private mPosition:I

.field private mSource:Ljava/lang/String;

.field private mWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 109
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EOF"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "=="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "!="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ">"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ">="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "<"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "<="

    aput-object v3, v1, v2

    const-string v2, "LIKE"

    aput-object v2, v1, v5

    const-string v2, "("

    aput-object v2, v1, v6

    const/16 v2, 0x9

    const-string v3, ")"

    aput-object v3, v1, v2

    const-string v2, "AND"

    aput-object v2, v1, v7

    const-string v2, "OR"

    aput-object v2, v1, v8

    const/16 v2, 0xc

    const-string v3, "?"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "<ID>"

    aput-object v3, v1, v2

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->VALUES:[Ljava/lang/String;

    .line 129
    const/16 v1, 0xe

    new-array v1, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_NOT_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_GREATER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_GREATER_OR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LESS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LESS_OR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aput-object v3, v1, v2

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LIKE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aput-object v2, v1, v5

    aput-object v4, v1, v6

    const/16 v2, 0x9

    aput-object v4, v1, v2

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->OPERATORS:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "LIKE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "AND"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "OR"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->RESERVED_WORD_MAP:Ljava/util/Map;

    .line 281
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->FIRST_TOKENS:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x8
        0x9
        0x1
        0xc
        0x5
        0x3
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aSource"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mSource:Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mLast:I

    .line 207
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    .line 211
    return-void
.end method

.method private peekChar()C
    .locals 3

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "nextChar":C
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mLast:I

    if-ge v1, v2, :cond_0

    .line 443
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mSource:Ljava/lang/String;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 448
    :cond_0
    return v0
.end method

.method private readChar()C
    .locals 4

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "nextChar":C
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mLast:I

    if-ge v1, v2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mSource:Ljava/lang/String;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 422
    :cond_0
    return v0
.end method

.method private readIdentifier(C)Ljava/lang/String;
    .locals 6
    .param p1, "aFirstChar"    # C

    .prologue
    .line 355
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->peekChar()C

    move-result v0

    .line 361
    .local v0, "nextChar":C
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readChar()C

    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->peekChar()C

    move-result v0

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method private readNextChar()C
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readChar()C

    move-result v0

    .line 390
    .local v0, "nextChar":C
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readChar()C

    move-result v0

    goto :goto_0

    .line 396
    :cond_0
    return v0
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    .line 233
    .local v0, "result":I
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mPosition:I

    .line 277
    .local v0, "result":I
    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mWord:Ljava/lang/String;

    .line 256
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public next()V
    .locals 7

    .prologue
    const/16 v6, 0x3d

    .line 301
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readNextChar()C

    move-result v0

    .line 302
    .local v0, "firstChar":C
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mPosition:I

    .line 303
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mWord:Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->peekChar()C

    move-result v1

    .line 305
    .local v1, "secondChar":C
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->FIRST_TOKENS:[I

    const-string v5, "()=?<>\u0000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    .line 306
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    sparse-switch v4, :sswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 308
    :sswitch_0
    if-ne v1, v6, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readChar()C

    .line 310
    const/4 v4, 0x4

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    goto :goto_0

    .line 314
    :sswitch_1
    if-ne v1, v6, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readChar()C

    .line 316
    const/4 v4, 0x6

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    goto :goto_0

    .line 317
    :cond_1
    const/16 v4, 0x3e

    if-ne v1, v4, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readChar()C

    .line 319
    const/4 v4, 0x2

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    goto :goto_0

    .line 323
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->readIdentifier(C)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "str":Ljava/lang/String;
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->RESERVED_WORD_MAP:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 325
    .local v3, "tokenKind":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 326
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    goto :goto_0

    .line 328
    :cond_2
    const/16 v4, 0xd

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mKind:I

    .line 329
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->mWord:Ljava/lang/String;

    goto :goto_0

    .line 306
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
