.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field final mDisappearingViewsInLayoutPass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInPreLayout:Z

.field mItemCount:I

.field mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9448
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    .line 9449
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9451
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9454
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 9464
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 9469
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 9475
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 9477
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    .line 9479
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    .line 9481
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 9483
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method static synthetic access$1202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # I

    .line 9446
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p1
.end method

.method static synthetic access$1212(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # I

    .line 9446
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 9446
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # Z

    .line 9446
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 9446
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # Z

    .line 9446
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 9446
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # Z

    .line 9446
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 9446
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # Z

    .line 9446
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # I

    .line 9446
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    return p1
.end method

.method static synthetic access$4802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "x1"    # I

    .line 9446
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method private removeFrom(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 9636
    .local p1, "holderMap":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Ljava/lang/Long;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9637
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 9638
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9639
    return-void

    .line 9636
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9642
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method addToDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 9649
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9650
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9652
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .line 9588
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 9542
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9543
    const/4 v0, 0x0

    return-object v0

    .line 9545
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 9616
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    .line 9617
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 9618
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 9616
    :goto_0
    return v0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .line 9571
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .line 9580
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreLayout()Z
    .locals 1

    .line 9496
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public onViewIgnored(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 9632
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 9633
    return-void
.end method

.method onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 9622
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9623
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9624
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v0, :cond_0

    .line 9625
    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->removeFrom(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 9627
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9629
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 9557
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9558
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 9560
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9561
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 9527
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9528
    return-void

    .line 9530
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9531
    return-void
.end method

.method removeFromDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 9645
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9646
    return-void
.end method

.method reset()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .locals 1

    .line 9486
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    .line 9487
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 9488
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9490
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 9491
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    .line 9492
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .line 9507
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .line 9518
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
