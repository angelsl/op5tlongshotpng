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

    .prologue
    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 138
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 150
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

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

    .prologue
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

    .prologue
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    .line 154
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 158
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 159
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->cachedSize:I

    .line 161
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-eq p1, p0, :cond_13

    .line 167
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-eqz v3, :cond_14

    move-object v0, p1

    .line 168
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    .line 169
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    iget v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    if-eq v3, v4, :cond_15

    :cond_11
    :goto_11
    move v1, v2

    :cond_12
    return v1

    .line 166
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    :cond_13
    return v1

    .line 167
    :cond_14
    return v2

    .line 169
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    :cond_15
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_23
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_31
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_3f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_4d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_5b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_83

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_11

    :cond_6a
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-eqz v3, :cond_23

    goto :goto_11

    :cond_6f
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-eqz v3, :cond_31

    goto :goto_11

    :cond_74
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-eqz v3, :cond_3f

    goto :goto_11

    :cond_79
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v3, :cond_4d

    goto :goto_11

    :cond_7e
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v3, :cond_5b

    goto :goto_11

    :cond_83
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_12

    goto :goto_11
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "size":I
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    if-ne v1, v2, :cond_39

    .line 221
    :goto_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 225
    :goto_11
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 229
    :goto_1c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 233
    :goto_27
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v1, :cond_5d

    .line 237
    :goto_2b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v1, :cond_66

    .line 241
    :goto_2f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->cachedSize:I

    .line 243
    return v0

    .line 218
    :cond_39
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    goto :goto_6

    .line 222
    :cond_42
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_11

    .line 226
    :cond_4b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1c

    .line 230
    :cond_54
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_27

    .line 234
    :cond_5d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2b

    .line 238
    :cond_66
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2f
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 179
    const/16 v0, 0x11

    .line 180
    .local v0, "result":I
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    add-int/lit16 v0, v1, 0x20f

    .line 181
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int v0, v3, v1

    .line 182
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_21
    add-int v0, v3, v1

    .line 183
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2f
    add-int v0, v3, v1

    .line 184
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;->hashCode()I

    move-result v1

    :goto_3d
    add-int v0, v3, v1

    .line 185
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;->hashCode()I

    move-result v1

    :goto_4b
    add-int v0, v3, v1

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_59

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_59
    add-int v0, v1, v2

    .line 187
    return v0

    :cond_5c
    move v1, v2

    .line 181
    goto :goto_13

    :cond_5e
    move v1, v2

    .line 182
    goto :goto_21

    :cond_60
    move v1, v2

    .line 183
    goto :goto_2f

    :cond_62
    move v1, v2

    .line 184
    goto :goto_3d

    :cond_64
    move v1, v2

    .line 185
    goto :goto_4b
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .registers 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 251
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 252
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_5c

    .line 256
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_16

    .line 260
    :goto_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    return-object p0

    .line 254
    :sswitch_15
    return-object p0

    .line 257
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 267
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 268
    .local v1, "temp":I
    if-ne v1, v3, :cond_27

    .line 270
    :cond_24
    iput v1, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    goto :goto_1

    .line 268
    :cond_27
    const/4 v2, 0x2

    if-eq v1, v2, :cond_24

    .line 272
    iput v3, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    goto :goto_1

    .line 277
    .end local v1    # "temp":I
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    goto :goto_1

    .line 281
    :sswitch_34
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    goto :goto_1

    .line 285
    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    goto :goto_1

    .line 289
    :sswitch_42
    new-instance v2, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    .line 290
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 294
    :sswitch_4f
    new-instance v2, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    .line 295
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 252
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_15
        0x8 -> :sswitch_1e
        0x12 -> :sswitch_2d
        0x1a -> :sswitch_34
        0x22 -> :sswitch_3b
        0x32 -> :sswitch_42
        0x3a -> :sswitch_4f
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

    .prologue
    const/4 v1, 0x1

    .line 192
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    if-ne v0, v1, :cond_34

    .line 195
    :goto_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 198
    :goto_10
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 201
    :goto_1b
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 204
    :goto_26
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    if-nez v0, :cond_4f

    .line 207
    :goto_2a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    if-nez v0, :cond_56

    .line 210
    :goto_2e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 212
    return-void

    .line 193
    :cond_34
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->eventType:I

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto :goto_5

    .line 196
    :cond_3a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerVersion:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_10

    .line 199
    :cond_41
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->containerId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_1b

    .line 202
    :cond_48
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->key:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_26

    .line 205
    :cond_4f
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->macroResult:Lcom/google/analytics/containertag/proto/Debug$MacroEvaluationInfo;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_2a

    .line 208
    :cond_56
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->dataLayerEventResult:Lcom/google/analytics/containertag/proto/Debug$DataLayerEventEvaluationInfo;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_2e
.end method
