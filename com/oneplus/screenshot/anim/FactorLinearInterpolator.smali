.class public Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;
.super Lcom/oneplus/screenshot/anim/BaseInterpolator;
.source "FactorLinearInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FactorLinearInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "x"    # F

    .line 23
    iget v0, p0, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;->mFactor:F

    mul-float/2addr v0, p1

    return v0
.end method
