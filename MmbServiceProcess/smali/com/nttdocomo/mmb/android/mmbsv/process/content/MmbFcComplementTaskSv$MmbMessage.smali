.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
.super Ljava/lang/Object;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbMessage"
.end annotation


# instance fields
.field private mArgument:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

.field private mCrid:Ljava/lang/String;

.field private mType:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;)V
    .locals 1
    .param p1, "aType"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;)V
    .locals 0
    .param p1, "aType"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aArgument"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mType:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    .line 190
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mCrid:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mArgument:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mType:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mCrid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mArgument:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

    return-object v0
.end method


# virtual methods
.method public getArgument()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mArgument:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

    return-object v0
.end method

.method public getType()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->mType:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    return-object v0
.end method
