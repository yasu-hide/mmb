.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TOnInputTypeChangeHandler"
.end annotation


# instance fields
.field private imeOption:I

.field private inputType:I

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method private constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 0

    .prologue
    .line 4337
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p2, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;

    .prologue
    .line 4337
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    return-void
.end method


# virtual methods
.method public getImeOption()I
    .locals 1

    .prologue
    .line 4351
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;->imeOption:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 4347
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;->inputType:I

    return v0
.end method

.method public onInputTypeChange(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aOption"    # I

    .prologue
    .line 4342
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;->inputType:I

    .line 4343
    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;->imeOption:I

    .line 4344
    return-void
.end method
