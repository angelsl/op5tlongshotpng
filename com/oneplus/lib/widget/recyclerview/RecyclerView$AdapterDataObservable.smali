.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9338
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .line 9340
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .line 9348
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9349
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 9348
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9351
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 9388
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9389
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 9388
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9391
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 9354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 9355
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 9362
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9363
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 9362
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9365
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 9372
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9373
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 9372
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9375
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 9382
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 9383
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 9382
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9385
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
