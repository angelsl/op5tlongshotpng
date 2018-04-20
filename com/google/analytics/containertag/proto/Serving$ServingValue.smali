.class public final Lcom/google/analytics/containertag/proto/Serving$ServingValue;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServingValue"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$ServingValue;

.field public static final ext:Lcom/google/tagmanager/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/nano/Extension",
            "<",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public listItem:[I

.field public macroNameReference:I

.field public macroReference:I

.field public mapKey:[I

.field public mapValue:[I

.field public tagReference:I

.field public templateToken:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 172
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;-><init>()V

    const/16 v1, 0x65

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/Extension;->create(ILcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Lcom/google/tagmanager/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/nano/Extension;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 176
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .line 179
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .line 182
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .line 185
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    .line 188
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .line 191
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    .line 194
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    .line 169
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 197
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .line 198
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .line 199
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .line 200
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    .line 201
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .line 202
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    .line 203
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->cachedSize:I

    .line 206
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    if-eq p1, p0, :cond_17

    .line 212
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 213
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 214
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 211
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    :cond_17
    return v1

    .line 212
    :cond_18
    return v2

    .line 214
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-ne v3, v4, :cond_15

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_58
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    .line 294
    const/4 v5, 0x0

    .line 295
    .local v5, "size":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-nez v6, :cond_27

    .line 304
    :cond_5
    :goto_5
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-nez v6, :cond_46

    .line 313
    :cond_9
    :goto_9
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-nez v6, :cond_64

    .line 322
    :cond_d
    :goto_d
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-nez v6, :cond_82

    .line 326
    :goto_11
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-nez v6, :cond_8b

    .line 335
    :cond_15
    :goto_15
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-nez v6, :cond_aa

    .line 339
    :goto_19
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-nez v6, :cond_b4

    .line 343
    :goto_1d
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    .line 344
    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->cachedSize:I

    .line 345
    return v5

    .line 295
    :cond_27
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v6, v6

    if-lez v6, :cond_5

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_31
    if-lt v3, v4, :cond_3c

    .line 301
    add-int/lit8 v5, v1, 0x0

    .line 302
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto :goto_5

    .line 297
    :cond_3c
    aget v2, v0, v3

    .line 298
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 304
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_46
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v6, v6

    if-lez v6, :cond_9

    .line 305
    const/4 v1, 0x0

    .line 306
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_50
    if-lt v3, v4, :cond_5a

    .line 310
    add-int/2addr v5, v1

    .line 311
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto :goto_9

    .line 306
    :cond_5a
    aget v2, v0, v3

    .line 307
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 313
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_64
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v6, v6

    if-lez v6, :cond_d

    .line 314
    const/4 v1, 0x0

    .line 315
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_6e
    if-lt v3, v4, :cond_78

    .line 319
    add-int/2addr v5, v1

    .line 320
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto :goto_d

    .line 315
    :cond_78
    aget v2, v0, v3

    .line 316
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 323
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_82
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_11

    .line 326
    :cond_8b
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v6, v6

    if-lez v6, :cond_15

    .line 327
    const/4 v1, 0x0

    .line 328
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_95
    if-lt v3, v4, :cond_a0

    .line 332
    add-int/2addr v5, v1

    .line 333
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_15

    .line 328
    :cond_a0
    aget v2, v0, v3

    .line 329
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 336
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_aa
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    const/4 v7, 0x6

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_19

    .line 340
    :cond_b4
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    const/4 v7, 0x7

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto/16 :goto_1d
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 225
    const/16 v1, 0x11

    .line 226
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-eqz v2, :cond_4b

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v2, v2

    if-lt v0, v2, :cond_4e

    .line 232
    .end local v0    # "i":I
    :goto_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-eqz v2, :cond_59

    .line 234
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v2, v2

    if-lt v0, v2, :cond_5c

    .line 238
    .end local v0    # "i":I
    :goto_16
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-eqz v2, :cond_67

    .line 240
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v2, v2

    if-lt v0, v2, :cond_6a

    .line 244
    .end local v0    # "i":I
    :goto_20
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    add-int v1, v2, v3

    .line 245
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-eqz v2, :cond_75

    .line 247
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v2, v2

    if-lt v0, v2, :cond_78

    .line 251
    .end local v0    # "i":I
    :goto_30
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    add-int v1, v2, v3

    .line 252
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    add-int v1, v2, v3

    .line 253
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_48
    add-int v1, v3, v2

    .line 254
    return v1

    .line 226
    :cond_4b
    const/16 v1, 0x20f

    goto :goto_c

    .line 229
    .restart local v0    # "i":I
    :cond_4e
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 232
    .end local v0    # "i":I
    :cond_59
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_16

    .line 235
    .restart local v0    # "i":I
    :cond_5c
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 238
    .end local v0    # "i":I
    :cond_67
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_20

    .line 241
    .restart local v0    # "i":I
    :cond_6a
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 245
    .end local v0    # "i":I
    :cond_75
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_30

    .line 248
    .restart local v0    # "i":I
    :cond_78
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 253
    .end local v0    # "i":I
    :cond_83
    const/4 v2, 0x0

    goto :goto_48
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .registers 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 353
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 354
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_100

    .line 358
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_16

    .line 362
    :goto_c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 364
    return-object p0

    .line 356
    :sswitch_15
    return-object p0

    .line 359
    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 369
    :sswitch_1e
    const/16 v4, 0x8

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 370
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v1, v4

    .line 371
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 372
    .local v2, "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .line 374
    :goto_32
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_42

    .line 379
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_1

    .line 375
    :cond_42
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 376
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 383
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_50
    const/16 v4, 0x10

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 384
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v1, v4

    .line 385
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 386
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .line 388
    :goto_64
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_74

    .line 393
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_1

    .line 389
    :cond_74
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 390
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 397
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_82
    const/16 v4, 0x18

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 398
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v1, v4

    .line 399
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 400
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .line 402
    :goto_96
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_a7

    .line 407
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 403
    :cond_a7
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 404
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 411
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_b5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    goto/16 :goto_1

    .line 415
    :sswitch_bd
    const/16 v4, 0x28

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 416
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v1, v4

    .line 417
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 418
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .line 420
    :goto_d1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_e2

    .line 425
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 421
    :cond_e2
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 422
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    .line 429
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_f0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    goto/16 :goto_1

    .line 433
    :sswitch_f8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    goto/16 :goto_1

    .line 354
    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_15
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_50
        0x18 -> :sswitch_82
        0x20 -> :sswitch_b5
        0x28 -> :sswitch_bd
        0x30 -> :sswitch_f0
        0x38 -> :sswitch_f8
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
    .line 165
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

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
    .line 259
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-nez v4, :cond_22

    .line 264
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-nez v4, :cond_31

    .line 269
    :cond_8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-nez v4, :cond_40

    .line 274
    :cond_c
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-nez v4, :cond_4f

    .line 277
    :goto_10
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-nez v4, :cond_56

    .line 282
    :cond_14
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-nez v4, :cond_65

    .line 285
    :goto_18
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-nez v4, :cond_6c

    .line 288
    :goto_1c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 290
    return-void

    .line 260
    :cond_22
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_26
    if-ge v2, v3, :cond_4

    aget v1, v0, v2

    .line 261
    .local v1, "element":I
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 265
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_31
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_35
    if-ge v2, v3, :cond_8

    aget v1, v0, v2

    .line 266
    .restart local v1    # "element":I
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 270
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_40
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_44
    if-ge v2, v3, :cond_c

    aget v1, v0, v2

    .line 271
    .restart local v1    # "element":I
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 275
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4f
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto :goto_10

    .line 278
    :cond_56
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5a
    if-ge v2, v3, :cond_14

    aget v1, v0, v2

    .line 279
    .restart local v1    # "element":I
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 283
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_65
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto :goto_18

    .line 286
    :cond_6c
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto :goto_1c
.end method
