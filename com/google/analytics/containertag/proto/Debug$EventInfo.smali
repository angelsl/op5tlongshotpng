.class public final Lcom/google/analytics/containertag/proto/Debug$EventInfo;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Debug$EventInfo$EventType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;


# instance fields
.field public containerId:Ljava/lang/String;

.field public containerVersion:Ljava/lang/String;

.field public dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

.field public eventType:I

.field public key:Ljava/lang/String;

.field public macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 150
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 127
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .registers 2

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 158
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 159
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->cachedSize:I

    .line 161
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 167
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 168
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 169
    .local v1, "other":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    iget v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    if-ne v3, v4, :cond_86

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-nez v3, :cond_1c

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-nez v3, :cond_86

    goto :goto_26

    :cond_1c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_26
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-nez v3, :cond_2f

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-nez v3, :cond_86

    goto :goto_39

    :cond_2f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_39
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-nez v3, :cond_42

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-nez v3, :cond_86

    goto :goto_4c

    :cond_42
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_4c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v3, :cond_55

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v3, :cond_86

    goto :goto_5f

    :cond_55
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_5f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v3, :cond_68

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v3, :cond_86

    goto :goto_72

    :cond_68
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_72
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7b

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_86

    goto :goto_85

    :cond_7b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_85
    goto :goto_87

    :cond_86
    move v0, v2

    :goto_87
    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "size":I
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    .line 218
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 222
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_1f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 226
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_31
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 230
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_43
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v1, :cond_4f

    .line 234
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_4f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v1, :cond_5b

    .line 238
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_5b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->cachedSize:I

    .line 243
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 179
    const/16 v0, 0x11

    .line 180
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    add-int/2addr v2, v3

    .line 181
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_12

    move v3, v4

    goto :goto_18

    :cond_12
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v0, v3

    .line 182
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-nez v3, :cond_21

    move v3, v4

    goto :goto_27

    :cond_21
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_27
    add-int/2addr v2, v3

    .line 183
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-nez v3, :cond_30

    move v3, v4

    goto :goto_36

    :cond_30
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_36
    add-int/2addr v0, v3

    .line 184
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v3, :cond_3f

    move v3, v4

    goto :goto_45

    :cond_3f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->hashCode()I

    move-result v3

    :goto_45
    add-int/2addr v2, v3

    .line 185
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v3, :cond_4e

    move v3, v4

    goto :goto_54

    :cond_4e
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->hashCode()I

    move-result v3

    :goto_54
    add-int/2addr v0, v3

    .line 186
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5b

    goto :goto_61

    :cond_5b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_61
    add-int/2addr v1, v4

    .line 187
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .registers 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 252
    .local v0, "tag":I
    if-eqz v0, :cond_72

    const/16 v1, 0x8

    if-eq v0, v1, :cond_61

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_53

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_32

    .line 256
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_29

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    .line 260
    :cond_29
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_71

    .line 262
    return-object p0

    .line 294
    :cond_32
    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 295
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto :goto_71

    .line 289
    .restart local v0    # "tag":I
    :cond_3f
    new-instance v1, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 290
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 291
    goto :goto_71

    .line 285
    :cond_4c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 286
    goto :goto_71

    .line 281
    :cond_53
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 282
    goto :goto_71

    .line 277
    :cond_5a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 278
    goto :goto_71

    .line 267
    :cond_61
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 268
    .local v1, "temp":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6c

    goto :goto_6f

    .line 272
    :cond_6c
    iput v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 274
    goto :goto_71

    .line 270
    :cond_6f
    :goto_6f
    iput v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 299
    .end local v0    # "tag":I
    .end local v1    # "temp":I
    :cond_71
    :goto_71
    goto :goto_0

    .line 254
    .restart local v0    # "tag":I
    :cond_72
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

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;

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

    .line 192
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 193
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 195
    :cond_a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 196
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 198
    :cond_1a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 199
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 201
    :cond_2a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 202
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 204
    :cond_3a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v0, :cond_44

    .line 205
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 207
    :cond_44
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v0, :cond_4e

    .line 208
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 210
    :cond_4e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 212
    return-void
.end method
