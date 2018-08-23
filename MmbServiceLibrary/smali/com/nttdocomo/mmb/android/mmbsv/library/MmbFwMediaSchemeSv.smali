.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;
.super Ljava/lang/Object;
.source "MmbFwMediaSchemeSv.java"


# static fields
.field private static final ALPHA:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final AUTHORITY:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-."

.field private static final CNT_INDEX_CHAR:Ljava/lang/String; = "cnt_index"

.field private static final CONSIGN_ID_CHAR:Ljava/lang/String; = "consign_id"

.field private static final COUNTRYCODE_JP_TEXT:Ljava/lang/String; = "jp"

.field private static final CRID_CHAR:Ljava/lang/String; = "crid"

.field private static final CRID_HEADER_CHAR:Ljava/lang/String; = "crid://"

.field private static final DATA:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-.#/"

.field private static final DIGIT:Ljava/lang/String; = "0123456789"

.field private static final ECG_L_CHAR:Ljava/lang/String; = "ECG"

.field private static final ECG_S_CHAR:Ljava/lang/String; = "ecg"

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEFabcdef"

.field private static final LOW_ALPHA:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final MEDIASCHEME_MEDIA_TEXT:Ljava/lang/String; = "media:"

.field private static final MEDIATYPE_DTVTR_X_TEXT:Ljava/lang/String; = "DTVTR-X"

.field private static final OPTION_ECG_ECG_TEXT:Ljava/lang/String; = "ecg=ECG"

.field private static final PDATE_CHAR:Ljava/lang/String; = "pdate"

.field private static final PLAYDATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final PLAYTIME_MAX:J = 0x57e3fL

.field private static final PTIME_CHAR:Ljava/lang/String; = "ptime"

.field private static final P_CHANNE_CHAR:Ljava/lang/String; = "p_channel"

.field private static final START_CHAR:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"

.field private static final TEXT_EQUAL:Ljava/lang/String; = "="

.field private static final TEXT_QUESTION:Ljava/lang/String; = "?"

.field private static final TIME_ZONE_JAPAN:Ljava/lang/String; = "Asia/Tokyo"

.field private static final UP_ALPHA:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"


# instance fields
.field private bOption:Z

.field private callsign:Ljava/lang/String;

.field private consignId:Ljava/lang/String;

.field private contentIndex:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private crid:Ljava/lang/String;

.field private ecg:Z

.field private mediaType:Ljava/lang/String;

.field private pChannel:Ljava/lang/String;

.field private playDate:J

.field private playTime:J

