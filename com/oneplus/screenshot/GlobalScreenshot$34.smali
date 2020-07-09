.class Lcom/oneplus/screenshot/GlobalScreenshot$34;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->playSmallScreenshotDropInAnimation()Landroid/view/animation/AnimationSet;
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

    .line 2642
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 2652
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "SmallScreenshotDropInAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2654
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2657
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2658
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v1, v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2660
    :cond_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsVoiceLongshot:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2661
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$34$1;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$34$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot$34;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 2669
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 2674
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 2645
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2646
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "SmallScreenshotDropInAnimation start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    return-void
.end method
