.class final Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;
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
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    .line 265
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 269
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 279
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colClear()V

    .line 280
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 284
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 339
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 344
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    .line 345
    .local v0, "result":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 346
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    .line 347
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 345
    .end local v2    # "obj":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 349
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 294
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ArrayIterator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ArrayIterator;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 304
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 305
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colRemoveAt(I)V

    .line 307
    const/4 v1, 0x1

    return v1

    .line 309
    :cond_0
    const/4 v1, 0x0

    return v1
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

    .line 314
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
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

    .line 319
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 324
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 329
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
