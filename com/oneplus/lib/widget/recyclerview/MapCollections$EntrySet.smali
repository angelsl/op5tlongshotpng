.class final Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    .line 163
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 163
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    .line 172
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public clear()V
    .locals 1

    .line 180
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colClear()V

    .line 181
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 185
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    return v1

    .line 187
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 189
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 190
    return v1

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    return v1

    .line 204
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 249
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 254
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 255
    .local v0, "result":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 256
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 257
    .local v3, "key":Ljava/lang/Object;
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v5, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    .line 258
    .local v5, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 259
    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    xor-int/2addr v4, v6

    add-int/2addr v0, v4

    .line 255
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 209
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 219
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 234
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 239
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
