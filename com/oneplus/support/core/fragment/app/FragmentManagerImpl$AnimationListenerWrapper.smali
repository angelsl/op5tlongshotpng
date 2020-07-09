.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationListenerWrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method private constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/view/animation/Animation$AnimationListener;

    .line 3966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3967
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    .line 3968
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation$AnimationListener;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/animation/Animation$AnimationListener;
    .param p2, "x1"    # Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;

    .line 3963
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 3981
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3982
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3984
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 3989
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3990
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 3992
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 3973
    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->mWrapped:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3974
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3976
    :cond_0
    return-void
.end method
