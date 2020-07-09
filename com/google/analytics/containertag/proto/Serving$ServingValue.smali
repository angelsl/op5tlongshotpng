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
    .locals 2

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
    .locals 2

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
    .locals 1
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
    .locals 1
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
    .locals 2

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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 212
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 213
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    .line 214
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "dataSize":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .local v2, "arr$":[I
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 298
    .local v5, "element":I
    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 297
    .end local v5    # "element":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    add-int/2addr v0, v1

    .line 302
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 304
    .end local v1    # "dataSize":I
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    .line 305
    const/4 v1, 0x0

    .line 306
    .restart local v1    # "dataSize":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v2    # "arr$":[I
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 307
    .restart local v5    # "element":I
    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 306
    .end local v5    # "element":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 310
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    add-int/2addr v0, v1

    .line 311
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 313
    .end local v1    # "dataSize":I
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 314
    const/4 v1, 0x0

    .line 315
    .restart local v1    # "dataSize":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .restart local v2    # "arr$":[I
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    .line 316
    .restart local v5    # "element":I
    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 315
    .end local v5    # "element":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 319
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_4
    add-int/2addr v0, v1

    .line 320
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 322
    .end local v1    # "dataSize":I
    :cond_5
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-eqz v1, :cond_6

    .line 323
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    .line 327
    const/4 v1, 0x0

    .line 328
    .restart local v1    # "dataSize":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .restart local v2    # "arr$":[I
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v3, :cond_7

    aget v5, v2, v4

    .line 329
    .restart local v5    # "element":I
    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 328
    .end local v5    # "element":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 332
    .end local v2    # "arr$":[I
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_7
    add-int/2addr v0, v1

    .line 333
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 335
    .end local v1    # "dataSize":I
    :cond_8
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-eqz v1, :cond_9

    .line 336
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_9
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-eqz v1, :cond_a

    .line 340
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_a
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
    .locals 4

    .line 225
    const/16 v0, 0x11

    .line 226
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_1

    .line 228
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 229
    mul-int/lit8 v3, v0, 0x1f

    aget v2, v2, v1

    add-int v0, v3, v2

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_3

    .line 234
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 235
    mul-int/lit8 v3, v0, 0x1f

    aget v2, v2, v1

    add-int v0, v3, v2

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 238
    .end local v1    # "i":I
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-nez v1, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_5

    .line 240
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 241
    mul-int/lit8 v3, v0, 0x1f

    aget v2, v2, v1

    add-int v0, v3, v2

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 244
    .end local v1    # "i":I
    :cond_5
    :goto_5
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    add-int/2addr v1, v2

    .line 245
    .end local v0    # "result":I
    .local v1, "result":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-nez v0, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_7

    .line 247
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 248
    mul-int/lit8 v3, v1, 0x1f

    aget v2, v2, v0

    add-int v1, v3, v2

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 251
    .end local v0    # "i":I
    :cond_7
    :goto_7
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    add-int/2addr v0, v2

    .line 252
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    add-int/2addr v1, v2

    .line 253
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    .line 254
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 6
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
    if-eqz v0, :cond_d

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 364
    return-object p0

    .line 433
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    goto/16 :goto_5

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    .line 430
    goto/16 :goto_5

    .line 415
    :cond_3
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 416
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v4, v3

    .line 417
    .local v4, "i":I
    add-int v5, v4, v1

    new-array v5, v5, [I

    .line 418
    .local v5, "newArray":[I
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .line 420
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_4

    .line 421
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 422
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 420
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 425
    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 426
    goto/16 :goto_5

    .line 411
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    .line 412
    goto/16 :goto_5

    .line 397
    :cond_6
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 398
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v4, v3

    .line 399
    .restart local v4    # "i":I
    add-int v5, v4, v1

    new-array v5, v5, [I

    .line 400
    .restart local v5    # "newArray":[I
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .line 402
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_7

    .line 403
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 404
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 402
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 407
    :cond_7
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 408
    goto :goto_5

    .line 383
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :cond_8
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 384
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v3

    .line 385
    .restart local v4    # "i":I
    add-int v5, v4, v1

    new-array v5, v5, [I

    .line 386
    .restart local v5    # "newArray":[I
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .line 388
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_9

    .line 389
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 390
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 393
    :cond_9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 394
    goto :goto_5

    .line 369
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :cond_a
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 370
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v4, v3

    .line 371
    .restart local v4    # "i":I
    add-int v5, v4, v1

    new-array v5, v5, [I

    .line 372
    .restart local v5    # "newArray":[I
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .line 374
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_b

    .line 375
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 376
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 379
    :cond_b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    aput v3, v2, v4

    .line 380
    nop

    .line 437
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :cond_c
    :goto_5
    goto/16 :goto_0

    .line 356
    .restart local v0    # "tag":I
    :cond_d
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

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 261
    .local v3, "element":I
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 260
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    .restart local v0    # "arr$":[I
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 266
    .restart local v3    # "element":I
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 265
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    .restart local v0    # "arr$":[I
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 271
    .restart local v3    # "element":I
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 270
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 274
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroReference:I

    if-eqz v0, :cond_3

    .line 275
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    .restart local v0    # "arr$":[I
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v1, :cond_4

    aget v3, v0, v2

    .line 279
    .restart local v3    # "element":I
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 278
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 282
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    if-eqz v0, :cond_5

    .line 283
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 285
    :cond_5
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->tagReference:I

    if-eqz v0, :cond_6

    .line 286
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 290
    return-void
.end method
