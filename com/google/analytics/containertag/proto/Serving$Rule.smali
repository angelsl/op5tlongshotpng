.class public final Lcom/google/analytics/containertag/proto/Serving$Rule;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rule"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;


# instance fields
.field public addMacro:[I

.field public addMacroRuleName:[I

.field public addTag:[I

.field public addTagRuleName:[I

.field public negativePredicate:[I

.field public positivePredicate:[I

.field public removeMacro:[I

.field public removeMacroRuleName:[I

.field public removeTag:[I

.field public removeTagRuleName:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 739
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 743
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .line 746
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .line 749
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .line 752
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .line 755
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .line 758
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .line 761
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .line 764
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .line 767
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .line 770
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .line 740
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1192
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .registers 2

    .prologue
    .line 773
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .line 774
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .line 775
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .line 776
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .line 777
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .line 778
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .line 779
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .line 780
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .line 781
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .line 782
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    .line 784
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->cachedSize:I

    .line 785
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 790
    if-eq p1, p0, :cond_17

    .line 791
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v3, :cond_18

    move-object v0, p1

    .line 792
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 793
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    :goto_15
    move v1, v2

    :cond_16
    return v1

    .line 790
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_17
    return v1

    .line 791
    :cond_18
    return v2

    .line 793
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$Rule;
    :cond_19
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_82

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_15

    :cond_82
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_16

    goto :goto_15
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 930
    const/4 v5, 0x0

    .line 931
    .local v5, "size":I
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    if-nez v6, :cond_33

    .line 940
    :cond_5
    :goto_5
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-nez v6, :cond_52

    .line 949
    :cond_9
    :goto_9
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-nez v6, :cond_70

    .line 958
    :cond_d
    :goto_d
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-nez v6, :cond_8e

    .line 967
    :cond_11
    :goto_11
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-nez v6, :cond_ad

    .line 976
    :cond_15
    :goto_15
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-nez v6, :cond_cc

    .line 985
    :cond_19
    :goto_19
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-nez v6, :cond_eb

    .line 994
    :cond_1d
    :goto_1d
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-nez v6, :cond_10a

    .line 1003
    :cond_21
    :goto_21
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-nez v6, :cond_129

    .line 1012
    :cond_25
    :goto_25
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-nez v6, :cond_148

    .line 1021
    :cond_29
    :goto_29
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1022
    iput v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->cachedSize:I

    .line 1023
    return v5

    .line 931
    :cond_33
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v6, v6

    if-lez v6, :cond_5

    .line 932
    const/4 v1, 0x0

    .line 933
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3d
    if-lt v3, v4, :cond_48

    .line 937
    add-int/lit8 v5, v1, 0x0

    .line 938
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto :goto_5

    .line 933
    :cond_48
    aget v2, v0, v3

    .line 934
    .local v2, "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 933
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 940
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_52
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v6, v6

    if-lez v6, :cond_9

    .line 941
    const/4 v1, 0x0

    .line 942
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_5c
    if-lt v3, v4, :cond_66

    .line 946
    add-int/2addr v5, v1

    .line 947
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto :goto_9

    .line 942
    :cond_66
    aget v2, v0, v3

    .line 943
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 942
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 949
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_70
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v6, v6

    if-lez v6, :cond_d

    .line 950
    const/4 v1, 0x0

    .line 951
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_7a
    if-lt v3, v4, :cond_84

    .line 955
    add-int/2addr v5, v1

    .line 956
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto :goto_d

    .line 951
    :cond_84
    aget v2, v0, v3

    .line 952
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 958
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_8e
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v6, v6

    if-lez v6, :cond_11

    .line 959
    const/4 v1, 0x0

    .line 960
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_98
    if-lt v3, v4, :cond_a3

    .line 964
    add-int/2addr v5, v1

    .line 965
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_11

    .line 960
    :cond_a3
    aget v2, v0, v3

    .line 961
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 960
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 967
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_ad
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v6, v6

    if-lez v6, :cond_15

    .line 968
    const/4 v1, 0x0

    .line 969
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_b7
    if-lt v3, v4, :cond_c2

    .line 973
    add-int/2addr v5, v1

    .line 974
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_15

    .line 969
    :cond_c2
    aget v2, v0, v3

    .line 970
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 976
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_cc
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v6, v6

    if-lez v6, :cond_19

    .line 977
    const/4 v1, 0x0

    .line 978
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_d6
    if-lt v3, v4, :cond_e1

    .line 982
    add-int/2addr v5, v1

    .line 983
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_19

    .line 978
    :cond_e1
    aget v2, v0, v3

    .line 979
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 978
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 985
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_eb
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v6, v6

    if-lez v6, :cond_1d

    .line 986
    const/4 v1, 0x0

    .line 987
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_f5
    if-lt v3, v4, :cond_100

    .line 991
    add-int/2addr v5, v1

    .line 992
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_1d

    .line 987
    :cond_100
    aget v2, v0, v3

    .line 988
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 987
    add-int/lit8 v3, v3, 0x1

    goto :goto_f5

    .line 994
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_10a
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v6, v6

    if-lez v6, :cond_21

    .line 995
    const/4 v1, 0x0

    .line 996
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_114
    if-lt v3, v4, :cond_11f

    .line 1000
    add-int/2addr v5, v1

    .line 1001
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_21

    .line 996
    :cond_11f
    aget v2, v0, v3

    .line 997
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 996
    add-int/lit8 v3, v3, 0x1

    goto :goto_114

    .line 1003
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_129
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v6, v6

    if-lez v6, :cond_25

    .line 1004
    const/4 v1, 0x0

    .line 1005
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_133
    if-lt v3, v4, :cond_13e

    .line 1009
    add-int/2addr v5, v1

    .line 1010
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_25

    .line 1005
    :cond_13e
    aget v2, v0, v3

    .line 1006
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1005
    add-int/lit8 v3, v3, 0x1

    goto :goto_133

    .line 1012
    .end local v0    # "arr$":[I
    .end local v1    # "dataSize":I
    .end local v2    # "element":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_148
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v6, v6

    if-lez v6, :cond_29

    .line 1013
    const/4 v1, 0x0

    .line 1014
    .restart local v1    # "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_152
    if-lt v3, v4, :cond_15d

    .line 1018
    add-int/2addr v5, v1

    .line 1019
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_29

    .line 1014
    :cond_15d
    aget v2, v0, v3

    .line 1015
    .restart local v2    # "element":I
    invoke-static {v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1014
    add-int/lit8 v3, v3, 0x1

    goto :goto_152
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 807
    const/16 v1, 0x11

    .line 808
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    if-eqz v2, :cond_75

    .line 810
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v2, v2

    if-lt v0, v2, :cond_78

    .line 814
    .end local v0    # "i":I
    :goto_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-eqz v2, :cond_83

    .line 816
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v2, v2

    if-lt v0, v2, :cond_86

    .line 820
    .end local v0    # "i":I
    :goto_16
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-eqz v2, :cond_91

    .line 822
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v2, v2

    if-lt v0, v2, :cond_94

    .line 826
    .end local v0    # "i":I
    :goto_20
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-eqz v2, :cond_a0

    .line 828
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_25
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v2, v2

    if-lt v0, v2, :cond_a3

    .line 832
    .end local v0    # "i":I
    :goto_2a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-eqz v2, :cond_af

    .line 834
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2f
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v2, v2

    if-lt v0, v2, :cond_b2

    .line 838
    .end local v0    # "i":I
    :goto_34
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-eqz v2, :cond_be

    .line 840
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_39
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v2, v2

    if-lt v0, v2, :cond_c2

    .line 844
    .end local v0    # "i":I
    :goto_3e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-eqz v2, :cond_ce

    .line 846
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_43
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v2, v2

    if-lt v0, v2, :cond_d2

    .line 850
    .end local v0    # "i":I
    :goto_48
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-eqz v2, :cond_de

    .line 852
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v2, v2

    if-lt v0, v2, :cond_e2

    .line 856
    .end local v0    # "i":I
    :goto_52
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-eqz v2, :cond_ee

    .line 858
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_57
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v2, v2

    if-lt v0, v2, :cond_f2

    .line 862
    .end local v0    # "i":I
    :goto_5c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-eqz v2, :cond_fe

    .line 864
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_61
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v2, v2

    if-lt v0, v2, :cond_102

    .line 868
    .end local v0    # "i":I
    :goto_66
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_10e

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_72
    add-int v1, v3, v2

    .line 869
    return v1

    .line 808
    :cond_75
    const/16 v1, 0x20f

    goto :goto_c

    .line 811
    .restart local v0    # "i":I
    :cond_78
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 814
    .end local v0    # "i":I
    :cond_83
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_16

    .line 817
    .restart local v0    # "i":I
    :cond_86
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 820
    .end local v0    # "i":I
    :cond_91
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_20

    .line 823
    .restart local v0    # "i":I
    :cond_94
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    .line 826
    .end local v0    # "i":I
    :cond_a0
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_2a

    .line 829
    .restart local v0    # "i":I
    :cond_a3
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25

    .line 832
    .end local v0    # "i":I
    :cond_af
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_34

    .line 835
    .restart local v0    # "i":I
    :cond_b2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f

    .line 838
    .end local v0    # "i":I
    :cond_be
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_3e

    .line 841
    .restart local v0    # "i":I
    :cond_c2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_39

    .line 844
    .end local v0    # "i":I
    :cond_ce
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_48

    .line 847
    .restart local v0    # "i":I
    :cond_d2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_43

    .line 850
    .end local v0    # "i":I
    :cond_de
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_52

    .line 853
    .restart local v0    # "i":I
    :cond_e2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4d

    .line 856
    .end local v0    # "i":I
    :cond_ee
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_5c

    .line 859
    .restart local v0    # "i":I
    :cond_f2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_57

    .line 862
    .end local v0    # "i":I
    :cond_fe
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_66

    .line 865
    .restart local v0    # "i":I
    :cond_102
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_61

    .line 868
    .end local v0    # "i":I
    :cond_10e
    const/4 v2, 0x0

    goto/16 :goto_72
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .registers 9
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1031
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1032
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_21a

    .line 1036
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_16

    .line 1040
    :goto_c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1042
    return-object p0

    .line 1034
    :sswitch_15
    return-object p0

    .line 1037
    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    goto :goto_c

    .line 1047
    :sswitch_1e
    const/16 v4, 0x8

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1048
    .local v0, "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v4

    .line 1049
    .local v1, "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1050
    .local v2, "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .line 1052
    :goto_32
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_42

    .line 1057
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_1

    .line 1053
    :cond_42
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1054
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1052
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1061
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_50
    const/16 v4, 0x10

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1062
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v4

    .line 1063
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1064
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1065
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .line 1066
    :goto_64
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_74

    .line 1071
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_1

    .line 1067
    :cond_74
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1068
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1066
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 1075
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_82
    const/16 v4, 0x18

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1076
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v4

    .line 1077
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1078
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .line 1080
    :goto_96
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_a7

    .line 1085
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1081
    :cond_a7
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1082
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 1089
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_b5
    const/16 v4, 0x20

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1090
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v4

    .line 1091
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1092
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .line 1094
    :goto_c9
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_da

    .line 1099
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1095
    :cond_da
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1096
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 1103
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_e8
    const/16 v4, 0x28

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1104
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v4

    .line 1105
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1106
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .line 1108
    :goto_fc
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_10d

    .line 1113
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1109
    :cond_10d
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1110
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    .line 1117
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_11b
    const/16 v4, 0x30

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1118
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v4

    .line 1119
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1120
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1121
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .line 1122
    :goto_12f
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_140

    .line 1127
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1123
    :cond_140
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1124
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_12f

    .line 1131
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_14e
    const/16 v4, 0x38

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1132
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v4

    .line 1133
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1134
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .line 1136
    :goto_162
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_173

    .line 1141
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1137
    :cond_173
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1138
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1136
    add-int/lit8 v1, v1, 0x1

    goto :goto_162

    .line 1145
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_181
    const/16 v4, 0x40

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1146
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v4

    .line 1147
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1148
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .line 1150
    :goto_195
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1a6

    .line 1155
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1151
    :cond_1a6
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1152
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1150
    add-int/lit8 v1, v1, 0x1

    goto :goto_195

    .line 1159
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_1b4
    const/16 v4, 0x48

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1160
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v4

    .line 1161
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1162
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1163
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .line 1164
    :goto_1c8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1d9

    .line 1169
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1165
    :cond_1d9
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1166
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c8

    .line 1173
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_1e7
    const/16 v4, 0x50

    invoke-static {p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1174
    .restart local v0    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v1, v4

    .line 1175
    .restart local v1    # "i":I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1176
    .restart local v2    # "newArray":[I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .line 1178
    :goto_1fb
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_20c

    .line 1183
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_1

    .line 1179
    :cond_20c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1180
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fb

    .line 1032
    :sswitch_data_21a
    .sparse-switch
        0x0 -> :sswitch_15
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_50
        0x18 -> :sswitch_82
        0x20 -> :sswitch_b5
        0x28 -> :sswitch_e8
        0x30 -> :sswitch_11b
        0x38 -> :sswitch_14e
        0x40 -> :sswitch_181
        0x48 -> :sswitch_1b4
        0x50 -> :sswitch_1e7
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
    .line 736
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;

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

    .prologue
    .line 874
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    if-nez v4, :cond_2e

    .line 879
    :cond_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-nez v4, :cond_3d

    .line 884
    :cond_8
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-nez v4, :cond_4c

    .line 889
    :cond_c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-nez v4, :cond_5b

    .line 894
    :cond_10
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-nez v4, :cond_6a

    .line 899
    :cond_14
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-nez v4, :cond_79

    .line 904
    :cond_18
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-nez v4, :cond_88

    .line 909
    :cond_1c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-nez v4, :cond_97

    .line 914
    :cond_20
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-nez v4, :cond_a7

    .line 919
    :cond_24
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-nez v4, :cond_b7

    .line 924
    :cond_28
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 926
    return-void

    .line 875
    :cond_2e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_32
    if-ge v2, v3, :cond_4

    aget v1, v0, v2

    .line 876
    .local v1, "element":I
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 880
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_41
    if-ge v2, v3, :cond_8

    aget v1, v0, v2

    .line 881
    .restart local v1    # "element":I
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 885
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_50
    if-ge v2, v3, :cond_c

    aget v1, v0, v2

    .line 886
    .restart local v1    # "element":I
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 885
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 890
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_5b
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5f
    if-ge v2, v3, :cond_10

    aget v1, v0, v2

    .line 891
    .restart local v1    # "element":I
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 890
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 895
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_6a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_6e
    if-ge v2, v3, :cond_14

    aget v1, v0, v2

    .line 896
    .restart local v1    # "element":I
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 895
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 900
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_79
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_7d
    if-ge v2, v3, :cond_18

    aget v1, v0, v2

    .line 901
    .restart local v1    # "element":I
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 905
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_88
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_8c
    if-ge v2, v3, :cond_1c

    aget v1, v0, v2

    .line 906
    .restart local v1    # "element":I
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 905
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 910
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_97
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_9b
    if-ge v2, v3, :cond_20

    aget v1, v0, v2

    .line 911
    .restart local v1    # "element":I
    const/16 v4, 0x8

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 910
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 915
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_a7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_ab
    if-ge v2, v3, :cond_24

    aget v1, v0, v2

    .line 916
    .restart local v1    # "element":I
    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 915
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 920
    .end local v0    # "arr$":[I
    .end local v1    # "element":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_b7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_bb
    if-ge v2, v3, :cond_28

    aget v1, v0, v2

    .line 921
    .restart local v1    # "element":I
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 920
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb
.end method
