.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:I

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mDisplayPolicy:I

.field private mFooterView:Landroid/widget/RemoteViews;

.field private mIcon:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mDisplayPolicy:I

    .line 145
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mCategory:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mIcon:I

    .line 167
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mDisplayPolicy:I

    .line 145
    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mCategory:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mIcon:I

    .line 159
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 160
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    .locals 8

    .prologue
    .line 195
    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    iget v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mDisplayPolicy:I

    iget v2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mCategory:I

    iget v3, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mIcon:I

    iget-object v4, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mFooterView:Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;-><init>(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$1;)V

    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mCategory:I

    .line 188
    return-object p0
.end method

.method public setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;
    .locals 0
    .param p1, "displayPolicy"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->mDisplayPolicy:I

    .line 178
    return-object p0
.end method
