.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;
.super Ljava/lang/Object;
.source "MmbFwParserSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwWordSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    }
.end annotation


# instance fields
.field mArgs:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method private andExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 329
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->binaryExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v0

    .line 330
    .local v0, "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    .line 331
    .local v1, "kind":I
    if-eq v1, v4, :cond_0

    .line 344
    .end local v0    # "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    :goto_0
    return-object v0

    .line 337
    .restart local v0    # "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v2, "nodelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_1
    if-ne v1, v4, :cond_1

    .line 340
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    .line 341
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->binaryExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    goto :goto_1

    .line 344
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;

    .end local v0    # "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    invoke-direct {v0, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;-><init>(ILjava/util/List;)V

    goto :goto_0
.end method

.method private binaryExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    .locals 7

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->primaryExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v0

    .line 363
    .local v0, "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    .line 364
    .local v1, "kind":I
    if-eqz v1, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    :cond_0
    move-object v2, v0

    .line 378
    :goto_0
    return-object v2

    .line 371
    :cond_1
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->OPERATORS:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 372
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    .line 373
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->primaryExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v3

    .line 374
    .local v3, "secondNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-direct {v2, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;-><init>(I[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;)V

    .line 378
    .local v2, "resultNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    goto :goto_0

    .line 380
    .end local v2    # "resultNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    .end local v3    # "secondNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->VALUES:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private orExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 296
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->andExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v0

    .line 297
    .local v0, "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    .line 298
    .local v1, "kind":I
    if-eq v1, v4, :cond_0

    .line 311
    .end local v0    # "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    :goto_0
    return-object v0

    .line 304
    .restart local v0    # "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v2, "nodelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_1
    if-ne v1, v4, :cond_1

    .line 307
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    .line 308
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->andExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    goto :goto_1

    .line 311
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;

    .end local v0    # "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    invoke-direct {v0, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwOperatorSv;-><init>(ILjava/util/List;)V

    goto :goto_0
.end method

.method private parenExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    .locals 4

    .prologue
    .line 449
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    .line 450
    .local v1, "kind":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 451
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    .line 454
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->orExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v0

    .line 455
    .local v0, "firstNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    .line 456
    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 457
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    .line 463
    return-object v0
.end method

.method private primaryExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    .locals 9

    .prologue
    .line 399
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getKind()I

    move-result v1

    .line 400
    .local v1, "kind":I
    packed-switch v1, :pswitch_data_0

    .line 431
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "syntax error"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 402
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->parenExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v3

    .line 429
    :goto_0
    return-object v3

    .line 408
    :pswitch_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->getWord()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "word":Ljava/lang/String;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mCols:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 410
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal field name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 412
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwWordSv;

    invoke-direct {v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwWordSv;-><init>(Ljava/lang/String;)V

    .line 413
    .local v5, "wordNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    move-object v3, v5

    .line 417
    goto :goto_0

    .line 419
    .end local v4    # "word":Ljava/lang/String;
    .end local v5    # "wordNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    :pswitch_3
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;-><init>()V

    .line 421
    .local v2, "parameterNode":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mArgs:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwParameterSv;->mString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;->next()V

    move-object v3, v2

    .line 429
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "err":Ljava/util/NoSuchElementException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No such Argument value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 400
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Set;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    .locals 2
    .param p1, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "aArgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "aCols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    invoke-direct {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mLex:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwLexerSv;

    .line 273
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mArgs:Ljava/util/Iterator;

    .line 274
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->mCols:Ljava/util/Set;

    .line 275
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv;->orExpression()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;

    move-result-object v0

    .line 279
    .local v0, "node":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwParserSv$MmbFwNodeSv;
    return-object v0
.end method
