.class Lcom/oneplus/screenshot/GlobalScreenshot$12;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 1606
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1609
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1610
    .local v0, "t":F
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1900(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    .line 1611
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3e8ccccc    # 0.27499998f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 1615
    .local v1, "scaleT":F
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1617
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1618
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1619
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1620
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1621
    return-void
.end method
