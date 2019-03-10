.class public final Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/proto/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceWithMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;


# instance fields
.field public resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field public supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

.field public timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    sput-object v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->EMPTY_ARRAY:[Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 19
    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .registers 3

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 24
    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 25
    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->cachedSize:I

    .line 27
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 33
    :cond_4
    instance-of v1, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 34
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .line 35
    .local v1, "other":Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    iget-wide v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    iget-wide v5, v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4f

    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_1e

    iget-object v3, v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_4f

    goto :goto_28

    :cond_1e
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :goto_28
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-nez v3, :cond_31

    iget-object v3, v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-nez v3, :cond_4f

    goto :goto_3b

    :cond_31
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    iget-object v4, v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :goto_3b
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_44

    iget-object v3, v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4f

    goto :goto_4e

    :cond_44
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :goto_4e
    goto :goto_50

    :cond_4f
    move v0, v2

    :goto_50
    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "size":I
    iget-wide v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v1, :cond_15

    .line 69
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_15
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-eqz v1, :cond_21

    .line 73
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_21
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->cachedSize:I

    .line 78
    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 42
    const/16 v0, 0x11

    .line 43
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-wide v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    iget-wide v5, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 44
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v4, 0x0

    if-nez v3, :cond_19

    move v3, v4

    goto :goto_1f

    :cond_19
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v3

    :goto_1f
    add-int/2addr v0, v3

    .line 45
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-nez v3, :cond_28

    move v3, v4

    goto :goto_2e

    :cond_28
    iget-object v3, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->hashCode()I

    move-result v3

    :goto_2e
    add-int/2addr v2, v3

    .line 46
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_35

    goto :goto_3b

    :cond_35
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_3b
    add-int/2addr v1, v4

    .line 47
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .registers 5
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 87
    .local v0, "tag":I
    if-eqz v0, :cond_48

    const/16 v1, 0x8

    if-eq v0, v1, :cond_40

    const/16 v1, 0x12

    if-eq v0, v1, :cond_33

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_26

    .line 91
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    .line 95
    :cond_1d
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 97
    return-object p0

    .line 111
    :cond_26
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 112
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto :goto_47

    .line 106
    .restart local v0    # "tag":I
    :cond_33
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 107
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 108
    goto :goto_47

    .line 102
    :cond_40
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    .line 103
    nop

    .line 116
    .end local v0    # "tag":I
    :cond_47
    :goto_47
    goto :goto_0

    .line 89
    .restart local v0    # "tag":I
    :cond_48
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .registers 3
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 53
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v0, :cond_10

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 56
    :cond_10
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-eqz v0, :cond_1a

    .line 57
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 59
    :cond_1a
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 61
    return-void
.end method
