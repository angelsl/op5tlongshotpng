.class Lcom/oneplus/screenshot/GlobalScreenshot$14;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createSmallScreenshotEnlargeAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$endScaleCenterX:F

.field final synthetic val$endScaleCenterY:F

.field final synthetic val$endScaleX:F

.field final synthetic val$endScaleY:F

.field final synthetic val$scaleCenterX:F

.field final synthetic val$scaleCenterY:F

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$startScaleX:F

.field final synthetic val$startScaleY:F


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFLandroid/view/animation/Interpolator;FFFFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 1690
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleX:F

    iput p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleX:F

    iput-object p4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleY:F

    iput p6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleY:F

    iput p7, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterX:F

    iput p8, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterX:F

    iput p9, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterY:F

    iput p10, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1693
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1694
    .local v0, "t":F
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleX:F

    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleX:F

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1695
    .local v1, "scaleXT":F
    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleY:F

    iget v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleY:F

    sub-float v3, v2, v3

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    sub-float v5, v4, v5

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 1696
    .local v2, "scaleYT":F
    iget v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterX:F

    iget v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterX:F

    sub-float v5, v3, v5

    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v4, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 1697
    .local v3, "pivotXT":F
    iget v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterY:F

    iget v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterY:F

    sub-float v6, v5, v6

    iget-object v7, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    sub-float v7, v4, v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 1699
    .local v5, "pivotYT":F
    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v6}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1701
    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v6}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1702
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1703
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1704
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1705
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 1706
    return-void
.end method
