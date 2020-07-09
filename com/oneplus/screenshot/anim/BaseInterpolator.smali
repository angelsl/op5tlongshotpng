.class public abstract Lcom/oneplus/screenshot/anim/BaseInterpolator;
.super Ljava/lang/Object;
.source "BaseInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInterpolator"


# instance fields
.field protected mDurationFactor:F

.field protected mFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/screenshot/anim/BaseInterpolator;->mFactor:F

    .line 20
    iput v0, p0, Lcom/oneplus/screenshot/anim/BaseInterpolator;->mDurationFactor:F

    .line 32
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 33
    sget-object v2, Lcom/oneplus/screenshot/R$styleable;->Interpolator:[I

    invoke-virtual {p2, p3, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 35
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v2, Lcom/oneplus/screenshot/R$styleable;->Interpolator:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 38
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/oneplus/screenshot/anim/BaseInterpolator;->mFactor:F

    .line 40
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/anim/BaseInterpolator;->mDurationFactor:F

    .line 42
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method
