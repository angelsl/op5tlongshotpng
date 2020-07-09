.class public abstract Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;,
        Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;,
        Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Duration;,
        Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;,
        Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0x12c

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final USE_OFFSET_API:Z

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final mContentViewCallback:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field final mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field final mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "content"    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "contentViewCallback"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$3;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 234
    if-eqz p1, :cond_2

    .line 237
    if-eqz p2, :cond_1

    .line 240
    if-eqz p3, :cond_0

    .line 244
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    .line 245
    iput-object p3, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mContentViewCallback:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

    .line 246
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    .line 248
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 252
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_design_layout_snackbar:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 254
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 258
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 262
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 263
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$2;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/oneplus/support/core/view/OnApplyWindowInsetsListener;)V

    .line 276
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    .line 277
    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 278
    return-void

    .line 241
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;

    .line 63
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mContentViewCallback:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$ContentViewCallback;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 4
    .param p1, "event"    # I

    .line 542
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 543
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 544
    sget-object v1, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 545
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 546
    new-instance v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$9;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    new-instance v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$10;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 572
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 574
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 346
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_0

    .line 347
    return-object p0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-object p0
.end method

.method animateViewIn()V
    .locals 5

    .line 498
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    .line 499
    .local v0, "viewHeight":I
    sget-boolean v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v0}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 504
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 505
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 506
    sget-object v2, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 508
    new-instance v2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$7;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    new-instance v2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$8;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 536
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 538
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 330
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 331
    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2
    .param p1, "event"    # I

    .line 334
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->dismiss(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;I)V

    .line 335
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 308
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 300
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    iget v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 316
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1
    .param p1, "event"    # I

    .line 577
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 583
    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 2

    .line 380
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrent(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .line 388
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentOrNext(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 3
    .param p1, "event"    # I

    .line 599
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->onDismissed(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    .line 600
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 604
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 605
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v2, p0, p1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 604
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 608
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 614
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 618
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 619
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 621
    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 3

    .line 586
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->onShown(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    .line 587
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 590
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 591
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 592
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 591
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 595
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_0

    .line 366
    return-object p0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 370
    return-object p0

    .line 372
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 373
    return-object p0
.end method

.method public setDuration(I)Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;
    .locals 0
    .param p1, "duration"    # I
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    iput p1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mDuration:I

    .line 290
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    .line 627
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    .line 323
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lcom/oneplus/lib/design/widget/SnackbarManager;->getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mDuration:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mManagerCallback:Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->show(ILcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    .line 324
    return-void
.end method

.method final showView()V
    .locals 4

    .line 405
    .local p0, "this":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 408
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 410
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 412
    .local v1, "clp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    new-instance v2, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    .line 413
    .local v2, "behavior":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 414
    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 415
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->setSwipeDirection(I)V

    .line 416
    new-instance v3, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$4;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;->setListener(Lcom/oneplus/lib/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 439
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;)V

    .line 441
    const/16 v3, 0x50

    iput v3, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 444
    .end local v1    # "clp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v2    # "behavior":Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$Behavior;, "Lcom/oneplus/lib/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 447
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$5;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 469
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 475
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0

    .line 479
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;->mView:Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$6;-><init>(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lcom/oneplus/lib/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 494
    :goto_0
    return-void
.end method
