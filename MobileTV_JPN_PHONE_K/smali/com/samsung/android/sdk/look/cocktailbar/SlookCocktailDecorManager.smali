.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
.super Ljava/lang/Object;
.source "SlookCocktailDecorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlookCocktailDecorManager"

.field private static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCocktailBarDecorManager:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

.field private mContext:Landroid/content/Context;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mCocktailBarDecorManager:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    .line 67
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 49
    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 50
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;>;"
    const/4 v1, 0x0

    .line 51
    .local v1, "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
    check-cast v1, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;

    .line 54
    .restart local v1    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
    :cond_0
    if-nez v1, :cond_1

    .line 55
    new-instance v1, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;

    .end local v1    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v1    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
    sget-object v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1
    monitor-exit v3

    return-object v1

    .line 59
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;>;"
    .end local v1    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public getDesiredHeight()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mCocktailBarDecorManager:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->getDesiredHeight()I

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mCocktailBarDecorManager:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->getDesiredWidth()I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mCocktailBarDecorManager:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setResource(I)V
    .locals 2
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mCocktailBarDecorManager:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->setResource(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailDecorManager;->mCocktailBarDecorManager:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->setStream(Ljava/io/InputStream;)V

    .line 85
    :cond_0
    return-void
.end method
