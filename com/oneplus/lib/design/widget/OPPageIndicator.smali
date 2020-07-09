.class public Lcom/oneplus/lib/design/widget/OPPageIndicator;
.super Landroid/view/ViewGroup;
.source "OPPageIndicator.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0xfaL

.field private static final DEBUG:Z = false

.field private static final SINGLE_SCALE:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "OPPageIndicator"


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private mMinorAlpha:F

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    .line 228
    new-instance v0, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;-><init>(Lcom/oneplus/lib/design/widget/OPPageIndicator;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 42
    nop

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_qs_page_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_qs_page_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    .line 46
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$integer;->op_pageIndicator_alpha_material:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 48
    .local v0, "alpha":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPPageIndicator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mMinorAlpha:F

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/design/widget/OPPageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/OPPageIndicator;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/OPPageIndicator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/OPPageIndicator;

    .line 19
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/design/widget/OPPageIndicator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/OPPageIndicator;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setPosition(I)V

    return-void
.end method

.method private animate(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 120
    shr-int/lit8 v0, p1, 0x1

    .line 121
    .local v0, "fromIndex":I
    shr-int/lit8 v1, p2, 0x1

    .line 125
    .local v1, "toIndex":I
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    .line 127
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 128
    .local v2, "fromTransition":Z
    :goto_0
    if-eqz v2, :cond_1

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    .line 129
    .local v5, "isAState":Z
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 130
    .local v6, "firstIndex":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 131
    .local v7, "secondIndex":I
    if-ne v7, v6, :cond_3

    .line 132
    add-int/lit8 v7, v7, 0x1

    .line 134
    :cond_3
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 135
    .local v8, "first":Landroid/widget/ImageView;
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 136
    .local v9, "second":Landroid/widget/ImageView;
    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    goto :goto_3

    .line 141
    :cond_4
    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v10

    invoke-virtual {v9}, Landroid/widget/ImageView;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 143
    invoke-direct {p0, v2, v5, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 144
    invoke-direct {p0, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 146
    invoke-direct {p0, v2, v5, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v3

    invoke-direct {p0, v9, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 147
    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 149
    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    .line 150
    return-void

    .line 138
    :cond_5
    :goto_3
    return-void
.end method

.method private forceAnimationOnUI2(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 241
    const-string v0, "Could not invoke forceAnimationOnUI."

    const-string v1, "OPPageIndicator"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "forceAnimationOnUI"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 242
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    nop

    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 246
    :catch_2
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 244
    :catch_3
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Could not find method forceAnimationOnUI."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 253
    :goto_1
    return-void
.end method

.method private getAlpha(Z)F
    .locals 1
    .param p1, "isMajor"    # Z

    .line 153
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mMinorAlpha:F

    :goto_0
    return v0
.end method

.method private getTransition(ZZZ)I
    .locals 1
    .param p1, "fromB"    # Z
    .param p2, "isMajorAState"    # Z
    .param p3, "isMajor"    # Z

    .line 167
    if-eqz p3, :cond_3

    .line 168
    if-eqz p1, :cond_1

    .line 169
    if-eqz p2, :cond_0

    .line 170
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_b_a_animation:I

    return v0

    .line 172
    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_b_c_animation:I

    return v0

    .line 175
    :cond_1
    if-eqz p2, :cond_2

    .line 176
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_a_b_animation:I

    return v0

    .line 178
    :cond_2
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_c_b_animation:I

    return v0

    .line 182
    :cond_3
    if-eqz p1, :cond_5

    .line 183
    if-eqz p2, :cond_4

    .line 184
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_b_c_animation:I

    return v0

    .line 186
    :cond_4
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_b_a_animation:I

    return v0

    .line 189
    :cond_5
    if-eqz p2, :cond_6

    .line 190
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_c_b_animation:I

    return v0

    .line 192
    :cond_6
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_a_b_animation:I

    return v0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "res"    # I

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 158
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->forceAnimationOnUI2(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    .line 160
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 163
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method private setIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    .line 108
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    .local v2, "v":Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 112
    sget v3, Lcom/oneplus/commonctrl/R$drawable;->op_major_a_b:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 108
    .end local v2    # "v":Landroid/widget/ImageView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->isVisibleToUser2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->animate(II)V

    goto :goto_0

    .line 101
    :cond_0
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    .line 103
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    .line 104
    return-void
.end method


# virtual methods
.method isVisibleToUser2()Z
    .locals 7

    .line 257
    const-string v0, "Could not invoke isVisibleToUser."

    const-string v1, "OPPageIndicator"

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isVisibleToUser"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 258
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 259
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 266
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 265
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 262
    :catch_2
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 260
    :catch_3
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "Could not find method isVisibleToUser."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 269
    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 218
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    .line 219
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 223
    iget v2, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v1

    .line 224
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 222
    .end local v2    # "left":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    .line 201
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 202
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 203
    return-void

    .line 205
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 207
    .local v1, "widthChildSpec":I
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 209
    .local v2, "heightChildSpec":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 210
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v3, v5

    add-int/2addr v3, v4

    .line 213
    .local v3, "width":I
    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setMeasuredDimension(II)V

    .line 214
    return-void
.end method

.method public setLocation(F)V
    .locals 7
    .param p1, "location"    # F

    .line 75
    float-to-int v0, p1

    .line 76
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$string;->op_accessibility_quick_settings_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    shl-int/lit8 v1, v0, 0x1

    int-to-float v2, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    move v5, v6

    :cond_0
    or-int/2addr v1, v5

    .line 81
    .local v1, "position":I
    iget v2, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    .line 82
    .local v2, "lastPosition":I
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 85
    :cond_1
    if-ne v1, v2, :cond_2

    return-void

    .line 86
    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    if-eqz v3, :cond_3

    .line 88
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void

    .line 92
    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setPosition(I)V

    .line 93
    return-void
.end method

.method public setNumPages(I)V
    .locals 7
    .param p1, "numPages"    # I

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setVisibility(I)V

    .line 54
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 55
    const-string v2, "OPPageIndicator"

    const-string v3, "setNumPages during animation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->removeViewAt(I)V

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [I

    const v4, 0x1010030

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 62
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 63
    .local v0, "color":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v3

    if-le p1, v3, :cond_3

    .line 65
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v3, "v":Landroid/widget/ImageView;
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->op_minor_a_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 68
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v6, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v3    # "v":Landroid/widget/ImageView;
    goto :goto_2

    .line 71
    :cond_3
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    shr-int/lit8 v1, v3, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    .line 72
    return-void
.end method
