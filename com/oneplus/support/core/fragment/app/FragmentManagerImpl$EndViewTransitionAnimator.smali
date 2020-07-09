.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;
.super Landroid/view/animation/AnimationSet;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndViewTransitionAnimator"
.end annotation


# instance fields
.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "child"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 4069
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4070
    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    .line 4071
    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    .line 4072
    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4073
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "t"    # Landroid/view/animation/Transformation;

    .line 4077
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4078
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 4080
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 4081
    .local v0, "more":Z
    if-nez v0, :cond_1

    .line 4082
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 4083
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2, p0}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    .line 4085
    :cond_1
    return v1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .line 4091
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4092
    iget-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    xor-int/2addr v0, v1

    return v0

    .line 4094
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v0

    .line 4095
    .local v0, "more":Z
    if-nez v0, :cond_1

    .line 4096
    iput-boolean v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mEnded:Z

    .line 4097
    iget-object v2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    invoke-static {v2, p0}, Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/oneplus/support/core/fragment/app/OneShotPreDrawListener;

    .line 4099
    :cond_1
    return v1
.end method

.method public run()V
    .locals 2

    .line 4104
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 4105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;->mTransitionEnded:Z

    .line 4106
    return-void
.end method
