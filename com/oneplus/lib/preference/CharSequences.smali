.class public Lcom/oneplus/lib/preference/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "me"    # Ljava/lang/CharSequence;
    .param p1, "another"    # Ljava/lang/CharSequence;

    .line 119
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "myLen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 120
    .local v1, "anotherLen":I
    const/4 v2, 0x0

    .local v2, "myPos":I
    const/4 v3, 0x0

    .line 121
    .local v3, "anotherPos":I
    if-ge v0, v1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 123
    .local v4, "end":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 124
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "myPos":I
    .local v5, "myPos":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int/lit8 v6, v3, 0x1

    .line 125
    .end local v3    # "anotherPos":I
    .local v6, "anotherPos":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    sub-int/2addr v2, v3

    move v3, v2

    .local v3, "result":I
    if-eqz v2, :cond_1

    .line 126
    return v3

    .line 125
    :cond_1
    move v2, v5

    move v3, v6

    goto :goto_0

    .line 129
    .end local v5    # "myPos":I
    .end local v6    # "anotherPos":I
    .restart local v2    # "myPos":I
    .local v3, "anotherPos":I
    :cond_2
    sub-int v5, v0, v1

    return v5
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 97
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 98
    return v2

    .line 101
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 102
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 103
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 104
    return v2

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static forAsciiBytes([B)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "bytes"    # [B

    .line 31
    new-instance v0, Lcom/oneplus/lib/preference/CharSequences$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/CharSequences$1;-><init>([B)V

    return-object v0
.end method

.method public static forAsciiBytes([BII)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 63
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/oneplus/lib/preference/CharSequences;->validate(III)V

    .line 64
    new-instance v0, Lcom/oneplus/lib/preference/CharSequences$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/lib/preference/CharSequences$2;-><init>([BII)V

    return-object v0
.end method

.method static validate(III)V
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "length"    # I

    .line 87
    if-ltz p0, :cond_3

    .line 88
    if-ltz p1, :cond_2

    .line 89
    if-gt p1, p2, :cond_1

    .line 90
    if-gt p0, p1, :cond_0

    .line 91
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
