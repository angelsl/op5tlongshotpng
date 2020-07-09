.class Lcom/google/tagmanager/Base16;
.super Ljava/lang/Object;
.source "Base16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 35
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    .line 38
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 39
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 41
    .local v3, "c1":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 42
    .local v4, "c2":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    if-eq v4, v5, :cond_0

    .line 45
    div-int/lit8 v5, v2, 0x2

    shl-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 39
    .end local v3    # "c1":I
    .end local v4    # "c2":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 43
    .restart local v3    # "c1":I
    .restart local v4    # "c2":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "purported base16 string has illegal char"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    .end local v2    # "i":I
    .end local v3    # "c1":I
    .end local v4    # "c2":I
    :cond_1
    return-object v1

    .line 36
    .end local v1    # "result":[B
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "purported base16 string has odd number of characters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 17
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xf0

    if-nez v5, :cond_0

    .line 18
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_0
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "arr$":[B
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
