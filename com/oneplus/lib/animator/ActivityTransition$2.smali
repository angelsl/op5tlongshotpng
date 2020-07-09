.class Lcom/oneplus/lib/animator/ActivityTransition$2;
.super Ljava/lang/Object;
.source "ActivityTransition.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/animator/ActivityTransition;->doEnterTransitionInner(Landroid/app/Activity;Ljava/util/ArrayList;JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$attr:Lcom/oneplus/lib/animator/ShareElementViewAttrs;

.field final synthetic val$duration:J

.field final synthetic val$interpolator:Landroid/animation/TimeInterpolator;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/oneplus/lib/animator/ShareElementViewAttrs;JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$attr:Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    iput-wide p3, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$duration:J

    iput-object p5, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$interpolator:Landroid/animation/TimeInterpolator;

    iput-object p6, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 171
    .local v0, "location":[I
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 172
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 173
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 174
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$attr:Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    iget v3, v3, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->width:F

    iget-object v4, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 175
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$attr:Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    iget v3, v3, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->height:F

    iget-object v4, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 176
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$attr:Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    iget v3, v3, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startX:F

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 177
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$attr:Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    iget v3, v3, Lcom/oneplus/lib/animator/ShareElementViewAttrs;->startY:F

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 179
    iget-object v1, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 180
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$duration:J

    .line 184
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$interpolator:Landroid/animation/TimeInterpolator;

    .line 185
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/animator/ActivityTransition$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    .line 186
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 188
    return v4
.end method
