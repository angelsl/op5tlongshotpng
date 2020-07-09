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
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

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
    .locals 2
    .param p0, "n"    # I

    .line 376
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

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
    .locals 2
    .param p0, "buf"    # [B

    .line 52
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 60
    new-instance v0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 493
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 494
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    .line 495
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 497
    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 498
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    goto :goto_0

    .line 500
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    .line 502
    :goto_0
    return-void
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-ne v0, p1, :cond_0

    .line 97
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 519
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 520
    const/4 v0, -0x1

    return v0

    .line 523
    :cond_0
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 524
    .local v1, "currentAbsolutePosition":I
    sub-int/2addr v0, v1

    return v0
.end method

.method public getData(II)[B
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 551
    if-nez p2, :cond_0

    .line 552
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v0

    .line 554
    :cond_0
    new-array v0, p2, [B

    .line 555
    .local v0, "copy":[B
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v1, p1

    .line 556
    .local v1, "start":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    return-object v0
.end method

.method public getPosition()I
    .locals 2

    .line 540
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 2

    .line 533
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .line 510
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 511
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 512
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 477
    if-ltz p1, :cond_1

    .line 480
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v0

    .line 481
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 482
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_0

    .line 485
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    .line 487
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    .line 489
    return v0

    .line 483
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 478
    .end local v0    # "oldLimit":I
    :cond_1
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 232
    .local v0, "size":I
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 235
    new-array v1, v0, [B

    .line 236
    .local v1, "result":[B
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 238
    return-object v1

    .line 241
    .end local v1    # "result":[B
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v1

    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lcom/google/tagmanager/protobuf/nano/MessageNano;I)V
    .locals 2
    .param p1, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 208
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
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V
    .locals 3
    .param p1, "msg"    # Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 218
    .local v0, "length":I
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-ge v1, v2, :cond_0

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
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-eq v0, v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v1, v0

    return v0

    .line 582
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    if-ltz p1, :cond_2

    .line 598
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_1

    .line 605
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    .line 607
    new-array v1, p1, [B

    .line 608
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 610
    return-object v1

    .line 612
    .end local v1    # "bytes":[B
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 600
    :cond_1
    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 602
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 595
    :cond_2
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v14, 0x8

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v2

    and-long/2addr v12, v10

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v3

    and-long/2addr v12, v10

    const/16 v14, 0x18

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v4

    and-long/2addr v12, v10

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v5

    and-long/2addr v12, v10

    const/16 v14, 0x28

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v6

    and-long/2addr v12, v10

    const/16 v14, 0x30

    shl-long/2addr v12, v14

    or-long/2addr v8, v12

    int-to-long v12, v7

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    .line 286
    .local v0, "tmp":B
    if-ltz v0, :cond_0

    .line 287
    return v0

    .line 289
    :cond_0
    and-int/lit8 v1, v0, 0x7f

    .line 290
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    if-ltz v2, :cond_1

    .line 291
    shl-int/lit8 v2, v0, 0x7

    or-int/2addr v1, v2

    goto :goto_1

    .line 293
    :cond_1
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    .line 294
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    if-ltz v2, :cond_2

    .line 295
    shl-int/lit8 v2, v0, 0xe

    or-int/2addr v1, v2

    goto :goto_1

    .line 297
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    .line 298
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    if-ltz v2, :cond_3

    .line 299
    shl-int/lit8 v2, v0, 0x15

    or-int/2addr v1, v2

    goto :goto_1

    .line 301
    :cond_3
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    .line 302
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    move v0, v2

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    .line 303
    if-gez v0, :cond_6

    .line 305
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_4

    .line 307
    return v1

    .line 305
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "i":I
    :cond_5
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 315
    :cond_6
    :goto_1
    return v1
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "shift":I
    const-wide/16 v1, 0x0

    .line 322
    .local v1, "result":J
    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    .line 324
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 325
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 326
    return-wide v1

    .line 328
    :cond_0
    nop

    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x7

    .line 329
    goto :goto_0

    .line 330
    :cond_1
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 190
    .local v0, "size":I
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    const-string v3, "UTF-8"

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 194
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 195
    return-object v1

    .line 198
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 73
    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    .line 77
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eqz v0, :cond_1

    .line 81
    return v0

    .line 79
    :cond_1
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSizeCounter()V
    .locals 0

    .line 468
    return-void
.end method

.method public rewindToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .line 564
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    .line 568
    if-ltz p1, :cond_0

    .line 571
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 572
    return-void

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecursionLimit(I)I
    .locals 3
    .param p1, "limit"    # I

    .line 430
    if-ltz p1, :cond_0

    .line 434
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 435
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    .line 436
    return v0

    .line 431
    .end local v0    # "oldLimit":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSizeLimit(I)I
    .locals 3
    .param p1, "limit"    # I

    .line 455
    if-ltz p1, :cond_0

    .line 459
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 460
    .local v0, "oldLimit":I
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    .line 461
    return v0

    .line 456
    .end local v0    # "oldLimit":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipField(I)Z
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    .line 126
    return v1

    .line 128
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 123
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    .line 118
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 121
    return v1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 115
    return v1

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    .line 112
    return v1

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 109
    return v1
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 142
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 140
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    if-ltz p1, :cond_2

    .line 627
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-gt v1, v2, :cond_1

    .line 634
    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    .line 636
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    .line 640
    return-void

    .line 638
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 629
    :cond_1
    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    .line 631
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 624
    :cond_2
    invoke-static {}, Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
