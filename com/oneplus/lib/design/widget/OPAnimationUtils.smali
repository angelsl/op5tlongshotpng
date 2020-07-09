.class Lcom/oneplus/lib/design/widget/OPAnimationUtils;
.super Ljava/lang/Object;
.source "OPAnimationUtils.java"


# static fields
.field static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 29
    new-instance v0, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 31
    new-instance v0, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .line 38
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static lerp(IIF)I
    .locals 1
    .param p0, "startValue"    # I
    .param p1, "endValue"    # I
    .param p2, "fraction"    # F

    .line 42
    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
