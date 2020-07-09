.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->createLongshotAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

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
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;FFLandroid/view/animation/Interpolator;FFFFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 856
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iput p2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleX:F

    iput p3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$startScaleX:F

    iput-object p4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleY:F

    iput p6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$startScaleY:F

    iput p7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleCenterX:F

    iput p8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleCenterX:F

    iput p9, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleCenterY:F

    iput p10, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleCenterY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 859
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 860
    .local v0, "t":F
    iget v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleX:F

    iget v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$startScaleX:F

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 861
    .local v1, "scaleXT":F
    iget v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleY:F

    iget v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$startScaleY:F

    sub-float v3, v2, v3

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    sub-float v5, v4, v5

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 862
    .local v2, "scaleYT":F
    iget v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleCenterX:F

    iget v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleCenterX:F

    sub-float v5, v3, v5

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v4, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 863
    .local v3, "pivotXT":F
    iget v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$endScaleCenterY:F

    iget v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleCenterY:F

    sub-float v6, v5, v6

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    sub-float/2addr v4, v7

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    .line 864
    .local v5, "pivotYT":F
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 865
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 866
    return-void
.end method
