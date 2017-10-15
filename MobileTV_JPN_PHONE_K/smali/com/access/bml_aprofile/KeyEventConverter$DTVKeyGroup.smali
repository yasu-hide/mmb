.class Lcom/access/bml_aprofile/KeyEventConverter$DTVKeyGroup;
.super Ljava/lang/Object;
.source "KeyEventConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/KeyEventConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DTVKeyGroup"
.end annotation


# static fields
.field static final BASIC:I = 0x1

.field static final DATABUTTON:I = 0x2

.field static final MISC:I = 0x100

.field static final NONE:I = 0x0

.field static final NUMERICTUNING:I = 0x4

.field static final OTHERTUNING:I = 0x8

.field static final SPECIAL1:I = 0x10

.field static final SPECIAL2:I = 0x20

.field static final SPECIAL3:I = 0x40

.field static final SPECIAL4:I = 0x80


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/KeyEventConverter;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/KeyEventConverter;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyEventConverter$DTVKeyGroup;->this$0:Lcom/access/bml_aprofile/KeyEventConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
