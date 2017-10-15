.class public Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;
.super Ljava/lang/Object;
.source "MtvUtilTvOut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUtilTvOut"

.field private static appContext:Landroid/content/Context;

.field public static isHDMIPlugged:Z

.field public static mPresentation:Landroid/app/Presentation;

.field private static route:Landroid/media/MediaRouter$RouteInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    sput-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->route:Landroid/media/MediaRouter$RouteInfo;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->isHDMIPlugged:Z

    .line 45
    sput-object v1, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->appContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updatePresentation(Landroid/content/Context;Landroid/media/MediaRouter;)V
    .locals 6
    .param p0, "applicationConext"    # Landroid/content/Context;
    .param p1, "mMediaRouter"    # Landroid/media/MediaRouter;

    .prologue
    const/4 v5, 0x0

    .line 49
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->route:Landroid/media/MediaRouter$RouteInfo;

    .line 50
    const-string v2, "MtvUtilTvOut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePresentation :: route ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->route:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " route.getName() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->route:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "presentationDisplay":Landroid/view/Display;
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->route:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_0

    .line 53
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->route:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 54
    const-string v2, "MtvUtilTvOut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePresentation :: presentationDisplay ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPresentation ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eq v2, v1, :cond_1

    .line 59
    const-string v2, "MtvUtilTvOut"

    const-string v3, "updatePresentation :: setting mPresentation as null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->dismiss()V

    .line 61
    sput-object v5, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    .line 62
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->isHDMIPlugged:Z

    .line 66
    :cond_1
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 67
    new-instance v2, Landroid/app/Presentation;

    invoke-direct {v2, p0, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    sput-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    .line 68
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 69
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/app/Presentation;->setContentView(I)V

    .line 73
    :try_start_0
    const-string v2, "MtvUtilTvOut"

    const-string v3, "updatePresentation :: doing mPresentation.show()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->show()V

    .line 75
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->isHDMIPlugged:Z

    .line 76
    sput-object p0, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->appContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    sput-object v5, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    goto :goto_0

    .line 80
    .end local v0    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    :cond_3
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->isHDMIPlugged:Z

    if-eqz v2, :cond_2

    .line 81
    const-string v2, "MtvUtilTvOut"

    const-string v3, "updatePresentation :: unhiding : doing mPresentation.show()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_1
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .restart local v0    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    sput-object v5, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->mPresentation:Landroid/app/Presentation;

    goto :goto_0
.end method
