.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;
.super Ljava/lang/Object;
.source "MmbPoCopyControlSp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbPoCopyControlSp"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "MmbPoCopyControlSp#<init>()"

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;->debug(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 46
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "MmbPoCopyControlSp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "MmbPoCopyControlSp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyCopyControlInformationForFc([B)V
    .locals 2
    .param p1, "aCaCasDrmOutputControlInformation"    # [B

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPoCopyControlSp#notifyCopyControlInformationForFc( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;->debug(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public notifyCopyControlInformationForSt(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;)V
    .locals 2
    .param p1, "aCopyInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPoCopyControlSp#notifyCopyControlInformationForSt( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoCopyControlSp;->debug(Ljava/lang/String;)V

    .line 75
    return-void
.end method
