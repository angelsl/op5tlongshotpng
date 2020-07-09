.class public Lcom/oneplus/support/collection/SafeIterableMap;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/collection/SafeIterableMap$Entry;,
        Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;,
        Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;,
        Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator;,
        Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;,
        Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mIterators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/support/collection/SafeIterableMap;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/support/collection/SafeIterableMap;

    .line 36
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator;

    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator;-><init>(Lcom/oneplus/support/collection/SafeIterableMap$Entry;Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V

    .line 151
    .local v0, "iterator":Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$DescendingIterator<TK;TV;>;"
    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 181
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 182
    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lcom/oneplus/support/collection/SafeIterableMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 185
    return v2

    .line 187
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/oneplus/support/collection/SafeIterableMap;

    .line 188
    .local v1, "map":Lcom/oneplus/support/collection/SafeIterableMap;
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 189
    return v2

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 192
    .local v3, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 193
    .local v4, "iterator2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 195
    .local v5, "next1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 196
    .local v6, "next2":Ljava/lang/Object;
    if-nez v5, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    .line 197
    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 198
    :cond_4
    return v2

    .line 200
    .end local v5    # "next1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "next2":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 201
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    return v0
.end method

.method protected get(Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 47
    .local v0, "currentNode":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    iget-object v1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 206
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 207
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 211
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;

    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/support/collection/SafeIterableMap$AscendingIterator;-><init>(Lcom/oneplus/support/collection/SafeIterableMap$Entry;Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V

    .line 141
    .local v0, "iterator":Lcom/oneplus/support/collection/SafeIterableMap$ListIterator;, "Lcom/oneplus/support/collection/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v0
.end method

.method public iteratorWithAdditions()Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/support/collection/SafeIterableMap<",
            "TK;TV;>.IteratorWithAdditions;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;-><init>(Lcom/oneplus/support/collection/SafeIterableMap;Lcom/oneplus/support/collection/SafeIterableMap$1;)V

    .line 161
    .local v0, "iterator":Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object v0
.end method

.method public newest()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    return-object v0
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/oneplus/support/collection/SafeIterableMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/support/collection/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .local v0, "newEntry":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    iget v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    .line 77
    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-nez v1, :cond_0

    .line 78
    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 79
    iget-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v1, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 80
    return-object v0

    .line 83
    :cond_0
    iput-object v0, v1, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 84
    iput-object v1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 85
    iput-object v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 86
    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/SafeIterableMap;->get(Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    .line 67
    .local v0, "entry":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/collection/SafeIterableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 71
    const/4 v1, 0x0

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/SafeIterableMap;->get(Ljava/lang/Object;)Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    move-result-object v0

    .line 99
    .local v0, "toRemove":Lcom/oneplus/support/collection/SafeIterableMap$Entry;, "Lcom/oneplus/support/collection/SafeIterableMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    return-object v1

    .line 102
    :cond_0
    iget v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    .line 103
    iget-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;

    .line 105
    .local v3, "iter":Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;, "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<TK;TV;>;"
    invoke-interface {v3, v0}, Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;->supportRemove(Lcom/oneplus/support/collection/SafeIterableMap$Entry;)V

    .line 106
    .end local v3    # "iter":Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove;, "Lcom/oneplus/support/collection/SafeIterableMap$SupportRemove<TK;TV;>;"
    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v3, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v3, v2, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_1

    .line 112
    :cond_2
    iget-object v2, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mStart:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 115
    :goto_1
    iget-object v2, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iget-object v3, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v3, v2, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    goto :goto_2

    .line 118
    :cond_3
    iget-object v2, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    iput-object v2, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mEnd:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 121
    :goto_2
    iput-object v1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mNext:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 122
    iput-object v1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mPrevious:Lcom/oneplus/support/collection/SafeIterableMap$Entry;

    .line 123
    iget-object v1, v0, Lcom/oneplus/support/collection/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 130
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    iget v0, p0, Lcom/oneplus/support/collection/SafeIterableMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    .local p0, "this":Lcom/oneplus/support/collection/SafeIterableMap;, "Lcom/oneplus/support/collection/SafeIterableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
