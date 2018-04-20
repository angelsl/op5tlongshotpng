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
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sput-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 54
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 57
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    .line 69
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 72
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 75
    const-string/jumbo v0, ""

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
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 87
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 88
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    .line 92
    iput-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    .line 93
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 94
    const-string/jumbo v0, ""

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
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-eq p1, p0, :cond_13

    .line 105
    instance-of v3, p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_14

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 107
    .local v0, "other":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iget v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    if-eq v3, v4, :cond_15

    :cond_11
    :goto_11
    move v1, v2

    :cond_12
    return v1

    .line 104
    .end local v0    # "other":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_13
    return v1

    .line 105
    :cond_14
    return v2

    .line 107
    .restart local v0    # "other":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_15
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-eqz v3, :cond_a3

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_23
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_4f
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_5d
    iget-wide v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iget-wide v6, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_11

    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    iget-boolean v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_83
    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    iget-boolean v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_bb

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_11

    :cond_a3
    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-eqz v3, :cond_23

    goto/16 :goto_11

    :cond_a9
    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-eqz v3, :cond_4f

    goto/16 :goto_11

    :cond_af
    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-eqz v3, :cond_5d

    goto/16 :goto_11

    :cond_b5
    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-eqz v3, :cond_83

    goto/16 :goto_11

    :cond_bb
    iget-object v3, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_12

    goto/16 :goto_11
.end method

