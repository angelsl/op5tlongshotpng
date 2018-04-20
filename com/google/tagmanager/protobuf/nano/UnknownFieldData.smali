.class public final Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    .line 47
    iput-object p2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-eq p1, p0, :cond_13

    .line 53
    instance-of v3, p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    if-eqz v3, :cond_14

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 56
    .local v0, "other":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    if-eq v3, v4, :cond_15

    :goto_11
    move v1, v2

    :cond_12
    return v1

    .line 52
    .end local v0    # "other":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    :cond_13
    return v1

    .line 53
    :cond_14
    return v2

    .line 56
    .restart local v0    # "other":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    :cond_15
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_11
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 61
    const/16 v1, 0x11

    .line 62
    .local v1, "result":I
    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v1, v2, 0x20f

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_d

    .line 66
    return v1

    .line 64
    :cond_d
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
