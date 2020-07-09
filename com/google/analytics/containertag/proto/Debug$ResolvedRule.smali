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
    .locals 1

    .line 318
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

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
    .locals 1
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
    .locals 1
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
    .locals 1

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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 358
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 359
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 360
    .local v1, "other":Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v3, v4}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v1, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 457
    .local v4, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 456
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v1

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 463
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 462
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 467
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v1

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 469
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 468
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 473
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_3

    .line 474
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v1

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 475
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 474
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 479
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_4

    .line 480
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v1

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 481
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 480
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 485
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v1, :cond_5

    .line 486
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v2, v1

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 487
    .restart local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v5, 0x6

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 486
    .end local v4    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 491
    .end local v1    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_6

    .line 492
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_6
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
    .locals 6

    .line 371
    const/16 v0, 0x11

    .line 372
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_2

    .line 374
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 375
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v4, v3

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_5

    .line 380
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 381
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v3

    :goto_4
    add-int v0, v4, v3

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 384
    .end local v1    # "i":I
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_6

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_8

    .line 386
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 387
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v3

    :goto_7
    add-int v0, v4, v3

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 390
    .end local v1    # "i":I
    :cond_8
    :goto_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_9

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_b

    .line 392
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_b

    .line 393
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v3

    :goto_a
    add-int v0, v4, v3

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 396
    .end local v1    # "i":I
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_c

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_e

    .line 398
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_e

    .line 399
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v3

    :goto_d
    add-int v0, v4, v3

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 402
    .end local v1    # "i":I
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v1, :cond_f

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_11

    .line 404
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v4, v3

    if-ge v1, v4, :cond_11

    .line 405
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v3, v1

    if-nez v5, :cond_10

    move v3, v2

    goto :goto_10

    :cond_10
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->hashCode()I

    move-result v3

    :goto_10
    add-int v0, v4, v3

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 408
    .end local v1    # "i":I
    :cond_11
    :goto_11
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v3, :cond_12

    move v3, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v1, v3

    .line 409
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_13

    goto :goto_13

    :cond_13
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    .line 410
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;
    .locals 6
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
    if-eqz v0, :cond_1b

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    const/16 v1, 0x12

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_e

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 516
    return-object p0

    .line 629
    :cond_1
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 630
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_d

    .line 611
    :cond_2
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 612
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    array-length v3, v3

    .line 613
    .local v3, "i":I
    :goto_1
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 614
    .local v4, "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_4

    .line 615
    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    :cond_4
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 618
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5

    .line 619
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

    goto :goto_2

    .line 624
    :cond_5
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 625
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 626
    goto/16 :goto_d

    .line 593
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_6
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 594
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    array-length v3, v3

    .line 595
    .restart local v3    # "i":I
    :goto_3
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 596
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_8

    .line 597
    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    :cond_8
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 600
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_9

    .line 601
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

    goto :goto_4

    .line 606
    :cond_9
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 607
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 608
    goto/16 :goto_d

    .line 575
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_a
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 576
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    array-length v3, v3

    .line 577
    .restart local v3    # "i":I
    :goto_5
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 578
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_c

    .line 579
    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    :cond_c
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 582
    :goto_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_d

    .line 583
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

    goto :goto_6

    .line 588
    :cond_d
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 589
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 590
    goto/16 :goto_d

    .line 557
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_e
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 558
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_f

    move v3, v2

    goto :goto_7

    :cond_f
    array-length v3, v3

    .line 559
    .restart local v3    # "i":I
    :goto_7
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 560
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_10

    .line 561
    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    :cond_10
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 564
    :goto_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_11

    .line 565
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

    goto :goto_8

    .line 570
    :cond_11
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 571
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 572
    goto/16 :goto_d

    .line 539
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_12
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 540
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_13

    move v3, v2

    goto :goto_9

    :cond_13
    array-length v3, v3

    .line 541
    .restart local v3    # "i":I
    :goto_9
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 542
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_14

    .line 543
    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    :cond_14
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 546
    :goto_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_15

    .line 547
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

    goto :goto_a

    .line 552
    :cond_15
    new-instance v5, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v5}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    aput-object v5, v2, v3

    .line 553
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 554
    goto :goto_d

    .line 521
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    :cond_16
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 522
    .restart local v1    # "arrayLength":I
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-nez v3, :cond_17

    move v3, v2

    goto :goto_b

    :cond_17
    array-length v3, v3

    .line 523
    .restart local v3    # "i":I
    :goto_b
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 524
    .restart local v4    # "newArray":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v5, :cond_18

    .line 525
    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    :cond_18
    iput-object v4, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 528
    :goto_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_19

    .line 529
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

    goto :goto_c

    .line 534
    :cond_19
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
    :cond_1a
    :goto_d
    goto/16 :goto_0

    .line 508
    .restart local v0    # "tag":I
    :cond_1b
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

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

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

    .line 415
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .local v0, "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 417
    .local v3, "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 416
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 422
    .restart local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 421
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 425
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 427
    .restart local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 426
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 430
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeTags:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 432
    .restart local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 431
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 435
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->addMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 437
    .restart local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 436
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 440
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    if-eqz v0, :cond_5

    .line 441
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->removeMacros:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .restart local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 442
    .restart local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 441
    .end local v3    # "element":Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 445
    .end local v0    # "arr$":[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_6

    .line 446
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 448
    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 450
    return-void
.end method
