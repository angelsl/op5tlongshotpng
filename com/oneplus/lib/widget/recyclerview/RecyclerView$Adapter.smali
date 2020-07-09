.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5224
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5225
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    .line 5226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 5328
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    .line 5329
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5330
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemId:J

    .line 5332
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5335
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5336
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 5337
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearPayload()V

    .line 5338
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5339
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 5313
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5314
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5315
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mItemViewType:I

    .line 5316
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5317
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 5382
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 5354
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .line 5492
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 5400
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 5579
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 5580
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .line 5595
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5596
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 5623
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 5624
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .line 5688
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5689
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 5703
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 5704
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5641
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5642
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 5671
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 5672
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5722
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5723
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5756
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5757
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .line 5739
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5740
    return-void
.end method

.method public onAttachedToRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 5538
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5303
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    .line 5304
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 5547
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 5458
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 5472
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 5484
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 5421
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;

    .line 5512
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 5513
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .line 5366
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5370
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mHasStableIds:Z

    .line 5371
    return-void

    .line 5367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;

    .line 5526
    .local p0, "this":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;, "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->mObservable:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 5527
    return-void
.end method
