.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 528
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 536
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addView(Landroid/view/View;I)V

    .line 537
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V

    .line 538
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 576
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 577
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 588
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 5
    .param p1, "offset"    # I

    .line 592
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 593
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 594
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    .line 595
    .local v1, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    .line 596
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_1
    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    .line 606
    .end local v1    # "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    .line 607
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "offset"    # I

    .line 556
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 570
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 542
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 611
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 612
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 613
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$1000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 615
    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 619
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 620
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 621
    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->access$1100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 623
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    .line 561
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildCount()I

    move-result v0

    .line 562
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 563
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeAllViews()V

    .line 566
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 547
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 549
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeViewAt(I)V

    .line 552
    return-void
.end method
