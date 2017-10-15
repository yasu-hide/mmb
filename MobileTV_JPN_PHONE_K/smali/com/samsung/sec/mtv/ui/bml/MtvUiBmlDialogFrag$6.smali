.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$6;
.super Landroid/text/method/NumberKeyListener;
.source "MtvUiBmlDialogFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->IMEStartPeer([BZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$6;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 975
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x3

    return v0
.end method
