.class Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;
.super Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createVerticalHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 309
    nop

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 311
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 293
    nop

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 295
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 301
    nop

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 303
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 316
    nop

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 318
    .local v0, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    .line 324
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 323
    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .line 329
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 330
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .line 283
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 284
    return-void
.end method
