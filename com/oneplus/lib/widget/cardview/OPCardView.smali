.class public Lcom/oneplus/lib/widget/cardview/OPCardView;
.super Lcom/oneplus/lib/widget/cardview/CardView;
.source "OPCardView.java"


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorMask:I

.field mCardBackgroundMaskPaint:Landroid/graphics/Paint;

.field private mIsCardSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/cardview/OPCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/cardview/OPCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/cardview/OPCardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->CardView:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->Oneplus_CardView_Light:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardBackgroundColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColor:I

    .line 38
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardBackgroundColorMask:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColorMask:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    iget v1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/cardview/OPCardView;->setCardBackgroundColor(I)V

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mBackgroundColorMask:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 55
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mIsCardSelected:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/OPCardView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/OPCardView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mCardBackgroundMaskPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setCardSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/OPCardView;->mIsCardSelected:Z

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/OPCardView;->invalidate()V

    .line 50
    return-void
.end method
