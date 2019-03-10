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

    .line 2408
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2409
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2412
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 2418
    const-string v0, ""

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

    .line 2421
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 2423
    const-string v1, ""

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    .line 2424
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    .line 2425
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->cachedSize:I

    .line 2426
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2431
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2432
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2433
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .line 2434
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_20

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v3, :cond_51

    goto :goto_2a

    :cond_20
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v3, v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :goto_2a
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    if-nez v3, :cond_33

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    if-nez v3, :cond_51

    goto :goto_3d

    :cond_33
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :goto_3d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_46

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_51

    goto :goto_50

    :cond_46
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :goto_50
    goto :goto_52

    :cond_51
    move v0, v2

    :goto_52
    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .line 2473
    const/4 v0, 0x0

    .line 2474
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-eqz v1, :cond_16

    .line 2475
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 2476
    .local v4, "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 2475
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2480
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_16
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v1, :cond_22

    .line 2481
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2484
    :cond_22
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2485
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2488
    :cond_34
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2489
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->cachedSize:I

    .line 2490
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 2441
    const/16 v0, 0x11

    .line 2442
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-nez v1, :cond_b

    mul-int/2addr v0, v3

    goto :goto_2a

    .line 2444
    :cond_b
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "result":I
    :goto_d
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    array-length v4, v4

    if-ge v0, v4, :cond_29

    .line 2445
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v5, v5, v0

    if-nez v5, :cond_1c

    move v5, v2

    goto :goto_24

    :cond_1c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->hashCode()I

    move-result v5

    :goto_24
    add-int v1, v4, v5

    .line 2444
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2448
    .end local v0    # "i":I
    :cond_29
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_2a
    mul-int v1, v3, v0

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v4, :cond_32

    move v4, v2

    goto :goto_38

    :cond_32
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {v4}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hashCode()I

    move-result v4

    :goto_38
    add-int/2addr v1, v4

    .line 2449
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int v0, v3, v1

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    if-nez v4, :cond_41

    move v4, v2

    goto :goto_47

    :cond_41
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_47
    add-int/2addr v0, v4

    .line 2450
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v3, v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_4e

    goto :goto_54

    :cond_4e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_54
    add-int/2addr v3, v2

    .line 2451
    .end local v0    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    .registers 8
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2499
    .local v0, "tag":I
    if-eqz v0, :cond_87

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_26

    .line 2503
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 2504
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    .line 2507
    :cond_1d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_85

    .line 2509
    return-object p0

    .line 2537
    :cond_26
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    .end local v0    # "tag":I
    goto :goto_85

    .line 2532
    .restart local v0    # "tag":I
    :cond_2d
    new-instance v1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 2533
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2534
    goto :goto_85

    .line 2514
    :cond_3a
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 2515
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    const/4 v3, 0x0

    if-nez v2, :cond_45

    move v2, v3

    goto :goto_48

    :cond_45
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    array-length v2, v2

    .line 2516
    .local v2, "i":I
    :goto_48
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2517
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-eqz v5, :cond_55

    .line 2518
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2520
    :cond_55
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 2521
    :goto_57
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_74

    .line 2522
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    aput-object v5, v3, v2

    .line 2523
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2524
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2521
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 2527
    :cond_74
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    new-instance v5, Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Serving$Supplemental;-><init>()V

    aput-object v5, v3, v2

    .line 2528
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2529
    nop

    .line 2541
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    :cond_85
    :goto_85
    goto/16 :goto_0

    .line 2501
    .restart local v0    # "tag":I
    :cond_87
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

    .line 2405
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-eqz v0, :cond_13

    .line 2457
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 2458
    .local v3, "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2457
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2461
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Serving$Supplemental;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_13
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v0, :cond_1d

    .line 2462
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 2464
    :cond_1d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2465
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2467
    :cond_2d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2469
    return-void
.end method
