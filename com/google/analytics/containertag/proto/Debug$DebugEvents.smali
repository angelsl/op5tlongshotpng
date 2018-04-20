.class public final Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugEvents"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DebugEvents;


# instance fields
.field public event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 13
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .registers 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->cachedSize:I

    .line 19
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-eq p1, p0, :cond_17

    .line 25
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 26
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    .line 27
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 24
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    :cond_17
    return v1

    .line 25
    :cond_18
    return v2

    .line 27
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_28
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 56
    const/4 v4, 0x0

    .line 57
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-nez v5, :cond_f

    .line 63
    :cond_5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    .line 64
    iput v4, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->cachedSize:I

    .line 65
    return v4

    .line 58
    :cond_f
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_13
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 59
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 32
    const/16 v1, 0x11

    .line 33
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-eqz v2, :cond_1c

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1f

    .line 39
    .end local v0    # "i":I
    :goto_d
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_19

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_19
    add-int v1, v2, v3

    .line 40
    return v1

    .line 33
    :cond_1c
    const/16 v1, 0x20f

    goto :goto_d

    .line 36
    .restart local v0    # "i":I
    :cond_1f
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->hashCode()I

    move-result v2

    :goto_2f
    add-int v1, v4, v2

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_34
    move v2, v3

    .line 36
    goto :goto_2f
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .registers 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 74
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_6c

    .line 78
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-eqz v5, :cond_16

    .line 82
    :goto_c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    return-object p0

    .line 76
    :sswitch_15
    return-object p0

    .line 79
    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 89
    :sswitch_1e
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 90
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v1, v5

    .line 91
    .local v1, "i":I
    :goto_2b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 92
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-nez v5, :cond_4f

    .line 95
    :goto_33
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 96
    :goto_35
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_55

    .line 102
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    aput-object v6, v5, v1

    .line 103
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    :cond_4d
    move v1, v4

    .line 90
    goto :goto_2b

    .line 93
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    :cond_4f
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    .line 97
    :cond_55
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    aput-object v6, v5, v1

    .line 98
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 99
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 74
    nop

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_1e
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-nez v4, :cond_a

    .line 50
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 52
    return-void

    .line 46
    :cond_a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 47
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method
