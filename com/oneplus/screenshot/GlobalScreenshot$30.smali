.class Lcom/oneplus/screenshot/GlobalScreenshot$30;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createSmallScreenshotDropOutAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 2342
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2345
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2346
    .local v0, "t":F
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2347
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 2348
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$30;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2349
    return-void
.end method
