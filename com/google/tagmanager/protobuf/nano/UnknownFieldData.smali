.class public final Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
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
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 55
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;

    .line 56
    .local v1, "other":Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v1, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 61
    const/16 v0, 0x11

    .line 62
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v1, v2

    .line 63
    .end local v0    # "result":I
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 64
    mul-int/lit8 v3, v1, 0x1f

    aget-byte v2, v2, v0

    add-int v1, v3, v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    return v1
.end method
