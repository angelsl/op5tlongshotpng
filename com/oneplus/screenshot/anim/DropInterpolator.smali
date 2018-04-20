.class public abstract Lcom/oneplus/screenshot/anim/DropInterpolator;
.super Lcom/oneplus/screenshot/anim/BaseInterpolator;
.source "DropInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DropInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6
    .param p1, "x"    # F

    .prologue
    const/4 v3, 0x0

    .line 22
    iget v0, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    .line 23
    return v3

    .line 25
    :cond_b
    iget v0, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mFactor:F

    mul-float p1, v0, v1

    .line 26
    cmpg-float v0, p1, v3

    if-gez v0, :cond_1f

    .line 27
    const/4 p1, 0x0

    .line 29
    :cond_1f
    return p1
.end method
