.class public Lcom/oneplus/lib/widget/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/IntArray;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    sget-object v0, Lcom/oneplus/lib/widget/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    .line 34
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 35
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    .line 97
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 98
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 99
    .local v1, "minCapacity":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 100
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 101
    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    .line 102
    .local v2, "targetCap":I
    if-le v2, v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 103
    .local v3, "newCapacity":I
    :goto_1
    invoke-static {v3}, Lcom/oneplus/lib/widget/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 104
    .local v4, "newValues":[I
    iget-object v5, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v4, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    .line 107
    .end local v2    # "targetCap":I
    .end local v3    # "newCapacity":I
    .end local v4    # "newValues":[I
    :cond_2
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    .line 41
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/IntArray;->add(II)V

    .line 42
    return-void
.end method

.method public add(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 50
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    if-gt p1, v0, :cond_1

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/IntArray;->ensureCapacity(I)V

    .line 56
    iget v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    sub-int v2, v1, p1

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {v2, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    aput p2, v1, p1

    .line 61
    iget v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 62
    return-void

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public addAll(Lcom/oneplus/lib/widget/IntArray;)V
    .locals 5
    .param p1, "values"    # Lcom/oneplus/lib/widget/IntArray;

    .line 86
    iget v0, p1, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 87
    .local v0, "count":I
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/IntArray;->ensureCapacity(I)V

    .line 89
    iget-object v1, p1, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    iget v3, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 91
    return-void
.end method

.method public binarySearch(I)I
    .locals 2
    .param p1, "value"    # I

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    iget v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/oneplus/lib/widget/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 114
    return-void
.end method

.method public clone()Lcom/oneplus/lib/widget/IntArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 118
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/IntArray;

    .line 119
    .local v0, "clone":Lcom/oneplus/lib/widget/IntArray;
    iget-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    .line 120
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/IntArray;->clone()Lcom/oneplus/lib/widget/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .locals 3
    .param p1, "index"    # I

    .line 127
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    if-ge p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    aget v0, v0, p1

    return v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(I)I
    .locals 3
    .param p1, "value"    # I

    .line 138
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 139
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    iget-object v2, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 141
    return v1

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public remove(I)V
    .locals 3
    .param p1, "index"    # I

    .line 151
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    if-ge p1, v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    .line 156
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    return v0
.end method

.method public toArray()[I
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/widget/IntArray;->mValues:[I

    iget v1, p0, Lcom/oneplus/lib/widget/IntArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
