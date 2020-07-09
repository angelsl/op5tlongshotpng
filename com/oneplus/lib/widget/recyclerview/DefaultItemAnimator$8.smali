.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateChangeImpl(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 371
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 378
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 379
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 380
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 381
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 382
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$1200(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V

    .line 385
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 375
    return-void
.end method
