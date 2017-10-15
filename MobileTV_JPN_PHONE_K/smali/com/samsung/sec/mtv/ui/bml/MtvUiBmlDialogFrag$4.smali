.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$4;
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
    .line 928
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 935
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x2es
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 930
    const/16 v0, 0x1000

    return v0
.end method
