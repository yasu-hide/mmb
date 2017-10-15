.class final Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private fragment:Landroid/app/Fragment;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;

.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 627
    .local p3, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->tag:Ljava/lang/String;

    .line 629
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->mClass:Ljava/lang/Class;

    .line 630
    iput-object p4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->args:Landroid/os/Bundle;

    .line 631
    return-void
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method
