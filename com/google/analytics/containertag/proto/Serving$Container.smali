.class public final Lcom/google/analytics/containertag/proto/Serving$Container;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Container"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Container;


# instance fields
.field public containerId:Ljava/lang/String;

.field public jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field public state:I

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Container;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Container;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    .line 25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Container;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Container;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Container;
    .registers 3

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    .line 42
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->cachedSize:I

    .line 46
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 52
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Container;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 53
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Container;

    .line 54
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$Container;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_16

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_60

    goto :goto_20

    :cond_16
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    :goto_20
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-nez v3, :cond_29

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-nez v3, :cond_60

    goto :goto_33

    :cond_29
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    :goto_33
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    if-ne v3, v4, :cond_60

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-nez v3, :cond_42

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-nez v3, :cond_60

    goto :goto_4c

    :cond_42
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    :goto_4c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_55

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_60

    goto :goto_5f

    :cond_55
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    :goto_5f
    goto :goto_61

    :cond_60
    move v0, v2

    :goto_61
    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v1, :cond_d

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_d
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 97
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_2f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->cachedSize:I

    .line 102
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 62
    const/16 v0, 0x11

    .line 63
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v4, 0x0

    if-nez v3, :cond_d

    move v3, v4

    goto :goto_13

    :cond_d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v2, v3

    .line 64
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-nez v3, :cond_1c

    move v3, v4

    goto :goto_22

    :cond_1c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_22
    add-int/2addr v0, v3

    .line 65
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    add-int/2addr v2, v3

    .line 66
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-nez v3, :cond_30

    move v3, v4

    goto :goto_36

    :cond_30
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_36
    add-int/2addr v0, v3

    .line 67
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3d

    goto :goto_43

    :cond_3d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_43
    add-int/2addr v1, v4

    .line 68
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .registers 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 111
    .local v0, "tag":I
    if-eqz v0, :cond_57

    const/16 v1, 0xa

    if-eq v0, v1, :cond_49

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_42

    const/16 v1, 0x20

    if-eq v0, v1, :cond_31

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2a

    .line 115
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_21

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    .line 119
    :cond_21
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_56

    .line 121
    return-object p0

    .line 145
    :cond_2a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    .end local v0    # "tag":I
    goto :goto_56

    .line 135
    .restart local v0    # "tag":I
    :cond_31
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 136
    .local v1, "temp":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3c

    goto :goto_3f

    .line 140
    :cond_3c
    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    .line 142
    goto :goto_56

    .line 138
    :cond_3f
    :goto_3f
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    goto :goto_56

    .line 131
    .end local v1    # "temp":I
    :cond_42
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    .line 132
    goto :goto_56

    .line 126
    :cond_49
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 127
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 128
    nop

    .line 149
    .end local v0    # "tag":I
    :cond_56
    :goto_56
    goto :goto_0

    .line 113
    .restart local v0    # "tag":I
    :cond_57
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

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v0, :cond_a

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 76
    :cond_a
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 77
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 78
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 79
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 81
    :cond_26
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 83
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
