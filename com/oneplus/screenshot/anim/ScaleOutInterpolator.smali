.class public Lcom/oneplus/screenshot/anim/ScaleOutInterpolator;
.super Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;
.source "ScaleOutInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleOutInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3f27ef9e    # 0.656f

    add-float/2addr v0, v1

    return v0
.end method
