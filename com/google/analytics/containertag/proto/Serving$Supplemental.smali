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

    .prologue
    .line 2278
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2279
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2282
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    .line 2285
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2288
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2279
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .prologue
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2291
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    .line 2292
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2293
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2294
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    .line 2295
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->cachedSize:I

    .line 2296
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2301
    if-eq p1, p0, :cond_1b

    .line 2302
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-eqz v3, :cond_1c

    move-object v0, p1

    .line 2303
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2304
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_19
    :goto_19
    move v1, v2

    :cond_1a
    return v1

    .line 2301
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_1b
    return v1

    .line 2302
    :cond_1c
    return v2

    .line 2304
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_1d
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-nez v3, :cond_19

    :cond_21
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_2f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_3d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_19

    :cond_4c
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_2f

    goto :goto_19

    :cond_51
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v3, :cond_3d

    goto :goto_19

    :cond_56
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_1a

    goto :goto_19
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2336
    const/4 v0, 0x0

    .line 2337
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2341
    :goto_c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_28

    .line 2345
    :goto_10
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v1, :cond_31

    .line 2349
    :goto_14
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2350
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->cachedSize:I

    .line 2351
    return v0

    .line 2338
    :cond_1e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    goto :goto_c

    .line 2342
    :cond_28
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_10

    .line 2346
    :cond_31
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_14
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2311
    const/16 v0, 0x11

    .line 2312
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/lit16 v0, v1, 0x20f

    .line 2313
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v1

    :goto_1b
    add-int v0, v3, v1

    .line 2314
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->hashCode()I

    move-result v1

    :goto_29
    add-int v0, v3, v1

    .line 2315
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_37

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_37
    add-int v0, v1, v2

    .line 2316
    return v0

    :cond_3a
    move v1, v2

    .line 2312
    goto :goto_d

    :cond_3c
    move v1, v2

    .line 2313
    goto :goto_1b

    :cond_3e
    move v1, v2

    .line 2314
    goto :goto_29
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .registers 4
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2359
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2360
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_3e

    .line 2364
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_15

    .line 2368
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2370
    return-object p0

    .line 2362
    :sswitch_14
    return-object p0

    .line 2365
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    goto :goto_b

    .line 2375
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    goto :goto_0

    .line 2379
    :sswitch_24
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 2380
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2384
    :sswitch_31
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .line 2385
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2360
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_14
        0xa -> :sswitch_1d
        0x12 -> :sswitch_24
        0x1a -> :sswitch_31
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

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2324
    :goto_b
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_20

    .line 2327
    :goto_f
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v0, :cond_27

    .line 2330
    :goto_13
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2332
    return-void

    .line 2322
    :cond_19
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_b

    .line 2325
    :cond_20
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_f

    .line 2328
    :cond_27
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_13
.end method
