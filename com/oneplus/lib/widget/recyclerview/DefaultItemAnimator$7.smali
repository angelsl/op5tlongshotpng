.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;
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

.field final synthetic val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 349
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 357
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 358
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 360
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 362
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$1200(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V

    .line 364
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 352
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;->val$changeInfo:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 353
    return-void
.end method
