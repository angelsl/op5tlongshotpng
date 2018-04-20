.class public Lcom/oneplus/screenshot/longshot/widget/EditView;
.super Lcom/oneplus/screenshot/longshot/widget/ImageView;
.source "EditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditView"

.field private static final TOUCH_MODE_EDIT:I = 0x3


# instance fields
.field private mCutBottom:I

.field private mCutPosition:I

.field private mDimDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/content/Context;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/EditView;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/view/ViewParent;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/EditView;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/screenshot/longshot/widget/EditView;II)Z
    .registers 4
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/EditView;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->hitDrag(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/screenshot/longshot/widget/EditView;I)V
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/widget/EditView;
    .param p1, "deltaY"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->trackMotionDrag(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput v3, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    .line 31
    iput v3, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    .line 32
    iput v3, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    .line 39
    sget-object v2, Lcom/oneplus/screenshot/R$styleable;->EditView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 44
    .local v1, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    .line 45
    return-void
.end method

.method private hitDrag(II)Z
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    neg-int v1, v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 105
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private trackMotionDrag(I)V
    .registers 4
    .param p1, "deltaY"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v0

    add-int/2addr p1, v0

    .line 112
    if-gez p1, :cond_13

    .line 113
    const/4 p1, 0x0

    .line 118
    :cond_9
    :goto_9
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->setCutPosition(I)V

    .line 120
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->onScrollChanged(IIII)V

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->invalidate()V

    .line 123
    return-void

    .line 114
    :cond_13
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    if-le p1, v0, :cond_9

    .line 115
    iget p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    goto :goto_9
.end method


# virtual methods
.method protected createGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .registers 2

    .prologue
    .line 85
    new-instance v0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/EditView;)V

    return-object v0
.end method

.method public getCutPosition()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-super/range {p0 .. p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8d

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v2

    .line 62
    .local v2, "cutPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingLeft()I

    move-result v14

    .line 63
    .local v14, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingTop()I

    move-result v16

    .line 64
    .local v16, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingRight()I

    move-result v15

    .line 65
    .local v15, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingBottom()I

    move-result v13

    .line 66
    .local v13, "paddingBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 67
    .local v12, "dragWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 68
    .local v8, "dragHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getWidth()I

    move-result v17

    sub-int v17, v17, v14

    sub-int v17, v17, v15

    sub-int v17, v17, v12

    shr-int/lit8 v9, v17, 0x1

    .line 69
    .local v9, "dragLeft":I
    shr-int/lit8 v17, v8, 0x1

    sub-int v11, v2, v17

    .line 70
    .local v11, "dragTop":I
    add-int v10, v9, v12

    .line 71
    .local v10, "dragRight":I
    add-int v7, v11, v8

    .line 72
    .local v7, "dragBottom":I
    move v4, v14

    .line 73
    .local v4, "dimLeft":I
    move v6, v2

    .line 74
    .local v6, "dimTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getWidth()I

    move-result v17

    sub-int v5, v17, v15

    .line 75
    .local v5, "dimRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getHeight()I

    move-result v17

    sub-int v3, v17, v13

    .line 76
    .local v3, "dimBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v11, v10, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    .end local v2    # "cutPosition":I
    .end local v3    # "dimBottom":I
    .end local v4    # "dimLeft":I
    .end local v5    # "dimRight":I
    .end local v6    # "dimTop":I
    .end local v7    # "dragBottom":I
    .end local v8    # "dragHeight":I
    .end local v9    # "dragLeft":I
    .end local v10    # "dragRight":I
    .end local v11    # "dragTop":I
    .end local v12    # "dragWidth":I
    .end local v13    # "paddingBottom":I
    .end local v14    # "paddingLeft":I
    .end local v15    # "paddingRight":I
    .end local v16    # "paddingTop":I
    :cond_8d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onMeasure(II)V

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    .line 54
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mNavBarHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->setCutPosition(I)V

    .line 55
    return-void
.end method

.method public setCutPosition(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    .line 97
    return-void
.end method
