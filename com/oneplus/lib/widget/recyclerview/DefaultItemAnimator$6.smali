.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateMoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILandroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 290
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$deltaY:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 297
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 300
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 306
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 307
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$1000(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V

    .line 310
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 293
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 294
    return-void
.end method
