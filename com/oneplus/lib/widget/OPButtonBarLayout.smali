.class public Lcom/oneplus/lib/widget/OPButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "OPButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    .line 45
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPButtonBarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPButtonBarLayout_op_allowStacking:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method

.method private isStacked()Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setStacked(Z)V
    .locals 3
    .param p1, "stacked"    # Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setOrientation(I)V

    .line 108
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setGravity(I)V

    .line 115
    sget v0, Lcom/oneplus/commonctrl/R$id;->spacer:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "spacer":Landroid/view/View;
    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_1
    sget v2, Lcom/oneplus/commonctrl/R$id;->spacer2:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    .local v2, "spacer2":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 122
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_3
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 64
    .local v0, "widthSize":I
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eqz v1, :cond_1

    .line 65
    iget v1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 70
    :cond_0
    iput v0, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    .line 73
    :cond_1
    const/4 v1, 0x0

    .line 79
    .local v1, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_2

    .line 80
    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 83
    .local v2, "initialWidthMeasureSpec":I
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "initialWidthMeasureSpec":I
    :cond_2
    move v2, p1

    .line 88
    .restart local v2    # "initialWidthMeasureSpec":I
    :goto_0
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v3

    .line 92
    .local v3, "measuredWidth":I
    const/high16 v4, -0x1000000

    and-int/2addr v4, v3

    .line 93
    .local v4, "measuredWidthState":I
    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_3

    .line 94
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 97
    const/4 v1, 0x1

    .line 101
    .end local v3    # "measuredWidth":I
    .end local v4    # "measuredWidthState":I
    :cond_3
    if-eqz v1, :cond_4

    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 104
    :cond_4
    return-void
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .line 51
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 52
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    .line 53
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->requestLayout()V

    .line 58
    :cond_1
    return-void
.end method
