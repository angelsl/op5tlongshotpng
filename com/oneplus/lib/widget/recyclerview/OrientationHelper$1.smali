.class Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;
.super Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createHorizontalHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 233
    nop

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 235
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 217
    nop

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 219
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 225
    nop

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 227
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 240
    nop

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 242
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 248
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 247
    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .line 253
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 254
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 208
    return-void
.end method
