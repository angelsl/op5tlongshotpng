.class public final Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaExperimentRandom"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;


# instance fields
.field public key:Ljava/lang/String;

.field public lifetimeInMilliseconds:J

.field public maxRandom:J

.field public minRandom:J

.field public retainOriginalValue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1919
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1920
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1923
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    .line 1926
    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 1929
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 1932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    .line 1935
    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    .line 1920
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .registers 2
    .param p0, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2073
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2067
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1938
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    .line 1939
    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 1940
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 1941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    .line 1942
    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    .line 1944
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->cachedSize:I

    .line 1945
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1950
    if-eq p1, p0, :cond_1b

    .line 1951
    instance-of v3, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    if-eqz v3, :cond_1c

    move-object v0, p1

    .line 1952
    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 1953
    .local v0, "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_19
    :goto_19
    move v1, v2

    :cond_1a
    return v1

    .line 1950
    .end local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_1b
    return v1

    .line 1951
    :cond_1c
    return v2

    .line 1953
    .restart local v0    # "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    :cond_1d
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v3, :cond_19

    :cond_21
    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v6, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_19

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-wide v6, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_19

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    iget-boolean v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-ne v3, v4, :cond_19

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    iget-wide v6, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_19

    :cond_4e
    iget-object v3, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_1a

    goto :goto_19
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 1995
    const/4 v0, 0x0

    .line 1996
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2000
    :goto_e
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1c

    .line 2001
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2004
    :cond_1c
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2d

    .line 2005
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const/4 v1, 0x3

    invoke-static {v1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2008
    :cond_2d
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-nez v1, :cond_53

    .line 2012
    :goto_31
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3f

    .line 2013
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    const/4 v1, 0x5

    invoke-static {v1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2016
    :cond_3f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2017
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->cachedSize:I

    .line 2018
    return v0

    .line 1997
    :cond_49
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    goto :goto_e

    .line 2009
    :cond_53
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_31
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 1962
    const/16 v0, 0x11

    .line 1963
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/lit16 v0, v1, 0x20f

    .line 1964
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 1965
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-wide v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 1966
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-nez v1, :cond_4c

    const/4 v1, 0x2

    :goto_2e
    add-int v0, v3, v1

    .line 1967
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    iget-wide v6, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 1968
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_47

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_47
    add-int v0, v1, v2

    .line 1969
    return v0

    :cond_4a
    move v1, v2

    .line 1963
    goto :goto_f

    .line 1966
    :cond_4c
    const/4 v1, 0x1

    goto :goto_2e
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .registers 6
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2026
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2027
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_40

    .line 2031
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_15

    .line 2035
    :goto_b
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2037
    return-object p0

    .line 2029
    :sswitch_14
    return-object p0

    .line 2032
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    goto :goto_b

    .line 2042
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    goto :goto_0

    .line 2046
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    goto :goto_0

    .line 2050
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    goto :goto_0

    .line 2054
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    goto :goto_0

    .line 2058
    :sswitch_39
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    goto :goto_0

    .line 2027
    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_14
        0xa -> :sswitch_1d
        0x10 -> :sswitch_24
        0x18 -> :sswitch_2b
        0x20 -> :sswitch_32
        0x28 -> :sswitch_39
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
    .line 1916
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

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
    const-wide/16 v4, 0x0

    .line 1974
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1977
    :goto_d
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_19

    .line 1978
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1980
    :cond_19
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 1981
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1983
    :cond_28
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-nez v0, :cond_45

    .line 1986
    :goto_2c
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_38

    .line 1987
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1989
    :cond_38
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1991
    return-void

    .line 1975
    :cond_3e
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto :goto_d

    .line 1984
    :cond_45
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto :goto_2c
.end method
