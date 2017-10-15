.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$1;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    }
.end annotation


# static fields
.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlookCocktailManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 246
    :cond_0
    return-void
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    sget-object v4, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 221
    if-nez p0, :cond_0

    .line 222
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 224
    :cond_0
    :try_start_1
    instance-of v3, p0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 225
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 226
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Base context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 230
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;>;"
    const/4 v2, 0x0

    .line 231
    .local v2, "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    check-cast v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    .line 234
    .restart local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    :cond_2
    if-nez v2, :cond_3

    .line 235
    new-instance v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    .end local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;-><init>(Landroid/content/Context;)V

    .line 236
    .restart local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method


# virtual methods
.method public closeCocktail(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->closeCocktail(II)V

    .line 327
    :cond_0
    return-void
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cocktailName"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->isAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyCocktailViewDataChanged(II)V

    .line 340
    :cond_0
    return-void
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    if-nez p2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public registerCocktailCallback(Ljava/lang/String;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;)Z
    .locals 2
    .param p1, "cocktailName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;-><init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$ISlookCocktailCallback;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    .line 361
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->registerCocktailCallback(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailBarManager$ICocktailCallback;)Z

    .line 362
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCocktailItem(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->removeCocktailItem(Landroid/os/Bundle;)Z

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCocktail(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->showCocktail(I)V

    .line 314
    :cond_0
    return-void
.end method

.method public unregisterCocktailCallback(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cocktailName"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->unregisterCocktailCallback(Ljava/lang/String;)Z

    .line 372
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;->onDestroy()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    .line 374
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V
    .locals 6
    .param p1, "cocktailId"    # I
    .param p2, "info"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    if-nez p2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$100(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v2

    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$200(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v3

    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$300(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$400(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/os/Bundle;

    move-result-object v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateCocktailItem(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCallbackWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailCallbackWrapper;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailItem(Landroid/os/Bundle;)Z

    move-result v0

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
