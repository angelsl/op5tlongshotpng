.class public abstract Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 4
    .param p1, "position"    # I

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "lo":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 777
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 778
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 779
    .local v2, "mid":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 780
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 781
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 783
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 785
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_1
    goto :goto_0

    .line 786
    :cond_1
    add-int/lit8 v2, v0, -0x1

    .line 787
    .local v2, "index":I
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 788
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3

    .line 790
    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method getCachedSpanIndex(II)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 707
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_0

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 711
    .local v0, "existing":I
    if-eq v0, v1, :cond_1

    .line 712
    return v0

    .line 714
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 715
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    return v1
.end method

.method public getSpanGroupIndex(II)I
    .locals 5
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "span":I
    const/4 v1, 0x0

    .line 806
    .local v1, "group":I
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 807
    .local v2, "positionSpanSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_2

    .line 808
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 809
    .local v4, "size":I
    add-int/2addr v0, v4

    .line 810
    if-ne v0, p2, :cond_0

    .line 811
    const/4 v0, 0x0

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 813
    :cond_0
    if-le v0, p2, :cond_1

    .line 815
    move v0, v4

    .line 816
    add-int/lit8 v1, v1, 0x1

    .line 807
    .end local v4    # "size":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    .end local v3    # "i":I
    :cond_2
    add-int v3, v0, v2

    if-le v3, p2, :cond_3

    .line 820
    add-int/lit8 v1, v1, 0x1

    .line 822
    :cond_3
    return v1
.end method

.method public getSpanIndex(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 743
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 744
    .local v0, "positionSpanSize":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 745
    return v1

    .line 747
    :cond_0
    const/4 v2, 0x0

    .line 748
    .local v2, "span":I
    const/4 v3, 0x0

    .line 750
    .local v3, "startPos":I
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 751
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v4

    .line 752
    .local v4, "prevKey":I
    if-ltz v4, :cond_1

    .line 753
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int v2, v5, v6

    .line 754
    add-int/lit8 v3, v4, 0x1

    .line 757
    .end local v4    # "prevKey":I
    :cond_1
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_4

    .line 758
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 759
    .local v5, "size":I
    add-int/2addr v2, v5

    .line 760
    if-ne v2, p2, :cond_2

    .line 761
    const/4 v2, 0x0

    goto :goto_1

    .line 762
    :cond_2
    if-le v2, p2, :cond_3

    .line 764
    move v2, v5

    .line 757
    .end local v5    # "size":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 767
    .end local v4    # "i":I
    :cond_4
    add-int v4, v2, v0

    if-gt v4, p2, :cond_5

    .line 768
    return v2

    .line 770
    :cond_5
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 695
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0
    .param p1, "cacheSpanIndices"    # Z

    .line 686
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 687
    return-void
.end method
