.class public final Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataLayerEventEvaluationInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;


# instance fields
.field public results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 962
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 969
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 963
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1083
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 972
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 973
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 974
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    .line 975
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->cachedSize:I

    .line 976
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 981
    if-eq p1, p0, :cond_1b

    .line 982
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v3, :cond_1c

    move-object v0, p1

    .line 983
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 984
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_19
    :goto_19
    move v1, v2

    :cond_1a
    return v1

    .line 981
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    :cond_1b
    return v1

    .line 982
    :cond_1c
    return v2

    .line 984
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    :cond_1d
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v3, :cond_19

    :cond_21
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_19

    :cond_3a
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_1a

    goto :goto_19
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 1018
    const/4 v4, 0x0

    .line 1019
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v5, :cond_13

    .line 1023
    :goto_5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v5, :cond_1d

    .line 1029
    :cond_9
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1030
    iput v4, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->cachedSize:I

    .line 1031
    return v4

    .line 1020
    :cond_13
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v6, 0x1

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/lit8 v4, v5, 0x0

    goto :goto_5

    .line 1024
    :cond_1d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_21
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 1025
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1024
    add-int/lit8 v2, v2, 0x1

    goto :goto_21
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 990
    const/16 v1, 0x11

    .line 991
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->hashCode()I

    move-result v2

    :goto_d
    add-int/lit16 v1, v2, 0x20f

    .line 992
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v2, :cond_2a

    .line 994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_2d

    .line 998
    .end local v0    # "i":I
    :goto_19
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_25

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_25
    add-int v1, v2, v3

    .line 999
    return v1

    :cond_28
    move v2, v3

    .line 991
    goto :goto_d

    .line 992
    :cond_2a
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_19

    .line 995
    .restart local v0    # "i":I
    :cond_2d
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v2

    :goto_3d
    add-int v1, v4, v2

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_42
    move v2, v3

    .line 995
    goto :goto_3d
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;
    .registers 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1039
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1040
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_78

    .line 1044
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v5, :cond_16

    .line 1048
    :goto_c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1050
    return-object p0

    .line 1042
    :sswitch_15
    return-object p0

    .line 1045
    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 1055
    :sswitch_1e
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 1056
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 1060
    :sswitch_2b
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1061
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_5a

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v1, v5

    .line 1062
    .local v1, "i":I
    :goto_38
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 1063
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v5, :cond_5c

    .line 1066
    :goto_40
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 1067
    :goto_42
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_62

    .line 1073
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1074
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_5a
    move v1, v4

    .line 1061
    goto :goto_38

    .line 1064
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_5c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_40

    .line 1068
    :cond_62
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v6, v5, v1

    .line 1069
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1070
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 1040
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_1e
        0x12 -> :sswitch_2b
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
    .line 959
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v4, :cond_e

    .line 1007
    :goto_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v4, :cond_15

    .line 1012
    :cond_8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1014
    return-void

    .line 1005
    :cond_e
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_4

    .line 1008
    :cond_15
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->results:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_19
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 1009
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1008
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method
