.class public final Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedFunctionCall"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;


# instance fields
.field public associatedRuleName:Ljava/lang/String;

.field public properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

.field public result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 653
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 654
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 657
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 663
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 791
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 2

    .line 666
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 668
    const-string v1, ""

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    .line 669
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->cachedSize:I

    .line 671
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 676
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 677
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 678
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 679
    .local v1, "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 721
    .local v4, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 720
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 725
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_1

    .line 726
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 730
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 733
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->cachedSize:I

    .line 735
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 686
    const/16 v0, 0x11

    .line 687
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_2

    .line 689
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 690
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v4, v3

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v1    # "i":I
    :cond_2
    :goto_2
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    .line 694
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    .line 695
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    .line 696
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 744
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 754
    return-object p0

    .line 782
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    goto :goto_3

    .line 777
    :cond_2
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 778
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 779
    goto :goto_3

    .line 759
    :cond_3
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 760
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    array-length v2, v2

    .line 761
    .local v2, "i":I
    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 762
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-eqz v5, :cond_5

    .line 763
    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    :cond_5
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 766
    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_6

    .line 767
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    aput-object v5, v3, v2

    .line 768
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 769
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 772
    :cond_6
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    aput-object v5, v3, v2

    .line 773
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 774
    nop

    .line 786
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    :cond_7
    :goto_3
    goto :goto_0

    .line 746
    .restart local v0    # "tag":I
    :cond_8
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

    .line 650
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

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

    .line 701
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 703
    .local v3, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 702
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_1

    .line 707
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 714
    return-void
.end method
