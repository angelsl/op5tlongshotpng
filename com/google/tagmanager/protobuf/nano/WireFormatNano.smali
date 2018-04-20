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
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-static {v2, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    .line 86
    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    .line 88
    invoke-static {v3, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 90
    invoke-static {v4, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    .line 93
    new-array v0, v1, [I

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 94
    new-array v0, v1, [J

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    .line 95
    new-array v0, v1, [F

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    .line 96
    new-array v0, v1, [D

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    .line 97
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 98
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 99
    new-array v0, v1, [[B

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    .line 100
    new-array v0, v1, [B

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    .line 102
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

    .line 103
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

    .line 104
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

    .line 105
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

    .line 106
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeWireSize(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    const/4 v3, 0x0

    .line 341
    if-eqz p0, :cond_f

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "size":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    .line 349
    return v1

    .line 342
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "size":I
    :cond_f
    return v3

    .line 345
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "size":I
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 346
    .local v2, "unknownField":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v3, v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 347
    iget-object v3, v2, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_8
.end method

.method public static getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/nano/Extension",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "extension":Lcom/google/tagmanager/protobuf/nano/Extension;, "Lcom/google/tagmanager/protobuf/nano/Extension<TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    const/4 v7, 0x0

    .line 180
    if-eqz p1, :cond_31

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, "dataForField":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_32

    .line 189
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_46

    .line 193
    iget-boolean v5, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->isRepeatedField:Z

    if-nez v5, :cond_47

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 204
    .local v3, "lastData":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget-object v5, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v6, v3, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v5, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 181
    .end local v1    # "dataForField":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lastData":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    :cond_31
    return-object v7

    .line 184
    .restart local v1    # "dataForField":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 185
    .local v0, "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v5, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v5

    iget v6, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    if-ne v5, v6, :cond_c

    .line 186
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 190
    .end local v0    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    :cond_46
    return-object v7

    .line 194
    :cond_47
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_61

    .line 198
    iget-object v5, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 195
    :cond_61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 196
    .restart local v0    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget-object v5, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v6, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v5, v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I
    .registers 6
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    move-result v3

    if-gtz v3, :cond_12

    .line 172
    :cond_e
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 173
    return v0

    .line 165
    :cond_12
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    .line 166
    .local v2, "thisTag":I
    if-ne v2, p1, :cond_e

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static getTagFieldNumber(I)I
    .registers 2
    .param p0, "tag"    # I

    .prologue
    .line 70
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .registers 2
    .param p0, "tag"    # I

    .prologue
    .line 65
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .prologue
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

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method

.method private static readData(Ljava/lang/Class;[B)Ljava/lang/Object;
    .registers 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v5, p1

    if-eqz v5, :cond_4f

    .line 216
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 218
    .local v0, "buffer":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    :try_start_7
    const-class v5, Ljava/lang/String;

    if-eq p0, v5, :cond_51

    .line 220
    const-class v5, Ljava/lang/Integer;

    if-eq p0, v5, :cond_5a

    .line 222
    const-class v5, Ljava/lang/Long;

    if-eq p0, v5, :cond_67

    .line 224
    const-class v5, Ljava/lang/Boolean;

    if-eq p0, v5, :cond_74

    .line 226
    const-class v5, Ljava/lang/Float;

    if-eq p0, v5, :cond_81

    .line 228
    const-class v5, Ljava/lang/Double;

    if-eq p0, v5, :cond_8e

    .line 230
    const-class v5, [B

    if-eq p0, v5, :cond_9b

    .line 232
    const-class v5, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_a4

    .line 243
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unhandled extension field type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_45} :catch_45

    .line 245
    :catch_45
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Error reading extension field"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 214
    .end local v0    # "buffer":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4f
    const/4 v5, 0x0

    return-object v5

    .line 219
    .restart local v0    # "buffer":Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 221
    :cond_5a
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 223
    :cond_67
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 225
    :cond_74
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 227
    :cond_81
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 229
    :cond_8e
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 231
    :cond_9b
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_a2} :catch_45

    move-result-object v5

    return-object v5

    .line 234
    :cond_a4
    :try_start_a4
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    .line 235
    .local v4, "message":Lcom/google/tagmanager/protobuf/nano/MessageNano;
    invoke-virtual {v0, v4}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 236
    invoke-virtual {p0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Ljava/lang/IllegalAccessException; {:try_start_a4 .. :try_end_b0} :catch_b2
    .catch Ljava/lang/InstantiationException; {:try_start_a4 .. :try_end_b0} :catch_cd
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b0} :catch_45

    move-result-object v5

    return-object v5

    .line 237
    .end local v4    # "message":Lcom/google/tagmanager/protobuf/nano/MessageNano;
    :catch_b2
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_b3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error creating instance of class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 239
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_cd
    move-exception v3

    .line 240
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error creating instance of class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_e8} :catch_45
.end method

.method public static setExtension(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/lang/Object;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/nano/Extension",
            "<TT;>;TT;",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "extension":Lcom/google/tagmanager/protobuf/nano/Extension;, "Lcom/google/tagmanager/protobuf/nano/Extension<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 259
    if-eqz p1, :cond_2e

    .line 263
    instance-of v4, p1, Ljava/util/List;

    if-nez v4, :cond_2f

    .line 268
    iget v4, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_19
    return-void

    .line 254
    .restart local p1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 255
    .local v0, "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v4, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    iget v5, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 260
    .end local v0    # "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    :cond_2e
    return-void

    .line 264
    :cond_2f
    check-cast p1, Ljava/util/List;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, "item":Ljava/lang/Object;
    iget v4, p0, Lcom/google/tagmanager/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v4, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35
.end method

.method public static storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 8
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 138
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v3

    .line 139
    .local v3, "startPos":I
    invoke-virtual {p1, p2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v2

    .line 140
    .local v2, "skip":Z
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 141
    .local v1, "endPos":I
    sub-int v4, v1, v3

    invoke-virtual {p1, v3, v4}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    .line 142
    .local v0, "bytes":[B
    new-instance v4, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v0}, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return v2
.end method

.method private static write(ILjava/lang/Object;)Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    .registers 22
    .param p0, "fieldNumber"    # I
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 283
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_5d

    .line 288
    const-class v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_87

    .line 293
    const-class v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_ae

    .line 298
    const-class v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_d5

    .line 303
    const-class v17, Ljava/lang/Float;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_fc

    .line 308
    const-class v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_124

    .line 313
    const-class v17, [B

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_14c

    .line 318
    const-class v17, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-nez v17, :cond_170

    .line 329
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unhandled extension field type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_54} :catch_54

    .line 331
    .end local p1    # "object":Ljava/lang/Object;
    :catch_54
    move-exception v9

    .line 332
    .local v9, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 284
    .end local v9    # "e":Ljava/io/IOException;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5d
    :try_start_5d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 285
    .local v15, "str":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 286
    .local v6, "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 287
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_7c} :catch_54

    move-result v16

    .line 334
    .end local v15    # "str":Ljava/lang/String;
    .end local p1    # "object":Ljava/lang/Object;
    .local v16, "tag":I
    :goto_7d
    new-instance v17, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    return-object v17

    .line 289
    .end local v6    # "data":[B
    .end local v16    # "tag":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_87
    :try_start_87
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    .line 290
    .local v11, "integer":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 291
    .restart local v6    # "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 292
    const/16 v17, 0x0

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .restart local v16    # "tag":I
    goto :goto_7d

    .line 294
    .end local v6    # "data":[B
    .end local v11    # "integer":Ljava/lang/Integer;
    .end local v16    # "tag":I
    :cond_ae
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v12, v0

    .line 295
    .local v12, "longValue":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 296
    .restart local v6    # "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 297
    const/16 v17, 0x0

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .restart local v16    # "tag":I
    goto :goto_7d

    .line 299
    .end local v6    # "data":[B
    .end local v12    # "longValue":Ljava/lang/Long;
    .end local v16    # "tag":I
    :cond_d5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    .line 300
    .local v2, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 301
    .restart local v6    # "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 302
    const/16 v17, 0x0

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .restart local v16    # "tag":I
    goto :goto_7d

    .line 304
    .end local v2    # "boolValue":Ljava/lang/Boolean;
    .end local v6    # "data":[B
    .end local v16    # "tag":I
    :cond_fc
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    move-object v10, v0

    .line 305
    .local v10, "floatValue":Ljava/lang/Float;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 306
    .restart local v6    # "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 307
    const/16 v17, 0x5

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .restart local v16    # "tag":I
    goto/16 :goto_7d

    .line 309
    .end local v6    # "data":[B
    .end local v10    # "floatValue":Ljava/lang/Float;
    .end local v16    # "tag":I
    :cond_124
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v8, v0

    .line 310
    .local v8, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 311
    .restart local v6    # "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 312
    const/16 v17, 0x1

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .restart local v16    # "tag":I
    goto/16 :goto_7d

    .line 314
    .end local v6    # "data":[B
    .end local v8    # "doubleValue":Ljava/lang/Double;
    .end local v16    # "tag":I
    :cond_14c
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v4, v0

    .line 315
    .local v4, "byteArrayValue":[B
    invoke-static {v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeByteArraySizeNoTag([B)I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 316
    .restart local v6    # "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeByteArrayNoTag([B)V

    .line 317
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v16

    .restart local v16    # "tag":I
    goto/16 :goto_7d

    .line 319
    .end local v4    # "byteArrayValue":[B
    .end local v6    # "data":[B
    .end local v16    # "tag":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_170
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-object v14, v0

    .line 321
    .local v14, "messageValue":Lcom/google/tagmanager/protobuf/nano/MessageNano;
    invoke-virtual {v14}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v13

    .line 322
    .local v13, "messageSize":I
    invoke-static {v13}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v7

    .line 323
    .local v7, "delimiterSize":I
    add-int v17, v13, v7

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 324
    .restart local v6    # "data":[B
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v3

    .line 325
    .local v3, "buffer":Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {v3, v13}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 326
    invoke-static {v14}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->toByteArray(Lcom/google/tagmanager/protobuf/nano/MessageNano;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 327
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->makeTag(II)I
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_19c} :catch_54

    move-result v16

    .restart local v16    # "tag":I
    goto/16 :goto_7d
.end method

.method public static writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "outBuffer"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 357
    .local p0, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;>;"
    if-eqz p0, :cond_d

    .line 360
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 364
    return-void

    .line 358
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_d
    return-void

    .line 360
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 361
    .local v0, "data":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v2, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    iget v3, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 362
    iget-object v2, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    goto :goto_6
.end method