.field private scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "media:"

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->scheme:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->callsign:Ljava/lang/String;

    .line 116
    const-string v0, "DTVTR-X"

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->mediaType:Ljava/lang/String;

    .line 118
    const-string v0, "jp"

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->countryCode:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 122
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->pChannel:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->consignId:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;

    .line 128
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->ecg:Z

    .line 130
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playTime:J

    .line 132
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playDate:J

    .line 134
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->contentIndex:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "aScheme"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v1, "media:"

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->scheme:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->callsign:Ljava/lang/String;

    .line 116
    const-string v1, "DTVTR-X"

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->mediaType:Ljava/lang/String;

    .line 118
    const-string v1, "jp"

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->countryCode:Ljava/lang/String;

    .line 120
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 122
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->pChannel:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->consignId:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;

    .line 128
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->ecg:Z

    .line 130
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playTime:J

    .line 132
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playDate:J

    .line 134
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->contentIndex:Ljava/lang/String;

    .line 180
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->analyzeSchemeString(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbFwMediaSchemeSv Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    throw v0
.end method

.method private analyzeSchemeString(Ljava/lang/String;)V
    .locals 5
    .param p1, "aScheme"    # Ljava/lang/String;

    .prologue
    .line 989
    const-string v2, "\\?"

    .line 994
    .local v2, "splitscheme":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V

    .line 996
    const-string v3, "media:"

    invoke-direct {p0, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkMediaStringStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v3, "media:"

    invoke-direct {p0, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getStringStartsWithAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, "originalscheme":Ljava/lang/String;
    const-string v3, "\\?"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->analyzeSchemeStringBroadcasterOptions([Ljava/lang/String;)V

    .line 1002
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->cheakOptionRealContentCompetition()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    return-void

    .line 1004
    .end local v1    # "originalscheme":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "analyzeSchemeString Parameterl error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    throw v0
.end method

.method private analyzeSchemeStringBroadcaster([Ljava/lang/String;)V
    .locals 3
    .param p1, "aScheme"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1082
    if-nez p1, :cond_0

    .line 1083
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1098
    const-string v0, "analyzeSchemeString media scheme syntax error. Non Broadcaster r"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : media scheme syntax error. Non Broadcaster "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :pswitch_0
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setMediaType(Ljava/lang/String;)V

    .line 1090
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setCountryCode(Ljava/lang/String;)V

    .line 1106
    :goto_0
    return-void

    .line 1093
    :pswitch_1
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setCallsign(Ljava/lang/String;)V

    .line 1094
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setMediaType(Ljava/lang/String;)V

    .line 1095
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setCountryCode(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private analyzeSchemeStringBroadcasterOptions([Ljava/lang/String;)V
    .locals 5
    .param p1, "aScheme"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1033
    const-string v0, "\\."

    .line 1034
    .local v0, "splitbroadcaster":Ljava/lang/String;
    const-string v1, "\\&"

    .line 1037
    .local v1, "splitoptions":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1038
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "error : string null"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1041
    :cond_0
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    .line 1053
    const-string v2, "analyzeSchemeString media scheme syntax error. Non Broadcaster or Options r"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "error : media scheme syntax error. Non Broadcaster or Options "

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1044
    :pswitch_0
    aget-object v2, p1, v3

    const-string v3, "\\."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->analyzeSchemeStringBroadcaster([Ljava/lang/String;)V

    .line 1061
    :goto_0
    return-void

    .line 1048
    :pswitch_1
    aget-object v2, p1, v3

    const-string v3, "\\."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->analyzeSchemeStringBroadcaster([Ljava/lang/String;)V

    .line 1050
    const/4 v2, 0x1

    aget-object v2, p1, v2

    const-string v3, "\\&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->analyzeSchemeStringOptions([Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private analyzeSchemeStringOptions([Ljava/lang/String;)V
    .locals 6
    .param p1, "aScheme"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 1126
    const-string v2, "\\="

    .line 1129
    .local v2, "splitparam":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1130
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "error : string null"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1134
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1136
    aget-object v3, p1, v0

    const-string v4, "\\="

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "option":[Ljava/lang/String;
    array-length v3, v1

    if-eq v3, v5, :cond_2

    .line 1145
    .end local v1    # "option":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1140
    .restart local v1    # "option":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setanalyzeSchemeMakeStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cheakOptionRealContentCompetition()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1944
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPchannel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1945
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getContentIndex()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayDate()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1946
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "cheakOptionRealContentCompetition  error "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1953
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkCridStringStartsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aWord"    # Ljava/lang/String;
    .param p2, "aStartWord"    # Ljava/lang/String;

    .prologue
    .line 1753
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1754
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1757
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1758
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string startsWith  "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :cond_2
    return-void
.end method

.method private checkMediaStringStartsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aWord"    # Ljava/lang/String;
    .param p2, "aStartWord"    # Ljava/lang/String;

    .prologue
    .line 1719
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1720
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1724
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string startsWith  "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1730
    :cond_2
    return-void
.end method

.method private checkString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aSetString"    # Ljava/lang/String;
    .param p2, "aCheckCode"    # Ljava/lang/String;

    .prologue
    .line 1832
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1833
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "error : string null"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1837
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1839
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1840
    .local v0, "checkchar":C
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createStringSplit Split error aSetString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aCheckCode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1843
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "error : string type error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1837
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1850
    .end local v0    # "checkchar":C
    :cond_3
    return-void
.end method

.method private checkStringSize(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "aWord"    # Ljava/lang/String;
    .param p2, "aSize"    # I
    .param p3, "aBelow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1582
    if-nez p1, :cond_0

    .line 1583
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_0
    if-nez p3, :cond_1

    .line 1588
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStringSize error aWord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1590
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string fiexd size "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStringSize error aWord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string fiexd size "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    :cond_2
    return-void
.end method

.method private checkStringStyle(Ljava/lang/String;)V
    .locals 5
    .param p1, "aWord"    # Ljava/lang/String;

    .prologue
    .line 1538
    const/16 v2, 0xff

    .line 1539
    .local v2, "maxlength":I
    const/4 v3, 0x1

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/16 v4, 0x3000

    aput-char v4, v0, v3

    .line 1540
    .local v0, "c":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 1543
    .local v1, "fwspace":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1544
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "error : string null"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1547
    :cond_0
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1548
    :cond_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "error : string space"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1551
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_3

    .line 1552
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "error : string size over"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1558
    :cond_3
    return-void
.end method

.method private checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "aSetString"    # Ljava/lang/String;
    .param p2, "aCheckCode"    # Ljava/lang/String;
    .param p3, "aSize"    # I

    .prologue
    .line 1875
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1876
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : string null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1880
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSize(Ljava/lang/String;IZ)V

    .line 1886
    return-void
.end method

.method private checkValue(JJJ)V
    .locals 1
    .param p1, "aValue"    # J
    .param p3, "aMin"    # J
    .param p5, "aMax"    # J

    .prologue
    .line 1627
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValueMin(JJ)V

    .line 1629
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValueMax(JJ)V

    .line 1634
    return-void
.end method

.method private checkValueMax(JJ)V
    .locals 3
    .param p1, "aValue"    # J
    .param p3, "aMax"    # J

    .prologue
    .line 1688
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkValueMax aValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",aMax ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1690
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : maximum value "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_0
    return-void
.end method

.method private checkValueMin(JJ)V
    .locals 3
    .param p1, "aValue"    # J
    .param p3, "aMin"    # J

    .prologue
    .line 1657
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkValueMax aValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",aMin ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1659
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "error : minimum value "

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :cond_0
    return-void
.end method

.method private connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aString"    # Ljava/lang/String;
    .param p2, "aConectString"    # Ljava/lang/String;

    .prologue
    .line 1238
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1239
    :cond_0
    const/4 v0, 0x0

    .line 1260
    :cond_1
    :goto_0
    return-object v0

    .line 1242
    :cond_2
    const-string v1, "&"

    .line 1243
    .local v1, "textand":Ljava/lang/String;
    move-object v0, p1

    .line 1244
    .local v0, "resultstring":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1246
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1248
    move-object v0, p1

    .line 1254
    :cond_3
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1249
    :cond_4
    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1251
    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private createPlayDateLong(Ljava/lang/String;)J
    .locals 20
    .param p1, "aPlayDate"    # Ljava/lang/String;

    .prologue
    .line 1410
    :try_start_0
    const-string v3, "T"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->createStringFixedSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    .line 1411
    .local v17, "total":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v17, v3

    const-string v4, "\\-"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->createStringFixedSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .line 1412
    .local v19, "ymd":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v17, v3

    const-string v4, "\\:"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->createStringFixedSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1424
    .local v12, "hms":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v19, v3

    const-string v4, "0123456789"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1425
    const/4 v3, 0x1

    aget-object v3, v19, v3

    const-string v4, "0123456789"

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1426
    const/4 v3, 0x2

    aget-object v3, v19, v3

    const-string v4, "0123456789"

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1427
    const/4 v3, 0x0

    aget-object v3, v12, v3

    const-string v4, "0123456789"

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1428
    const/4 v3, 0x1

    aget-object v3, v12, v3

    const-string v4, "0123456789"

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1429
    const/4 v3, 0x2

    aget-object v3, v12, v3

    const-string v4, "0123456789"

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1430
    const/4 v3, 0x0

    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1431
    .local v18, "year":I
    const/4 v3, 0x1

    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1432
    .local v15, "month":I
    const/4 v3, 0x2

    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1433
    .local v10, "day":I
    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1434
    .local v13, "hour":I
    const/4 v3, 0x1

    aget-object v3, v12, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1435
    .local v14, "min":I
    const/4 v3, 0x2

    aget-object v3, v12, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1437
    .local v16, "sec":I
    move/from16 v0, v18

    int-to-long v4, v0

    const-wide/16 v6, 0x76c

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValueMin(JJ)V

    .line 1438
    int-to-long v4, v15

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0xc

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V

    .line 1439
    int-to-long v4, v10

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1f

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V

    .line 1440
    int-to-long v4, v13

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x17

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V

    .line 1441
    int-to-long v4, v14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3b

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V

    .line 1442
    move/from16 v0, v16

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3b

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1450
    const-string v3, "Asia/Tokyo"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 1452
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1454
    const/4 v3, 0x2

    add-int/lit8 v4, v15, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1456
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 1459
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v13}, Ljava/util/Calendar;->set(II)V

    .line 1461
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v14}, Ljava/util/Calendar;->set(II)V

    .line 1463
    const/16 v3, 0xd

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1465
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1471
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4

    .line 1413
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v10    # "day":I
    .end local v12    # "hms":[Ljava/lang/String;
    .end local v13    # "hour":I
    .end local v14    # "min":I
    .end local v15    # "month":I
    .end local v16    # "sec":I
    .end local v17    # "total":[Ljava/lang/String;
    .end local v18    # "year":I
    .end local v19    # "ymd":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1415
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "createPlayDateLong Parameterl error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    throw v11

    .line 1443
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v12    # "hms":[Ljava/lang/String;
    .restart local v17    # "total":[Ljava/lang/String;
    .restart local v19    # "ymd":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1445
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "setPlayTime Parameterl error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1446
    throw v11
.end method

.method private createPlayDateString(J)Ljava/lang/String;
    .locals 3
    .param p1, "aPlayDate"    # J

    .prologue
    .line 1318
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v0, "dateformat":Ljava/text/SimpleDateFormat;
    const-string v2, "Asia/Tokyo"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1320
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    .local v1, "phraseplaydate":Ljava/lang/String;
    return-object v1
.end method

.method private createPlayTimeLong(Ljava/lang/String;)J
    .locals 14
    .param p1, "aPlayTime"    # Ljava/lang/String;

    .prologue
    .line 1347
    if-nez p1, :cond_0

    .line 1348
    const-string v1, "setPlayTime  null error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : string null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1351
    :cond_0
    const-string v1, "\\:"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "date":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1353
    const-string v1, "setPlayTime Parameterl split error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1354
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "setPlayTime Parameterl split error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1356
    :cond_1
    const-wide/16 v12, 0x0

    .line 1360
    .local v12, "time":J
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1361
    .local v9, "hour":I
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1362
    .local v10, "min":I
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1364
    .local v11, "sec":I
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "0123456789"

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1365
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "0123456789"

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1366
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, "0123456789"

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1368
    int-to-long v2, v9

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x63

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V

    .line 1369
    int-to-long v2, v10

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3b

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V

    .line 1370
    int-to-long v2, v11

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3b

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValue(JJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1371
    int-to-long v2, v9

    add-long/2addr v2, v12

    const-wide/16 v4, 0x3c

    mul-long v12, v2, v4

    .line 1372
    int-to-long v2, v10

    add-long/2addr v2, v12

    const-wide/16 v4, 0x3c

    mul-long v12, v2, v4

    .line 1373
    int-to-long v2, v11

    add-long/2addr v12, v2

    .line 1386
    return-wide v12

    .line 1374
    .end local v9    # "hour":I
    .end local v10    # "min":I
    .end local v11    # "sec":I
    :catch_0
    move-exception v8

    .line 1375
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v1, "setPlayTime NumberFormatException error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "setPlayTime NumberFormatException error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1377
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 1379
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "setPlayTime ServiceArgumentException error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    throw v8
.end method

.method private createPlayTimeString(J)Ljava/lang/String;
    .locals 11
    .param p1, "aPlayTime"    # J

    .prologue
    const-wide/16 v8, 0x3c

    .line 1280
    const/4 v1, 0x0

    .line 1281
    .local v1, "hour":I
    const/4 v2, 0x0

    .line 1282
    .local v2, "min":I
    const/4 v4, 0x0

    .line 1284
    .local v4, "scd":I
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 1285
    div-long v6, p1, v8

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 1286
    div-long v6, p1, v8

    rem-long/2addr v6, v8

    long-to-int v2, v6

    .line 1287
    rem-long v6, p1, v8

    long-to-int v4, v6

    .line 1291
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1298
    .local v3, "playtime":Ljava/lang/String;
    return-object v3
.end method

.method private createStringFixedSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "aWord"    # Ljava/lang/String;
    .param p2, "aSplitWord"    # Ljava/lang/String;
    .param p3, "aSplitCount"    # I

    .prologue
    .line 1910
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1911
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : string null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1914
    :cond_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "splitter":[Ljava/lang/String;
    array-length v1, v0

    if-eq v1, p3, :cond_2

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStringSplit Split error Keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " split ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1918
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "createStringSplit Split error Keyword="

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1924
    :cond_2
    return-object v0
.end method

.method private getStringStartsWithAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aWord"    # Ljava/lang/String;
    .param p2, "aStartWord"    # Ljava/lang/String;

    .prologue
    .line 1788
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1789
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : string null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1793
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1794
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : string non startsWith  "

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1798
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 1799
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : string startsWith after  "

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1802
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1808
    .local v0, "originalscheme":Ljava/lang/String;
    return-object v0
.end method

.method private searchContryCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "aCountyCode"    # Ljava/lang/String;

    .prologue
    .line 1494
    if-nez p1, :cond_0

    .line 1495
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : string null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1498
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "countrycodes":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1504
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1506
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : unknown countrycode"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1512
    :cond_1
    return-void
.end method

.method private setanalyzeSchemeMakeStringOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aOption"    # Ljava/lang/String;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 1180
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1181
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "error : string null"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1185
    :cond_1
    const-string v1, "p_channel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1186
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setPchannel(Ljava/lang/String;)V

    .line 1189
    :cond_2
    const-string v1, "consign_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1190
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setConsignId(Ljava/lang/String;)V

    .line 1193
    :cond_3
    const-string v1, "crid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crid://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setCrid(Ljava/lang/String;)V

    .line 1198
    .end local v0    # "word":Ljava/lang/String;
    :cond_4
    const-string v1, "ecg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1199
    const-string v1, "ECG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setEcg(Z)V

    .line 1202
    :cond_5
    const-string v1, "ptime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1203
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->createPlayTimeLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setPlayTime(J)V

    .line 1206
    :cond_6
    const-string v1, "pdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1207
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->createPlayDateLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setPlayDate(J)V

    .line 1210
    :cond_7
    const-string v1, "cnt_index"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1211
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->setContentIndex(Ljava/lang/String;)V

    .line 1216
    :cond_8
    return-void
.end method

.method private toSchemeStringBroadcaster(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aWord"    # Ljava/lang/String;

    .prologue
    .line 1973
    const-string v1, "."

    .line 1976
    .local v1, "concatparam":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v0, p1

    .line 1991
    .end local p1    # "aWord":Ljava/lang/String;
    .local v0, "aWord":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1981
    .end local v0    # "aWord":Ljava/lang/String;
    .restart local p1    # "aWord":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getCallsign()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getCallsign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1986
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 1991
    .end local p1    # "aWord":Ljava/lang/String;
    .restart local v0    # "aWord":Ljava/lang/String;
    goto :goto_0
.end method

.method private toSchemeStringOptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aWord"    # Ljava/lang/String;

    .prologue
    .line 2012
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->isOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2015
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2017
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptionsPChannel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2019
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptionsConsignId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2021
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptionsCrid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2023
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptionsEcg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2025
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptionsPtime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2027
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptionsPdate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2029
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptionsCntIndex()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->connectString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2035
    :cond_0
    return-object p1
.end method

.method private toSchemeStringOptionsCntIndex()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2223
    const-string v0, ""

    .line 2226
    .local v0, "word":Ljava/lang/String;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->contentIndex:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cnt_index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->contentIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2233
    :cond_0
    return-object v0
.end method

.method private toSchemeStringOptionsConsignId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2081
    const-string v0, ""

    .line 2084
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getConsignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consign_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getConsignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2091
    :cond_0
    return-object v0
.end method

.method private toSchemeStringOptionsCrid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2109
    const-string v0, ""

    .line 2112
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getCrid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2120
    :cond_0
    return-object v0
.end method

.method private toSchemeStringOptionsEcg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2138
    const-string v0, ""

    .line 2141
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->isEcg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2142
    const-string v0, "ecg=ECG"

    .line 2148
    :cond_0
    return-object v0
.end method

.method private toSchemeStringOptionsPChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2053
    const-string v0, ""

    .line 2056
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPchannel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p_channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPchannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2063
    :cond_0
    return-object v0
.end method

.method private toSchemeStringOptionsPdate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2194
    const-string v0, ""

    .line 2197
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayDate()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 2198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayDate()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->createPlayDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2205
    :cond_0
    return-object v0
.end method

.method private toSchemeStringOptionsPtime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2166
    const-string v0, ""

    .line 2169
    .local v0, "word":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 2170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ptime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->createPlayTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2176
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCallsign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->callsign:Ljava/lang/String;

    return-object v0
.end method

.method public getConsignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->consignId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->contentIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCrid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;

    .line 604
    .local v0, "returnCrid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 605
    const-string v0, "crid://"

    .line 606
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    :cond_0
    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getPchannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->pChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayDate()J
    .locals 2

    .prologue
    .line 866
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playDate:J

    return-wide v0
.end method

.method public getPlayTime()J
    .locals 2

    .prologue
    .line 801
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playTime:J

    return-wide v0
.end method

.method public isEcg()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->ecg:Z

    return v0
.end method

.method public isFc()Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 718
    const/4 v1, 0x0

    .line 721
    .local v1, "isfc":Z
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->cheakOptionRealContentCompetition()Z

    .line 722
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getContentIndex()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPlayDate()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 724
    const/4 v1, 0x1

    .line 735
    :cond_1
    :goto_0
    return v1

    .line 727
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "toSchemeString error mixed RT and FC"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isOption()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    return v0
.end method

.method public isRt()Z
    .locals 4

    .prologue
    .line 684
    const/4 v1, 0x0

    .line 687
    .local v1, "isrt":Z
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->cheakOptionRealContentCompetition()Z

    .line 688
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getPchannel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 689
    const/4 v1, 0x1

    .line 700
    :cond_0
    :goto_0
    return v1

    .line 692
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "toSchemeString error mixed RT and FC"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCallsign(Ljava/lang/String;)V
    .locals 3
    .param p1, "aCallsign"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->callsign:Ljava/lang/String;

    .line 226
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallsign Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    throw v0
.end method

.method public setConsignId(Ljava/lang/String;)V
    .locals 4
    .param p1, "aConsignId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 480
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V

    .line 482
    const-string v1, "0123456789ABCDEFabcdef"

    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->consignId:Ljava/lang/String;

    .line 492
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    if-eq v1, v3, :cond_0

    .line 493
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 499
    :cond_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConsignId Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    throw v0
.end method

.method public setContentIndex(Ljava/lang/String;)V
    .locals 3
    .param p1, "aContentIndex"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 890
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->contentIndex:Ljava/lang/String;

    .line 900
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    if-eq v1, v2, :cond_0

    .line 901
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 907
    :cond_0
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentIndex Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    throw v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "aCountryCode"    # Ljava/lang/String;

    .prologue
    .line 329
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V

    .line 331
    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSyntax(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->searchContryCode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->countryCode:Ljava/lang/String;

    .line 346
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCountryCode Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    throw v0
.end method

.method public setCrid(Ljava/lang/String;)V
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 540
    const-string v2, "crid://"

    .line 541
    .local v2, "cridheader":Ljava/lang/String;
    const-string v3, "://"

    .line 542
    .local v3, "cridsplit":Ljava/lang/String;
    const-string v7, "/"

    .line 549
    .local v7, "indexofslash":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V

    .line 551
    const-string v9, "crid://"

    invoke-direct {p0, p1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkCridStringStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v9, "://"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, "setcrid":[Ljava/lang/String;
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v1, v8, v9

    .line 558
    .local v1, "body":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 559
    .local v6, "index":I
    if-gtz v6, :cond_0

    .line 560
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCrid index error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v10, "error : CRID non data"

    invoke-direct {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v1    # "body":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v8    # "setcrid":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 571
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCrid Parameterl error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    throw v5

    .line 564
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v1    # "body":Ljava/lang/String;
    .restart local v6    # "index":I
    .restart local v8    # "setcrid":[Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "authority":Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "data":Ljava/lang/String;
    const-string v9, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-."

    invoke-direct {p0, v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v9, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-.#/"

    invoke-direct {p0, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 577
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v8, v9

    iput-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->crid:Ljava/lang/String;

    .line 579
    iget-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    if-eq v9, v10, :cond_1

    .line 580
    iput-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 586
    :cond_1
    return-void
.end method

.method public setEcg(Z)V
    .locals 2
    .param p1, "aEcg"    # Z

    .prologue
    const/4 v1, 0x1

    .line 632
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->ecg:Z

    .line 635
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->ecg:Z

    if-ne v0, v1, :cond_0

    .line 637
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    if-eq v0, v1, :cond_0

    .line 638
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 645
    :cond_0
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 3
    .param p1, "aMediaType"    # Ljava/lang/String;

    .prologue
    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    const-string v1, "DTVTR-X"

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->mediaType:Ljava/lang/String;

    .line 284
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaType Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    throw v0
.end method

.method public setPchannel(Ljava/lang/String;)V
    .locals 4
    .param p1, "aPchannel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 413
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V

    .line 415
    const-string v1, "0123456789"

    invoke-direct {p0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringSize(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->pChannel:Ljava/lang/String;

    .line 428
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    if-eq v1, v3, :cond_0

    .line 429
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 435
    :cond_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPchannel Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    throw v0
.end method

.method public setPlayDate(J)V
    .locals 5
    .param p1, "aPlayDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 825
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValueMin(JJ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playDate:J

    .line 838
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    if-eq v1, v4, :cond_0

    .line 839
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 845
    :cond_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayDate Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    throw v0
.end method

.method public setPlayTime(J)V
    .locals 5
    .param p1, "aPlayTime"    # J

    .prologue
    const/4 v4, 0x1

    .line 759
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValueMin(JJ)V

    .line 760
    const-wide/32 v2, 0x57e3f

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkValueMax(JJ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->playTime:J

    .line 773
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    if-eq v1, v4, :cond_0

    .line 774
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->bOption:Z

    .line 780
    :cond_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayTime Parameterl error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    throw v0
.end method

.method public toSchemeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 948
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->scheme:Ljava/lang/String;

    .line 951
    .local v1, "schemestring":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->checkStringStyle(Ljava/lang/String;)V

    .line 953
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->cheakOptionRealContentCompetition()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringBroadcaster(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwMediaSchemeSv;->toSchemeStringOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    return-object v1

    .line 954
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "toSchemeString error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    throw v0
.end method
