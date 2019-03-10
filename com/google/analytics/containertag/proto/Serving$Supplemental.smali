.class public final Lcom/google/analytics/containertag/proto/Serving$Supplemental;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Supplemental"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;


# instance fields
.field public experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

.field public name:Ljava/lang/String;

.field public value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2278
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    return-void-no-barrier
.end method

.method public constructor <init>()V
    .registers 2

    .line 2279
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    .line 2285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2288
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2279
    return-void-no-barrier
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2400
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2394
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .registers 2

    .line 2291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    .line 2292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2293
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2294
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    .line 2295
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->cachedSize:I

    .line 2296
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2301
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2302
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2303
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2304
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-nez v3, :cond_5a

    goto :goto_20

    :cond_16
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :goto_20
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_29

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_5a

    goto :goto_33

    :cond_29
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :goto_33
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v3, :cond_3c

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v3, :cond_5a

    goto :goto_46

    :cond_3c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :goto_46
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4f

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5a

    goto :goto_59

    :cond_4f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :goto_59
    goto :goto_5b

    :cond_5a
    move v0, v2

    :goto_5b
    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 2336
    const/4 v0, 0x0

    .line 2337
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2338
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2341
    :cond_13
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_1f

    .line 2342
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2345
    :cond_1f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v1, :cond_2b

    .line 2346
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2349
    :cond_2b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2350
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->cachedSize:I

    .line 2351
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 2311
    const/16 v0, 0x11

    .line 2312
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_d

    move v3, v4

    goto :goto_13

    :cond_d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v2, v3

    .line 2313
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_1c

    move v3, v4

    goto :goto_22

    :cond_1c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v3

    :goto_22
    add-int/2addr v0, v3

    .line 2314
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v3, :cond_2b

    move v3, v4

    goto :goto_31

    :cond_2b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->hashCode()I

    move-result v3

    :goto_31
    add-int/2addr v2, v3

    .line 2315
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_38

    goto :goto_3e

    :cond_38
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_3e
    add-int/2addr v1, v4

    .line 2316
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .registers 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2359
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2360
    .local v0, "tag":I
    if-eqz v0, :cond_48

    const/16 v1, 0xa

    if-eq v0, v1, :cond_40

    const/16 v1, 0x12

    if-eq v0, v1, :cond_33

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_26

    .line 2364
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 2365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    .line 2368
    :cond_1d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 2370
    return-object p0

    .line 2384
    :cond_26
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2385
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto :goto_47

    .line 2379
    .restart local v0    # "tag":I
    :cond_33
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2380
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2381
    goto :goto_47

    .line 2375
    :cond_40
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    .line 2376
    nop

    .line 2389
    .end local v0    # "tag":I
    :cond_47
    :goto_47
    goto :goto_0

    .line 2362
    .restart local v0    # "tag":I
    :cond_48
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

    .line 2275
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;

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

    .line 2321
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2322
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2324
    :cond_10
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_1a

    .line 2325
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2327
    :cond_1a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v0, :cond_24

    .line 2328
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2330
    :cond_24
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2332
    return-void-no-barrier
.end method
