.class final Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;
.super Ljava/lang/Object;
.source "DirectedAcyclicGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap<",
            "TT;",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mListPool:Lcom/oneplus/lib/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/util/Pools$Pool<",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mSortResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mSortTmpMarked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 32
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/oneplus/lib/util/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/oneplus/lib/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mListPool:Lcom/oneplus/lib/util/Pools$Pool;

    .line 34
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    return-void
.end method

.method private dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/HashSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p3, "tmpMarked":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 168
    .local v0, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v0, :cond_1

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-void

    .line 162
    .end local v0    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This graph contains cyclic dependencies"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEmptyList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mListPool:Lcom/oneplus/lib/util/Pools$Pool;

    invoke-interface {v0}, Lcom/oneplus/lib/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 188
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v0, :cond_0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 191
    :cond_0
    return-object v0
.end method

.method private poolList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mListPool:Lcom/oneplus/lib/util/Pools$Pool;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method


# virtual methods
.method addEdge(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    .local p2, "incomingEdge":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 75
    .local v0, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->getEmptyList()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void

    .line 70
    .end local v0    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addNode(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-void
.end method

.method clear()V
    .locals 3

    .line 127
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 128
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 129
    .local v2, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v2, :cond_0

    .line 130
    invoke-direct {p0, v2}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->poolList(Ljava/util/ArrayList;)V

    .line 127
    .end local v2    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->clear()V

    .line 134
    return-void
.end method

.method contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 101
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 102
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 103
    .local v3, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    if-nez v0, :cond_0

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    return-object v0
.end method

.method getSortedList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mSortTmpMarked:Ljava/util/HashSet;

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mSortResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasOutgoingEdges(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    .local p1, "node":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 116
    .local v2, "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v3, 0x1

    return v3

    .line 114
    .end local v2    # "edges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method size()I
    .locals 1

    .line 183
    .local p0, "this":Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;, "Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph<TT;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/DirectedAcyclicGraph;->mGraph:Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->size()I

    move-result v0

    return v0
.end method
