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
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
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
    .locals 2

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
    .locals 1

    .line 1098
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 1108
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 1098
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1206
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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
    .locals 1

    .line 1111
    const/4 v0, 0x0

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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1120
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1121
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1122
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 1123
    .local v1, "other":Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v1, :cond_0

    .line 1152
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1155
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_1

    .line 1156
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1159
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->cachedSize:I

    .line 1161
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1129
    const/16 v0, 0x11

    .line 1130
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 1131
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 1132
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    .line 1133
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1169
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1170
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 1174
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1180
    return-object p0

    .line 1190
    :cond_1
    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 1191
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 1185
    :cond_2
    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    .line 1186
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1187
    nop

    .line 1195
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 1172
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

    .line 1094
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

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

    .line 1138
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->rulesEvaluation:Lcom/google/analytics/containertag/proto/Debug$RuleEvaluationStepInfo;

    if-eqz v0, :cond_0

    .line 1139
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->result:Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_1

    .line 1142
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1146
    return-void
.end method
