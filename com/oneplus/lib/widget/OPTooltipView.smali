.class public Lcom/oneplus/lib/widget/OPTooltipView;
.super Landroid/widget/LinearLayout;
.source "OPTooltipView.java"


# static fields
.field public static final BOTTOM_DIRECTION:I = 0x4

.field private static final CONTAINER_BACKGROUND_COLOR_ALPHA:F = 0.87f

.field public static final LEFT_DIRECTION:I = 0x1

.field public static final RIGHT_DIRECTION:I = 0x2

.field public static final TOP_DIRECTION:I = 0x3


# instance fields
.field private color:I

.field private mArrowHeight:I

.field private mArrowPath:Landroid/graphics/Path;

.field private mArrowWidth:I

.field private mBody:Landroid/graphics/RectF;

.field private mButton1:Landroid/widget/Button;

.field private mButton2:Landroid/widget/Button;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mDirection:I

.field private mMessage:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mRadius:I

.field private mTitle:Landroid/widget/TextView;

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTooltipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    .line 33
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 34
    const/4 v1, 0x3

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_control_tooltip_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->initView()V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTooltipView;->setWillNotDraw(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_radius_r12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->op_control_tooltip_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->op_control_tooltip_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    .line 56
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->initPaint()V

    .line 57
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/widget/OPTooltipView;->setDirection(IF)V

    .line 58
    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 102
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/OPTooltipView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 103
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->color:I

    .line 107
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    return-void
.end method

.method private initView()V
    .locals 1

    .line 94
    sget v0, Lcom/oneplus/commonctrl/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTooltipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    .line 95
    sget v0, Lcom/oneplus/commonctrl/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTooltipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/oneplus/commonctrl/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTooltipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mMessage:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/oneplus/commonctrl/R$id;->button1:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTooltipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton1:Landroid/widget/Button;

    .line 98
    sget v0, Lcom/oneplus/commonctrl/R$id;->button2:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTooltipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton2:Landroid/widget/Button;

    .line 99
    return-void
.end method

.method private updateMargin()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 263
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 264
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 265
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 266
    goto :goto_0

    .line 256
    :cond_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 257
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 258
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 259
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 260
    goto :goto_0

    .line 250
    :cond_2
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 251
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 252
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 253
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 254
    goto :goto_0

    .line 244
    :cond_3
    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 245
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 246
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 247
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 248
    nop

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v4, v0, :cond_0

    .line 116
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 117
    :cond_0
    if-ne v3, v0, :cond_1

    .line 118
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 119
    :cond_1
    if-ne v2, v0, :cond_2

    .line 120
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 121
    :cond_2
    if-ne v1, v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v0

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTooltipView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    if-ne v4, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 130
    :cond_4
    if-ne v3, v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 132
    :cond_5
    if-ne v2, v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 134
    :cond_6
    if-ne v1, v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mBody:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 139
    return-void
.end method

.method public setDirection(IF)V
    .locals 6
    .param p1, "direction"    # I
    .param p2, "percent"    # F

    .line 142
    iput p1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    .line 143
    iput p2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 144
    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 145
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    goto :goto_0

    .line 146
    :cond_0
    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 147
    iput v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 150
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    .line 151
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 153
    const/4 v0, 0x3

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mDirection:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v2, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 155
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 156
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 157
    .local v0, "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v2, v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 158
    .local v1, "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .local v2, "c":Landroid/graphics/Point;
    goto :goto_1

    .line 159
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 160
    iput v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 161
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 162
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v2, v3

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 163
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "c":Landroid/graphics/Point;
    goto :goto_1

    .line 165
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 166
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v2, v2

    div-int/2addr v2, v4

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 167
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 169
    .restart local v2    # "c":Landroid/graphics/Point;
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 170
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 173
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_4
    const/4 v0, 0x4

    if-ne v0, v2, :cond_7

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 175
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 176
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 177
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v2, v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 178
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v3, v3

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "c":Landroid/graphics/Point;
    goto :goto_2

    .line 179
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 180
    iput v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 181
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 182
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v2, v2

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 183
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "c":Landroid/graphics/Point;
    goto :goto_2

    .line 185
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_6
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 186
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v2, v2

    div-int/2addr v2, v4

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 187
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v3, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 189
    .restart local v2    # "c":Landroid/graphics/Point;
    :goto_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 193
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_7
    const/4 v0, 0x1

    if-ne v0, v2, :cond_a

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 195
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 196
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 197
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 198
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "c":Landroid/graphics/Point;
    goto :goto_3

    .line 199
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 200
    iput v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 201
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 202
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 203
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "c":Landroid/graphics/Point;
    goto :goto_3

    .line 205
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 206
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 207
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v5, v5

    div-int/2addr v5, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 210
    .restart local v2    # "c":Landroid/graphics/Point;
    :goto_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 213
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 214
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_a
    if-ne v4, v2, :cond_d

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    .line 216
    iput v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 217
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 218
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v2, v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 219
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v3, v3

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "c":Landroid/graphics/Point;
    goto :goto_4

    .line 220
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 221
    iput v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mPercent:F

    .line 222
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 223
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mRadius:I

    neg-int v2, v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 224
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .restart local v2    # "c":Landroid/graphics/Point;
    goto :goto_4

    .line 226
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_c
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowHeight:I

    invoke-direct {v0, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 227
    .restart local v0    # "a":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    neg-int v2, v2

    div-int/2addr v2, v4

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 228
    .restart local v1    # "b":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowWidth:I

    div-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 230
    .restart local v2    # "c":Landroid/graphics/Point;
    :goto_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    .end local v0    # "a":Landroid/graphics/Point;
    .end local v1    # "b":Landroid/graphics/Point;
    .end local v2    # "c":Landroid/graphics/Point;
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 236
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->updateMargin()V

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTooltipView;->invalidate()V

    .line 238
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton2:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton2:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton1:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    return-void
.end method

.method public setmMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTooltipView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
