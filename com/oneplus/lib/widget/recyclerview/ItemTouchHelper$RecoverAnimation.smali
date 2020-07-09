.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field private final mAnimationType:I

.field private mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFF)V
    .locals 2
    .param p2, "viewHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .line 2318
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2313
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2319
    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2320
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2321
    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 2322
    iput p5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2323
    iput p6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2324
    iput p7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2325
    iput p8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2327
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2328
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2335
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2336
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2337
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2338
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 2285
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    .line 2285
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 2350
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2351
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2409
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2410
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2404
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2416
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2398
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .line 2341
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2342
    return-void
.end method

.method public setFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .line 2354
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2355
    return-void
.end method

.method public start()V
    .locals 2

    .line 2345
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2346
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2347
    return-void
.end method

.method public update()V
    .locals 3

    .line 2362
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    .line 2365
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mFraction:F

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 2367
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    .line 2368
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1

    .line 2370
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mFraction:F

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 2372
    :goto_1
    return-void
.end method
