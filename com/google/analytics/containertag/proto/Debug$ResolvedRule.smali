.class public final Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedRule"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;


# instance fields
.field public addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

.field public result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 318
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 319
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 322
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 325
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 328
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 331
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 334
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 337
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 319
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 639
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .registers 2

    .line 343
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 344
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 345
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 346
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 347
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 348
    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 350
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->cachedSize:I

    .line 352
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 358
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 359
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 360
    .local v1, "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_52

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_70

    goto :goto_5c

    :cond_52
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    :goto_5c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_65

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_70

    goto :goto_6f

    :cond_65
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    :goto_6f
    goto :goto_71

    :cond_70
    move v0, v2

    :goto_71
    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 456
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v1

    .local v3, "len$":I
    move v4, v0

    move v0, v2

    .local v0, "i$":I
    .local v4, "size":I
    :goto_b
    if-ge v0, v3, :cond_18

    aget-object v5, v1, v0

    .line 457
    .local v5, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v6, 0x1

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v4, v6

    .line 456
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 461
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v3    # "len$":I
    :cond_18
    move v0, v4

    .end local v4    # "size":I
    .local v0, "size":I
    :cond_19
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_30

    .line 462
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v1

    .restart local v3    # "len$":I
    move v4, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v4    # "size":I
    :goto_22
    if-ge v0, v3, :cond_2f

    aget-object v5, v1, v0

    .line 463
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v4, v6

    .line 462
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 467
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v3    # "len$":I
    :cond_2f
    move v0, v4

    .end local v4    # "size":I
    .local v0, "size":I
    :cond_30
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_47

    .line 468
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v1

    .restart local v3    # "len$":I
    move v4, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v4    # "size":I
    :goto_39
    if-ge v0, v3, :cond_46

    aget-object v5, v1, v0

    .line 469
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v4, v6

    .line 468
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 473
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v3    # "len$":I
    :cond_46
    move v0, v4

    .end local v4    # "size":I
    .local v0, "size":I
    :cond_47
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_5e

    .line 474
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v1

    .restart local v3    # "len$":I
    move v4, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v4    # "size":I
    :goto_50
    if-ge v0, v3, :cond_5d

    aget-object v5, v1, v0

    .line 475
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v6, 0x4

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v4, v6

    .line 474
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 479
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v3    # "len$":I
    :cond_5d
    move v0, v4

    .end local v4    # "size":I
    .local v0, "size":I
    :cond_5e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_75

    .line 480
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v1

    .restart local v3    # "len$":I
    move v4, v0

    move v0, v2

    .local v0, "i$":I
    .restart local v4    # "size":I
    :goto_67
    if-ge v0, v3, :cond_74

    aget-object v5, v1, v0

    .line 481
    .restart local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v6, 0x5

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v4, v6

    .line 480
    .end local v5    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 485
    .end local v0    # "i$":I
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v3    # "len$":I
    :cond_74
    move v0, v4

    .end local v4    # "size":I
    .local v0, "size":I
    :cond_75
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_89

    .line 486
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v3, v1

    .local v2, "i$":I
    .restart local v3    # "len$":I
    :goto_7c
    if-ge v2, v3, :cond_89

    aget-object v4, v1, v2

    .line 487
    .local v4, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x6

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 486
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 491
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_89
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_95

    .line 492
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_95
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->cachedSize:I

    .line 497
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 371
    const/16 v0, 0x11

    .line 372
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-nez v1, :cond_b

    mul-int/2addr v0, v3

    goto :goto_2a

    .line 374
    :cond_b
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "result":I
    :goto_d
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_29

    .line 375
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_1c

    move v5, v2

    goto :goto_24

    :cond_1c
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v5

    :goto_24
    add-int v1, v4, v5

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 378
    .end local v0    # "i":I
    :cond_29
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_2a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_30

    mul-int/2addr v0, v3

    goto :goto_4f

    .line 380
    :cond_30
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_32
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_4e

    .line 381
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_41

    move v5, v2

    goto :goto_49

    :cond_41
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v5

    :goto_49
    add-int v1, v4, v5

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 384
    .end local v0    # "i":I
    :cond_4e
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_4f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_55

    mul-int/2addr v0, v3

    goto :goto_74

    .line 386
    :cond_55
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_57
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_73

    .line 387
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_66

    move v5, v2

    goto :goto_6e

    :cond_66
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v5

    :goto_6e
    add-int v1, v4, v5

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 390
    .end local v0    # "i":I
    :cond_73
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_74
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_7a

    mul-int/2addr v0, v3

    goto :goto_99

    .line 392
    :cond_7a
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_7c
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_98

    .line 393
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_8b

    move v5, v2

    goto :goto_93

    :cond_8b
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v5

    :goto_93
    add-int v1, v4, v5

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 396
    .end local v0    # "i":I
    :cond_98
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_99
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_9f

    mul-int/2addr v0, v3

    goto :goto_be

    .line 398
    :cond_9f
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_a1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_bd

    .line 399
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_b0

    move v5, v2

    goto :goto_b8

    :cond_b0
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v5

    :goto_b8
    add-int v1, v4, v5

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 402
    .end local v0    # "i":I
    :cond_bd
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_be
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_c4

    mul-int/2addr v0, v3

    goto :goto_e3

    .line 404
    :cond_c4
    move v1, v0

    move v0, v2

    .local v0, "i":I
    .restart local v1    # "result":I
    :goto_c6
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v4

    if-ge v0, v4, :cond_e2

    .line 405
    mul-int v4, v3, v1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    if-nez v5, :cond_d5

    move v5, v2

    goto :goto_dd

    :cond_d5
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v5

    :goto_dd
    add-int v1, v4, v5

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 408
    .end local v0    # "i":I
    :cond_e2
    move v0, v1

    .end local v1    # "result":I
    .local v0, "result":I
    :goto_e3
    mul-int v1, v3, v0

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v4, :cond_eb

    move v4, v2

    goto :goto_f1

    :cond_eb
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v4

    :goto_f1
    add-int/2addr v1, v4

    .line 409
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_f8

    goto :goto_fe

    :cond_f8
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_fe
    add-int/2addr v3, v2

    .line 410
    .end local v1    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .registers 8
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 506
    .local v0, "tag":I
    if-eqz v0, :cond_207

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1bb

    const/16 v1, 0x12

    if-eq v0, v1, :cond_171

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_126

    const/16 v1, 0x22

    if-eq v0, v1, :cond_db

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_90

    const/16 v1, 0x32

    if-eq v0, v1, :cond_45

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_37

    .line 510
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_2e

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    .line 514
    :cond_2e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_205

    .line 516
    return-object p0

    .line 629
    :cond_37
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 630
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto/16 :goto_205

    .line 611
    .restart local v0    # "tag":I
    :cond_45
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 612
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_4f

    move v3, v2

    goto :goto_52

    :cond_4f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    .line 613
    .local v3, "i":I
    :goto_52
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 614
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_5f

    .line 615
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    :cond_5f
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 618
    :goto_61
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_7e

    .line 619
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 620
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 621
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 624
    :cond_7e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 625
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 626
    goto/16 :goto_205

    .line 593
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_90
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 594
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_9a

    move v3, v2

    goto :goto_9d

    :cond_9a
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    .line 595
    .restart local v3    # "i":I
    :goto_9d
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 596
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_aa

    .line 597
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    :cond_aa
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 600
    :goto_ac
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_c9

    .line 601
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 602
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 603
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 600
    add-int/lit8 v3, v3, 0x1

    goto :goto_ac

    .line 606
    :cond_c9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 607
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 608
    goto/16 :goto_205

    .line 575
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_db
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 576
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_e5

    move v3, v2

    goto :goto_e8

    :cond_e5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    .line 577
    .restart local v3    # "i":I
    :goto_e8
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 578
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_f5

    .line 579
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    :cond_f5
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 582
    :goto_f7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_114

    .line 583
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 584
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 585
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_f7

    .line 588
    :cond_114
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 589
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 590
    goto/16 :goto_205

    .line 557
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_126
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 558
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_130

    move v3, v2

    goto :goto_133

    :cond_130
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    .line 559
    .restart local v3    # "i":I
    :goto_133
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 560
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_140

    .line 561
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    :cond_140
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 564
    :goto_142
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_15f

    .line 565
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 566
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 567
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_142

    .line 570
    :cond_15f
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 571
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 572
    goto/16 :goto_205

    .line 539
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_171
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 540
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_17b

    move v3, v2

    goto :goto_17e

    :cond_17b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    .line 541
    .restart local v3    # "i":I
    :goto_17e
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 542
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_18b

    .line 543
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    :cond_18b
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 546
    :goto_18d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1aa

    .line 547
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 548
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 549
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_18d

    .line 552
    :cond_1aa
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 553
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 554
    goto :goto_205

    .line 521
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_1bb
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 522
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_1c5

    move v3, v2

    goto :goto_1c8

    :cond_1c5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v3, v3

    .line 523
    .restart local v3    # "i":I
    :goto_1c8
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 524
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_1d5

    .line 525
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    :cond_1d5
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 528
    :goto_1d7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1f4

    .line 529
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 530
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 531
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d7

    .line 534
    :cond_1f4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 535
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 536
    nop

    .line 634
    .end local v0    # "tag":I
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_205
    :goto_205
    goto/16 :goto_0

    .line 508
    .restart local v0    # "tag":I
    :cond_207
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

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

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

    .line 415
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 416
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v0

    .local v2, "len$":I
    move v3, v1

    .local v3, "i$":I
    :goto_9
    if-ge v3, v2, :cond_14

    aget-object v4, v0, v3

    .line 417
    .local v4, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 416
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 420
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_14
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_27

    .line 421
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_1c
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 422
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 421
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 425
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_27
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_3a

    .line 426
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_2f
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 427
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 426
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 430
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_4d

    .line 431
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_42
    if-ge v3, v2, :cond_4d

    aget-object v4, v0, v3

    .line 432
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 431
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 435
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_60

    .line 436
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v0

    .restart local v2    # "len$":I
    move v3, v1

    .restart local v3    # "i$":I
    :goto_55
    if-ge v3, v2, :cond_60

    aget-object v4, v0, v3

    .line 437
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 436
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 440
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_60
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_72

    .line 441
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v0

    .local v1, "i$":I
    .restart local v2    # "len$":I
    :goto_67
    if-ge v1, v2, :cond_72

    aget-object v3, v0, v1

    .line 442
    .local v3, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 441
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 445
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_72
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_7c

    .line 446
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 448
    :cond_7c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 450
    return-void
.end method
