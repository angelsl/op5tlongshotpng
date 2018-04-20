.class public final Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RuleEvaluationStepInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;


# instance fields
.field public enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 805
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 809
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 812
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 806
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 948
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .registers 2

    .prologue
    .line 815
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 816
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->cachedSize:I

    .line 819
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 824
    if-eq p1, p0, :cond_17

    .line 825
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 826
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 827
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 824
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    :cond_17
    return v1

    .line 825
    :cond_18
    return v2

    .line 827
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_32
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    .line 868
    const/4 v6, 0x0

    .line 869
    .local v6, "size":I
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-nez v7, :cond_13

    .line 875
    :cond_5
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v7, :cond_24

    .line 881
    :cond_9
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v7

    add-int/2addr v6, v7

    .line 882
    iput v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->cachedSize:I

    .line 883
    return v6

    .line 870
    :cond_13
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_17
    if-ge v4, v5, :cond_5

    aget-object v3, v1, v4

    .line 871
    .local v3, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    const/4 v7, 0x1

    invoke-static {v7, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    .line 870
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 876
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_24
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_28
    if-ge v4, v5, :cond_9

    aget-object v2, v0, v4

    .line 877
    .local v2, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v7, 0x2

    invoke-static {v7, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    .line 876
    add-int/lit8 v4, v4, 0x1

    goto :goto_28
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 833
    const/16 v1, 0x11

    .line 834
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-eqz v2, :cond_26

    .line 836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    array-length v2, v2

    if-lt v0, v2, :cond_29

    .line 840
    .end local v0    # "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v2, :cond_40

    .line 842
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    if-lt v0, v2, :cond_43

    .line 846
    .end local v0    # "i":I
    :goto_17
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_23

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_23
    add-int v1, v2, v3

    .line 847
    return v1

    .line 834
    :cond_26
    const/16 v1, 0x20f

    goto :goto_d

    .line 837
    .restart local v0    # "i":I
    :cond_29
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->hashCode()I

    move-result v2

    :goto_39
    add-int v1, v4, v2

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_3e
    move v2, v3

    .line 837
    goto :goto_39

    .line 840
    .end local v0    # "i":I
    :cond_40
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_17

    .line 843
    .restart local v0    # "i":I
    :cond_43
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v0

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v2

    :goto_53
    add-int v1, v4, v2

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_58
    move v2, v3

    .line 843
    goto :goto_53
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;
    .registers 10
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 891
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 892
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_ba

    .line 896
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v6, :cond_16

    .line 900
    :goto_c
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 902
    return-object p0

    .line 894
    :sswitch_15
    return-object p0

    .line 897
    :cond_16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 907
    :sswitch_1e
    const/16 v6, 0xa

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 908
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-eqz v6, :cond_4d

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    array-length v1, v6

    .line 909
    .local v1, "i":I
    :goto_2b
    add-int v6, v1, v0

    new-array v3, v6, [Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 910
    .local v3, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-nez v6, :cond_4f

    .line 913
    :goto_33
    iput-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 914
    :goto_35
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_55

    .line 920
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    new-instance v7, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v7}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>()V

    aput-object v7, v6, v1

    .line 921
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    :cond_4d
    move v1, v5

    .line 908
    goto :goto_2b

    .line 911
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    :cond_4f
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-static {v6, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    .line 915
    :cond_55
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    new-instance v7, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v7}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>()V

    aput-object v7, v6, v1

    .line 916
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 917
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 914
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 925
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    :sswitch_6b
    const/16 v6, 0x12

    invoke-static {p1, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 926
    .restart local v0    # "arrayLength":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v6, :cond_9b

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v1, v6

    .line 927
    .restart local v1    # "i":I
    :goto_78
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 928
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v6, :cond_9d

    .line 931
    :goto_80
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 932
    :goto_82
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_a3

    .line 938
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v7, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v7}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v7, v6, v1

    .line 939
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_9b
    move v1, v5

    .line 926
    goto :goto_78

    .line 929
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_9d
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_80

    .line 933
    :cond_a3
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v7, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v7}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v7, v6, v1

    .line 934
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 935
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 932
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 892
    nop

    :sswitch_data_ba
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_1e
        0x12 -> :sswitch_6b
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
    .line 802
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

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
    .line 852
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    if-nez v6, :cond_e

    .line 857
    :cond_4
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v6, :cond_1d

    .line 862
    :cond_8
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 864
    return-void

    .line 853
    :cond_e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->rules:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_12
    if-ge v4, v5, :cond_4

    aget-object v3, v1, v4

    .line 854
    .local v3, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 853
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 858
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->enabledFunctions:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_21
    if-ge v4, v5, :cond_8

    aget-object v2, v0, v4

    .line 859
    .local v2, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v6, 0x2

    invoke-virtual {p1, v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 858
    add-int/lit8 v4, v4, 0x1

    goto :goto_21
.end method
