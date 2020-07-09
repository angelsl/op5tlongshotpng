.class Lcom/oneplus/screenshot/GlobalScreenshot$16;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 1737
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$16;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1740
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1741
    .local v0, "t":F
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$16;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1900(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v1

    const v2, 0x3f39999a    # 0.725f

    add-float/2addr v1, v2

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 1745
    .local v1, "scaleT":F
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$16;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1747
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$16;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1748
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$16;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1749
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$16;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1750
    return-void
.end method
