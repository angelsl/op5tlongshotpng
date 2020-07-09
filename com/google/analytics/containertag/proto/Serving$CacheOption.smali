.class public final Lcom/google/analytics/containertag/proto/Serving$CacheOption;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$CacheOption;


# instance fields
.field public expirationSeconds:I

.field public gcacheExpirationSeconds:I

.field public level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1206
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1207
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1216
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    .line 1219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    .line 1222
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    .line 1207
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1333
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    .line 1225
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    .line 1226
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    .line 1227
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    .line 1229
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->cachedSize:I

    .line 1230
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1235
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1236
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1237
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 1238
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

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
    .locals 3

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "size":I
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1272
    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1275
    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-eqz v1, :cond_1

    .line 1276
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1279
    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-eqz v1, :cond_2

    .line 1280
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1283
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1284
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->cachedSize:I

    .line 1285
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1245
    const/16 v0, 0x11

    .line 1246
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    add-int/2addr v1, v2

    .line 1247
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    add-int/2addr v0, v2

    .line 1248
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    add-int/2addr v1, v2

    .line 1249
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 1250
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1294
    .local v0, "tag":I
    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 1298
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    .line 1302
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1304
    return-object p0

    .line 1324
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    goto :goto_2

    .line 1320
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    .line 1321
    goto :goto_2

    .line 1309
    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1310
    .local v1, "temp":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    goto :goto_1

    .line 1315
    :cond_4
    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    .line 1317
    goto :goto_2

    .line 1313
    :cond_5
    :goto_1
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    .line 1328
    .end local v0    # "tag":I
    .end local v1    # "temp":I
    :cond_6
    :goto_2
    goto :goto_0

    .line 1296
    .restart local v0    # "tag":I
    :cond_7
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

    .line 1203
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

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

    .line 1255
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->level:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1256
    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1258
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->expirationSeconds:I

    if-eqz v0, :cond_1

    .line 1259
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1261
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->gcacheExpirationSeconds:I

    if-eqz v0, :cond_2

    .line 1262
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1264
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1266
    return-void
.end method
