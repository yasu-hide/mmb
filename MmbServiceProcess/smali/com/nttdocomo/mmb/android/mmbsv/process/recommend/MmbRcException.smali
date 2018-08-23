.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
.super Ljava/lang/Exception;
.source "MmbRcException.java"


# static fields
.field private static final serialVersionUID:J = -0x2761d03f02c068b9L


# instance fields
.field private message:Ljava/lang/String;

.field private resultcode:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "aResultCode"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->resultcode:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->message:Ljava/lang/String;

    .line 101
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->resultcode:I

    .line 106
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aResultCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->resultcode:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->message:Ljava/lang/String;

    .line 124
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->resultcode:I

    .line 126
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->message:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->resultcode:I

    return v0
.end method
