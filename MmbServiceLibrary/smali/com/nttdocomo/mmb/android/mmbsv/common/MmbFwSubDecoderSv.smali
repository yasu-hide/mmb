.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
.super Ljava/lang/Object;
.source "MmbFwSubDecoderSv.java"


# virtual methods
.method public abstract decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation
.end method
