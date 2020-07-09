.class public Lcom/oneplus/lib/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D

.field private static final RADIX:I = 0xa


# instance fields
.field private mCount:I

.field private mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/lib/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    .line 25
    const/16 v0, 0x63

    iput v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 49
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setFocusable(Z)V

    .line 50
    return-void
.end method

.method private handleKeyUp(I)Z
    .locals 6
    .param p1, "keyCode"    # I

    .line 248
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    .line 250
    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-lez v2, :cond_1

    .line 251
    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 252
    sub-int/2addr v2, v1

    iput v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 255
    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    if-ge v2, v3, :cond_1

    .line 256
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->numericKeyCodeToInt(I)I

    move-result v2

    .line 257
    .local v2, "keyValue":I
    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    .line 258
    .local v3, "newValue":I
    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-gt v3, v4, :cond_1

    .line 259
    iput v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 260
    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    .line 268
    .end local v2    # "keyValue":I
    .end local v3    # "newValue":I
    :cond_1
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-lez v2, :cond_2

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "formattedValue":Ljava/lang/String;
    goto :goto_1

    .line 274
    .end local v2    # "formattedValue":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    .line 277
    .restart local v2    # "formattedValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz v3, :cond_6

    .line 280
    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-lt v3, v4, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    .line 281
    .local v3, "isValid":Z
    :goto_2
    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    iget v5, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    mul-int/lit8 v4, v4, 0xa

    iget v5, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-le v4, v5, :cond_5

    :cond_4
    move v0, v1

    .line 282
    .local v0, "isFinished":Z
    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    iget v5, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-interface {v4, p0, v5, v3, v0}, Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    .line 285
    .end local v0    # "isFinished":Z
    .end local v3    # "isValid":Z
    :cond_6
    return v1

    .line 264
    .end local v2    # "formattedValue":Ljava/lang/String;
    :cond_7
    return v0
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 289
    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static numericKeyCodeToInt(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 297
    add-int/lit8 v0, p0, -0x7

    return v0
.end method

.method private updateDisplayedValue()V
    .locals 4

    .line 183
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "format":Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "%d"

    .line 191
    .restart local v0    # "format":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method private updateMinimumWidth()V
    .locals 7

    .line 201
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    .local v0, "previousText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 204
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-ge v2, v3, :cond_1

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0, v6, v6}, Lcom/oneplus/lib/widget/NumericTextView;->measure(II)V

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumericTextView;->getMeasuredWidth()I

    move-result v3

    .line 209
    .local v3, "width":I
    if-le v3, v1, :cond_0

    .line 210
    move v1, v3

    .line 204
    .end local v3    # "width":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setMinWidth(I)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setMinimumWidth(I)V

    .line 217
    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    return-object v0
.end method

.method public final getRangeMaximum()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    return v0
.end method

.method public final getRangeMinimum()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    return v0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 56
    const-string v0, ""

    if-eqz p1, :cond_0

    .line 57
    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mPreviousValue:I

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 59
    iput v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-nez v1, :cond_1

    .line 67
    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mPreviousValue:I

    iput v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/NumericTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 74
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-ge v0, v1, :cond_2

    .line 75
    iput v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 78
    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz v0, :cond_3

    .line 81
    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2, v2}, Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    .line 84
    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 229
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 231
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 229
    :goto_1
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 236
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 236
    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 243
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 243
    :goto_1
    return v0
.end method

.method public final setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    .line 220
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    .line 221
    return-void
.end method

.method public final setRange(II)V
    .locals 4
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .line 122
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_0

    .line 123
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    .line 126
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-eq v0, p2, :cond_1

    .line 127
    iput p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    .line 128
    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/oneplus/lib/widget/NumericTextView;->LOG_RADIX:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    .line 130
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateMinimumWidth()V

    .line 131
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    .line 133
    :cond_1
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1
    .param p1, "showLeadingZeroes"    # Z

    .line 164
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_0

    .line 165
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 167
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    .line 169
    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 96
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_0

    .line 97
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 99
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    .line 101
    :cond_0
    return-void
.end method
