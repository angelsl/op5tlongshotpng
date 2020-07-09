.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

.field final synthetic val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 204
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 211
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$600(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V

    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 208
    return-void
.end method
