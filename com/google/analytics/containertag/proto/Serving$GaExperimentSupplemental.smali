.class public final Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaExperimentSupplemental"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;


# instance fields
.field public experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

.field public valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2082
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2085
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2088
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2091
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2082
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2270
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2264
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .registers 2

    .prologue
    .line 2094
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2095
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2096
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    .line 2098
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->cachedSize:I

    .line 2099
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2104
    if-eq p1, p0, :cond_17

    .line 2105
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 2106
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2107
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 2104
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    :cond_17
    return v1

    .line 2105
    :cond_18
    return v2

    .line 2107
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_3c
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    .line 2160
    const/4 v6, 0x0

    .line 2161
    .local v6, "size":I
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v7, :cond_17

    .line 2167
    :cond_5
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v7, :cond_28

    .line 2173
    :cond_9
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-nez v7, :cond_39

    .line 2179
    :cond_d
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2180
    iput v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->cachedSize:I

    .line 2181
    return v6

    .line 2162
    :cond_17
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1b
    if-ge v4, v5, :cond_5

    aget-object v3, v1, v4

    .line 2163
    .local v3, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v7, 0x1

    invoke-static {v7, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2162
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 2168
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_28
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2c
    if-ge v4, v5, :cond_9

    aget-object v3, v1, v4

    .line 2169
    .restart local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v7, 0x2

    invoke-static {v7, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2168
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 2174
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_39
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3d
    if-ge v4, v5, :cond_d

    aget-object v2, v0, v4

    .line 2175
    .local v2, "element":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    const/4 v7, 0x3

    invoke-static {v7, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    .line 2174
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2114
    const/16 v1, 0x11

    .line 2115
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_30

    .line 2117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_33

    .line 2121
    .end local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_4a

    .line 2123
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_4d

    .line 2127
    .end local v0    # "i":I
    :goto_17
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-eqz v2, :cond_64

    .line 2129
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v2, v2

    if-lt v0, v2, :cond_67

    .line 2133
    .end local v0    # "i":I
    :goto_21
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_2d

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_2d
    add-int v1, v2, v3

    .line 2134
    return v1

    .line 2115
    :cond_30
    const/16 v1, 0x20f

    goto :goto_d

    .line 2118
    .restart local v0    # "i":I
    :cond_33
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_43
    add-int v1, v4, v2

    .line 2117
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_48
    move v2, v3

    .line 2118
    goto :goto_43

    .line 2121
    .end local v0    # "i":I
    :cond_4a
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_17

    .line 2124
    .restart local v0    # "i":I
    :cond_4d
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_5d
    add-int v1, v4, v2

    .line 2123
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_62
    move v2, v3

    .line 2124
    goto :goto_5d

    .line 2127
    .end local v0    # "i":I
    :cond_64
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_21

    .line 2130
    .restart local v0    # "i":I
    :cond_67
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->hashCode()I

    move-result v2

    :goto_77
    add-int v1, v4, v2

    .line 2129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_7c
    move v2, v3

    .line 2130
    goto :goto_77
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;
    .registers 10
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2189
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 2190
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_108

    .line 2194
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v6, :cond_16

    .line 2198
    :goto_c
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2200
    return-object p0

    .line 2192
    :sswitch_15
    return-object p0

    .line 2195
    :cond_16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 2205
    :sswitch_1e
    const/16 v6, 0xa

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2206
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_4d

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v6

    .line 2207
    .local v1, "i":I
    :goto_2b
    add-int v6, v1, v0

    new-array v3, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2208
    .local v3, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_4f

    .line 2211
    :goto_33
    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2212
    :goto_35
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_55

    .line 2218
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 2219
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_4d
    move v1, v5

    .line 2206
    goto :goto_2b

    .line 2209
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_4f
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v6, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    .line 2213
    :cond_55
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 2214
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2215
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2212
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 2223
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_6b
    const/16 v6, 0x12

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2224
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_9b

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v6

    .line 2225
    .restart local v1    # "i":I
    :goto_78
    add-int v6, v1, v0

    new-array v3, v6, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2226
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_9d

    .line 2229
    :goto_80
    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2230
    :goto_82
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_a3

    .line 2236
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 2237
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_9b
    move v1, v5

    .line 2224
    goto :goto_78

    .line 2227
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_9d
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v6, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_80

    .line 2231
    :cond_a3
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v7}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v7, v6, v1

    .line 2232
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2233
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2230
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 2241
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_b9
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2242
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-eqz v6, :cond_e9

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v1, v6

    .line 2243
    .restart local v1    # "i":I
    :goto_c6
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2244
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-nez v6, :cond_eb

    .line 2247
    :goto_ce
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 2248
    :goto_d0
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_f1

    .line 2254
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    new-instance v7, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v7}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    aput-object v7, v6, v1

    .line 2255
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_e9
    move v1, v5

    .line 2242
    goto :goto_c6

    .line 2245
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_eb
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ce

    .line 2249
    :cond_f1
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    new-instance v7, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v7}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    aput-object v7, v6, v1

    .line 2250
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2251
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2248
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 2190
    nop

    :sswitch_data_108
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_1e
        0x12 -> :sswitch_6b
        0x1a -> :sswitch_b9
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
    .line 2078
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 9
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2139
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_12

    .line 2144
    :cond_4
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_21

    .line 2149
    :cond_8
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-nez v6, :cond_30

    .line 2154
    :cond_c
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2156
    return-void

    .line 2140
    :cond_12
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_16
    if-ge v4, v5, :cond_4

    aget-object v3, v1, v4

    .line 2141
    .local v3, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2140
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2145
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_21
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_25
    if-ge v4, v5, :cond_8

    aget-object v3, v1, v4

    .line 2146
    .restart local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x2

    invoke-virtual {p1, v6, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2145
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 2150
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_30
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_34
    if-ge v4, v5, :cond_c

    aget-object v2, v0, v4

    .line 2151
    .local v2, "element":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    const/4 v6, 0x3

    invoke-virtual {p1, v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2150
    add-int/lit8 v4, v4, 0x1

    goto :goto_34
.end method
