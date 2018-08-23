.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
.source "MmbPrPreferenceServerUrlSv.java"


# static fields
.field public static final CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mmb33SegCommonIdUrl:Ljava/lang/String;

.field public mmbCasServerUrl:[Ljava/lang/String;

.field public mmbMetaServerCrid:Ljava/lang/String;

.field public mmbMetaServerKeywordUrl:Ljava/lang/String;

.field public mmbMetaServerUrl:Ljava/lang/String;

.field public mmbPfBackgroundIdUrl:Ljava/lang/String;

.field public mmbPfUserRegistUrl:Ljava/lang/String;

.field public mmbRecomendServerUrl:Ljava/lang/String;

.field public mmbSendViewLogServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerUrl:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerCrid:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerKeywordUrl:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfUserRegistUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmb33SegCommonIdUrl:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfBackgroundIdUrl:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbSendViewLogServerUrl:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbRecomendServerUrl:Ljava/lang/String;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "aParcel"    # Landroid/os/Parcel;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerUrl:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerCrid:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerKeywordUrl:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfUserRegistUrl:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmb33SegCommonIdUrl:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfBackgroundIdUrl:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbSendViewLogServerUrl:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbRecomendServerUrl:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 155
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "aParcel"    # Landroid/os/Parcel;
    .param p2, "aFlag"    # I

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerCrid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerKeywordUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfUserRegistUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmb33SegCommonIdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfBackgroundIdUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbSendViewLogServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbRecomendServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
