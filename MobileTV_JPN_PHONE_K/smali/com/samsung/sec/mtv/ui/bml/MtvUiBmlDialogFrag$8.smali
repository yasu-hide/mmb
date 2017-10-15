.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$8;
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
    .line 1013
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$8;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 1021
    const/16 v0, 0x25

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x2es
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x1

    return v0
.end method
