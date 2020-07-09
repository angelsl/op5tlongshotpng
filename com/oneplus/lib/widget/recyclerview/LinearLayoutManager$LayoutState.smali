.class Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LinearLayoutManager#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1925
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1932
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 6

    .line 1975
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1976
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1977
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1978
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 1979
    .local v3, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1980
    goto :goto_1

    .line 1982
    :cond_0
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1983
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1984
    return-object v2

    .line 1976
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1987
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    .line 1991
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    .line 1992
    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 2
    .param p1, "ignore"    # Landroid/view/View;

    .line 1995
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1996
    .local v0, "closest":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1997
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0

    .line 1999
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 2000
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2002
    :goto_0
    return-void
.end method

.method hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 2
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .line 1949
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method log()V
    .locals 2

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager#LayoutState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    return-void
.end method

.method next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .line 1959
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1960
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1962
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1963
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1964
    return-object v0
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "ignore"    # Landroid/view/View;

    .line 2005
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2006
    .local v0, "size":I
    const/4 v1, 0x0

    .line 2007
    .local v1, "closest":Landroid/view/View;
    const v2, 0x7fffffff

    .line 2011
    .local v2, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2012
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2013
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 2014
    .local v5, "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    if-eq v4, p1, :cond_2

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2015
    goto :goto_1

    .line 2017
    :cond_0
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v6, v7

    .line 2019
    .local v6, "distance":I
    if-gez v6, :cond_1

    .line 2020
    goto :goto_1

    .line 2022
    :cond_1
    if-ge v6, v2, :cond_2

    .line 2023
    move-object v1, v4

    .line 2024
    move v2, v6

    .line 2025
    if-nez v6, :cond_2

    .line 2026
    goto :goto_2

    .line 2011
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .end local v6    # "distance":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2030
    .end local v3    # "i":I
    :cond_3
    :goto_2
    return-object v1
.end method
