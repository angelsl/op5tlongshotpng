.class Lcom/oneplus/lib/design/widget/TextScale$1;
.super Ljava/lang/Object;
.source "TextScale.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/TextScale;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/TextScale;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/TextScale;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/TextScale;

    .line 74
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/TextScale$1;->this$0:Lcom/oneplus/lib/design/widget/TextScale;

    iput-object p2, p0, Lcom/oneplus/lib/design/widget/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 77
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 78
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 79
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/TextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 80
    return-void
.end method
