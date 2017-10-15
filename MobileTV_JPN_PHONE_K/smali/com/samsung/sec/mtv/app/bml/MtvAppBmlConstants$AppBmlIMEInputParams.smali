.class public Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;
.super Ljava/lang/Object;
.source "MtvAppBmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppBmlIMEInputParams"
.end annotation


# instance fields
.field isMultiLine:Z

.field isPassword:Z

.field maxlength:I

.field mode:I

.field text:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->text:[B

    .line 160
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->isPassword:Z

    .line 161
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->isMultiLine:Z

    .line 162
    iput v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->mode:I

    .line 163
    iput v1, p0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlIMEInputParams;->maxlength:I

    return-void
.end method
