.class public abstract Lcom/google/tagmanager/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 2
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

    .line 118
    .local p0, "msg":Lcom/google/tagmanager/protobuf/nano/MessageNano;, "TT;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 3
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

    .line 128
    .local p0, "msg":Lcom/google/tagmanager/protobuf/nano/MessageNano;, "TT;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 130
    .local v0, "input":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-object p0

    .line 135
    .end local v0    # "input":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
    throw v0
.end method

.method public static final messageNanoEquals(Lcom/google/tagmanager/protobuf/nano/MessageNano;Lcom/google/tagmanager/protobuf/nano/MessageNano;)Z
    .locals 4
    .param p0, "a"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .param p1, "b"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 146
    if-ne p0, p1, :cond_0

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 153
    return v0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 156
    .local v1, "serializedSize":I
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 157
    return v0

    .line 159
    :cond_3
    new-array v2, v1, [B

    .line 160
    .local v2, "aByteArray":[B
    new-array v3, v1, [B

    .line 161
    .local v3, "bByteArray":[B
    invoke-static {p0, v2, v0, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)V

    .line 162
    invoke-static {p1, v3, v0, v1}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)V

    .line 163
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 150
    .end local v1    # "serializedSize":I
    .end local v2    # "aByteArray":[B
    .end local v3    # "bByteArray":[B
    :cond_4
    :goto_0
    return v0
.end method

.method public static final toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;[BII)V
    .locals 3
    .param p0, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 102
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 104
    .local v0, "output":Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 105
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "output":Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    nop

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B
    .locals 3
    .param p0, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 86
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

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
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    .line 56
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .line 65
    const/4 v0, 0x0

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
    .locals 1

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
