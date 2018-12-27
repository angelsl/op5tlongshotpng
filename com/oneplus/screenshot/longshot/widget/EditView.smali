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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    .line 31
    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    .line 32
    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    .line 39
    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->EditView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 40
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 44
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mTouchSlop:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/view/ViewParent;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/widget/EditView;

    .line 16
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/widget/EditView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/widget/EditView;
    .param p1, "x1"    # I

    .line 16
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->trackMotionDrag(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/widget/EditView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/widget/EditView;

    .line 16
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/widget/EditView;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/widget/EditView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->hitDrag(II)Z

    move-result v0

    return v0
.end method

.method private hitDrag(II)Z
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 103
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

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
    .registers 3
    .param p1, "deltaY"    # I

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v0

    add-int/2addr p1, v0

    .line 112
    if-gez p1, :cond_9

    .line 113
    const/4 p1, 0x0

    goto :goto_f

    .line 114
    :cond_9
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    if-le p1, v0, :cond_f

    .line 115
    iget p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutBottom:I

    .line 118
    :cond_f
    :goto_f
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/EditView;->setCutPosition(I)V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->onScrollChanged(IIII)V

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->invalidate()V

    .line 123
    return-void
.end method


# virtual methods
.method protected createGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .registers 2

    .line 85
    new-instance v0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/EditView;)V

    return-object v0
.end method

.method public getCutPosition()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 59
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    iget-object v2, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_65

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getCutPosition()I

    move-result v2

    .line 62
    .local v2, "cutPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingLeft()I

    move-result v3

    .line 63
    .local v3, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingTop()I

    move-result v4

    .line 64
    .local v4, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingRight()I

    move-result v5

    .line 65
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getPaddingBottom()I

    move-result v6

    .line 66
    .local v6, "paddingBottom":I
    iget-object v7, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 67
    .local v7, "dragWidth":I
    iget-object v8, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 68
    .local v8, "dragHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    sub-int/2addr v9, v5

    sub-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x1

    .line 69
    .local v9, "dragLeft":I
    shr-int/lit8 v10, v8, 0x1

    sub-int v10, v2, v10

    .line 70
    .local v10, "dragTop":I
    add-int v11, v9, v7

    .line 71
    .local v11, "dragRight":I
    add-int v12, v10, v8

    .line 72
    .local v12, "dragBottom":I
    move v13, v3

    .line 73
    .local v13, "dimLeft":I
    move v14, v2

    .line 74
    .local v14, "dimTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v5

    .line 75
    .local v15, "dimRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/widget/EditView;->getHeight()I

    move-result v16

    move/from16 v17, v2

    sub-int v2, v16, v6

    .line 76
    .local v2, "dimBottom":I
    .local v17, "cutPosition":I
    move/from16 v18, v3

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    .end local v3    # "paddingLeft":I
    .local v18, "paddingLeft":I
    invoke-virtual {v3, v13, v14, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    .end local v2    # "dimBottom":I
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingRight":I
    .end local v6    # "paddingBottom":I
    .end local v7    # "dragWidth":I
    .end local v8    # "dragHeight":I
    .end local v9    # "dragLeft":I
    .end local v10    # "dragTop":I
    .end local v11    # "dragRight":I
    .end local v12    # "dragBottom":I
    .end local v13    # "dimLeft":I
    .end local v14    # "dimTop":I
    .end local v15    # "dimRight":I
    .end local v17    # "cutPosition":I
    .end local v18    # "paddingLeft":I
    :cond_65
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

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

    .line 96
    iput p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView;->mCutPosition:I

    .line 97
    return-void
.end method
