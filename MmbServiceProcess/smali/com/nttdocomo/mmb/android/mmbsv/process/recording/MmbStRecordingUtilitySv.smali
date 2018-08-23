.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;
.super Ljava/lang/Object;
.source "MmbStRecordingUtilitySv.java"


# static fields
.field static LENGTH:[I

.field static META_GENRE_COLUMN:[Ljava/lang/String;

.field static META_KEYWORD_COLUMN:[Ljava/lang/String;

.field static META_SYNOPSIS_COLUMN:[Ljava/lang/String;

.field static PURCHASE_NAME:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static PURCHASE_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static TYPE:[I

.field static TYPE_NUM:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 74
    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE_NUM:I

    .line 75
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "metaKeyWordMain"

    aput-object v1, v0, v3

    const-string v1, "metaKeyWordSecondary"

    aput-object v1, v0, v4

    const-string v1, "metaKeyWordOther"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->META_KEYWORD_COLUMN:[Ljava/lang/String;

    .line 79
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE:[I

    .line 83
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "metaGenreMain"

    aput-object v1, v0, v3

    const-string v1, "metaGenreSecondary"

    aput-object v1, v0, v4

    const-string v1, "metaGenreOther"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->META_GENRE_COLUMN:[Ljava/lang/String;

    .line 87
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "metaSynopsisShort"

    aput-object v1, v0, v3

    const-string v1, "metaSynopsisMedium"

    aput-object v1, v0, v4

    const-string v1, "metaSynopsisLong"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->META_SYNOPSIS_COLUMN:[Ljava/lang/String;

    .line 91
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->LENGTH:[I

    .line 96
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$1;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$1;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->PURCHASE_TYPE:Ljava/util/HashMap;

    .line 107
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$2;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv$2;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->PURCHASE_NAME:Ljava/util/HashMap;

    return-void

    .line 79
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 91
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static changeMmbStRecMwReturnRecStatus(I)I
    .locals 5
    .param p0, "aRecStatus"    # I

    .prologue
    const/4 v4, 0x0

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "error":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "result":I
    packed-switch p0, :pswitch_data_0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recording prepare is NG!! OterError["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :pswitch_0
    const/4 v1, 0x1

    .line 204
    return v1

    .line 192
    :pswitch_1
    const-string v0, "recording prepare is NG!!"

    .line 193
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static changeRecStatusReturn(I)I
    .locals 1
    .param p0, "aRecStatus"    # I

    .prologue
    .line 223
    const/16 v0, 0x100

    .line 224
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 254
    :goto_0
    return v0

    .line 226
    :pswitch_0
    const/4 v0, 0x0

    .line 227
    goto :goto_0

    .line 229
    :pswitch_1
    const/16 v0, 0xc

    .line 230
    goto :goto_0

    .line 232
    :pswitch_2
    const/16 v0, 0xd

    .line 233
    goto :goto_0

    .line 235
    :pswitch_3
    const/4 v0, 0x3

    .line 236
    goto :goto_0

    .line 238
    :pswitch_4
    const/16 v0, 0x9

    .line 239
    goto :goto_0

    .line 241
    :pswitch_5
    const/16 v0, 0xe

    .line 242
    goto :goto_0

    .line 244
    :pswitch_6
    const/16 v0, 0x100

    .line 245
    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static checkCridFormat(Ljava/lang/String;)Z
    .locals 3
    .param p0, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "ret":Z
    if-nez p0, :cond_1

    .line 276
    const/4 v0, 0x0

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0xff

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkMmbStRecMwResultType(I)V
    .locals 2
    .param p0, "aResult"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    packed-switch p0, :pswitch_data_0

    .line 163
    :pswitch_0
    return-void

    .line 150
    :pswitch_1
    const-string v0, "middle general error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "middle general error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_2
    const-string v0, "middle state error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v1, "middle state error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_3
    const-string v0, "middle fatal error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v1, "middle fatal error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertMetaItem(Landroid/database/Cursor;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .locals 14
    .param p0, "aCursor"    # Landroid/database/Cursor;
    .param p1, "aMetaController"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 345
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;-><init>()V

    .line 347
    .local v2, "metaInfo":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    const-string v8, "crid"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mCrid:Ljava/lang/String;

    .line 349
    const-string v8, "metaTitleMain"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mTitle:Ljava/lang/String;

    .line 351
    const-string v8, "metaTitleSecondary"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mSubTitle:Ljava/lang/String;

    .line 353
    const-string v8, "metaTitleImage"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mMediaTitleImage:Ljava/lang/String;

    .line 355
    const-string v8, "metaRealTimeEvtStartTime"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramStartTime:J

    .line 357
    const-string v8, "metaRealTimeEvtEndTime"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramEndTime:J

    .line 359
    const-string v8, "metaParental"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mParentalControlInformation:Ljava/lang/String;

    .line 362
    sget v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE_NUM:I

    new-array v8, v8, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE_NUM:I

    if-ge v1, v8, :cond_0

    .line 364
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    new-instance v9, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    invoke-direct {v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;-><init>()V

    aput-object v9, v8, v1

    .line 365
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v8, v8, v1

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->META_KEYWORD_COLUMN:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    .line 367
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v8, v8, v1

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE:[I

    aget v9, v9, v1

    iput v9, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    sget v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE_NUM:I

    new-array v8, v8, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    .line 371
    const/4 v1, 0x0

    :goto_1
    sget v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE_NUM:I

    if-ge v1, v8, :cond_1

    .line 372
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    new-instance v9, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    invoke-direct {v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;-><init>()V

    aput-object v9, v8, v1

    .line 373
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v8, v8, v1

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->META_GENRE_COLUMN:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    .line 375
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v8, v8, v1

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE:[I

    aget v9, v9, v1

    iput v9, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_1
    sget v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE_NUM:I

    new-array v8, v8, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    .line 379
    const/4 v1, 0x0

    :goto_2
    sget v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->TYPE_NUM:I

    if-ge v1, v8, :cond_2

    .line 380
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    new-instance v9, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    invoke-direct {v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;-><init>()V

    aput-object v9, v8, v1

    .line 381
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    aget-object v8, v8, v1

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->META_SYNOPSIS_COLUMN:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mSynopsis:Ljava/lang/String;

    .line 383
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    aget-object v8, v8, v1

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->LENGTH:[I

    aget v9, v9, v1

    iput v9, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mLength:I

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 386
    :cond_2
    new-instance v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-direct {v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;-><init>()V

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    .line 387
    const-string v8, "metaPurchasePrice"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "price":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 390
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    .line 392
    :cond_3
    const-string v8, "JPY"

    const-string v9, "metaPurchaseCurrency"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 395
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iput v13, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    .line 400
    :goto_3
    new-instance v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-direct {v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;-><init>()V

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    .line 401
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iput v12, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    .line 402
    const-string v8, "metaPurchaseType"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "purchaseType":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/ARIBPurchaseTypeCS/"

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "split":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 409
    const/4 v8, 0x1

    :try_start_0
    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "en"

    invoke-virtual {p1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 414
    :cond_4
    :goto_4
    if-eqz v3, :cond_6

    .line 415
    const-string v8, "single"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "pack"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "subscription"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 418
    :cond_5
    iget-object v9, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->PURCHASE_TYPE:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v9, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    .line 423
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "split":[Ljava/lang/String;
    :cond_6
    const-string v8, "metaPurchaseName"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "purchaseName":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 426
    iget-object v9, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->PURCHASE_NAME:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v9, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    .line 428
    :cond_7
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iget v8, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    if-nez v8, :cond_8

    .line 429
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iput v12, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    .line 435
    :cond_8
    return-object v2

    .line 397
    .end local v5    # "purchaseName":Ljava/lang/String;
    .end local v6    # "purchaseType":Ljava/lang/String;
    :cond_9
    iget-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iput v12, v8, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    goto/16 :goto_3

    .line 410
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v6    # "purchaseType":Ljava/lang/String;
    .restart local v7    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static getNewStateObj(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .locals 2
    .param p0, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 519
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;)V

    return-object v0
.end method

.method static getRecSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .locals 6
    .param p0, "aCrid"    # Ljava/lang/String;
    .param p1, "aScheduler"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    .prologue
    .line 304
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v4, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v3, 0x0

    .line 308
    .local v3, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 309
    .local v2, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/16 v5, 0x1000

    iput v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 310
    iput-object p0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 312
    invoke-virtual {p1, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 313
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 314
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v2    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :cond_0
    :goto_0
    return-object v3

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setPresetMetaItem(Ljava/lang/String;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .locals 8
    .param p0, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 478
    new-instance v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    invoke-direct {v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;-><init>()V

    .line 480
    .local v0, "metaInfo":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    iput-object p0, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mCrid:Ljava/lang/String;

    .line 481
    const-string v1, "\u30bf\u30a4\u30c8\u30eb\u4e0d\u660e"

    iput-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mTitle:Ljava/lang/String;

    .line 482
    const-string v1, ""

    iput-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mSubTitle:Ljava/lang/String;

    .line 483
    const-string v1, ""

    iput-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mMediaTitleImage:Ljava/lang/String;

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramStartTime:J

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    add-long/2addr v2, v4

    iput-wide v2, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramEndTime:J

    .line 486
    const-string v1, "http://www.arib.or.jp/cs/2006/03/ARIBParentalRatingCS/G"

    iput-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mParentalControlInformation:Ljava/lang/String;

    .line 488
    iput-object v6, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    .line 489
    iput-object v6, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    .line 490
    iput-object v6, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    .line 492
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-direct {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    .line 493
    iget-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    .line 494
    iget-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iput v7, v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    .line 496
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-direct {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    .line 497
    iget-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    const/4 v2, 0x3

    iput v2, v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    .line 498
    iget-object v1, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iput v7, v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    .line 503
    return-object v0
.end method
