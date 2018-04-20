.class public final Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 407
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 410
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 416
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    .line 417
    iput p2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    .line 418
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 419
    iput p2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 420
    return-void
.end method

.method public static decodeZigZag32(I)I
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 376
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .registers 6
    .param p0, "n"    # J

    .prologue
    .line 390
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .registers 3
    .param p0, "buf"    # [B

    .prologue
    .line 52
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    .prologue
    .line 493
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 494
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 495
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v0, v1, :cond_11

    .line 500
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 502
    :goto_10
    return-void

    .line 497
    :cond_11
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 498
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    goto :goto_10
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 97
    return-void

    .line 95
    :cond_5
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public getBytesUntilLimit()I
    .registers 4

    .prologue
    .line 519
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_d

    .line 523
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 524
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int/2addr v1, v0

    return v1

    .line 520
    .end local v0    # "currentAbsolutePosition":I
    :cond_d
    const/4 v1, -0x1

    return v1
.end method

.method public getData(II)[B
    .registers 7
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 551
    if-eqz p2, :cond_f

    .line 554
    new-array v0, p2, [B

    .line 555
    .local v0, "copy":[B
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int v1, v2, p1

    .line 556
    .local v1, "start":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    return-object v0

    .line 552
    .end local v0    # "copy":[B
    .end local v1    # "start":I
    :cond_f
    sget-object v2, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v2
.end method

.method public getPosition()I
    .registers 3

    .prologue
    .line 540
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 3

    .prologue
    .line 533
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public popLimit(I)V
    .registers 2
    .param p1, "oldLimit"    # I

    .prologue
    .line 510
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 511
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 512
    return-void
.end method

.method public pushLimit(I)I
    .registers 4
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 477
    if-ltz p1, :cond_f

    .line 480
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v1

    .line 481
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 482
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_14

    .line 485
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 487
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 489
    return v0

    .line 478
    .end local v0    # "oldLimit":I
    :cond_f
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 483
    .restart local v0    # "oldLimit":I
    :cond_14
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1
.end method

.method public readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 232
    .local v1, "size":I
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_11

    .line 241
    :cond_c
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v2

    return-object v2

    .line 232
    :cond_11
    if-lez v1, :cond_c

    .line 235
    new-array v0, v1, [B

    .line 236
    .local v0, "result":[B
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 238
    return-object v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lcom/google/tagmanager/protobuf/nano/MessageNano;I)V
    .registers 5
    .param p1, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v0, v1, :cond_1e

    .line 208
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 209
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 210
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 212
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 213
    return-void

    .line 206
    :cond_1e
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V
    .registers 6
    .param p1, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    .local v0, "length":I
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v2, v3, :cond_25

    .line 221
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 222
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 225
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 227
    return-void

    .line 219
    .end local v1    # "oldLimit":I
    :cond_25
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-eq v0, v1, :cond_11

    .line 584
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v0, v1

    return v0

    .line 582
    :cond_11
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .registers 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 594
    if-ltz p1, :cond_16

    .line 598
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_1b

    .line 605
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_28

    .line 612
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 595
    :cond_16
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 600
    :cond_1b
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 602
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 607
    :cond_28
    new-array v0, p1, [B

    .line 608
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 610
    return-object v0
.end method

.method public readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 336
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 337
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 338
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 339
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 348
    .local v0, "b1":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    .line 349
    .local v1, "b2":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 350
    .local v2, "b3":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 351
    .local v3, "b4":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    .line 352
    .local v4, "b5":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    .line 353
    .local v5, "b6":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    .line 354
    .local v6, "b7":B
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    .line 355
    .local v7, "b8":B
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v4

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v7

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    .line 286
    .local v2, "tmp":B
    if-gez v2, :cond_33

    .line 289
    and-int/lit8 v1, v2, 0x7f

    .line 290
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-gez v2, :cond_34

    .line 293
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 294
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-gez v2, :cond_38

    .line 297
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 298
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-gez v2, :cond_3c

    .line 301
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 302
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 303
    if-ltz v2, :cond_40

    .line 315
    :goto_32
    return v1

    .line 287
    .end local v1    # "result":I
    :cond_33
    return v2

    .line 291
    .restart local v1    # "result":I
    :cond_34
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    goto :goto_32

    .line 295
    :cond_38
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_32

    .line 299
    :cond_3c
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_32

    .line 305
    :cond_40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_41
    const/4 v3, 0x5

    if-lt v0, v3, :cond_49

    .line 310
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3

    .line 306
    :cond_49
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    if-gez v3, :cond_52

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 307
    :cond_52
    return v1
.end method

.method public readRawVarint64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 322
    .local v2, "result":J
    :goto_3
    const/16 v4, 0x40

    if-lt v1, v4, :cond_c

    .line 330
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v4

    throw v4

    .line 323
    :cond_c
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 324
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 325
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1c

    .line 328
    add-int/lit8 v1, v1, 0x7

    goto :goto_3

    .line 326
    :cond_1c
    return-wide v2
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 190
    .local v1, "size":I
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_18

    .line 198
    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 190
    :cond_18
    if-lez v1, :cond_b

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 194
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 195
    return-object v0
.end method

.method public readTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_14

    .line 76
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 77
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eqz v0, :cond_17

    .line 81
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0

    .line 72
    :cond_14
    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 73
    return v1

    .line 79
    :cond_17
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSizeCounter()V
    .registers 1

    .prologue
    .line 468
    return-void
.end method

.method public rewindToPosition(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 564
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_f

    .line 568
    if-ltz p1, :cond_39

    .line 571
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 572
    return-void

    .line 565
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecursionLimit(I)I
    .registers 6
    .param p1, "limit"    # I

    .prologue
    .line 430
    if-ltz p1, :cond_7

    .line 434
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 435
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 436
    return v0

    .line 431
    .end local v0    # "oldLimit":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSizeLimit(I)I
    .registers 6
    .param p1, "limit"    # I

    .prologue
    .line 455
    if-ltz p1, :cond_7

    .line 459
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 460
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 461
    return v0

    .line 456
    .end local v0    # "oldLimit":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipField(I)Z
    .registers 5
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 128
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 108
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 109
    return v2

    .line 111
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    .line 112
    return v2

    .line 114
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 115
    return v2

    .line 117
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 118
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 121
    return v2

    .line 123
    :pswitch_2d
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    .line 126
    return v2

    .line 106
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    .local v0, "tag":I
    if-nez v0, :cond_7

    .line 140
    :cond_6
    return-void

    .line 139
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0
.end method

.method public skipRawBytes(I)V
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    if-ltz p1, :cond_15

    .line 627
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v0, v1, :cond_1a

    .line 634
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_27

    .line 638
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 624
    :cond_15
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 629
    :cond_1a
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 631
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 636
    :cond_27
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 640
    return-void
.end method
