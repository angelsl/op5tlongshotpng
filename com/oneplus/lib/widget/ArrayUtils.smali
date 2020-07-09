.class public Lcom/oneplus/lib/widget/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/oneplus/lib/widget/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 427
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    return-object p0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 245
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 3
    .param p3, "allowDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    .line 256
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 257
    if-nez p3, :cond_0

    invoke-static {p1, p2}, Lcom/oneplus/lib/widget/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 258
    :cond_0
    array-length v0, p1

    .line 259
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 260
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 262
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_1
    const/4 v0, 0x0

    .line 263
    .restart local v0    # "end":I
    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 265
    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_0
    aput-object p2, v1, v0

    .line 266
    return-object v1
.end method

.method public static appendInt([II)[I
    .locals 1
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 319
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/lib/widget/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static appendInt([IIZ)[I
    .locals 4
    .param p0, "cur"    # [I
    .param p1, "val"    # I
    .param p2, "allowDuplicates"    # Z

    .line 297
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 298
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v0

    return-object v1

    .line 300
    :cond_0
    array-length v1, p0

    .line 301
    .local v1, "N":I
    if-nez p2, :cond_2

    .line 302
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 303
    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    .line 304
    return-object p0

    .line 302
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    .line 309
    .local v2, "ret":[I
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    aput p1, v2, v1

    .line 311
    return-object v2
.end method

.method public static appendLong([JJ)[J
    .locals 5
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 373
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 374
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide p1, v1, v0

    return-object v1

    .line 376
    :cond_0
    array-length v1, p0

    .line 377
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 378
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 379
    return-object p0

    .line 377
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    .line 383
    .local v2, "ret":[J
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    aput-wide p1, v2, v1

    .line 385
    return-object v2
.end method

.method public static contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 447
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .line 199
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 200
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, p0, v2

    .line 201
    .local v3, "element":C
    if-ne v3, p1, :cond_1

    .line 202
    const/4 v0, 0x1

    return v0

    .line 200
    .end local v3    # "element":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_2
    return v0
.end method

.method public static contains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 179
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 180
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 181
    .local v3, "element":I
    if-ne v3, p1, :cond_1

    .line 182
    const/4 v0, 0x1

    return v0

    .line 180
    .end local v3    # "element":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_2
    return v0
.end method

.method public static contains([JJ)Z
    .locals 6
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 189
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 190
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p0, v2

    .line 191
    .local v3, "element":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    .line 192
    const/4 v0, 0x1

    return v0

    .line 190
    .end local v3    # "element":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_2
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 137
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static containsAll([C[C)Z
    .locals 6
    .param p0, "array"    # [C
    .param p1, "check"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    .line 212
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 213
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v4, p1, v3

    .line 214
    .local v4, "checkItem":C
    invoke-static {p0, v4}, Lcom/oneplus/lib/widget/ArrayUtils;->contains([CC)Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    return v2

    .line 213
    .end local v4    # "checkItem":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_2
    return v0
.end method

.method public static containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 156
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 157
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 158
    .local v4, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v4}, Lcom/oneplus/lib/widget/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    return v2

    .line 157
    .end local v4    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_2
    return v0
.end method

.method public static containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 169
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 170
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 171
    .local v3, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v3}, Lcom/oneplus/lib/widget/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    const/4 v0, 0x1

    return v0

    .line 170
    .end local v3    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    return v0
.end method

.method public static convertToIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 232
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 233
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 234
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 64
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 65
    sget-object v0, Lcom/oneplus/lib/widget/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x49

    .line 69
    .local v0, "bucket":I
    sget-object v1, Lcom/oneplus/lib/widget/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 71
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 72
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    sget-object v2, Lcom/oneplus/lib/widget/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 78
    :cond_2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    return-object v2
.end method

.method public static equals([B[BI)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .line 39
    if-ltz p2, :cond_5

    .line 43
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 44
    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, p0

    if-lt v2, p2, :cond_4

    array-length v2, p1

    if-ge v2, p2, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 50
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_2

    .line 51
    return v1

    .line 49
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    :cond_3
    return v0

    .line 47
    :cond_4
    :goto_1
    return v1

    .line 40
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 145
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 146
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 147
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 85
    .local p0, "array":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 113
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .line 99
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .line 106
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 92
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .line 120
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static newUnpaddedIntArray(I)[I
    .locals 1
    .param p0, "minLen"    # I

    .line 26
    new-array v0, p0, [I

    return-object v0
.end method

.method public static referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 465
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 466
    return v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 470
    .local v1, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 471
    .local v2, "sizeB":I
    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 472
    return v3

    .line 475
    :cond_1
    const/4 v4, 0x0

    .line 476
    .local v4, "diff":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_3

    if-nez v4, :cond_3

    .line 477
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    or-int/2addr v4, v6

    .line 476
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    .end local v5    # "i":I
    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    return v0
.end method

.method public static remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 415
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 416
    return-object v0

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    return-object v0

    .line 422
    :cond_1
    return-object p0
.end method

.method public static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 435
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 436
    return-object v0

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    return-object v0

    .line 442
    :cond_1
    return-object p0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 274
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .line 275
    invoke-static {p1, p2}, Lcom/oneplus/lib/widget/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 276
    :cond_0
    array-length v0, p1

    .line 277
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 278
    aget-object v2, p1, v1

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 280
    const/4 v2, 0x0

    return-object v2

    .line 282
    :cond_1
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 283
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    sub-int/2addr v5, v2

    invoke-static {p1, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    return-object v3

    .line 277
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_3
    return-object p1
.end method

.method public static removeInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 326
    if-nez p0, :cond_0

    .line 327
    const/4 v0, 0x0

    return-object v0

    .line 329
    :cond_0
    array-length v0, p0

    .line 330
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 331
    aget v2, p0, v1

    if-ne v2, p1, :cond_3

    .line 332
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [I

    .line 333
    .local v2, "ret":[I
    if-lez v1, :cond_1

    .line 334
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    .line 337
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_2
    return-object v2

    .line 330
    .end local v2    # "ret":[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_4
    return-object p0
.end method

.method public static removeLong([JJ)[J
    .locals 5
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 392
    if-nez p0, :cond_0

    .line 393
    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_0
    array-length v0, p0

    .line 396
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 397
    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_3

    .line 398
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [J

    .line 399
    .local v2, "ret":[J
    if-lez v1, :cond_1

    .line 400
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    .line 403
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    :cond_2
    return-object v2

    .line 396
    .end local v2    # "ret":[J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "i":I
    :cond_4
    return-object p0
.end method

.method public static removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "cur"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 349
    if-nez p0, :cond_0

    .line 350
    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_0
    array-length v0, p0

    .line 353
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 354
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 356
    .local v2, "ret":[Ljava/lang/String;
    if-lez v1, :cond_1

    .line 357
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    .line 360
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    :cond_2
    return-object v2

    .line 353
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    :cond_4
    return-object p0
.end method

.method public static size([Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 127
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method public static total([J)J
    .locals 6
    .param p0, "array"    # [J

    .line 222
    const-wide/16 v0, 0x0

    .line 223
    .local v0, "total":J
    if-eqz p0, :cond_0

    .line 224
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 225
    .local v4, "value":J
    add-long/2addr v0, v4

    .line 224
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-wide v0
.end method

.method public static trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 451
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    array-length v0, p0

    if-ne v0, p1, :cond_1

    .line 454
    return-object p0

    .line 456
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 452
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
