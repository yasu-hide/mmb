.class public Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;
.super Ljava/lang/Object;
.source "MmbFcMfestMw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;,
        Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;
    }
.end annotation


# static fields
.field private static final TYPE_BRW:[Ljava/lang/String;

.field private static final TYPE_MP4:[Ljava/lang/String;


# instance fields
.field private log:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text/html"

    aput-object v1, v0, v3

    const-string v1, "application/xhtml+xml"

    aput-object v1, v0, v4

    const-string v1, "application/javascript"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->TYPE_BRW:[Ljava/lang/String;

    .line 25
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "audio/mp4"

    aput-object v1, v0, v3

    const-string v1, "video/mp4"

    aput-object v1, v0, v4

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->TYPE_MP4:[Ljava/lang/String;

    .line 58
    const-string v0, "/system/lib/libMmbFcMfestMw.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;

    invoke-direct {v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->log:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;

    .line 156
    return-void
.end method

.method private checkContentType([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "aTypes"    # [Ljava/lang/String;
    .param p2, "aType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 140
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v4

    .line 144
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 145
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    const/4 v4, 0x1

    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getFirstType(Ljava/lang/String;Ljava/lang/String;)Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;
    .locals 13
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aVersion"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 78
    iget-object v6, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->log:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;

    const-string v7, "getFirstType start. aCrid[%s] aVersion[%s]"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v10

    aput-object p2, v8, v11

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->OTH:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 81
    .local v4, "type":Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;
    move-object v0, p1

    .line 82
    .local v0, "crid":Ljava/lang/String;
    move-object v5, p2

    .line 84
    .local v5, "version":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 85
    :cond_0
    iget-object v6, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->log:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;

    const-string v7, "getFirstType end. aCrid is null."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object v6, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ERR:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 130
    :goto_0
    return-object v6

    .line 88
    :cond_1
    if-nez v5, :cond_2

    .line 89
    const-string v5, ""

    .line 92
    :cond_2
    new-instance v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;

    invoke-direct {v1, p0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;-><init>(Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;)V

    .line 93
    .local v1, "out":Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;
    invoke-virtual {p0, v0, v5, v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->getFstContentTypeJNI(Ljava/lang/String;Ljava/lang/String;Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;)I

    move-result v2

    .line 94
    .local v2, "ret":I
    if-nez v2, :cond_5

    invoke-static {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;->access$000(Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 95
    invoke-static {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;->access$000(Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "t":Ljava/lang/String;
    sget-object v6, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->TYPE_MP4:[Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->checkContentType([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->MP4:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 129
    .end local v3    # "t":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->log:Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;

    const-string v7, "getFirstType end. ret[%d] contentType[%s] type[%s]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;->access$000(Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v4}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v4

    .line 130
    goto :goto_0

    .line 98
    .restart local v3    # "t":Ljava/lang/String;
    :cond_3
    sget-object v6, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->TYPE_BRW:[Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->checkContentType([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->BRW:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    goto :goto_1

    .line 101
    :cond_4
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->OTH:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    goto :goto_1

    .line 104
    .end local v3    # "t":Ljava/lang/String;
    :cond_5
    packed-switch v2, :pswitch_data_0

    .line 124
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ERR:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    goto :goto_1

    .line 106
    :pswitch_0
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_IN_USE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 107
    goto :goto_1

    .line 109
    :pswitch_1
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_UNDER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 110
    goto :goto_1

    .line 112
    :pswitch_2
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 113
    goto :goto_1

    .line 115
    :pswitch_3
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_SPAN_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 116
    goto :goto_1

    .line 118
    :pswitch_4
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_COUNT_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 119
    goto :goto_1

    .line 121
    :pswitch_5
    sget-object v4, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_NOT_FOUND:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 122
    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method native getFstContentTypeJNI(Ljava/lang/String;Ljava/lang/String;Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbFcMfestMwJniOut;)I
.end method
