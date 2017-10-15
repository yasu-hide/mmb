.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;
    }
.end annotation


# instance fields
.field private mCategory:I

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mDisplayPolicy:I


# direct methods
.method private constructor <init>(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "displayPolicy"    # I
    .param p2, "category"    # I
    .param p3, "icon"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "footerView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I

    .line 136
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I

    .line 201
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I

    .line 202
    iput p2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I

    .line 203
    iput-object p4, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 204
    iput-object p6, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/widget/RemoteViews;
    .param p5, "x4"    # Landroid/widget/RemoteViews;
    .param p6, "x5"    # Landroid/os/Bundle;
    .param p7, "x6"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$1;

    .prologue
    .line 133
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;-><init>(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    return-object v0
.end method
