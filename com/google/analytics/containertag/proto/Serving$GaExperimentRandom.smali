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
    .locals 1

    .line 1919
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

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
    .locals 1
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
    .locals 1
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
    .locals 4

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
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1950
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1951
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1952
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .line 1953
    .local v1, "other":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    iget-boolean v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    iget-wide v5, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    iget-object v4, v1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

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
    .locals 7

    .line 1995
    const/4 v0, 0x0

    .line 1996
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1997
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2000
    :cond_0
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 2001
    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2004
    :cond_1
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v1, v5

    if-eqz v5, :cond_2

    .line 2005
    const/4 v5, 0x3

    invoke-static {v5, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2008
    :cond_2
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v1, :cond_3

    .line 2009
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2012
    :cond_3
    iget-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    .line 2013
    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2016
    :cond_4
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
    .locals 8

    .line 1962
    const/16 v0, 0x11

    .line 1963
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 1964
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 1965
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v1, v4

    .line 1966
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    add-int/2addr v0, v4

    .line 1967
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v1, v2

    .line 1968
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 1969
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .locals 3
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
    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 2031
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2032
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    .line 2035
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2037
    return-object p0

    .line 2058
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    goto :goto_1

    .line 2054
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    .line 2055
    goto :goto_1

    .line 2050
    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 2051
    goto :goto_1

    .line 2046
    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 2047
    goto :goto_1

    .line 2042
    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    .line 2043
    nop

    .line 2062
    .end local v0    # "tag":I
    :cond_6
    :goto_1
    goto :goto_0

    .line 2029
    .restart local v0    # "tag":I
    :cond_7
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

    .line 1916
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

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

    .line 1974
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1975
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1977
    :cond_0
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1978
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1980
    :cond_1
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 1981
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1983
    :cond_2
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    if-eqz v0, :cond_3

    .line 1984
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1986
    :cond_3
    iget-wide v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 1987
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1989
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1991
    return-void
.end method
