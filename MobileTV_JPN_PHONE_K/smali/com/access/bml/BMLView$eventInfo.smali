.class public Lcom/access/bml/BMLView$eventInfo;
.super Ljava/lang/Object;
.source "BMLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "eventInfo"
.end annotation


# instance fields
.field actionType:I

.field eventType:I

.field keyChar:I

.field keyCode:I

.field final synthetic this$0:Lcom/access/bml/BMLView;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/access/bml/BMLView;)V
    .locals 0

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/access/bml/BMLView$eventInfo;->this$0:Lcom/access/bml/BMLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
