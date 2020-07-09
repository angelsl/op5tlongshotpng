.class abstract Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;,
        Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;,
        Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;,
        Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;,
        Lcom/oneplus/lib/widget/recyclerview/MapCollections$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/MapCollections<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/MapCollections<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/MapCollections<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 455
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 456
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    const/4 v1, 0x0

    return v1

    .line 461
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 511
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 512
    return v0

    .line 514
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 515
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 518
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 519
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 520
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 525
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_2
    return v2
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 465
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 466
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 474
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 475
    .local v0, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 481
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mEntrySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mEntrySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mEntrySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$EntrySet;

    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mKeySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mKeySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mKeySet:Lcom/oneplus/lib/widget/recyclerview/MapCollections$KeySet;

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mValues:Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mValues:Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->mValues:Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;

    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "offset"    # I

    .line 486
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    .line 487
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 488
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 489
    invoke-virtual {p0, v2, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    .line 496
    .local v0, "N":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 497
    nop

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 499
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v1

    .line 501
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 502
    invoke-virtual {p0, v1, p2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "i":I
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    .line 505
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 507
    :cond_2
    return-object p1
.end method
