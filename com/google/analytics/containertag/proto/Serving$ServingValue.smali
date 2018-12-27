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
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
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
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    .line 188
    sget-object v1, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .line 191
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    .line 194
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

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
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    .line 201
    sget-object v1, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .line 202
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    .line 203
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

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

    .line 211
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 212
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 213
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 214
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-ne v3, v4, :cond_5b

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-ne v3, v4, :cond_5b

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-ne v3, v4, :cond_5b

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_50

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5b

    goto :goto_5a

    :cond_50
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    :goto_5a
    goto :goto_5c

    :cond_5b
    move v0, v2

    :goto_5c
    return v0
.end method

.method public getSerializedSize()I
    .registers 10

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v1, v1

    if-lez v1, :cond_24

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .local v6, "dataSize":I
    :goto_12
    if-ge v1, v5, :cond_1e

    aget v7, v4, v1

    .line 298
    .local v7, "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 297
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 301
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_1e
    add-int/2addr v0, v6

    .line 302
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 304
    .end local v6    # "dataSize":I
    :cond_24
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v1, v1

    if-lez v1, :cond_45

    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_33
    if-ge v1, v5, :cond_3f

    aget v7, v4, v1

    .line 307
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 306
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 310
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_3f
    add-int/2addr v0, v6

    .line 311
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 313
    .end local v6    # "dataSize":I
    :cond_45
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v1, v1

    if-lez v1, :cond_66

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_54
    if-ge v1, v5, :cond_60

    aget v7, v4, v1

    .line 316
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 315
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 319
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_60
    add-int/2addr v0, v6

    .line 320
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 322
    .end local v6    # "dataSize":I
    :cond_66
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-eqz v1, :cond_72

    .line 323
    const/4 v1, 0x4

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_72
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v1, v1

    if-lez v1, :cond_91

    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .local v2, "i$":I
    .restart local v5    # "len$":I
    :goto_7f
    if-ge v2, v5, :cond_8b

    aget v6, v4, v2

    .line 329
    .local v6, "element":I
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 328
    .end local v6    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 332
    .end local v2    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_8b
    add-int/2addr v0, v1

    .line 333
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v2, v2

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 335
    .end local v1    # "dataSize":I
    :cond_91
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-eqz v1, :cond_9d

    .line 336
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_9d
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-eqz v1, :cond_a9

    .line 340
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_a9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->cachedSize:I

    .line 345
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 225
    const/16 v0, 0x11

    .line 226
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-nez v1, :cond_b

    mul-int/2addr v0, v3

    goto :goto_1e

    .line 228
    :cond_b
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "result":I
    :goto_d
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1d

    .line 229
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 232
    .end local v0    # "i":I
    :cond_1d
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_1e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-nez v1, :cond_24

    mul-int/2addr v0, v3

    goto :goto_37

    .line 234
    :cond_24
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_26
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    if-ge v0, v4, :cond_36

    .line 235
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 238
    .end local v0    # "i":I
    :cond_36
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_37
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-nez v1, :cond_3d

    mul-int/2addr v0, v3

    goto :goto_50

    .line 240
    :cond_3d
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_3f
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4f

    .line 241
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 244
    .end local v0    # "i":I
    :cond_4f
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_50
    mul-int v1, v3, v0

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    add-int/2addr v1, v4

    .line 245
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-nez v0, :cond_5b

    mul-int/2addr v1, v3

    goto :goto_6c

    .line 247
    :cond_5b
    move v0, v2

    .local v0, "i":I
    :goto_5c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6c

    .line 248
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 251
    .end local v0    # "i":I
    :cond_6c
    :goto_6c
    mul-int v0, v3, v1

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    add-int/2addr v0, v4

    .line 252
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int v1, v3, v0

    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    add-int/2addr v1, v4

    .line 253
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_7c

    goto :goto_82

    :cond_7c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_82
    add-int/2addr v3, v2

    .line 254
    .end local v1    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .registers 8
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 354
    .local v0, "tag":I
    if-eqz v0, :cond_112

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_80

    const/16 v1, 0x20

    if-eq v0, v1, :cond_78

    const/16 v1, 0x28

    if-eq v0, v1, :cond_47

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x38

    if-eq v0, v1, :cond_37

    .line 358
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_2e

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    .line 362
    :cond_2e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_110

    .line 364
    return-object p0

    .line 433
    :cond_37
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    .end local v0    # "tag":I
    goto/16 :goto_110

    .line 429
    .restart local v0    # "tag":I
    :cond_3f
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    .line 430
    goto/16 :goto_110

    .line 415
    :cond_47
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 416
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v3, v3

    .line 417
    .local v3, "i":I
    add-int v4, v3, v1

    new-array v4, v4, [I

    .line 418
    .local v4, "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .line 420
    :goto_59
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_6e

    .line 421
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 422
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 425
    :cond_6e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 426
    goto/16 :goto_110

    .line 411
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :cond_78
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    .line 412
    goto/16 :goto_110

    .line 397
    :cond_80
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 398
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v3, v3

    .line 399
    .restart local v3    # "i":I
    add-int v4, v3, v1

    new-array v4, v4, [I

    .line 400
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .line 402
    :goto_92
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_a7

    .line 403
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 404
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 407
    :cond_a7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 408
    goto :goto_110

    .line 383
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :cond_b0
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 384
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v3, v3

    .line 385
    .restart local v3    # "i":I
    add-int v4, v3, v1

    new-array v4, v4, [I

    .line 386
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .line 388
    :goto_c2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_d7

    .line 389
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 390
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 388
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 393
    :cond_d7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 394
    goto :goto_110

    .line 369
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :cond_e0
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 370
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v3, v3

    .line 371
    .restart local v3    # "i":I
    add-int v4, v3, v1

    new-array v4, v4, [I

    .line 372
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .line 374
    :goto_f2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_107

    .line 375
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 376
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    .line 379
    :cond_107
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 380
    nop

    .line 437
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :cond_110
    :goto_110
    goto/16 :goto_0

    .line 356
    .restart local v0    # "tag":I
    :cond_112
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

    .line 259
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 260
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    move v3, v1

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_14

    aget v4, v0, v3

    .line 261
    .local v4, "element":I
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 260
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 264
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_14
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-eqz v0, :cond_27

    .line 265
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_1c
    if-ge v3, v2, :cond_27

    aget v4, v0, v3

    .line 266
    .restart local v4    # "element":I
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 265
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 269
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_27
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-eqz v0, :cond_3a

    .line 270
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_2f
    if-ge v3, v2, :cond_3a

    aget v4, v0, v3

    .line 271
    .restart local v4    # "element":I
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 270
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 274
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3a
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-eqz v0, :cond_44

    .line 275
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 277
    :cond_44
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-eqz v0, :cond_56

    .line 278
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .local v1, "i$":I
    .restart local v2    # "len$":I
    :goto_4b
    if-ge v1, v2, :cond_56

    aget v3, v0, v1

    .line 279
    .local v3, "element":I
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 278
    .end local v3    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 282
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_56
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-eqz v0, :cond_60

    .line 283
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 285
    :cond_60
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-eqz v0, :cond_6a

    .line 286
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 288
    :cond_6a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 290
    return-void
.end method
