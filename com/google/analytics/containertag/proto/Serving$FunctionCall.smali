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
    .locals 1

    .line 559
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 560
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 563
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    .line 569
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    .line 572
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    .line 575
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    .line 560
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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
    .locals 1

    .line 578
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    .line 580
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    .line 581
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    .line 582
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 590
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 591
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 592
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    .line 593
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    iget v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

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
    .locals 8

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "size":I
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 642
    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 645
    :cond_0
    const/4 v1, 0x2

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "dataSize":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v3, "arr$":[I
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 650
    .local v6, "element":I
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 649
    .end local v6    # "element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 653
    .end local v3    # "arr$":[I
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    add-int/2addr v0, v1

    .line 654
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v3, v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 656
    .end local v1    # "dataSize":I
    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v1, :cond_3

    .line 657
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_3
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v1, :cond_4

    .line 661
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 664
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->cachedSize:I

    .line 666
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 602
    const/16 v0, 0x11

    .line 603
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_1

    .line 605
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 606
    mul-int/lit8 v3, v0, 0x1f

    aget v2, v2, v1

    add-int v0, v3, v2

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v1    # "i":I
    :cond_1
    :goto_1
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    add-int/2addr v1, v2

    .line 610
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    add-int/2addr v0, v2

    .line 611
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v1, v2

    .line 612
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    add-int/2addr v0, v3

    .line 613
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    .line 614
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 675
    .local v0, "tag":I
    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 680
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 685
    return-object p0

    .line 716
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    goto :goto_2

    .line 712
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    .line 713
    goto :goto_2

    .line 698
    :cond_3
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 699
    .local v1, "arrayLength":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v3, v2

    .line 700
    .local v3, "i":I
    add-int v4, v3, v1

    new-array v4, v4, [I

    .line 701
    .local v4, "newArray":[I
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .line 703
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4

    .line 704
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 705
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 708
    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v3

    .line 709
    goto :goto_2

    .line 694
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    .line 695
    goto :goto_2

    .line 690
    :cond_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    .line 691
    nop

    .line 720
    .end local v0    # "tag":I
    :cond_7
    :goto_2
    goto :goto_0

    .line 677
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

    .line 556
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

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

    .line 619
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->serverSide:Z

    if-eqz v0, :cond_0

    .line 620
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 622
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->function:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 623
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    .local v0, "arr$":[I
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 625
    .local v3, "element":I
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 624
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "arr$":[I
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->name:I

    if-eqz v0, :cond_2

    .line 629
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 631
    :cond_2
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->liveOnly:Z

    if-eqz v0, :cond_3

    .line 632
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 636
    return-void
.end method
