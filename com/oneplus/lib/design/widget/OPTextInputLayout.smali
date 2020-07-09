.class public Lcom/oneplus/lib/design/widget/OPTextInputLayout;
.super Landroid/widget/LinearLayout;
.source "OPTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;,
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field final mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

.field mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field mEditText:Landroid/widget/EditText;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasPasswordToggleTintList:Z

.field private mHasPasswordToggleTintMode:Z

.field private mHasReconstructedEditTextBackground:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mIndicatorsAdded:I

.field private final mInputFrame:Landroid/widget/FrameLayout;

.field private mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPasswordToggleContentDesc:Ljava/lang/CharSequence;

.field private mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleEnabled:Z

.field private mPasswordToggleTintList:Landroid/content/res/ColorStateList;

.field private mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

.field private mPasswordToggledVisible:Z

.field private mRestoringSavedState:Z

.field private mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setOrientation(I)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setWillNotDraw(Z)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setAddStatesFromChildren(Z)V

    .line 196
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    .line 197
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 198
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget-object v3, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const v3, 0x800033

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 204
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout:[I

    sget v4, Lcom/oneplus/commonctrl/R$style;->Widget_Design_OPTextInputLayout:I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 206
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintEnabled:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    .line 207
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintAnimationEnabled:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    .line 211
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    .line 213
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 216
    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintTextAppearance:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 219
    .local v3, "hintAppearance":I
    if-eqz v3, :cond_1

    .line 220
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintTextAppearance:I

    .line 221
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 220
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintTextAppearance(I)V

    .line 224
    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opErrorTextAppearance:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    .line 225
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opErrorEnabled:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 227
    .local v4, "errorEnabled":Z
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterEnabled:I

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 229
    .local v5, "counterEnabled":Z
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterMaxLength:I

    .line 230
    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 229
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterMaxLength(I)V

    .line 231
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterTextAppearance:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    .line 233
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterOverflowTextAppearance:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    .line 236
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleEnabled:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    .line 238
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleDrawable:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleContentDescription:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    .line 241
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTint:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    .line 243
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTint:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    .line 246
    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTintMode:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    .line 248
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTintMode:I

    .line 249
    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v6, 0x0

    .line 248
    invoke-static {v1, v6}, Lcom/oneplus/lib/design/widget/OPViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 252
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    .line 255
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterEnabled(Z)V

    .line 256
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    .line 258
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    .line 261
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 265
    :cond_4
    new-instance v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/OPTextInputLayout;

    .line 116
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    return v0
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "indicator"    # Landroid/widget/TextView;
    .param p2, "index"    # I

    .line 575
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    .line 577
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 578
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addView(Landroid/view/View;II)V

    .line 582
    new-instance v0, Lcom/oneplus/support/core/widget/Space;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oneplus/support/core/widget/Space;-><init>(Landroid/content/Context;)V

    .line 583
    .local v0, "spacer":Lcom/oneplus/support/core/widget/Space;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 584
    .local v2, "spacerLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    .line 590
    .end local v0    # "spacer":Lcom/oneplus/support/core/widget/Space;
    .end local v2    # "spacerLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 592
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    .line 593
    return-void
.end method

.method private adjustIndicatorPadding()V
    .locals 5

    .line 597
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 598
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    .line 597
    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/oneplus/support/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 599
    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1358
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1361
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_3

    .line 1366
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    .line 1367
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1370
    :cond_3
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 1518
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 1519
    .local v3, "v":I
    if-ne v3, p1, :cond_0

    .line 1520
    const/4 v0, 0x1

    return v0

    .line 1518
    .end local v3    # "v":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1523
    :cond_1
    return v1
.end method

.method private collapseHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1397
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1400
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 1401
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1403
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1405
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    .line 1406
    return-void
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 5

    .line 934
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 935
    .local v0, "sdk":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 937
    return-void

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 940
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 941
    return-void

    .line 944
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v2, :cond_3

    .line 949
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 951
    .local v2, "newBg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_2

    .line 954
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/DrawableContainer;

    .line 956
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 955
    invoke-static {v3, v4}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 959
    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v3, :cond_3

    .line 964
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v3, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 965
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 968
    .end local v2    # "newBg":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private expandHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1441
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1444
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 1445
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1447
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1449
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    .line 1450
    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1345
    :goto_0
    return v0
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .line 861
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 862
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 863
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 864
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 865
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 861
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "indicator"    # Landroid/widget/TextView;

    .line 602
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 604
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 337
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_6

    .line 341
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputEditText;

    if-nez v0, :cond_0

    .line 342
    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a OPTextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 348
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    .line 351
    .local v0, "hasPasswordTransformation":Z
    if-nez v0, :cond_1

    .line 353
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 357
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    .line 358
    .local v1, "editTextGravity":I
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    and-int/lit8 v3, v1, -0x71

    or-int/lit8 v3, v3, 0x30

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 360
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 363
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 380
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 385
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    .line 388
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 393
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 394
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    .line 397
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    .line 398
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    .line 401
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    .line 404
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    .line 405
    return-void

    .line 338
    .end local v0    # "hasPasswordTransformation":Z
    .end local v1    # "editTextGravity":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setError(Ljava/lang/CharSequence;ZZ)V
    .locals 7
    .param p1, "error"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "animate"    # Z
    .param p3, "shakeAnimate"    # Z

    .line 710
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    .line 712
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    return-void

    .line 718
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    .line 721
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    .line 724
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 726
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v0, :cond_5

    .line 727
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    if-eqz p3, :cond_2

    .line 731
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 732
    .local v0, "mOPAlarmAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget-object v6, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    .line 733
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 734
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 735
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 738
    .end local v0    # "mOPAlarmAnimator":Landroid/animation/ValueAnimator;
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 739
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_3

    .line 741
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 743
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 744
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 745
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 746
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 755
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 758
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 759
    if-eqz p2, :cond_6

    .line 760
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 762
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 763
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;Ljava/lang/CharSequence;)V

    .line 764
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 772
    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    .line 779
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    .line 780
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41700000    # 15.0f
        0x0
    .end array-data
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 488
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 489
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 490
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 1

    .line 1350
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateEditTextBackground()V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 901
    return-void

    .line 904
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 905
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 906
    return-void

    .line 909
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 911
    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 912
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 915
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 920
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 928
    :cond_4
    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 931
    :goto_0
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 413
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 415
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 418
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 419
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    .local v1, "newTopMargin":I
    goto :goto_0

    .line 421
    .end local v1    # "newTopMargin":I
    :cond_1
    const/4 v1, 0x0

    .line 424
    .restart local v1    # "newTopMargin":I
    :goto_0
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_2

    .line 425
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 426
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 428
    :cond_2
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    .line 1095
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1097
    return-void

    .line 1100
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 1101
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-nez v0, :cond_1

    .line 1102
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/oneplus/commonctrl/R$layout;->op_design_text_input_password_icon:I

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    .line 1103
    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    .line 1104
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1108
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    new-instance v5, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-static {v5}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    .line 1128
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1131
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1133
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1135
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_4

    .line 1136
    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1138
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v3, v4, v2, v5, v1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1142
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1143
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1144
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    .line 1142
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setPadding(IIII)V

    .line 1145
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1146
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1147
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setVisibility(I)V

    .line 1150
    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1153
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/oneplus/support/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1154
    .restart local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v3

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, v5, :cond_7

    .line 1155
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v3, v4, v2, v5, v1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1161
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 270
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    .line 282
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 283
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 285
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4
    .param p1, "target"    # F
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    .line 1454
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 1455
    return-void

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1458
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1459
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1460
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1461
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1469
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1470
    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 319
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 327
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 329
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    throw v1

    .line 320
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 321
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1038
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    .line 1039
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    .line 1041
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1081
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1083
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1086
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 1410
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_0

    .line 1414
    return-void

    .line 1417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    .line 1419
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1421
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 1422
    .local v1, "state":[I
    const/4 v2, 0x0

    .line 1425
    .local v2, "changed":Z
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    .line 1427
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    .line 1429
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_2

    .line 1430
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1433
    :cond_2
    if-eqz v2, :cond_3

    .line 1434
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->invalidate()V

    .line 1437
    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    .line 1438
    return-void
.end method

.method public getCounterMaxLength()I
    .locals 1

    .line 876
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1052
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 501
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isCounterEnabled()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 1

    .line 1064
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    return v0
.end method

.method final isHintExpanded()Z
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    .line 1474
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 1

    .line 1261
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1374
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1376
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1378
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {p0, v0, v1}, Lcom/oneplus/lib/design/widget/OPViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1380
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 1381
    .local v0, "l":I
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1383
    .local v2, "r":I
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1384
    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1385
    invoke-virtual {v6}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1383
    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1389
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getPaddingTop()I

    move-result v4

    sub-int v5, p5, p3

    .line 1390
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1389
    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1392
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 1394
    .end local v0    # "l":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "r":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1090
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    .line 1091
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1092
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1026
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 1027
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1028
    return-void

    .line 1030
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    .line 1031
    .local v0, "ss":Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1032
    iget-object v1, v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1033
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->requestLayout()V

    .line 1034
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1016
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1017
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1018
    .local v1, "ss":Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v2, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1021
    :cond_0
    return-object v1
.end method

.method passwordVisibilityToggleRequested()V
    .locals 3

    .line 1325
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1329
    .local v0, "selection":I
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    goto :goto_0

    .line 1333
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    .line 1337
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    .line 1340
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1342
    .end local v0    # "selection":I
    :cond_1
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 788
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eq v0, p1, :cond_3

    .line 789
    if-eqz p1, :cond_2

    .line 790
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 791
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    sget v1, Lcom/oneplus/commonctrl/R$id;->op_textinput_counter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 792
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 793
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    invoke-static {v0, v1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const v2, 0x10301f1

    invoke-static {v1, v2}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 803
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->op_error_color_material_default:I

    invoke-static {v2, v3}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 807
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 808
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    .line 810
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 816
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    .line 818
    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1
    .param p1, "maxLength"    # I

    .line 839
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    if-eq v0, p1, :cond_2

    .line 840
    if-lez p1, :cond_0

    .line 841
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    .line 843
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    .line 845
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    .line 849
    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 856
    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 857
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 858
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 704
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 704
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;ZZ)V

    .line 707
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 618
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_5

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 623
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 624
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 625
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget v2, Lcom/oneplus/commonctrl/R$id;->op_textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 626
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 627
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 629
    :cond_1
    const/4 v1, 0x0

    .line 631
    .local v1, "useDefaultColor":Z
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    invoke-static {v2, v3}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 633
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 634
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, -0xff01

    if-ne v2, v3, :cond_2

    .line 638
    const/4 v1, 0x1

    .line 644
    :cond_2
    goto :goto_0

    .line 640
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 645
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_3

    .line 648
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const v3, 0x10301f1

    invoke-static {v2, v3}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 650
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$color;->op_error_color_material_default:I

    invoke-static {v3, v4}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/support/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 656
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 657
    .end local v1    # "useDefaultColor":Z
    goto :goto_1

    .line 658
    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    .line 659
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    .line 660
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 663
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    .line 665
    :cond_5
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 674
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    .line 675
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 676
    invoke-static {v0, p1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 678
    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 481
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 483
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->sendAccessibilityEvent(I)V

    .line 485
    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1076
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    .line 1077
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 517
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 518
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    .line 520
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 521
    .local v0, "editTextHint":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 528
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 530
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 533
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 541
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 542
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    .line 545
    .end local v0    # "editTextHint":Ljava/lang/CharSequence;
    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 564
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 565
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 567
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    .line 570
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    .line 572
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1210
    nop

    .line 1211
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1210
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 1212
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1225
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1226
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1229
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1177
    :cond_0
    const/4 v0, 0x0

    .line 1175
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1178
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1192
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1193
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1275
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1276
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    .line 1278
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1281
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1285
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    .line 1287
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    .line 1289
    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1304
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    .line 1305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    .line 1306
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    .line 1307
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1319
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    .line 1321
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    .line 1322
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 297
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    .line 299
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 300
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 307
    :cond_3
    return-void
.end method

.method updateCounter(I)V
    .locals 8
    .param p1, "length"    # I

    .line 880
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    .line 881
    .local v0, "wasCounterOverflowed":Z
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 882
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    goto :goto_2

    .line 885
    :cond_0
    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    .line 886
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_3

    .line 887
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 888
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    .line 887
    :goto_1
    invoke-static {v4, v1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 890
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$string;->op_character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 891
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 890
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_4

    .line 894
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    .line 895
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    .line 897
    :cond_4
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    .line 432
    return-void
.end method

.method updateLabelState(ZZ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 435
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v0

    .line 436
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 437
    .local v1, "hasText":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->arrayContains([II)Z

    move-result v3

    .line 438
    .local v3, "isFocused":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 440
    .local v2, "isErrorShowing":Z
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    .line 441
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 444
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 445
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 446
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_3

    goto :goto_1

    .line 448
    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_4

    .line 449
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 452
    :cond_4
    :goto_1
    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_7

    if-eqz v2, :cond_5

    goto :goto_2

    .line 459
    :cond_5
    if-nez p2, :cond_6

    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-nez v4, :cond_9

    .line 460
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->expandHint(Z)V

    goto :goto_3

    .line 454
    :cond_7
    :goto_2
    if-nez p2, :cond_8

    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-eqz v4, :cond_9

    .line 455
    :cond_8
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->collapseHint(Z)V

    .line 463
    :cond_9
    :goto_3
    return-void
.end method
