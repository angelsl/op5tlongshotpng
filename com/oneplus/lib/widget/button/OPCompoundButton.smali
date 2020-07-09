.class public abstract Lcom/oneplus/lib/widget/button/OPCompoundButton;
.super Landroid/widget/Button;
.source "OPCompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;,
        Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;,
        Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final INDETERMINATE_STATE_SET:[I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mChecked:Z

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mIndeterminate:Z

.field private mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

.field private mOnTriStateCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

.field private mThreeState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->state_indeterminate:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->INDETERMINATE_STATE_SET:[I

    .line 81
    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    sput-object v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 67
    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    .line 69
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    .line 130
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 133
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 134
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTintMode:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_1

    .line 139
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTintMode:I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v7, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v7}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 141
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    .line 144
    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 146
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    .line 149
    :cond_2
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_threeState:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 151
    .local v4, "threeState":Z
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_checked:I

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 153
    .local v5, "checked":Z
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_indeterminate:I

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 155
    .local v1, "indeterminate":Z
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setThreeState(Z)V

    .line 156
    if-eqz v1, :cond_4

    .line 157
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    .line 161
    :goto_1
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_radius:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 163
    .local v0, "nRadius":I
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setRadius(I)V

    .line 165
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 169
    return-void
.end method

.method private applyButtonTint()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_3

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 520
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 524
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 534
    :cond_3
    return-void
.end method

.method private notifyViewAccessibilityStateChangedIfNeededInternal(I)V
    .locals 6
    .param p1, "changeType"    # I

    .line 327
    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 328
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "notifyViewAccessibilityStateChangedIfNeeded"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 329
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    nop

    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v2, "notifyViewAccessibilityStateChangedIfNeeded with Exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 186
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 193
    return-object p1

    .line 192
    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 191
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 190
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 189
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 188
    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 187
    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRadius(I)V
    .locals 3
    .param p1, "nRadius"    # I

    .line 172
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 173
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 178
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto :goto_0

    .line 181
    :cond_1
    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v2, "setRaidus fail , background not a rippleDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 659
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    .line 661
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 664
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 645
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 647
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 651
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 653
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->invalidate()V

    .line 655
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .line 553
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    .line 554
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 556
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 560
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .line 565
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    .line 566
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 568
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 572
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 581
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 247
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 754
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isThreeState()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 242
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 673
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 674
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 675
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 634
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 635
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->INDETERMINATE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mergeDrawableStates([I[I)[I

    .line 640
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 586
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 587
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 588
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 589
    .local v1, "verticalGravity":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 590
    .local v2, "drawableHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 593
    .local v3, "drawableWidth":I
    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    .line 601
    const/4 v4, 0x0

    .local v4, "top":I
    goto :goto_0

    .line 595
    .end local v4    # "top":I
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    .line 596
    .restart local v4    # "top":I
    goto :goto_0

    .line 598
    .end local v4    # "top":I
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 599
    .restart local v4    # "top":I
    nop

    .line 603
    :goto_0
    add-int v5, v4, v2

    .line 604
    .local v5, "bottom":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 605
    .local v6, "left":I
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getWidth()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v3

    .line 607
    .local v7, "right":I
    :goto_2
    invoke-virtual {v0, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 609
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 610
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_4

    .line 611
    invoke-virtual {v8, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 615
    .end local v1    # "verticalGravity":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 617
    if-eqz v0, :cond_6

    .line 618
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getScrollX()I

    move-result v1

    .line 619
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getScrollY()I

    move-result v2

    .line 622
    .local v2, "scrollY":I
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 623
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 625
    :cond_5
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 627
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 630
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_6
    :goto_3
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 538
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 539
    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 540
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 541
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 545
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 546
    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 548
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 549
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 741
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    .line 743
    .local v0, "ss":Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 744
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->threeState:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    .line 745
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    if-eqz v1, :cond_1

    .line 746
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->indeterminate:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 748
    :cond_1
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    .line 750
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->requestLayout()V

    .line 751
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 729
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 731
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 733
    .local v1, "ss":Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    .line 734
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->threeState:Z

    .line 735
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->indeterminate:Z

    .line 736
    return-object v1
.end method

.method public performClick()Z
    .locals 2

    .line 204
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    if-eqz v0, :cond_1

    .line 205
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setTriStateChecked(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->toggle()V

    .line 214
    :goto_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    .line 215
    .local v0, "handled":Z
    if-nez v0, :cond_2

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->playSoundEffect(I)V

    .line 221
    :cond_2
    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .line 403
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    if-ne p1, v0, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 413
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 422
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 423
    if-eqz v0, :cond_0

    .line 424
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 425
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    if-eqz p1, :cond_3

    .line 431
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 436
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.graphics.drawable.Drawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 437
    .local v2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setLayoutDirection"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 438
    .local v3, "m":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getLayoutDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    nop

    .end local v2    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v4, "setLayoutDirection with Exception!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 448
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setMinHeight(I)V

    .line 449
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 452
    :cond_3
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 474
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    .line 477
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 478
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 501
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    .line 504
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 505
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 261
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    .line 262
    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(ZZ)V

    .line 266
    return-void
.end method

.method public setCheckedInternal(ZZ)V
    .locals 4
    .param p1, "checked"    # Z
    .param p2, "force"    # Z

    .line 274
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 275
    .local v0, "checkedChanged":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_5

    .line 276
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->refreshDrawableState()V

    .line 281
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->notifyViewAccessibilityStateChangedIfNeededInternal(I)V

    .line 283
    if-eqz v0, :cond_5

    .line 285
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    if-eqz v3, :cond_2

    .line 286
    return-void

    .line 289
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    .line 290
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_3

    .line 291
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v3}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_4

    .line 294
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v3}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V

    .line 297
    :cond_4
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    .line 300
    :cond_5
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 342
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 343
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 363
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 364
    return-void
.end method

.method public setOnTriStateCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

    .line 352
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnTriStateCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

    .line 353
    return-void
.end method

.method public setThreeState(Z)V
    .locals 0
    .param p1, "threeState"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mThreeState:Z

    .line 232
    return-void
.end method

.method protected setTriStateChecked(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "checked"    # Ljava/lang/Boolean;

    .line 303
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    if-eq v0, v3, :cond_6

    .line 304
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mIndeterminate:Z

    .line 305
    if-eqz p1, :cond_3

    .line 306
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(ZZ)V

    goto :goto_2

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->refreshDrawableState()V

    .line 309
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->notifyViewAccessibilityStateChangedIfNeededInternal(I)V

    .line 312
    :goto_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_4

    .line 313
    return-void

    .line 316
    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnTriStateCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;

    if-eqz v0, :cond_5

    .line 318
    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnTriStateCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Ljava/lang/Boolean;)V

    .line 321
    :cond_5
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    .line 323
    :cond_6
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setCheckedInternal(Z)V

    .line 200
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 668
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
