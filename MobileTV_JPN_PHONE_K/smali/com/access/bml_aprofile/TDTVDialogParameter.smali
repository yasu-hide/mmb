.class public Lcom/access/bml_aprofile/TDTVDialogParameter;
.super Ljava/lang/Object;
.source "TDTVDialogParameter.java"


# instance fields
.field err_code:I

.field err_subcode:I

.field msg1:Ljava/lang/String;

.field msg2:Ljava/lang/String;

.field result:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "err_code"    # I
    .param p2, "err_subcode"    # I
    .param p3, "msg1"    # Ljava/lang/String;
    .param p4, "msg2"    # Ljava/lang/String;
    .param p5, "result"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_code:I

    .line 33
    iput p2, p0, Lcom/access/bml_aprofile/TDTVDialogParameter;->err_subcode:I

    .line 34
    iput-object p3, p0, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg1:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/access/bml_aprofile/TDTVDialogParameter;->msg2:Ljava/lang/String;

    .line 36
    iput p5, p0, Lcom/access/bml_aprofile/TDTVDialogParameter;->result:I

    .line 37
    return-void
.end method
