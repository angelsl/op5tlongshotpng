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

    .line 52
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 53
    :cond_4
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 55
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 56
    .local v1, "other":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 61
    const/16 v0, 0x11

    .line 62
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v2, v3

    .line 63
    .end local v0    # "result":I
    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1a

    .line 64
    mul-int v3, v1, v2

    iget-object v4, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    aget-byte v4, v4, v0

    add-int v2, v3, v4

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 66
    .end local v0    # "i":I
    :cond_1a
    return v2
.end method
