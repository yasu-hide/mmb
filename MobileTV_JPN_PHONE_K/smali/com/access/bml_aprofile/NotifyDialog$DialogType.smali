.class Lcom/access/bml_aprofile/NotifyDialog$DialogType;
.super Ljava/lang/Object;
.source "NotifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/NotifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogType"
.end annotation


# static fields
.field public static final OK_ONLY:I = 0x0

.field public static final YES_NO_1:I = 0x1

.field public static final YES_NO_2:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/NotifyDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/NotifyDialog;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/access/bml_aprofile/NotifyDialog$DialogType;->this$0:Lcom/access/bml_aprofile/NotifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
