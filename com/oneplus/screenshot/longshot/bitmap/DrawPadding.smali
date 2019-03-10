.class public Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;
.super Ljava/lang/Object;
.source "DrawPadding.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawPadding"


# instance fields
.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPadding:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPadding()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    return v0
.end method

.method public setPadding(I)V
    .registers 3
    .param p1, "padding"    # I

    .line 24
    iput p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    .line 25
    iget v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mPadding:I

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mDrawMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_e

    .line 28
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->mMatrix:Landroid/graphics/Matrix;

    .line 30
    :goto_e
    return-void
.end method
