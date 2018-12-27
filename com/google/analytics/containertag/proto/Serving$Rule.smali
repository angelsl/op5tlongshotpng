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

    .line 739
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

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
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    .line 790
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 791
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 792
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    .line 793
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$Rule;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7a

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_85

    goto :goto_84

    :cond_7a
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    :goto_84
    goto :goto_86

    :cond_85
    move v0, v2

    :goto_86
    return v0
.end method

.method public getSerializedSize()I
    .registers 10

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v1

    if-lez v1, :cond_24

    .line 932
    const/4 v1, 0x0

    .line 933
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .local v6, "dataSize":I
    :goto_12
    if-ge v1, v5, :cond_1e

    aget v7, v4, v1

    .line 934
    .local v7, "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 933
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 937
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_1e
    add-int/2addr v0, v6

    .line 938
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 940
    .end local v6    # "dataSize":I
    :cond_24
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v1

    if-lez v1, :cond_45

    .line 941
    const/4 v1, 0x0

    .line 942
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_33
    if-ge v1, v5, :cond_3f

    aget v7, v4, v1

    .line 943
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 942
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 946
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_3f
    add-int/2addr v0, v6

    .line 947
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 949
    .end local v6    # "dataSize":I
    :cond_45
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v1

    if-lez v1, :cond_66

    .line 950
    const/4 v1, 0x0

    .line 951
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_54
    if-ge v1, v5, :cond_60

    aget v7, v4, v1

    .line 952
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 951
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 955
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_60
    add-int/2addr v0, v6

    .line 956
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 958
    .end local v6    # "dataSize":I
    :cond_66
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v1

    if-lez v1, :cond_87

    .line 959
    const/4 v1, 0x0

    .line 960
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_75
    if-ge v1, v5, :cond_81

    aget v7, v4, v1

    .line 961
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 960
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 964
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_81
    add-int/2addr v0, v6

    .line 965
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 967
    .end local v6    # "dataSize":I
    :cond_87
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_a8

    .line 968
    const/4 v1, 0x0

    .line 969
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_96
    if-ge v1, v5, :cond_a2

    aget v7, v4, v1

    .line 970
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 969
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 973
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_a2
    add-int/2addr v0, v6

    .line 974
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 976
    .end local v6    # "dataSize":I
    :cond_a8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-eqz v1, :cond_c9

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_c9

    .line 977
    const/4 v1, 0x0

    .line 978
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_b7
    if-ge v1, v5, :cond_c3

    aget v7, v4, v1

    .line 979
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 978
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 982
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_c3
    add-int/2addr v0, v6

    .line 983
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 985
    .end local v6    # "dataSize":I
    :cond_c9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v1

    if-lez v1, :cond_ea

    .line 986
    const/4 v1, 0x0

    .line 987
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_d8
    if-ge v1, v5, :cond_e4

    aget v7, v4, v1

    .line 988
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 987
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_d8

    .line 991
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_e4
    add-int/2addr v0, v6

    .line 992
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 994
    .end local v6    # "dataSize":I
    :cond_ea
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v1

    if-lez v1, :cond_10b

    .line 995
    const/4 v1, 0x0

    .line 996
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_f9
    if-ge v1, v5, :cond_105

    aget v7, v4, v1

    .line 997
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 996
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    .line 1000
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_105
    add-int/2addr v0, v6

    .line 1001
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1003
    .end local v6    # "dataSize":I
    :cond_10b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-eqz v1, :cond_12c

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_12c

    .line 1004
    const/4 v1, 0x0

    .line 1005
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .restart local v5    # "len$":I
    move v6, v1

    move v1, v2

    .local v1, "i$":I
    .restart local v6    # "dataSize":I
    :goto_11a
    if-ge v1, v5, :cond_126

    aget v7, v4, v1

    .line 1006
    .restart local v7    # "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 1005
    .end local v7    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    .line 1009
    .end local v1    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_126
    add-int/2addr v0, v6

    .line 1010
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1012
    .end local v6    # "dataSize":I
    :cond_12c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-eqz v1, :cond_14b

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v1, v1

    if-lez v1, :cond_14b

    .line 1013
    const/4 v1, 0x0

    .line 1014
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .restart local v4    # "arr$":[I
    array-length v5, v4

    .local v2, "i$":I
    .restart local v5    # "len$":I
    :goto_139
    if-ge v2, v5, :cond_145

    aget v6, v4, v2

    .line 1015
    .local v6, "element":I
    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 1014
    .end local v6    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_139

    .line 1018
    .end local v2    # "i$":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    :cond_145
    add-int/2addr v0, v1

    .line 1019
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v2, v2

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1021
    .end local v1    # "dataSize":I
    :cond_14b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->cachedSize:I

    .line 1023
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 807
    const/16 v0, 0x11

    .line 808
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-nez v1, :cond_b

    mul-int/2addr v0, v3

    goto :goto_1e

    .line 810
    :cond_b
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "result":I
    :goto_d
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1d

    .line 811
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 814
    .end local v0    # "i":I
    :cond_1d
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_1e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-nez v1, :cond_24

    mul-int/2addr v0, v3

    goto :goto_37

    .line 816
    :cond_24
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_26
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v4, v4

    if-ge v0, v4, :cond_36

    .line 817
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 820
    .end local v0    # "i":I
    :cond_36
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_37
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-nez v1, :cond_3d

    mul-int/2addr v0, v3

    goto :goto_50

    .line 822
    :cond_3d
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_3f
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4f

    .line 823
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 826
    .end local v0    # "i":I
    :cond_4f
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_50
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-nez v1, :cond_56

    mul-int/2addr v0, v3

    goto :goto_69

    .line 828
    :cond_56
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_58
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v4, v4

    if-ge v0, v4, :cond_68

    .line 829
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 832
    .end local v0    # "i":I
    :cond_68
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_69
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-nez v1, :cond_6f

    mul-int/2addr v0, v3

    goto :goto_82

    .line 834
    :cond_6f
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_71
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_81

    .line 835
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 838
    .end local v0    # "i":I
    :cond_81
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_82
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-nez v1, :cond_88

    mul-int/2addr v0, v3

    goto :goto_9b

    .line 840
    :cond_88
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_8a
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_9a

    .line 841
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 844
    .end local v0    # "i":I
    :cond_9a
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_9b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-nez v1, :cond_a1

    mul-int/2addr v0, v3

    goto :goto_b4

    .line 846
    :cond_a1
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_a3
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v4, v4

    if-ge v0, v4, :cond_b3

    .line 847
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 850
    .end local v0    # "i":I
    :cond_b3
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_b4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-nez v1, :cond_ba

    mul-int/2addr v0, v3

    goto :goto_cd

    .line 852
    :cond_ba
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_bc
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v4, v4

    if-ge v0, v4, :cond_cc

    .line 853
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    .line 856
    .end local v0    # "i":I
    :cond_cc
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_cd
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-nez v1, :cond_d3

    mul-int/2addr v0, v3

    goto :goto_e6

    .line 858
    :cond_d3
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_d5
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_e5

    .line 859
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 862
    .end local v0    # "i":I
    :cond_e5
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_e6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-nez v1, :cond_ec

    mul-int/2addr v0, v3

    goto :goto_ff

    .line 864
    :cond_ec
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_ee
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v4, v4

    if-ge v0, v4, :cond_fe

    .line 865
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    aget v5, v5, v0

    add-int v1, v4, v5

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    .line 868
    .end local v0    # "i":I
    :cond_fe
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_ff
    mul-int/2addr v3, v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_105

    goto :goto_10b

    :cond_105
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_10b
    add-int/2addr v3, v2

    .line 869
    .end local v0    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .registers 8
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1032
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_21c

    .line 1036
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_211

    .line 1037
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    goto/16 :goto_211

    .line 1173
    :sswitch_15
    const/16 v2, 0x50

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1174
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v3, v3

    .line 1175
    .local v3, "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1176
    .local v4, "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .line 1178
    :goto_29
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3e

    .line 1179
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1180
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1178
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 1183
    :cond_3e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1184
    goto/16 :goto_21a

    .line 1159
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_48
    const/16 v2, 0x48

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1160
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v3, v3

    .line 1161
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1162
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1163
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .line 1164
    :goto_5c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_71

    .line 1165
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1166
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1164
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 1169
    :cond_71
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1170
    goto/16 :goto_21a

    .line 1145
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_7b
    const/16 v2, 0x40

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1146
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v3, v3

    .line 1147
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1148
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .line 1150
    :goto_8f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_a4

    .line 1151
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1152
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1150
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 1155
    :cond_a4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1156
    goto/16 :goto_21a

    .line 1131
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_ae
    const/16 v2, 0x38

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1132
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v3, v3

    .line 1133
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1134
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .line 1136
    :goto_c2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_d7

    .line 1137
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1138
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1136
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    .line 1141
    :cond_d7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1142
    goto/16 :goto_21a

    .line 1117
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_e1
    const/16 v2, 0x30

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1118
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v3, v3

    .line 1119
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1120
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1121
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .line 1122
    :goto_f5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_10a

    .line 1123
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1124
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1122
    add-int/lit8 v3, v3, 0x1

    goto :goto_f5

    .line 1127
    :cond_10a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1128
    goto/16 :goto_21a

    .line 1103
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_114
    const/16 v2, 0x28

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1104
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v3, v3

    .line 1105
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1106
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .line 1108
    :goto_128
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_13d

    .line 1109
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1110
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1108
    add-int/lit8 v3, v3, 0x1

    goto :goto_128

    .line 1113
    :cond_13d
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1114
    goto/16 :goto_21a

    .line 1089
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_147
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1090
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v3, v3

    .line 1091
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1092
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .line 1094
    :goto_15b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_170

    .line 1095
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1096
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1094
    add-int/lit8 v3, v3, 0x1

    goto :goto_15b

    .line 1099
    :cond_170
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1100
    goto/16 :goto_21a

    .line 1075
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_17a
    const/16 v2, 0x18

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1076
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v3, v3

    .line 1077
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1078
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .line 1080
    :goto_18e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1a3

    .line 1081
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1082
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1080
    add-int/lit8 v3, v3, 0x1

    goto :goto_18e

    .line 1085
    :cond_1a3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1086
    goto :goto_21a

    .line 1061
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_1ac
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1062
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v3, v3

    .line 1063
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1064
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1065
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .line 1066
    :goto_1c0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1d5

    .line 1067
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1068
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1066
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c0

    .line 1071
    :cond_1d5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1072
    goto :goto_21a

    .line 1047
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_1de
    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1048
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v3, v3

    .line 1049
    .restart local v3    # "i":I
    add-int v4, v3, v2

    new-array v4, v4, [I

    .line 1050
    .restart local v4    # "newArray":[I
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .line 1052
    :goto_1f2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_207

    .line 1053
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1054
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1052
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f2

    .line 1057
    :cond_207
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v1, v3

    .line 1058
    goto :goto_21a

    .line 1034
    .end local v2    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_210
    return-object p0

    .line 1040
    :cond_211
    :goto_211
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_21a

    .line 1042
    return-object p0

    .line 1187
    .end local v0    # "tag":I
    :cond_21a
    :goto_21a
    goto/16 :goto_0

    :sswitch_data_21c
    .sparse-switch
        0x0 -> :sswitch_210
        0x8 -> :sswitch_1de
        0x10 -> :sswitch_1ac
        0x18 -> :sswitch_17a
        0x20 -> :sswitch_147
        0x28 -> :sswitch_114
        0x30 -> :sswitch_e1
        0x38 -> :sswitch_ae
        0x40 -> :sswitch_7b
        0x48 -> :sswitch_48
        0x50 -> :sswitch_15
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

    .line 736
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Rule;

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

    .line 874
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 875
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    move v3, v1

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_14

    aget v4, v0, v3

    .line 876
    .local v4, "element":I
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 875
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 879
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_14
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    if-eqz v0, :cond_27

    .line 880
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_1c
    if-ge v3, v2, :cond_27

    aget v4, v0, v3

    .line 881
    .restart local v4    # "element":I
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 880
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 884
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_27
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    if-eqz v0, :cond_3a

    .line 885
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_2f
    if-ge v3, v2, :cond_3a

    aget v4, v0, v3

    .line 886
    .restart local v4    # "element":I
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 885
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 889
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    if-eqz v0, :cond_4d

    .line 890
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_42
    if-ge v3, v2, :cond_4d

    aget v4, v0, v3

    .line 891
    .restart local v4    # "element":I
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 890
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 894
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    if-eqz v0, :cond_60

    .line 895
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_55
    if-ge v3, v2, :cond_60

    aget v4, v0, v3

    .line 896
    .restart local v4    # "element":I
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 895
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 899
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_60
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    if-eqz v0, :cond_73

    .line 900
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_68
    if-ge v3, v2, :cond_73

    aget v4, v0, v3

    .line 901
    .restart local v4    # "element":I
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 900
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 904
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_73
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    if-eqz v0, :cond_86

    .line 905
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_7b
    if-ge v3, v2, :cond_86

    aget v4, v0, v3

    .line 906
    .restart local v4    # "element":I
    const/4 v5, 0x7

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 905
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 909
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_86
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    if-eqz v0, :cond_9a

    .line 910
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_8e
    if-ge v3, v2, :cond_9a

    aget v4, v0, v3

    .line 911
    .restart local v4    # "element":I
    const/16 v5, 0x8

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 910
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 914
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_9a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    if-eqz v0, :cond_ae

    .line 915
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_a2
    if-ge v3, v2, :cond_ae

    aget v4, v0, v3

    .line 916
    .restart local v4    # "element":I
    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 915
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 919
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_ae
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    if-eqz v0, :cond_c1

    .line 920
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .local v1, "i$":I
    .restart local v2    # "len$":I
    :goto_b5
    if-ge v1, v2, :cond_c1

    aget v3, v0, v1

    .line 921
    .local v3, "element":I
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 920
    .end local v3    # "element":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 924
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_c1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 926
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
