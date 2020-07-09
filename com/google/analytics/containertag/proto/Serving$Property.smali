.class public final Lcom/google/analytics/containertag/proto/Serving$Property;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 456
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Property;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 457
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    .line 463
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    .line 457
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 545
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    .line 467
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->cachedSize:I

    .line 470
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 475
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 476
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Property;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 477
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 478
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$Property;
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "size":I
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->cachedSize:I

    .line 508
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 484
    const/16 v0, 0x11

    .line 485
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    add-int/2addr v1, v2

    .line 486
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    add-int/2addr v0, v2

    .line 487
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 488
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 2
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 517
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 527
    return-object p0

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    goto :goto_1

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    .line 533
    nop

    .line 540
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 519
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Property;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 494
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 495
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 497
    return-void
.end method
