.class public final Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FunctionCall"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;


# instance fields
.field public function:I

.field public liveOnly:Z

.field public name:I

.field public property:[I

.field public serverSide:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 559
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 563
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 566
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    .line 569
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    .line 572
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    .line 575
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    .line 560
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 578
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 579
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    .line 580
    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    .line 581
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    .line 582
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    .line 585
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 590
    if-eq p1, p0, :cond_17

    .line 591
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 592
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 593
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 590
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_17
    return v1

    .line 591
    :cond_18
    return v2

    .line 593
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    :cond_19
    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    if-ne v3, v4, :cond_15

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iget v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-ne v3, v4, :cond_15

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-ne v3, v4, :cond_15

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_40
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 640
    const/4 v5, 0x0

    .line 641
    .local v5, "size":I
    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-nez v6, :cond_24

    .line 645
    :goto_6
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 647
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-nez v6, :cond_2d

    .line 656
    :cond_12
    :goto_12
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-nez v6, :cond_4b

    .line 660
    :goto_16
    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-nez v6, :cond_54

    .line 664
    :goto_1a
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    .line 665
    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    .line 666
    return v5

    .line 642
    :cond_24
    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/lit8 v5, v6, 0x0

    goto :goto_6

    .line 647
    :cond_2d
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v6, v6

    if-lez v6, :cond_12

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_37
    if-lt v3, v4, :cond_41

    .line 653
    add-int/2addr v5, v1

    .line 654
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto :goto_12

    .line 649
    :cond_41
    aget v2, v0, v3

    .line 650
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 657
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4b
    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_16

    .line 661
    :cond_54
    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    const/4 v7, 0x6

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1a
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 602
    const/16 v1, 0x11

    .line 603
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v2, :cond_3b

    .line 605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v2, v2

    if-lt v0, v2, :cond_3e

    .line 609
    .end local v0    # "i":I
    :goto_f
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    add-int v1, v2, v6

    .line 610
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    add-int v1, v2, v6

    .line 611
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-nez v2, :cond_49

    move v2, v3

    :goto_22
    add-int v1, v6, v2

    .line 612
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-nez v6, :cond_4b

    :goto_2a
    add-int v1, v2, v3

    .line 613
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_38
    add-int v1, v3, v2

    .line 614
    return v1

    .line 603
    :cond_3b
    const/16 v1, 0x20f

    goto :goto_f

    .line 606
    .restart local v0    # "i":I
    :cond_3e
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    aget v6, v6, v0

    add-int v1, v2, v6

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_49
    move v2, v4

    .line 611
    goto :goto_22

    :cond_4b
    move v3, v4

    .line 612
    goto :goto_2a

    :cond_4d
    move v2, v5

    .line 613
    goto :goto_38
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .registers 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 674
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 675
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_6c

    .line 679
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_16

    .line 683
    :goto_c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 685
    return-object p0

    .line 677
    :sswitch_15
    return-object p0

    .line 680
    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 690
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    goto :goto_1

    .line 694
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    goto :goto_1

    .line 698
    :sswitch_2c
    const/16 v4, 0x18

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 699
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v1, v4

    .line 700
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 701
    .local v2, "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 703
    :goto_40
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_50

    .line 708
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_1

    .line 704
    :cond_50
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 705
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 712
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    goto :goto_1

    .line 716
    :sswitch_65
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    goto :goto_1

    .line 675
    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_15
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_25
        0x18 -> :sswitch_2c
        0x20 -> :sswitch_5e
        0x30 -> :sswitch_65
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
    .line 556
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

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
    .line 619
    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-nez v4, :cond_1c

    .line 622
    :goto_4
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 623
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-nez v4, :cond_23

    .line 628
    :cond_e
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-nez v4, :cond_32

    .line 631
    :goto_12
    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-nez v4, :cond_39

    .line 634
    :goto_16
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 636
    return-void

    .line 620
    :cond_1c
    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto :goto_4

    .line 624
    :cond_23
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_27
    if-ge v2, v3, :cond_e

    aget v1, v0, v2

    .line 625
    .local v1, "element":I
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 629
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_32
    iget v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto :goto_12

    .line 632
    :cond_39
    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto :goto_16
.end method
