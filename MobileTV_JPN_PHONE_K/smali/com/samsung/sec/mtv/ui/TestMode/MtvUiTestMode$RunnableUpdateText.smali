.class final Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;
.super Ljava/lang/Object;
.source "MtvUiTestMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableUpdateText"
.end annotation


# instance fields
.field private final mString:Ljava/lang/String;

.field private final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;->mView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;->mView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    return-void
.end method
