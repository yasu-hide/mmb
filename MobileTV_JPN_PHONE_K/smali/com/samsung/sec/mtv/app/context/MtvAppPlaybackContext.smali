.class public final Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
.super Ljava/lang/Object;
.source "MtvAppPlaybackContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;
    }
.end annotation


# instance fields
.field private attrib:Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

.field private comps:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

.field private state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

.field private type:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->type:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    .line 54
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    .line 55
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->attrib:Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    .line 56
    new-instance v0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->comps:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    .line 57
    return-void
.end method


# virtual methods
.method public getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->attrib:Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    return-object v0
.end method

.method public getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->comps:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    return-object v0
.end method

.method public getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    return-object v0
.end method

.method public getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->type:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->comps:Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->reset()V

    .line 65
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->attrib:Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->reset()V

    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->reset()V

    .line 73
    return-void
.end method
