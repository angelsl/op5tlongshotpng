.class Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "OPFloatingActionButtonImpl.java"


# static fields
.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field private mBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsHiding:Z

.field private mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field final mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

.field private mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field final mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 44
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
    .param p2, "shadowViewDelegate"    # Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    .line 61
    iput-object p2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    .line 63
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mIsHiding:Z

    return p1
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 150
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    return-object p1
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "op_borderWidth"    # I
    .param p2, "op_backgroundTint"    # Landroid/content/res/ColorStateList;

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;-><init>()V

    .line 72
    .local v1, "borderDrawable":Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;
    sget v2, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_top_outer_color:I

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_top_inner_color:I

    .line 74
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_end_inner_color:I

    .line 75
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Lcom/oneplus/commonctrl/R$color;->design_fab_stroke_end_outer_color:I

    .line 76
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 72
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setGradientColors(IIII)V

    .line 77
    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setBorderWidth(F)V

    .line 78
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPCircularBorderDrawable;->setTintColor(I)V

    .line 79
    return-object v1
.end method

.method hide(Z)V
    .locals 3
    .param p1, "fromUser"    # Z

    .line 155
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mIsHiding:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;-><init>()V

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$1;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 162
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    .line 215
    :goto_1
    return-void

    .line 157
    :cond_3
    :goto_2
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .line 147
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 0
    .param p1, "state"    # [I

    .line 143
    return-void
.end method

.method setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 6
    .param p1, "originalBackground"    # Landroid/graphics/drawable/Drawable;
    .param p2, "op_backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p3, "op_backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p4, "op_rippleColor"    # I
    .param p5, "op_borderWidth"    # I

    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 87
    if-eqz p3, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p5, :cond_1

    .line 93
    invoke-virtual {p0, p5, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v2, "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 96
    .end local v2    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    .restart local v2    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-interface {v0, v3}, Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShadowViewDelegate:Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;

    invoke-interface {v0, v1, v1, v1, v1}, Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;->setShadowPadding(IIII)V

    .line 105
    return-void
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 108
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 112
    :cond_0
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 116
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "op_elevation"    # F

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setElevation(F)V

    .line 124
    return-void
.end method

.method setPressedTranslationZ(F)V
    .locals 7
    .param p1, "translationZ"    # F

    .line 127
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 130
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    .line 131
    const-string v6, "translationZ"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 132
    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    new-array v4, v3, [F

    aput p1, v4, v5

    .line 133
    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 135
    sget-object v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    .line 136
    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 138
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 139
    return-void
.end method

.method setRippleColor(I)V
    .locals 2
    .param p1, "op_rippleColor"    # I

    .line 119
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 120
    return-void
.end method

.method show(Z)V
    .locals 3
    .param p1, "fromUser"    # Z

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isLaidOut()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setAlpha(F)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleY(F)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleX(F)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/button/FastOutSlowInInterpolator;-><init>()V

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl$2;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;Z)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setAlpha(F)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleY(F)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->mView:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setScaleX(F)V

    .line 264
    :cond_1
    :goto_0
    return-void
.end method
