.class public final Lcom/google/tagmanager/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "WireFormatNano.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field static final MESSAGE_SET_ITEM:I = 0x1

.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE:I = 0x3

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID:I = 0x2

.field static final MESSAGE_SET_TYPE_ID_TAG:I

.field static final TAG_TYPE_BITS:I = 0x3

.field static final TAG_TYPE_MASK:I = 0x7

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 84
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v2

    sput v2, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    .line 86
    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v1

    sput v1, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    .line 88
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    sput v3, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 90
    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    .line 93
    new-array v0, v2, [I

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 94
    new-array v0, v2, [J

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    .line 95
    new-array v0, v2, [F

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    .line 96
    new-array v0, v2, [D

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    .line 97
    new-array v0, v2, [Z

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 98
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 99
    new-array v0, v2, [[B

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    .line 100
    new-array v0, v2, [B

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    .line 102
    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

    .line 103
    new-array v0, v2, [Ljava/lang/Long;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

    .line 104
    new-array v0, v2, [Ljava/lang/Float;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

    .line 105
    new-array v0, v2, [Ljava/lang/Double;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

    .line 106
    new-array v0, v2, [Ljava/lang/Boolean;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeWireSize(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)I"
        }
    .end annotation

    .line 341
    .local p0, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    if-nez p0, :cond_4

    .line 342
    const/4 v0, 0x0

    return v0

    .line 344
    :cond_4
    const/4 v0, 0x0

    .line 345
    .local v0, "size":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 346
    .local v2, "unknownField":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v3, v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 347
    iget-object v3, v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 348
    .end local v2    # "unknownField":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    goto :goto_9

    .line 349
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_21
    return v0
.end method

.method public static getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 180
    .local p0, "extension":Lcom/google/tagmanager/protobuf/nano/Extension;, "Lcom/google/tagmanager/protobuf/nano/Extension<TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 181
    return-object v0

    .line 183
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, "dataForField":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 185
    .local v3, "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v4, v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v4

    iget v5, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    if-ne v4, v5, :cond_26

    .line 186
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v3    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    :cond_26
    goto :goto_d

    .line 189
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 190
    return-object v0

    .line 193
    :cond_2e
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->isRepeatedField:Z

    if-eqz v0, :cond_5e

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 196
    .restart local v3    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget-object v4, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v5, v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v4, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v3    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    goto :goto_3f

    .line 198
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_57
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 203
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 204
    .local v0, "lastData":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I
    .registers 5
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x1

    .line 162
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 163
    .local v1, "startPos":I
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 164
    :goto_8
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_1b

    .line 165
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    .line 166
    .local v2, "thisTag":I
    if-eq v2, p1, :cond_15

    .line 167
    goto :goto_1b

    .line 169
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 171
    .end local v2    # "thisTag":I
    goto :goto_8

    .line 172
    :cond_1b
    :goto_1b
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 173
    return v0
.end method

.method public static getTagFieldNumber(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 70
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 65
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .line 75
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static parseUnknownField(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 3
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method

.method private static readData(Ljava/lang/Class;[B)Ljava/lang/Object;
    .registers 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[B)TT;"
        }
    .end annotation

    .line 213
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v0, p1

    if-nez v0, :cond_5

    .line 214
    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_5
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 218
    .local v0, "buffer":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    :try_start_9
    const-class v1, Ljava/lang/String;

    if-ne p0, v1, :cond_16

    .line 219
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 220
    :cond_16
    const-class v1, Ljava/lang/Integer;

    if-ne p0, v1, :cond_27

    .line 221
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 222
    :cond_27
    const-class v1, Ljava/lang/Long;

    if-ne p0, v1, :cond_38

    .line 223
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 224
    :cond_38
    const-class v1, Ljava/lang/Boolean;

    if-ne p0, v1, :cond_49

    .line 225
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 226
    :cond_49
    const-class v1, Ljava/lang/Float;

    if-ne p0, v1, :cond_5a

    .line 227
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 228
    :cond_5a
    const-class v1, Ljava/lang/Double;

    if-ne p0, v1, :cond_6b

    .line 229
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 230
    :cond_6b
    const-class v1, [B

    if-ne p0, v1, :cond_78

    .line 231
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 232
    :cond_78
    const-class v1, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_7e} :catch_d5

    if-eqz v1, :cond_be

    .line 234
    :try_start_80
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 235
    .local v1, "message":Lcom/google/tagmanager/protobuf/nano/MessageNano;
    invoke-virtual {v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_80 .. :try_end_8d} :catch_a6
    .catch Ljava/lang/InstantiationException; {:try_start_80 .. :try_end_8d} :catch_8e
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8d} :catch_d5

    return-object v2

    .line 239
    .end local v1    # "message":Lcom/google/tagmanager/protobuf/nano/MessageNano;
    :catch_8e
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/InstantiationException;
    :try_start_8f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 237
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_a6
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 243
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_be
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled extension field type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_d5} :catch_d5

    .line 245
    :catch_d5
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setExtension(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/lang/Object;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
            "TT;>;TT;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p0, "extension":Lcom/google/tagmanager/protobuf/nano/Extension;, "Lcom/google/tagmanager/protobuf/nano/Extension<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 255
    .local v1, "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    iget v3, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 258
    .end local v1    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    :cond_1d
    goto :goto_4

    .line 259
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    :cond_1e
    if-nez p1, :cond_21

    .line 260
    return-void

    .line 263
    :cond_21
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_40

    .line 264
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 265
    .local v1, "item":Ljava/lang/Object;
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v1    # "item":Ljava/lang/Object;
    goto :goto_2c

    .line 268
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_40
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_49
    return-void
.end method

.method public static storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 8
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;",
            "Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 139
    .local v0, "startPos":I
    invoke-virtual {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    .line 140
    .local v1, "skip":Z
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 141
    .local v2, "endPos":I
    sub-int v3, v2, v0

    invoke-virtual {p1, v0, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v3

    .line 142
    .local v3, "bytes":[B
    new-instance v4, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v3}, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return v1
.end method

.method private static write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    .registers 10
    .param p0, "fieldNumber"    # I
    .param p1, "object"    # Ljava/lang/Object;

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 283
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    :try_start_5
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_22

    .line 284
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 285
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [B

    move-object v1, v4

    .line 286
    .local v1, "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 287
    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    .end local v2    # "str":Ljava/lang/String;
    move v2, v3

    .line 288
    .local v2, "tag":I
    goto/16 :goto_121

    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_22
    const-class v2, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_47

    .line 289
    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    .line 290
    .local v2, "integer":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    .line 291
    .restart local v1    # "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 292
    invoke-static {p0, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    .end local v2    # "integer":Ljava/lang/Integer;
    move v2, v3

    .line 293
    .local v2, "tag":I
    goto/16 :goto_121

    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_47
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_6b

    .line 294
    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    .line 295
    .local v2, "longValue":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    .line 296
    .restart local v1    # "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 297
    invoke-static {p0, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    .end local v2    # "longValue":Ljava/lang/Long;
    move v2, v3

    .line 298
    .local v2, "tag":I
    goto/16 :goto_121

    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_6b
    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_8f

    .line 299
    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    .line 300
    .local v2, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    .line 301
    .restart local v1    # "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 302
    invoke-static {p0, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    .end local v2    # "boolValue":Ljava/lang/Boolean;
    move v2, v3

    .line 303
    .local v2, "tag":I
    goto/16 :goto_121

    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_8f
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_b4

    .line 304
    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    .line 305
    .local v2, "floatValue":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    .line 306
    .restart local v1    # "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 307
    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    .end local v2    # "floatValue":Ljava/lang/Float;
    move v2, v3

    .line 308
    .local v2, "tag":I
    goto/16 :goto_121

    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_b4
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_d8

    .line 309
    move-object v2, p1

    check-cast v2, Ljava/lang/Double;

    .line 310
    .local v2, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v3

    new-array v3, v3, [B

    move-object v1, v3

    .line 311
    .restart local v1    # "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 312
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    .end local v2    # "doubleValue":Ljava/lang/Double;
    move v2, v3

    .line 313
    .local v2, "tag":I
    goto :goto_121

    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_d8
    const-class v2, [B

    if-ne v0, v2, :cond_f5

    .line 314
    move-object v2, p1

    check-cast v2, [B

    check-cast v2, [B

    .line 315
    .local v2, "byteArrayValue":[B
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeByteArraySizeNoTag([B)I

    move-result v4

    new-array v4, v4, [B

    move-object v1, v4

    .line 316
    .restart local v1    # "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeByteArrayNoTag([B)V

    .line 317
    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3

    .end local v2    # "byteArrayValue":[B
    move v2, v3

    .line 318
    .local v2, "tag":I
    goto :goto_121

    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_f5
    const-class v2, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 319
    move-object v2, p1

    check-cast v2, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 321
    .local v2, "messageValue":Lcom/google/tagmanager/protobuf/nano/MessageNano;
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 322
    .local v4, "messageSize":I
    invoke-static {v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v5

    .line 323
    .local v5, "delimiterSize":I
    add-int v6, v4, v5

    new-array v6, v6, [B

    move-object v1, v6

    .line 324
    .restart local v1    # "data":[B
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v6

    .line 325
    .local v6, "buffer":Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {v6, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 326
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 327
    invoke-static {p0, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v3
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11f} :catch_140

    .end local v2    # "messageValue":Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .end local v4    # "messageSize":I
    .end local v5    # "delimiterSize":I
    .end local v6    # "buffer":Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    move v2, v3

    .line 328
    .local v2, "tag":I
    nop

    .line 329
    :goto_121
    nop

    .line 333
    nop

    .line 334
    new-instance v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    invoke-direct {v3, v2, v1}, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    return-object v3

    .line 329
    .end local v1    # "data":[B
    .end local v2    # "tag":I
    :cond_129
    :try_start_129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled extension field type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_140} :catch_140

    .line 331
    :catch_140
    move-exception v2

    .line 332
    .restart local v1    # "data":[B
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "outBuffer"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;",
            "Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    .local p0, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    if-nez p0, :cond_3

    .line 358
    return-void

    .line 360
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 361
    .local v1, "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v2, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    iget v3, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 362
    iget-object v2, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 363
    .end local v1    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    goto :goto_7

    .line 364
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_28
    return-void
.end method
