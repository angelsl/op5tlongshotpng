.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/Animator;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 3951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 3953
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 3954
    if-eqz p1, :cond_0

    .line 3957
    return-void

    .line 3955
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/animation/Animator;
    .param p2, "x1"    # Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;

    .line 3939
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 3943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3944
    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 3945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 3946
    if-eqz p1, :cond_0

    .line 3949
    return-void

    .line 3947
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/animation/Animation;
    .param p2, "x1"    # Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;

    .line 3939
    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
