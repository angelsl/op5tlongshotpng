.class public Lcom/oneplus/lib/design/widget/BadgeView;
.super Landroid/view/View;
.source "BadgeView.java"


# instance fields
.field private mBackgroundColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mDefaultSize:I

.field private final mDefaultSizeIndeterminate:I

.field private final mDefaultTextPadding:I

.field private final mDefaultTextSize:I

.field private mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

.field private mText:Ljava/lang/String;

.field private mTextColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_mini_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSize:I

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_size_indeterminate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSizeIndeterminate:I

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextSize:I

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_text_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextPadding:I

    .line 45
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    return-void
.end method


# virtual methods
.method bindNotification(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;)V
    .locals 5
    .param p1, "notification"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    .line 52
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    .line 54
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getNumber()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    const-string v0, "99+"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mText:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isUseDefaultTextColor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$color;->bottom_navigation_badge_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getTextColor()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextColor:I

    .line 56
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isUseDefaultBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$color;->bottom_navigation_badge_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getBackgroundColor()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundColor:I

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 59
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextWidth:F

    .line 60
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 61
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextHeight:F

    .line 63
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/BadgeView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->invalidate()V

    .line 68
    return-void
.end method

.method public getNotification()Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 82
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isIndeterminate()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSizeIndeterminate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 86
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v10, v0, v1

    iget-object v11, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextHeight:F

    const v4, 0x400a3d71    # 2.16f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 90
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 94
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mTextWidth:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultTextPadding:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 96
    .local v0, "contentWidth":F
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSize:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 97
    .local v1, "widthSpec":I
    iget v3, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mDefaultSize:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 98
    .local v2, "heightSpec":I
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/design/widget/BadgeView;->setMeasuredDimension(II)V

    .line 99
    .end local v0    # "contentWidth":F
    .end local v1    # "widthSpec":I
    .end local v2    # "heightSpec":I
    goto :goto_1

    .line 100
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 102
    :goto_1
    return-void
.end method

.method unbindNotification()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BadgeView;->mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BadgeView;->invalidate()V

    .line 73
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BadgeView;->setVisibility(I)V

    .line 74
    return-void
.end method
