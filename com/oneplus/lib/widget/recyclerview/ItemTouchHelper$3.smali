.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;
.super Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFFILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .line 589
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput p9, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    iput-object p10, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 592
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 593
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_0

    .line 594
    return-void

    .line 596
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 604
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_2

    .line 607
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1, p0, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V

    .line 611
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 612
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/View;)V

    .line 614
    :cond_3
    return-void
.end method
