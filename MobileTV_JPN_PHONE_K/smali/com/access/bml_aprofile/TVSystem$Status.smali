.class Lcom/access/bml_aprofile/TVSystem$Status;
.super Ljava/lang/Object;
.source "TVSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/TVSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Status"
.end annotation


# static fields
.field public static final ACCESSINGBOOKMARK:I = 0xa

.field public static final ACCESSINGMEMORY:I = 0x6

.field public static final BMLMODE:I = 0x2711

.field public static final CALLINGPHONE:I = 0x3

.field public static final CONNECTINGNETWORK:I = 0x4

.field public static final HTMLMODE:I = 0x2712

.field public static final ILLEGALFUNCTION:I = -0x7

.field public static final INITIALUPDATE:I = 0x9

.field public static final LOADINGDOCUMENT:I = 0x8

.field public static final MAILMODE:I = 0x2713

.field public static final MAX:I = 0xd

.field public static final NONEMODE:I = 0x2714

.field public static final OCCUPIEDIP:I = 0xc

.field public static final RECEIVINGVIAARIB:I = 0x1

.field public static final RECEIVINGVIAHTTP:I = 0x2

.field public static final RUNNINGBROWSER:I = 0x7

.field public static final SCRIPTERROR:I = -0x6

.field public static final SECUREDZONE:I = 0xb

.field public static final STACKOVERFLOW:I = -0x5

.field public static final TRANSFERRINGDATA:I = 0x5

.field public static final UNAVAILABLEDOCUMENT:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/TVSystem;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/TVSystem;)V
    .locals 0

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem$Status;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
