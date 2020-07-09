.class public final Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "TypeSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/midtier/proto/containertag/TypeSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;,
        Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# instance fields
.field public boolean_:Z

.field public containsReferences:Z

.field public escaping:[I

.field public functionId:Ljava/lang/String;

.field public integer:J

.field public listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public macroReference:Ljava/lang/String;

.field public mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public string:Ljava/lang/String;

.field public tagReference:Ljava/lang/String;

.field public templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 10
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 57
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 60
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 66
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 72
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 75
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 81
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 448
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 4

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 87
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 88
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 89
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 91
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 93
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 94
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 96
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->cachedSize:I

    .line 99
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 106
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 107
    .local v1, "other":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iget v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    iget-wide v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iget-wide v5, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    iget-boolean v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_3

    :cond_5
    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    iget-boolean v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "size":I
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const/4 v1, 0x2

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 231
    .local v6, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v0, v7

    .line 230
    .end local v6    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 237
    .restart local v6    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v7, 0x4

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v0, v7

    .line 236
    .end local v6    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 241
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 243
    .restart local v6    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v7, 0x5

    invoke-static {v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v0, v7

    .line 242
    .end local v6    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 247
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 248
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 252
    const/4 v1, 0x7

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    :cond_5
    iget-wide v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 256
    const/16 v1, 0x8

    invoke-static {v1, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    :cond_6
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v1, :cond_7

    .line 260
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 263
    :cond_7
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .local v4, "arr$":[I
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v5, :cond_8

    aget v7, v4, v6

    .line 266
    .local v7, "element":I
    invoke-static {v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v1, v8

    .line 265
    .end local v7    # "element":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 269
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_8
    add-int/2addr v0, v1

    .line 270
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v4, v4

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    .line 272
    .end local v1    # "dataSize":I
    :cond_9
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_a

    .line 273
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v2, :cond_a

    aget-object v5, v1, v4

    .line 274
    .local v5, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/16 v6, 0xb

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    .line 273
    .end local v5    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 278
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_a
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v1, :cond_b

    .line 279
    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_b
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 283
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_c
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->cachedSize:I

    .line 288
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 124
    const/16 v0, 0x11

    .line 125
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    add-int/2addr v1, v2

    .line 126
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 127
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_3

    .line 129
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 130
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v2, v1

    if-nez v5, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_6

    .line 135
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v4, v2

    if-ge v1, v4, :cond_6

    .line 136
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v2, v1

    if-nez v5, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v4, v2

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 139
    .end local v1    # "i":I
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_7

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_9

    .line 141
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v4, v2

    if-ge v1, v4, :cond_9

    .line 142
    mul-int/lit8 v4, v0, 0x1f

    aget-object v5, v2, v1

    if-nez v5, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v4, v2

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 145
    .end local v1    # "i":I
    :cond_9
    :goto_9
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v1, v2

    .line 146
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    .line 147
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v1, v2

    .line 148
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    move v2, v5

    goto :goto_c

    :cond_c
    move v2, v4

    :goto_c
    add-int/2addr v0, v2

    .line 149
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v1, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_f

    .line 151
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v2

    if-ge v1, v6, :cond_f

    .line 152
    mul-int/lit8 v6, v0, 0x1f

    aget-object v7, v2, v1

    if-nez v7, :cond_e

    move v2, v3

    goto :goto_e

    :cond_e
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_e
    add-int v0, v6, v2

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 155
    .end local v1    # "i":I
    :cond_f
    :goto_f
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v1, v2

    .line 156
    .end local v0    # "result":I
    .local v1, "result":I
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-nez v0, :cond_11

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_12

    .line 158
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v6, v2

    if-ge v0, v6, :cond_12

    .line 159
    mul-int/lit8 v6, v1, 0x1f

    aget v2, v2, v0

    add-int v1, v6, v2

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 162
    .end local v0    # "i":I
    :cond_12
    :goto_12
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v2, :cond_13

    move v4, v5

    :cond_13
    add-int/2addr v0, v4

    .line 163
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_14

    goto :goto_13

    :cond_14
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v1, v3

    .line 164
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 7
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 297
    .local v0, "tag":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 301
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_f

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    goto/16 :goto_b

    .line 439
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    goto/16 :goto_c

    .line 435
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 436
    goto/16 :goto_c

    .line 417
    :sswitch_2
    const/16 v3, 0x5a

    invoke-static {p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 418
    .local v3, "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    array-length v4, v4

    .line 419
    .local v4, "i":I
    :goto_1
    add-int v5, v4, v3

    new-array v5, v5, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 420
    .local v5, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_1

    .line 421
    invoke-static {v6, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    :cond_1
    iput-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 424
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v2

    sub-int/2addr v6, v1

    if-ge v4, v6, :cond_2

    .line 425
    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v2, v4

    .line 426
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 427
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 424
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 430
    :cond_2
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v1, v2, v4

    .line 431
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 432
    goto/16 :goto_c

    .line 403
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_3
    const/16 v3, 0x50

    invoke-static {p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 404
    .restart local v3    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v5, v4

    .line 405
    .local v5, "i":I
    add-int v6, v5, v3

    new-array v6, v6, [I

    .line 406
    .local v6, "newArray":[I
    invoke-static {v4, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    iput-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 408
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v4, v2

    sub-int/2addr v4, v1

    if-ge v5, v4, :cond_3

    .line 409
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    aput v4, v2, v5

    .line 410
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 408
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 413
    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v2, v5

    .line 414
    goto/16 :goto_c

    .line 399
    .end local v3    # "arrayLength":I
    .end local v5    # "i":I
    .end local v6    # "newArray":[I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 400
    goto/16 :goto_c

    .line 395
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    .line 396
    goto/16 :goto_c

    .line 391
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 392
    goto/16 :goto_c

    .line 387
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 388
    goto/16 :goto_c

    .line 369
    :sswitch_8
    const/16 v3, 0x2a

    invoke-static {p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 370
    .restart local v3    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    array-length v4, v4

    .line 371
    .restart local v4    # "i":I
    :goto_4
    add-int v5, v4, v3

    new-array v5, v5, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 372
    .local v5, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_5

    .line 373
    invoke-static {v6, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    :cond_5
    iput-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 376
    :goto_5
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v2

    sub-int/2addr v6, v1

    if-ge v4, v6, :cond_6

    .line 377
    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v2, v4

    .line 378
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 379
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 382
    :cond_6
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v1, v2, v4

    .line 383
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 384
    goto/16 :goto_c

    .line 351
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_9
    const/16 v3, 0x22

    invoke-static {p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 352
    .restart local v3    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v4, :cond_7

    move v4, v2

    goto :goto_6

    :cond_7
    array-length v4, v4

    .line 353
    .restart local v4    # "i":I
    :goto_6
    add-int v5, v4, v3

    new-array v5, v5, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 354
    .restart local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_8

    .line 355
    invoke-static {v6, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    :cond_8
    iput-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 358
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v2

    sub-int/2addr v6, v1

    if-ge v4, v6, :cond_9

    .line 359
    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v2, v4

    .line 360
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 361
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 364
    :cond_9
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v1, v2, v4

    .line 365
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 366
    goto/16 :goto_c

    .line 333
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_a
    const/16 v3, 0x1a

    invoke-static {p1, v3}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 334
    .restart local v3    # "arrayLength":I
    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v4, :cond_a

    move v4, v2

    goto :goto_8

    :cond_a
    array-length v4, v4

    .line 335
    .restart local v4    # "i":I
    :goto_8
    add-int v5, v4, v3

    new-array v5, v5, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 336
    .restart local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v6, :cond_b

    .line 337
    invoke-static {v6, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_b
    iput-object v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 340
    :goto_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v6, v2

    sub-int/2addr v6, v1

    if-ge v4, v6, :cond_c

    .line 341
    new-instance v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v6}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v6, v2, v4

    .line 342
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 343
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 346
    :cond_c
    new-instance v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v1, v2, v4

    .line 347
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 348
    goto :goto_c

    .line 329
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 330
    goto :goto_c

    .line 312
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 313
    .local v2, "temp":I
    if-eq v2, v1, :cond_e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_e

    const/4 v3, 0x4

    if-eq v2, v3, :cond_e

    const/4 v3, 0x5

    if-eq v2, v3, :cond_e

    const/4 v3, 0x6

    if-eq v2, v3, :cond_e

    const/4 v3, 0x7

    if-eq v2, v3, :cond_e

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    const/16 v3, 0x9

    if-ne v2, v3, :cond_d

    goto :goto_a

    .line 324
    :cond_d
    iput v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 326
    goto :goto_c

    .line 322
    :cond_e
    :goto_a
    iput v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    goto :goto_c

    .line 299
    .end local v2    # "temp":I
    :sswitch_d
    return-object p0

    .line 305
    :cond_f
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 307
    return-object p0

    .line 443
    .end local v0    # "tag":I
    :cond_10
    :goto_c
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x5a -> :sswitch_2
        0x60 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 170
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 175
    .local v4, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 174
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 180
    .restart local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 179
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 185
    .restart local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 184
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 188
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 192
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 194
    :cond_5
    iget-wide v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 195
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 197
    :cond_6
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v0, :cond_7

    .line 198
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v2, :cond_8

    aget v4, v0, v3

    .line 202
    .local v4, "element":I
    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 201
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 205
    .end local v0    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_8
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 207
    .local v4, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 206
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 210
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_9
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-eqz v0, :cond_a

    .line 211
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 213
    :cond_a
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 214
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 216
    :cond_b
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 218
    return-void
.end method
