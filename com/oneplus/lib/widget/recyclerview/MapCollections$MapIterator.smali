.class final Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    .line 76
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    .line 77
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEnd:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    .line 79
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 133
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_2

    .line 137
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 140
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v4, v5, v3}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    .line 141
    :goto_0
    return v1

    .line 134
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 83
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEnd:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 147
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 154
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v2, v3

    .line 153
    return v2

    .line 148
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 71
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    .line 89
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    .line 90
    return-object p0
.end method

.method public remove()V
    .locals 2

    .line 95
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colRemoveAt(I)V

    .line 99
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    .line 100
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEnd:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    .line 102
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 159
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;, "Lcom/oneplus/lib/widget/recyclerview/MapCollections<TK;TV;>.MapIterator;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
