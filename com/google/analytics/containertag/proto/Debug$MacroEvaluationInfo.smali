.class public final Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MacroEvaluationInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

.field public static final macro:Lcom/google/tagmanager/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/nano/Extension",
            "<",
            "Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1097
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 1101
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo$1;-><init>()V

    const v1, 0x2d4c0bd

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/Extension;->create(ILcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Lcom/google/tagmanager/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->macro:Lcom/google/tagmanager/protobuf/nano/Extension;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1098
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1105
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 1108
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 1098
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1206
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1200
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1111
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 1112
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 1113
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    .line 1114
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->cachedSize:I

    .line 1115
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1120
    if-eq p1, p0, :cond_1b

    .line 1121
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v3, :cond_1c

    move-object v0, p1

    .line 1122
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 1123
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_19
    :goto_19
    move v1, v2

    :cond_1a
    return v1

    .line 1120
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    :cond_1b
    return v1

    .line 1121
    :cond_1c
    return v2

    .line 1123
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    :cond_1d
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v3, :cond_19

    :cond_21
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_2f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_19

    :cond_3e
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v3, :cond_2f

    goto :goto_19

    :cond_43
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_1a

    goto :goto_19
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v1, :cond_13

    .line 1155
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_1d

    .line 1159
    :goto_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->cachedSize:I

    .line 1161
    return v0

    .line 1152
    :cond_13
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    goto :goto_5

    .line 1156
    :cond_1d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1129
    const/16 v0, 0x11

    .line 1130
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->hashCode()I

    move-result v1

    :goto_d
    add-int/lit16 v0, v1, 0x20f

    .line 1131
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v1

    :goto_1b
    add-int v0, v3, v1

    .line 1132
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_29

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_29
    add-int v0, v1, v2

    .line 1133
    return v0

    :cond_2c
    move v1, v2

    .line 1130
    goto :goto_d

    :cond_2e
    move v1, v2

    .line 1131
    goto :goto_1b
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    .registers 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1170
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_38

    .line 1174
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_15

    .line 1178
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1180
    return-object p0

    .line 1172
    :sswitch_14
    return-object p0

    .line 1175
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    goto :goto_b

    .line 1185
    :sswitch_1d
    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 1186
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1190
    :sswitch_2a
    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 1191
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1170
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_14
        0xa -> :sswitch_1d
        0x1a -> :sswitch_2a
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
    .line 1094
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

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
    .line 1138
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v0, :cond_e

    .line 1141
    :goto_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v0, :cond_15

    .line 1144
    :goto_8
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1146
    return-void

    .line 1139
    :cond_e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_4

    .line 1142
    :cond_15
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_8
.end method
