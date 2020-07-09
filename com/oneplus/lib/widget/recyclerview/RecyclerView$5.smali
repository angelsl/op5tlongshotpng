.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->initAdapterManager()V
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

    .line 628
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 671
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->cmd:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V

    .line 681
    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 677
    goto :goto_0

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget v2, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    .line 674
    nop

    .line 686
    :goto_0
    return-void
.end method

.method public findViewHolder(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .line 631
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    .line 632
    .local v0, "vh":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 633
    return-object v1

    .line 637
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    return-object v1

    .line 643
    :cond_1
    return-object v0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsChanged:Z

    .line 663
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 695
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 696
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 697
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 701
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 703
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 704
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 649
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 650
    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1212(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    .line 651
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 655
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 656
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 657
    return-void
.end method

.method public onDispatchFirstPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 667
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 668
    return-void
.end method

.method public onDispatchSecondPass(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;

    .line 690
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;->dispatchUpdate(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$UpdateOp;)V

    .line 691
    return-void
.end method
