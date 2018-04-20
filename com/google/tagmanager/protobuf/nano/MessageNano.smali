.class public abstract Lcom/google/tagmanager/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected cachedSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/tagmanager/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "msg":Lcom/google/tagmanager/protobuf/nano/MessageNano;, "TT;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/tagmanager/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "msg":Lcom/google/tagmanager/protobuf/nano/MessageNano;, "TT;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    .line 130
    .local v2, "input":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {p0, v2}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_b
    .catch Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    .line 132
    return-object p0

    .line 133
    .end local v2    # "input":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    :catch_c
    move-exception v0

    .line 134
    .local v0, "e":Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
    throw v0

    .line 135
    .end local v0    # "e":Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_e
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final messageNanoEquals(Lcom/google/tagmanager/protobuf/nano/MessageNano;Lcom/google/tagmanager/protobuf/nano/MessageNano;)Z
    .registers 8
    .param p0, "a"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .param p1, "b"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .prologue
    const/4 v5, 0x0

    .line 146
    if-eq p0, p1, :cond_6

    .line 149
    if-nez p0, :cond_8

    .line 150
    :cond_5
    return v5

    .line 147
    :cond_6
    const/4 v3, 0x1

    return v3

    .line 149
    :cond_8
    if-eqz p1, :cond_5

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_2d

    .line 155
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 156
    .local v2, "serializedSize":I
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    if-ne v3, v2, :cond_2e

    .line 159
    new-array v0, v2, [B

    .line 160
    .local v0, "aByteArray":[B
    new-array v1, v2, [B

    .line 161
    .local v1, "bByteArray":[B
    invoke-static {p0, v0, v5, v2}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)V

    .line 162
    invoke-static {p1, v1, v5, v2}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)V

    .line 163
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 153
    .end local v0    # "aByteArray":[B
    .end local v1    # "bByteArray":[B
    .end local v2    # "serializedSize":I
    :cond_2d
    return v5

    .line 157
    .restart local v2    # "serializedSize":I
    :cond_2e
    return v5
.end method

.method public static final toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)V
    .registers 8
    .param p0, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 102
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 104
    .local v1, "output":Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 105
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 110
    return-void

    .line 106
    .end local v1    # "output":Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    :catch_b
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B
    .registers 4
    .param p0, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    new-array v0, v1, [B

    .line 87
    .local v0, "result":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/MessageNano;->cachedSize:I

    if-ltz v0, :cond_7

    .line 56
    :goto_4
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/MessageNano;->cachedSize:I

    return v0

    .line 54
    :cond_7
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    goto :goto_4
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/MessageNano;->cachedSize:I

    .line 66
    return v0
.end method

.method public abstract mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNanoPrinter;->print(Lcom/google/tagmanager/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
