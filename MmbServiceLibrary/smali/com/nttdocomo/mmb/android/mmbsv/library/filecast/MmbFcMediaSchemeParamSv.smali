.class public Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
.super Ljava/lang/Object;
.source "MmbFcMediaSchemeParamSv.java"


# instance fields
.field private lngPdate:J

.field private lngPtime:J

.field private strCntIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParamCntIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->strCntIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getParamPdate()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->lngPdate:J

    return-wide v0
.end method

.method public getParamPtime()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->lngPtime:J

    return-wide v0
.end method

.method public setParamCntIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCntIndex"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->strCntIndex:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setParamPdate(J)V
    .locals 1
    .param p1, "aPdate"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->lngPdate:J

    .line 69
    return-void
.end method

.method public setParamPtime(J)V
    .locals 1
    .param p1, "aPtime"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->lngPtime:J

    .line 88
    return-void
.end method
