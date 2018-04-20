.class public final Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SupplementedResource"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;


# instance fields
.field public fingerprint:Ljava/lang/String;

.field public resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field public supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2408
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2409
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2412
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 2418
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    .line 2409
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2552
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2546
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2421
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2422
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 2423
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    .line 2424
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    .line 2425
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->cachedSize:I

    .line 2426
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2431
    if-eq p1, p0, :cond_17

    .line 2432
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 2433
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 2434
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 2431
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    :cond_17
    return v1

    .line 2432
    :cond_18
    return v2

    .line 2434
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_27
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_35
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_44
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v3, :cond_27

    goto :goto_15

    :cond_49
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    if-eqz v3, :cond_35

    goto :goto_15

    :cond_4e
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 2473
    const/4 v4, 0x0

    .line 2474
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-nez v5, :cond_1e

    .line 2480
    :cond_5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v5, :cond_2f

    .line 2484
    :goto_9
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2488
    :goto_14
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2489
    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->cachedSize:I

    .line 2490
    return v4

    .line 2475
    :cond_1e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_22
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 2476
    .local v1, "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2475
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 2481
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2f
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_9

    .line 2485
    :cond_38
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_14
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2441
    const/16 v1, 0x11

    .line 2442
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-eqz v2, :cond_38

    .line 2444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    array-length v2, v2

    if-lt v0, v2, :cond_3b

    .line 2448
    .end local v0    # "i":I
    :goto_d
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v2

    :goto_19
    add-int v1, v4, v2

    .line 2449
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_27
    add-int v1, v4, v2

    .line 2450
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_35

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_35
    add-int v1, v2, v3

    .line 2451
    return v1

    .line 2442
    :cond_38
    const/16 v1, 0x20f

    goto :goto_d

    .line 2445
    .restart local v0    # "i":I
    :cond_3b
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v2, v2, v0

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->hashCode()I

    move-result v2

    :goto_4b
    add-int v1, v4, v2

    .line 2444
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_50
    move v2, v3

    .line 2445
    goto :goto_4b

    .end local v0    # "i":I
    :cond_52
    move v2, v3

    .line 2448
    goto :goto_19

    :cond_54
    move v2, v3

    .line 2449
    goto :goto_27
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .registers 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2498
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2499
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_80

    .line 2503
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-eqz v5, :cond_16

    .line 2507
    :goto_c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2509
    return-object p0

    .line 2501
    :sswitch_15
    return-object p0

    .line 2504
    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 2514
    :sswitch_1e
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2515
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    array-length v1, v5

    .line 2516
    .local v1, "i":I
    :goto_2b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2517
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-nez v5, :cond_4f

    .line 2520
    :goto_33
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2521
    :goto_35
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_55

    .line 2527
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    aput-object v6, v5, v1

    .line 2528
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_4d
    move v1, v4

    .line 2515
    goto :goto_2b

    .line 2518
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_4f
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    .line 2522
    :cond_55
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    new-instance v6, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    aput-object v6, v5, v1

    .line 2523
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2524
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2521
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 2532
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :sswitch_6b
    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 2533
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 2537
    :sswitch_78
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    goto :goto_1

    .line 2499
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_1e
        0x12 -> :sswitch_6b
        0x1a -> :sswitch_78
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
    .line 2405
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

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
    .line 2456
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-nez v4, :cond_19

    .line 2461
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v4, :cond_28

    .line 2464
    :goto_8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 2467
    :goto_13
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2469
    return-void

    .line 2457
    :cond_19
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1d
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 2458
    .local v1, "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2457
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2462
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_28
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_8

    .line 2465
    :cond_2f
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_13
.end method
