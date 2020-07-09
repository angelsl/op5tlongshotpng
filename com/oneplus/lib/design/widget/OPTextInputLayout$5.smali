.class Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;
.super Ljava/lang/Object;
.source "OPTextInputLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    .line 1461
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 1464
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;->this$0:Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    iget-object v0, v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1465
    return-void
.end method
