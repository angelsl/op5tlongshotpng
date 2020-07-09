.class Lcom/oneplus/screenshot/GlobalScreenshot$35;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
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

    .line 2684
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2689
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3400(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isDropped()Z

    move-result v0

    .line 2691
    .local v0, "playDropAnimation":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 2692
    .local v3, "isSkipEndAnimation":Z
    :goto_1
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2693
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2694
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3400(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->setDraggable(Z)V

    .line 2696
    const-string v2, "Longshot.GlobalScreenshot"

    const-string v4, "smallscreen is hiding"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    if-eqz v3, :cond_2

    .line 2699
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;Z)V

    goto :goto_2

    .line 2702
    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2703
    .local v1, "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2704
    .local v2, "endAnimation":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2705
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$35$1;

    invoke-direct {v4, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$35$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot$35;)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2717
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2719
    .end local v1    # "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    .end local v2    # "endAnimation":Landroid/animation/AnimatorSet;
    :goto_2
    return-void
.end method
