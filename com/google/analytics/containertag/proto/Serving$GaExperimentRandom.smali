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

    .line 1919
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1920
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    .line 1926
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 1929
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 1932
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    .line 1935
    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

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

    .line 1938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    .line 1939
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 1940
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 1941
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    .line 1942
    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

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
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1950
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1951
    :cond_4
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1952
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 1953
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v3, :cond_16

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v3, :cond_52

    goto :goto_20

    :cond_16
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    :goto_20
    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_52

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_52

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-ne v3, v4, :cond_52

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_52

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_47

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_52

    goto :goto_51

    :cond_47
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    :goto_51
    goto :goto_53

    :cond_52
    move v0, v2

    :goto_53
    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .line 1995
    const/4 v0, 0x0

    .line 1996
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1997
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2000
    :cond_13
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    .line 2001
    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    invoke-static {v1, v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2004
    :cond_23
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v1, v5

    if-eqz v1, :cond_34

    .line 2005
    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    invoke-static {v1, v5, v6}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2008
    :cond_34
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v1, :cond_40

    .line 2009
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2012
    :cond_40
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4e

    .line 2013
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-static {v1, v2, v3}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2016
    :cond_4e
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2017
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->cachedSize:I

    .line 2018
    return v0
.end method

.method public hashCode()I
    .registers 10

    .line 1962
    const/16 v0, 0x11

    .line 1963
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_d

    move v3, v4

    goto :goto_13

    :cond_d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v2, v3

    .line 1964
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const/16 v3, 0x20

    ushr-long/2addr v7, v3

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v0, v5

    .line 1965
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-wide v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    ushr-long/2addr v7, v3

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v2, v5

    .line 1966
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-boolean v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v5, :cond_32

    const/4 v5, 0x1

    goto :goto_33

    :cond_32
    const/4 v5, 0x2

    :goto_33
    add-int/2addr v0, v5

    .line 1967
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-wide v5, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    iget-wide v7, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    ushr-long/2addr v7, v3

    xor-long/2addr v5, v7

    long-to-int v3, v5

    add-int/2addr v2, v3

    .line 1968
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_44

    goto :goto_4a

    :cond_44
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_4a
    add-int/2addr v1, v4

    .line 1969
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .registers 5
    .param p1, "input"    # Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2026
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2027
    .local v0, "tag":I
    if-eqz v0, :cond_52

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_43

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_35

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2e

    .line 2031
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_25

    .line 2032
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    .line 2035
    :cond_25
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2037
    return-object p0

    .line 2058
    :cond_2e
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    .end local v0    # "tag":I
    goto :goto_51

    .line 2054
    .restart local v0    # "tag":I
    :cond_35
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    .line 2055
    goto :goto_51

    .line 2050
    :cond_3c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 2051
    goto :goto_51

    .line 2046
    :cond_43
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 2047
    goto :goto_51

    .line 2042
    :cond_4a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    .line 2043
    nop

    .line 2062
    .end local v0    # "tag":I
    :cond_51
    :goto_51
    goto :goto_0

    .line 2029
    .restart local v0    # "tag":I
    :cond_52
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

    .line 1974
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1975
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1977
    :cond_10
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 1978
    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1980
    :cond_1e
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2d

    .line 1981
    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1983
    :cond_2d
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v0, :cond_37

    .line 1984
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1986
    :cond_37
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_43

    .line 1987
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1989
    :cond_43
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1991
    return-void
.end method
