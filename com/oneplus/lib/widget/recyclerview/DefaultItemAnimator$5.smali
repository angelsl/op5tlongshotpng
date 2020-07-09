.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateAddImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

.field final synthetic val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    .line 233
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 241
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 244
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$800(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V

    .line 248
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 237
    return-void
.end method
