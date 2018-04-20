.class public Lcom/oneplus/screenshot/longshot/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;,
        Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ImageView"

.field private static final TOUCH_MODE_FLING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAnimationDuration:I

.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomY:I

.field private mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

.field private mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageHeight:I

.field protected mIsFirstScroll:Z

.field protected mNavBarHeight:I

.field private mOffsetY:I

.field protected mTouchMode:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/screenshot/longshot/widget/ImageView;)I
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/ImageView;

    .prologue
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mAnimationDuration:I

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/ImageView;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/screenshot/longshot/widget/ImageView;)Landroid/view/ViewParent;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/ImageView;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V
    .registers 1
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/ImageView;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/screenshot/longshot/widget/ImageView;I)V
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/ImageView;
    .param p1, "deltaY"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->trackMotionScroll(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    .line 36
    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    .line 37
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mIsFirstScroll:Z

    .line 42
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 44
    new-instance v1, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    .line 45
    new-instance v1, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    .line 46
    const/16 v1, 0x190

    iput v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mAnimationDuration:I

    .line 47
    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    .line 48
    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    .line 49
    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    .line 56
    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setEnabled(Z)V

    .line 58
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setImagePadding(I)V

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->createGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 62
    return-void
.end method

.method private endFlingAtEdge(I)I
    .registers 4
    .param p1, "deltaY"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mFlingRunnable:Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->-wrap0(Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;Z)V

    .line 195
    return p1
.end method

.method private initDrawMatrix()V
    .registers 13

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 79
    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 80
    .local v4, "matrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_41

    .line 81
    const/4 v6, 0x0

    .line 82
    .local v6, "scale":F
    const/4 v2, 0x0

    .line 83
    .local v2, "dx":F
    const/4 v3, 0x0

    .line 84
    .local v3, "dy":F
    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getPadding()I

    move-result v5

    .line 85
    .local v5, "padding":I
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 86
    .local v1, "dwidth":I
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 87
    .local v0, "dheight":I
    mul-int/lit8 v9, v5, 0x2

    sub-int v8, v1, v9

    .line 88
    .local v8, "vwidth":I
    mul-int/lit8 v9, v5, 0x2

    sub-int v7, v0, v9

    .line 89
    .local v7, "vheight":I
    mul-int v9, v1, v7

    mul-int v10, v8, v0

    if-le v9, v10, :cond_42

    .line 90
    int-to-float v9, v7

    int-to-float v10, v0

    div-float v6, v9, v10

    .line 91
    int-to-float v9, v8

    int-to-float v10, v1

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float v2, v9, v11

    .line 96
    :goto_33
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 97
    add-float v9, v2, v11

    float-to-int v9, v9

    int-to-float v9, v9

    add-float v10, v3, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    .end local v0    # "dheight":I
    .end local v1    # "dwidth":I
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "padding":I
    .end local v6    # "scale":F
    .end local v7    # "vheight":I
    .end local v8    # "vwidth":I
    :cond_41
    return-void

    .line 93
    .restart local v0    # "dheight":I
    .restart local v1    # "dwidth":I
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v5    # "padding":I
    .restart local v6    # "scale":F
    .restart local v7    # "vheight":I
    .restart local v8    # "vwidth":I
    :cond_42
    int-to-float v9, v8

    int-to-float v10, v1

    div-float v6, v9, v10

    .line 94
    int-to-float v9, v7

    int-to-float v10, v0

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float v3, v9, v11

    goto :goto_33
.end method

.method private scrollIntoSlots()V
    .registers 1

    .prologue
    .line 223
    return-void
.end method

.method private trackMotionScroll(I)V
    .registers 4
    .param p1, "deltaY"    # I

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getOffsetY()I

    move-result v0

    add-int/2addr p1, v0

    .line 202
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-lez v0, :cond_25

    .line 203
    if-gez p1, :cond_1a

    .line 204
    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    .line 216
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setOffsetY(I)V

    .line 218
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onScrollChanged(IIII)V

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->invalidate()V

    .line 221
    return-void

    .line 205
    :cond_1a
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-le p1, v0, :cond_10

    .line 206
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    goto :goto_10

    .line 209
    :cond_25
    if-lez p1, :cond_2c

    .line 210
    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    goto :goto_10

    .line 211
    :cond_2c
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-ge p1, v0, :cond_10

    .line 212
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->endFlingAtEdge(I)I

    move-result p1

    goto :goto_10
.end method


# virtual methods
.method protected createGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .registers 2

    .prologue
    .line 187
    new-instance v0, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    return-object v0
.end method

.method public getNavBarHeight()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    return v0
.end method

.method public getOffsetY()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    return v0
.end method

.method protected onCancel()V
    .registers 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onUp()V

    .line 184
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    if-eqz v0, :cond_60

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v3

    .line 107
    .local v3, "width":I
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 108
    .local v6, "config":Landroid/graphics/Bitmap$Config;
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    if-eqz v0, :cond_48

    .line 109
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getPadding()I

    move-result v8

    .line 110
    .local v8, "offset":I
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-gez v0, :cond_38

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getTop()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getBottom()I

    move-result v4

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 113
    :cond_38
    int-to-float v0, v8

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 115
    .local v7, "matrix":Landroid/graphics/Matrix;
    if-eqz v7, :cond_48

    .line 116
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 119
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "offset":I
    :cond_48
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getPaddingLeft()I

    move-result v1

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getOffsetY()I

    move-result v4

    add-int/2addr v2, v4

    .line 121
    sget v4, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    move-object v5, p1

    .line 119
    invoke-static/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawBitmaps(Ljava/util/List;IIIILandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    .end local v3    # "width":I
    .end local v6    # "config":Landroid/graphics/Bitmap$Config;
    :cond_60
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 70
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    if-lez v0, :cond_18

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredWidthAndState()I

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setMeasuredDimension(II)V

    .line 73
    :cond_18
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->initDrawMatrix()V

    .line 74
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    .line 75
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    if-lez v0, :cond_30

    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    div-int/lit8 v0, v0, 0x2

    :goto_2c
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setOffsetY(I)V

    .line 76
    return-void

    .line 75
    :cond_30
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBottomY:I

    goto :goto_2c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 130
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 131
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onUp()V

    .line 138
    :cond_16
    :goto_16
    return v1

    .line 135
    :cond_17
    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onCancel()V

    goto :goto_16

    .line 140
    .end local v0    # "action":I
    .end local v1    # "retValue":Z
    :cond_1e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method protected onUp()V
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    .line 180
    return-void
.end method

.method public setBitmaps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mBitmaps:Ljava/util/List;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mImageHeight:I

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->requestLayout()V

    .line 154
    return-void
.end method

.method public setImagePadding(I)V
    .registers 3
    .param p1, "padding"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mDrawPadding:Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/bitmap/DrawPadding;->setPadding(I)V

    .line 148
    return-void
.end method

.method public setNavBarHeight(I)V
    .registers 7
    .param p1, "value"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    .line 162
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    if-lez v0, :cond_14

    .line 163
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingLeft:I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingTop:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingRight:I

    iget v3, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mPaddingBottom:I

    iget v4, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mNavBarHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->setPadding(IIII)V

    .line 165
    :cond_14
    return-void
.end method

.method public setOffsetY(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mOffsetY:I

    .line 173
    return-void
.end method