.method public getSerializedSize()I
    .registers 13

    .prologue
    const/4 v9, 0x1

    .line 222
    const/4 v7, 0x0

    .line 223
    .local v7, "size":I
    iget v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-static {v9, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/lit8 v7, v8, 0x0

    .line 225
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 229
    :goto_15
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v8, :cond_76

    .line 235
    :cond_19
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v8, :cond_87

    .line 241
    :cond_1d
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v8, :cond_98

    .line 247
    :cond_21
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 251
    :goto_2c
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 255
    :goto_37
    iget-wide v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_48

    .line 256
    iget-wide v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const/16 v10, 0x8

    invoke-static {v10, v8, v9}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v8

    add-int/2addr v7, v8

    .line 259
    :cond_48
    iget-boolean v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v8, :cond_bd

    .line 263
    :goto_4c
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-nez v8, :cond_c7

    .line 272
    :cond_50
    :goto_50
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v8, :cond_e6

    .line 278
    :cond_54
    iget-boolean v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-nez v8, :cond_f8

    .line 282
    :goto_58
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_103

    .line 286
    :goto_63
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v8}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 287
    iput v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->cachedSize:I

    .line 288
    return v7

    .line 226
    :cond_6d
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v9, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_15

    .line 230
    :cond_76
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_7a
    if-ge v5, v6, :cond_19

    aget-object v4, v1, v5

    .line 231
    .local v4, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v8, 0x3

    invoke-static {v8, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 236
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_87
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_8b
    if-ge v5, v6, :cond_1d

    aget-object v4, v1, v5

    .line 237
    .restart local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v8, 0x4

    invoke-static {v8, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 242
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_98
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_9c
    if-ge v5, v6, :cond_21

    aget-object v4, v1, v5

    .line 243
    .restart local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v8, 0x5

    invoke-static {v8, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    .line 248
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_a9
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const/4 v9, 0x6

    invoke-static {v9, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    goto/16 :goto_2c

    .line 252
    :cond_b3
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const/4 v9, 0x7

    invoke-static {v9, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    goto/16 :goto_37

    .line 260
    :cond_bd
    iget-boolean v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    const/16 v9, 0x9

    invoke-static {v9, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_4c

    .line 263
    :cond_c7
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v8, v8

    if-lez v8, :cond_50

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "dataSize":I
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .local v0, "arr$":[I
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_d1
    if-lt v5, v6, :cond_dc

    .line 269
    add-int/2addr v7, v2

    .line 270
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    goto/16 :goto_50

    .line 265
    :cond_dc
    aget v3, v0, v5

    .line 266
    .local v3, "element":I
    invoke-static {v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v2, v8

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_d1

    .line 273
    .end local v0    # "arr$":[I
    .end local v2    # "dataSize":I
    .end local v3    # "element":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_e6
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_ea
    if-ge v5, v6, :cond_54

    aget-object v4, v1, v5

    .line 274
    .restart local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/16 v8, 0xb

    invoke-static {v8, v4}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/tagmanager/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_ea

    .line 279
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_f8
    iget-boolean v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    const/16 v9, 0xc

    invoke-static {v9, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v7, v8

    goto/16 :goto_58

    .line 283
    :cond_103
    iget-object v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const/16 v9, 0xd

    invoke-static {v9, v8}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    goto/16 :goto_63
.end method

.method public hashCode()I
    .registers 12

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 124
    const/16 v1, 0x11

    .line 125
    .local v1, "result":I
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    add-int/lit16 v1, v2, 0x20f

    .line 126
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    add-int v1, v6, v2

    .line 127
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_a3

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_a7

    .line 133
    .end local v0    # "i":I
    :goto_21
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_bf

    .line 135
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_c3

    .line 139
    .end local v0    # "i":I
    :goto_2b
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_db

    .line 141
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_30
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_df

    .line 145
    .end local v0    # "i":I
    :goto_35
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    if-eqz v2, :cond_f7

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_41
    add-int v1, v6, v2

    .line 146
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    if-eqz v2, :cond_fa

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4f
    add-int v1, v6, v2

    .line 147
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    iget-wide v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 148
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-nez v2, :cond_fd

    move v2, v4

    :goto_65
    add-int v1, v6, v2

    .line 149
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_100

    .line 151
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6c
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    if-lt v0, v2, :cond_104

    .line 155
    .end local v0    # "i":I
    :goto_71
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    if-eqz v2, :cond_11c

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7d
    add-int v1, v6, v2

    .line 156
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-eqz v2, :cond_11f

    .line 158
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_84
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v2, v2

    if-lt v0, v2, :cond_123

    .line 162
    .end local v0    # "i":I
    :goto_89
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v6, :cond_12f

    :goto_8f
    add-int v1, v2, v4

    .line 163
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-eqz v4, :cond_9d

    iget-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_9d
    add-int v1, v2, v3

    .line 164
    return v1

    :cond_a0
    move v2, v3

    .line 126
    goto/16 :goto_15

    .line 127
    :cond_a3
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_21

    .line 130
    .restart local v0    # "i":I
    :cond_a7
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_bd

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_b7
    add-int v1, v6, v2

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1c

    :cond_bd
    move v2, v3

    .line 130
    goto :goto_b7

    .line 133
    .end local v0    # "i":I
    :cond_bf
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_2b

    .line 136
    .restart local v0    # "i":I
    :cond_c3
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_d3
    add-int v1, v6, v2

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    :cond_d9
    move v2, v3

    .line 136
    goto :goto_d3

    .line 139
    .end local v0    # "i":I
    :cond_db
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_35

    .line 142
    .restart local v0    # "i":I
    :cond_df
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_f5

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_ef
    add-int v1, v6, v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30

    :cond_f5
    move v2, v3

    .line 142
    goto :goto_ef

    .end local v0    # "i":I
    :cond_f7
    move v2, v3

    .line 145
    goto/16 :goto_41

    :cond_fa
    move v2, v3

    .line 146
    goto/16 :goto_4f

    :cond_fd
    move v2, v5

    .line 148
    goto/16 :goto_65

    .line 149
    :cond_100
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_71

    .line 152
    .restart local v0    # "i":I
    :cond_104
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-eqz v2, :cond_11a

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    :goto_114
    add-int v1, v6, v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6c

    :cond_11a
    move v2, v3

    .line 152
    goto :goto_114

    .end local v0    # "i":I
    :cond_11c
    move v2, v3

    .line 155
    goto/16 :goto_7d

    .line 156
    :cond_11f
    mul-int/lit8 v1, v1, 0x1f

    goto/16 :goto_89

    .line 159
    .restart local v0    # "i":I
    :cond_123
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    aget v6, v6, v0

    add-int v1, v2, v6

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_84

    .end local v0    # "i":I
    :cond_12f
    move v4, v5

    .line 162
    goto/16 :goto_8f
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .registers 13
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 296
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 297
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_1e6

    .line 301
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    if-eqz v7, :cond_17

    .line 305
    :goto_d
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v7, p1, v4}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 307
    return-object p0

    .line 299
    :sswitch_16
    return-object p0

    .line 302
    :cond_17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    goto :goto_d

    .line 312
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 313
    .local v5, "temp":I
    if-ne v5, v10, :cond_28

    .line 322
    :cond_25
    iput v5, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    goto :goto_2

    .line 313
    :cond_28
    const/4 v7, 0x2

    if-eq v5, v7, :cond_25

    const/4 v7, 0x3

    if-eq v5, v7, :cond_25

    const/4 v7, 0x4

    if-eq v5, v7, :cond_25

    const/4 v7, 0x5

    if-eq v5, v7, :cond_25

    const/4 v7, 0x6

    if-eq v5, v7, :cond_25

    const/4 v7, 0x7

    if-eq v5, v7, :cond_25

    const/16 v7, 0x8

    if-eq v5, v7, :cond_25

    const/16 v7, 0x9

    if-eq v5, v7, :cond_25

    .line 324
    iput v10, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    goto :goto_2

    .line 329
    .end local v5    # "temp":I
    :sswitch_45
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto :goto_2

    .line 333
    :sswitch_4c
    const/16 v7, 0x1a

    invoke-static {p1, v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 334
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v7, :cond_7b

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v7

    .line 335
    .local v1, "i":I
    :goto_59
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 336
    .local v3, "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v7, :cond_7d

    .line 339
    :goto_61
    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 340
    :goto_63
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_83

    .line 346
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 347
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto :goto_2

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_7b
    move v1, v6

    .line 334
    goto :goto_59

    .line 337
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_7d
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_61

    .line 341
    :cond_83
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 342
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 343
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 351
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_99
    const/16 v7, 0x22

    invoke-static {p1, v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 352
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v7, :cond_c9

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v7

    .line 353
    .restart local v1    # "i":I
    :goto_a6
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 354
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v7, :cond_cb

    .line 357
    :goto_ae
    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 358
    :goto_b0
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_d1

    .line 364
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 365
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_2

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_c9
    move v1, v6

    .line 352
    goto :goto_a6

    .line 355
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_cb
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ae

    .line 359
    :cond_d1
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 360
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 361
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    .line 369
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_e7
    const/16 v7, 0x2a

    invoke-static {p1, v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 370
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v7, :cond_117

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v7

    .line 371
    .restart local v1    # "i":I
    :goto_f4
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 372
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v7, :cond_119

    .line 375
    :goto_fc
    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 376
    :goto_fe
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_11f

    .line 382
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 383
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_2

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_117
    move v1, v6

    .line 370
    goto :goto_f4

    .line 373
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_119
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_fc

    .line 377
    :cond_11f
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 378
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 379
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_fe

    .line 387
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_135
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    goto/16 :goto_2

    .line 391
    :sswitch_13d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    goto/16 :goto_2

    .line 395
    :sswitch_145
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    goto/16 :goto_2

    .line 399
    :sswitch_14d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    goto/16 :goto_2

    .line 403
    :sswitch_155
    const/16 v7, 0x50

    invoke-static {p1, v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 404
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v1, v7

    .line 405
    .restart local v1    # "i":I
    add-int v7, v1, v0

    new-array v2, v7, [I

    .line 406
    .local v2, "newArray":[I
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-static {v7, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 408
    :goto_169
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_17a

    .line 413
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v7, v1

    goto/16 :goto_2

    .line 409
    :cond_17a
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v7, v1

    .line 410
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_169

    .line 417
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[I
    :sswitch_188
    const/16 v7, 0x5a

    invoke-static {p1, v7}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 418
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v7, :cond_1b8

    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v1, v7

    .line 419
    .restart local v1    # "i":I
    :goto_195
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 420
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v7, :cond_1ba

    .line 423
    :goto_19d
    iput-object v3, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 424
    :goto_19f
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_1c0

    .line 430
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 431
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    goto/16 :goto_2

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_1b8
    move v1, v6

    .line 418
    goto :goto_195

    .line 421
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_1ba
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19d

    .line 425
    :cond_1c0
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v8}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v8, v7, v1

    .line 426
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 427
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_19f

    .line 435
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :sswitch_1d6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    goto/16 :goto_2

    .line 439
    :sswitch_1de
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    goto/16 :goto_2

    .line 297
    :sswitch_data_1e6
    .sparse-switch
        0x0 -> :sswitch_16
        0x8 -> :sswitch_1f
        0x12 -> :sswitch_45
        0x1a -> :sswitch_4c
        0x22 -> :sswitch_99
        0x2a -> :sswitch_e7
        0x32 -> :sswitch_135
        0x3a -> :sswitch_13d
        0x40 -> :sswitch_145
        0x48 -> :sswitch_14d
        0x50 -> :sswitch_155
        0x5a -> :sswitch_188
        0x60 -> :sswitch_1d6
        0x6a -> :sswitch_1de
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 12
    .param p1, "output"    # Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v7, 0x1

    invoke-virtual {p1, v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 170
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 173
    :goto_11
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_6a

    .line 178
    :cond_15
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_79

    .line 183
    :cond_19
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_88

    .line 188
    :cond_1d
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 191
    :goto_28
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 194
    :goto_33
    iget-wide v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_42

    .line 195
    iget-wide v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    const/16 v8, 0x8

    invoke-virtual {p1, v8, v6, v7}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 197
    :cond_42
    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v6, :cond_a5

    .line 200
    :goto_46
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    if-nez v6, :cond_ad

    .line 205
    :cond_4a
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v6, :cond_c2

    .line 210
    :cond_4e
    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    if-nez v6, :cond_d2

    .line 213
    :goto_52
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 216
    :goto_5d
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->unknownFieldData:Ljava/util/List;

    invoke-static {v6, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 218
    return-void

    .line 171
    :cond_63
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {p1, v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_11

    .line 174
    :cond_6a
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v1, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_6e
    if-ge v4, v5, :cond_15

    aget-object v3, v1, v4

    .line 175
    .local v3, "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x3

    invoke-virtual {p1, v6, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 179
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_79
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_7d
    if-ge v4, v5, :cond_19

    aget-object v3, v1, v4

    .line 180
    .restart local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x4

    invoke-virtual {p1, v6, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 184
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_88
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_8c
    if-ge v4, v5, :cond_1d

    aget-object v3, v1, v4

    .line 185
    .restart local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v6, 0x5

    invoke-virtual {p1, v6, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 189
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_97
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {p1, v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_28

    .line 192
    :cond_9e
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-virtual {p1, v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_33

    .line 198
    :cond_a5
    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    const/16 v7, 0x9

    invoke-virtual {p1, v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto :goto_46

    .line 200
    :cond_ad
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    array-length v6, v6

    if-lez v6, :cond_4a

    .line 201
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_b6
    if-ge v4, v5, :cond_4a

    aget v2, v0, v4

    .line 202
    .local v2, "element":I
    const/16 v6, 0xa

    invoke-virtual {p1, v6, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    .line 206
    .end local v0    # "arr$":[I
    .end local v2    # "element":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_c2
    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_c6
    if-ge v4, v5, :cond_4e

    aget-object v3, v1, v4

    .line 207
    .restart local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/16 v6, 0xb

    invoke-virtual {p1, v6, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/tagmanager/protobuf/nano/MessageNano;)V

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 211
    .end local v1    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v3    # "element":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_d2
    iget-boolean v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    const/16 v7, 0xc

    invoke-virtual {p1, v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto/16 :goto_52

    .line 214
    :cond_db
    iget-object v6, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->tagReference:Ljava/lang/String;

    const/16 v7, 0xd

    invoke-virtual {p1, v7, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_5d
.end method
