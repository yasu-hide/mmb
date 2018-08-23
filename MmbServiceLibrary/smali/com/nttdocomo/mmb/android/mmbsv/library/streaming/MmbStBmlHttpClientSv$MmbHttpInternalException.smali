.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;
.super Ljava/lang/Exception;
.source "MmbStBmlHttpClientSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbHttpInternalException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xe2deda3ae1235eeL


# instance fields
.field protected mErrNo:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aErrNo"    # I

    .prologue
    .line 1087
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1092
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;->mErrNo:I

    .line 1097
    return-void
.end method


# virtual methods
.method public getErrNo()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;->mErrNo:I

    return v0
.end method
