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
    .registers 1

    .prologue
    .line 653
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 657
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 663
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 666
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 667
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 668
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    .line 669
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->cachedSize:I

    .line 671
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 676
    if-eq p1, p0, :cond_17

    .line 677
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 678
    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 679
    .local v0, "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 676
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_17
    return v1

    .line 677
    :cond_18
    return v2

    .line 679
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_27
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_35
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_44
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_27

    goto :goto_15

    :cond_49
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    if-eqz v3, :cond_35

    goto :goto_15

    :cond_4e
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 718
    const/4 v4, 0x0

    .line 719
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-nez v5, :cond_1e

    .line 725
    :cond_5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v5, :cond_2f

    .line 729
    :goto_9
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 733
    :goto_14
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v5

    add-int/2addr v4, v5

    .line 734
    iput v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->cachedSize:I

    .line 735
    return v4

    .line 720
    :cond_1e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_22
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 721
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 726
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2f
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_9

    .line 730
    :cond_38
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

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

    .line 686
    const/16 v1, 0x11

    .line 687
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-eqz v2, :cond_38

    .line 689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    array-length v2, v2

    if-lt v0, v2, :cond_3b

    .line 693
    .end local v0    # "i":I
    :goto_d
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_19
    add-int v1, v4, v2

    .line 694
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_27
    add-int v1, v4, v2

    .line 695
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_35

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_35
    add-int v1, v2, v3

    .line 696
    return v1

    .line 687
    :cond_38
    const/16 v1, 0x20f

    goto :goto_d

    .line 690
    .restart local v0    # "i":I
    :cond_3b
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    aget-object v2, v2, v0

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->hashCode()I

    move-result v2

    :goto_4b
    add-int v1, v4, v2

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_50
    move v2, v3

    .line 690
    goto :goto_4b

    .end local v0    # "i":I
    :cond_52
    move v2, v3

    .line 693
    goto :goto_19

    :cond_54
    move v2, v3

    .line 694
    goto :goto_27
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .registers 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 743
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 744
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_80

    .line 748
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v5, :cond_16

    .line 752
    :goto_c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 754
    return-object p0

    .line 746
    :sswitch_15
    return-object p0

    .line 749
    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 759
    :sswitch_1e
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 760
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    array-length v1, v5

    .line 761
    .local v1, "i":I
    :goto_2b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 762
    .local v2, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-nez v5, :cond_4f

    .line 765
    :goto_33
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .line 766
    :goto_35
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_55

    .line 772
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    aput-object v6, v5, v1

    .line 773
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    :cond_4d
    move v1, v4

    .line 760
    goto :goto_2b

    .line 763
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    :cond_4f
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    .line 767
    :cond_55
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    new-instance v6, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v6}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    aput-object v6, v5, v1

    .line 768
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 769
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 777
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    :sswitch_6b
    new-instance v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 778
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_1

    .line 782
    :sswitch_78
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    goto :goto_1

    .line 744
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
    .line 650
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

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
    .line 701
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    if-nez v4, :cond_19

    .line 706
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v4, :cond_28

    .line 709
    :goto_8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 712
    :goto_13
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 714
    return-void

    .line 702
    :cond_19
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1d
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 703
    .local v1, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 707
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .end local v1    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_28
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_8

    .line 710
    :cond_2f
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->associatedRuleName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_13
.end method
