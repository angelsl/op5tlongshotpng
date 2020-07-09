.class public Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "OPRectangleFloatingActionButton.java"


# instance fields
.field private mIsDisappear1:Z

.field private mIsDisappear2:Z

.field private mIsSwitchState:Z

.field private mNormalImageView:Landroid/widget/ImageView;

.field private mSwitchImageView:Landroid/widget/ImageView;

.field private mTempImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPRectangleFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    .line 122
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    .line 180
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    .line 48
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_RectangleFloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton_op_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 53
    .local v1, "backgroundTint":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->op_rectangle_floating_action_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 54
    .local v2, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 55
    .local v3, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 56
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$color;->white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    .local v4, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 61
    .local v5, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/oneplus/commonctrl/R$layout;->op_float_switch_button:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget v6, Lcom/oneplus/commonctrl/R$id;->normal_imageview:I

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    .line 63
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton_op_image:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 64
    .local v6, "src":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget v7, Lcom/oneplus/commonctrl/R$id;->switch_imageview:I

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public doFabAppearSwitch1(I)V
    .locals 3
    .param p1, "resID"    # I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFabAppearSwitch1 mIsSwitchState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPRectangleFloatingActionButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFabAppearSwitch1 isDisappear1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->isFabDisappear1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->isSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setSwitchImageView(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setImageResource(I)V

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->fabAppears1()V

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->isSwitchState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setImageResource(I)V

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->fabSwitchRevert()V

    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setSwitchImageView(I)V

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->fabSwitch()V

    .line 230
    :goto_1
    return-void
.end method

.method public fabAppears1()V
    .locals 3

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fabAppears1 mIsDisappear1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPRectangleFloatingActionButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 118
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 120
    return-void
.end method

.method public fabAppears2()V
    .locals 3

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    .line 137
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 140
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 142
    return-void
.end method

.method public fabDisappear1()V
    .locals 3

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fabDisappear1 mIsDisappear1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPRectangleFloatingActionButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 108
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 110
    return-void
.end method

.method public fabDisappear2()V
    .locals 3

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    .line 128
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 131
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 133
    return-void
.end method

.method public fabSlide()V
    .locals 4

    .line 145
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 148
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 150
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 155
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 156
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 160
    return-void
.end method

.method public fabSlideRevert()V
    .locals 5

    .line 163
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 166
    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 167
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 173
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 178
    return-void
.end method

.method public fabSwitch()V
    .locals 4

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 190
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 192
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 193
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 197
    return-void
.end method

.method public fabSwitchRevert()V
    .locals 4

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    .line 201
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 204
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 205
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 206
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 211
    return-void
.end method

.method public isFabDisappear1()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    return v0
.end method

.method public isFabDisappear2()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    return v0
.end method

.method public isSwitchState()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    return v0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    return-void
.end method

.method public setNormalImageView(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 74
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    return-void
.end method

.method public setNormalImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method public setPivotType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 234
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 268
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 269
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 270
    goto/16 :goto_0

    .line 264
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 265
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 266
    goto :goto_0

    .line 260
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 262
    goto :goto_0

    .line 256
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 258
    goto :goto_0

    .line 252
    :pswitch_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 254
    goto :goto_0

    .line 248
    :pswitch_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 250
    goto :goto_0

    .line 244
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 245
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 246
    goto :goto_0

    .line 240
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 241
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 242
    goto :goto_0

    .line 236
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 238
    nop

    .line 275
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

    .line 82
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 85
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 87
    :cond_0
    return-void
.end method

.method public setSwitchImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 95
    :cond_0
    return-void
.end method
