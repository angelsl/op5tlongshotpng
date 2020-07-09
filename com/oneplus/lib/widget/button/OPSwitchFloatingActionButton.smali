.class public Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "OPSwitchFloatingActionButton.java"


# static fields
.field private static final FOCUSED_ENABLED_STATE_SET:[I

.field public static final SWITCH_DURATION:I = 0x7d

.field public static final SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mIsDisappear1:Z

.field private mIsSwitchState:Z

.field private mNormalImageView:Landroid/widget/ImageView;

.field private mSwitchImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->FOCUSED_ENABLED_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPSwitchFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsDisappear1:Z

    .line 231
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    .line 56
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_SwitchFloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_elevation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 61
    .local v1, "elevation":F
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_tint_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 62
    .local v2, "backgroundTint":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$drawable;->op_switch_floating_action_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 63
    .local v3, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 64
    .local v4, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 65
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/oneplus/commonctrl/R$color;->white:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    .local v5, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setElevation(F)V

    .line 71
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 72
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcom/oneplus/commonctrl/R$layout;->op_float_switch_button:I

    invoke-virtual {v6, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget v7, Lcom/oneplus/commonctrl/R$id;->normal_imageview:I

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    .line 74
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPSwitchFloatingActionButton_op_image:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 75
    .local v7, "src":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    sget v8, Lcom/oneplus/commonctrl/R$id;->switch_imageview:I

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private setPressedTranslationZ(F)V
    .locals 7
    .param p1, "translationZ"    # F

    .line 91
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 93
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->PRESSED_ENABLED_STATE_SET:[I

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 94
    const-string v6, "translationZ"

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v3

    .line 93
    invoke-virtual {v0, v1, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 95
    sget-object v1, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->FOCUSED_ENABLED_STATE_SET:[I

    new-array v3, v2, [F

    aput v4, v3, v5

    .line 96
    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v3

    .line 95
    invoke-virtual {v0, v1, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 98
    sget-object v1, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->EMPTY_STATE_SET:[I

    new-array v2, v2, [F

    aput p1, v2, v5

    .line 99
    invoke-static {p0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 101
    return-void
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 104
    const-wide/16 v0, 0x4b

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 105
    return-object p1
.end method


# virtual methods
.method public doFabAppearSwitch1(I)V
    .locals 3
    .param p1, "resID"    # I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFabAppearSwitch1 mIsSwitchState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSwitchFloatingActionButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFabAppearSwitch1 isDisappear1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsDisappear1:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->isFabDisappear1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->isSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setSwitchImageView(I)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setImageResource(I)V

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->fabAppears1()V

    goto :goto_1

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->isSwitchState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setImageResource(I)V

    .line 331
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->fabSwitchRevert()V

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setSwitchImageView(I)V

    .line 334
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->fabSwitch()V

    .line 336
    :goto_1
    return-void
.end method

.method public fabAppears1()V
    .locals 3

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsDisappear1:Z

    .line 164
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setVisibility(I)V

    .line 165
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotType(I)V

    .line 166
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 169
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 171
    return-void
.end method

.method public fabDisappear1()V
    .locals 8

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsDisappear1:Z

    .line 145
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotType(I)V

    .line 146
    new-array v1, v0, [F

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v4, "scaleX"

    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 147
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    new-array v4, v0, [F

    aput v2, v4, v3

    const-string v2, "scaleY"

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 148
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    new-array v4, v0, [F

    const/4 v5, 0x0

    aput v5, v4, v3

    const-string v5, "alpha"

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 149
    .local v4, "animAlpha":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 150
    .local v5, "animSet":Landroid/animation/AnimatorSet;
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v3

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 151
    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 152
    sget-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    new-instance v0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton$1;-><init>(Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 160
    return-void
.end method

.method public fabSwitch()V
    .locals 5

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 239
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 242
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 243
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 246
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 252
    return-void
.end method

.method public fabSwitchRevert()V
    .locals 4

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    .line 256
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 257
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 260
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 262
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 264
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 266
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 268
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 270
    return-void
.end method

.method public fabSwitchScale()V
    .locals 5

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 275
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 278
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 279
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 280
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 282
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 286
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 288
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotType(I)V

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 290
    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 293
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 294
    return-void
.end method

.method public fabSwitchScaleRevert()V
    .locals 5

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 299
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 302
    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 304
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 306
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 308
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 310
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 311
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 312
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotType(I)V

    .line 313
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 316
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 317
    return-void
.end method

.method public isFabDisappear1()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsDisappear1:Z

    return v0
.end method

.method public isSwitchState()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    return v0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    return-void
.end method

.method public setNormalImageView(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 113
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    return-void
.end method

.method public setNormalImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method public setOpTintColor(I)V
    .locals 6
    .param p1, "color"    # I

    .line 81
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 82
    .local v0, "backgroundTint":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->op_switch_floating_action_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 84
    .local v2, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 85
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$color;->white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 87
    .local v3, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public setPivotType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 340
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 374
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 376
    goto/16 :goto_0

    .line 370
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 371
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 372
    goto :goto_0

    .line 366
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 368
    goto :goto_0

    .line 362
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 363
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 364
    goto :goto_0

    .line 358
    :pswitch_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 360
    goto :goto_0

    .line 354
    :pswitch_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 356
    goto :goto_0

    .line 350
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 351
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 352
    goto :goto_0

    .line 346
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 348
    goto :goto_0

    .line 342
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotY(F)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->setPivotX(F)V

    .line 344
    nop

    .line 381
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSwitchImageView(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 121
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 125
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 127
    :cond_0
    return-void
.end method

.method public setSwitchImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mIsSwitchState:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 134
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPSwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 136
    :cond_0
    return-void
.end method
