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

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Container;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Container;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Container;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->cachedSize:I

    .line 46
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-eq p1, p0, :cond_1b

    .line 52
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$Container;

    if-eqz v3, :cond_1c

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    .line 54
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Container;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_19
    :goto_19
    move v1, v2

    :cond_1a
    return v1

    .line 51
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Container;
    :cond_1b
    return v1

    .line 52
    :cond_1c
    return v2

    .line 54
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Container;
    :cond_1d
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_19

    :cond_21
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_2f
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    if-ne v3, v4, :cond_19

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-eqz v3, :cond_57

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_43
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_19

    :cond_52
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-eqz v3, :cond_2f

    goto :goto_19

    :cond_57
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-eqz v3, :cond_43

    goto :goto_19

    :cond_5c
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_1a

    goto :goto_19
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v1, :cond_2a

    .line 92
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 100
    :goto_20
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->cachedSize:I

    .line 102
    return v0

    .line 89
    :cond_2a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    goto :goto_5

    .line 97
    :cond_34
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_20
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 62
    const/16 v0, 0x11

    .line 63
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v1

    :goto_d
    add-int/lit16 v0, v1, 0x20f

    .line 64
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1b
    add-int v0, v3, v1

    .line 65
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    add-int v0, v1, v3

    .line 66
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2f
    add-int v0, v3, v1

    .line 67
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_3d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_3d
    add-int v0, v1, v2

    .line 68
    return v0

    :cond_40
    move v1, v2

    .line 63
    goto :goto_d

    :cond_42
    move v1, v2

    .line 64
    goto :goto_1b

    :cond_44
    move v1, v2

    .line 66
    goto :goto_2f
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Container;
    .registers 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 110
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 111
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_48

    .line 115
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_16

    .line 119
    :goto_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    return-object p0

    .line 113
    :sswitch_15
    return-object p0

    .line 116
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 126
    :sswitch_1e
    new-instance v2, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 127
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 131
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    goto :goto_1

    .line 135
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 136
    .local v1, "temp":I
    if-ne v1, v3, :cond_3b

    .line 138
    :cond_38
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    goto :goto_1

    .line 136
    :cond_3b
    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    .line 140
    iput v3, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    goto :goto_1

    .line 145
    .end local v1    # "temp":I
    :sswitch_41
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    goto :goto_1

    .line 111
    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_1e
        0x1a -> :sswitch_2b
        0x20 -> :sswitch_32
        0x2a -> :sswitch_41
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .registers 3
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v0, :cond_21

    .line 76
    :goto_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->containerId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->state:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 78
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 81
    :goto_1b
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 83
    return-void

    .line 74
    :cond_21
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->jsResource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_4

    .line 79
    :cond_28
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container;->version:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_1b
.end method
