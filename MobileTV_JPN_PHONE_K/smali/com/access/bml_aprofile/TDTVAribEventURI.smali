.class public Lcom/access/bml_aprofile/TDTVAribEventURI;
.super Ljava/lang/Object;
.source "TDTVAribEventURI.java"


# instance fields
.field public mEventID:I

.field public mOriginalNetworkID:I

.field public mServiceID:I

.field public mTransportStreamID:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "originalNetworkID"    # I
    .param p2, "transportStreamID"    # I
    .param p3, "serviceID"    # I
    .param p4, "eventID"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/access/bml_aprofile/TDTVAribEventURI;->mOriginalNetworkID:I

    .line 30
    iput p2, p0, Lcom/access/bml_aprofile/TDTVAribEventURI;->mTransportStreamID:I

    .line 31
    iput p3, p0, Lcom/access/bml_aprofile/TDTVAribEventURI;->mServiceID:I

    .line 32
    iput p4, p0, Lcom/access/bml_aprofile/TDTVAribEventURI;->mEventID:I

    .line 33
    return-void
.end method
