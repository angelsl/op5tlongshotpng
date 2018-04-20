.class Lcom/google/tagmanager/Base16;
.super Ljava/lang/Object;
.source "Base16.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x1

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 35
    .local v3, "len":I
    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_13

    .line 38
    div-int/lit8 v5, v3, 0x2

    new-array v4, v5, [B

    .line 39
    .local v4, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-lt v2, v3, :cond_1c

    .line 47
    return-object v4

    .line 36
    .end local v2    # "i":I
    .end local v4    # "result":[B
    :cond_13
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "purported base16 string has odd number of characters"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    .restart local v2    # "i":I
    .restart local v4    # "result":[B
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 41
    .local v0, "c1":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 42
    .local v1, "c2":I
    if-ne v0, v7, :cond_39

    .line 43
    :cond_30
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "purported base16 string has illegal char"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_39
    if-eq v1, v7, :cond_30

    .line 45
    div-int/lit8 v5, v2, 0x2

    shl-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v1

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 39
    add-int/lit8 v2, v2, 0x2

    goto :goto_10
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, p0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-lt v2, v3, :cond_13

    .line 22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 15
    :cond_13
    aget-byte v1, p0, v2

    .line 17
    .local v1, "b":B
    and-int/lit16 v5, v1, 0xf0

    if-eqz v5, :cond_25

    .line 20
    :goto_19
    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 18
    :cond_25
    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method
