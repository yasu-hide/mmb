.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment$1;
.super Ljava/lang/Object;
.source "MtvUiFragTVFilesList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->buildDialog(Ljava/util/ArrayList;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 676
    if-eqz p1, :cond_0

    .line 677
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 678
    :cond_0
    return-void
.end method
