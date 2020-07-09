.class public Lcom/oneplus/lib/app/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/lib/app/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 35
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 37
    .local v1, "lineCount":I
    if-lez v1, :cond_1

    .line 38
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 39
    .local v2, "ellipsisCount":I
    if-lez v2, :cond_1

    .line 40
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/DialogTitle;->setSingleLine(Z)V

    .line 41
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/app/DialogTitle;->setMaxLines(I)V

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/lib/app/DialogTitle;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 43
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textSize:I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 44
    .local v5, "textSize":I
    if-eqz v5, :cond_0

    .line 45
    int-to-float v6, v5

    invoke-virtual {p0, v3, v6}, Lcom/oneplus/lib/app/DialogTitle;->setTextSize(IF)V

    .line 48
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 54
    .end local v1    # "lineCount":I
    .end local v2    # "ellipsisCount":I
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "textSize":I
    :cond_1
    return-void
.end method
