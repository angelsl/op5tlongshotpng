.class Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;

    .line 119
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;"
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 122
    .local p0, "this":Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;, "Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior$1;->this$0:Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;->access$002(Lcom/oneplus/lib/design/widget/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 123
    return-void
.end method
