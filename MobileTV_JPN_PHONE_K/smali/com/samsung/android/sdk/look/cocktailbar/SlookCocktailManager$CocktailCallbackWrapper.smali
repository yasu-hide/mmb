.class Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/CocktailBarManager$ICocktailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;

.field final synthetic this$0:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;->this$0:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;->mCallback:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;

    .line 416
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;->mCallback:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;

    invoke-interface {v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;->onCreate()V

    .line 421
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;->this$0:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->access$502(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    .line 426
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;->mCallback:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;

    invoke-interface {v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;->onDestroy()V

    .line 427
    return-void
.end method

.method public responseCocktailCallback(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;->mCallback:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;->responseCocktailCallback(Landroid/os/Bundle;)V

    .line 432
    return-void
.end method
