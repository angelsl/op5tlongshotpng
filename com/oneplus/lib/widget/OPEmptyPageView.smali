.class public Lcom/oneplus/lib/widget/OPEmptyPageView;
.super Landroid/widget/LinearLayout;
.source "OPEmptyPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_INVALID:I = -0x1

.field public static final ACTION_BUTTON_ONE:I = 0x1

.field public static final ACTION_BUTTON_TWO:I = 0x2

.field public static final ACTION_BUTTON_ZERO:I = 0x0

.field public static final NO_IMAGE:I = 0x0

.field public static final NO_LABEL:I = 0x0

.field public static final NO_NAUGHTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPEmptyPageView"


# instance fields
.field private mBaseView:Landroid/widget/LinearLayout;

.field private mBottomActionTextView:Landroid/widget/TextView;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

.field private mMiddleActionTextView:Landroid/widget/TextView;

.field private mTempView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;

.field private mTopActionTextView:Landroid/widget/TextView;

.field private onActionButtonClickedListener:Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_emptyPageStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_control_empty_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->initView()V

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPEmptyPageView;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method private checkShowComplete()Z
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEmptyImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v2, v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    const/4 v0, -0x1

    .line 232
    .local v0, "topTextHeight":I
    const/4 v2, -0x1

    .line 233
    .local v2, "middleTextHeight":I
    const/4 v3, -0x1

    .line 234
    .local v3, "bottomTextHeight":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 235
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 238
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 241
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 243
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topTextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,middleTextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,bottomTextHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OPEmptyPageView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, "total":I
    const/4 v5, 0x0

    .line 248
    .local v5, "totalHeight":I
    const/4 v6, 0x0

    .line 249
    .local v6, "avHeight":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    .line 250
    add-int/2addr v5, v0

    .line 251
    move v6, v0

    .line 252
    add-int/lit8 v4, v4, 0x1

    .line 254
    :cond_4
    if-eq v2, v7, :cond_5

    .line 255
    add-int/2addr v5, v2

    .line 256
    move v6, v2

    .line 257
    add-int/lit8 v4, v4, 0x1

    .line 259
    :cond_5
    if-eq v3, v7, :cond_6

    .line 260
    add-int/2addr v5, v3

    .line 261
    move v6, v3

    .line 262
    add-int/lit8 v4, v4, 0x1

    .line 264
    :cond_6
    if-eqz v4, :cond_8

    .line 265
    if-eqz v5, :cond_7

    mul-int v7, v6, v4

    if-ne v7, v5, :cond_7

    .line 266
    return v1

    .line 268
    :cond_7
    const/4 v1, 0x0

    return v1

    .line 271
    :cond_8
    return v1
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 70
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_emptyDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_emptyText:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "emptyText":Ljava/lang/String;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionText:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "topText":Ljava/lang/String;
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionClick:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 76
    .local v4, "topActionBoolean":Z
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionText:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "middleText":Ljava/lang/String;
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionClick:I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 78
    .local v7, "middleActionBoolean":Z
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionText:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "bottomText":Ljava/lang/String;
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionClick:I

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 80
    .local v5, "bottomActionBoolean":Z
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionColor:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 82
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_topActionColor:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 83
    .local v9, "topColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setTopActionColor(Landroid/content/res/ColorStateList;)V

    .line 85
    .end local v9    # "topColors":Landroid/content/res/ColorStateList;
    :cond_0
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionColor:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_middleActionColor:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 87
    .local v9, "middleColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setMiddleActionColor(Landroid/content/res/ColorStateList;)V

    .line 89
    .end local v9    # "middleColors":Landroid/content/res/ColorStateList;
    :cond_1
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionColor:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 90
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPEmptyPageView_bottomActionColor:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 91
    .local v9, "bottomColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v9}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setBottomActionColor(Landroid/content/res/ColorStateList;)V

    .line 93
    .end local v9    # "bottomColors":Landroid/content/res/ColorStateList;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setTopActionText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v9, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setMiddleActionText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v9, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 98
    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setBottomActionText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v9, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void
.end method

.method private initView()V
    .locals 2

    .line 104
    const-string v0, "OPEmptyPageView"

    const-string v1, "initView !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_base:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_image:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPEmptyImageView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    .line 107
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_temp:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTempView:Landroid/view/View;

    .line 108
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_content:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/oneplus/commonctrl/R$id;->content_view:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    .line 110
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_top_text:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_middle_text:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/oneplus/commonctrl/R$id;->empty_bottom_text:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getBottomActionTextView()Landroid/widget/TextView;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEmptyImageView()Landroid/widget/ImageView;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    return-object v0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMiddleActionTextView()Landroid/widget/TextView;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopActionTextView()Landroid/widget/TextView;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 430
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->onActionButtonClickedListener:Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;

    if-eqz v0, :cond_4

    .line 431
    const/4 v0, -0x1

    .line 432
    .local v0, "actionButtonName":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-ne v1, p1, :cond_0

    .line 433
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-ne v1, p1, :cond_1

    .line 435
    const/4 v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-ne v1, p1, :cond_2

    .line 437
    const/4 v0, 0x2

    .line 439
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 440
    .local v1, "labelResId":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 441
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 442
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 444
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->onActionButtonClickedListener:Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;

    invoke-interface {v3, v0, v1}, Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;->onEmptyViewActionButtonClicked(II)V

    .line 446
    .end local v0    # "actionButtonName":I
    .end local v1    # "labelResId":I
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 205
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 225
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 120
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEmptyImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEmptyImageView;->isSetGoneFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 125
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_4

    .line 129
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEmptyImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "totalHeight":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 133
    .local v2, "count":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 134
    .local v4, "baseViewHeight":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->forceLayout()V

    .line 135
    iget-object v5, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    .line 136
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    .line 138
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 135
    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->measure(II)V

    .line 140
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 141
    iget-object v6, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 142
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 143
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    move v0, v8

    .line 140
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    .end local v5    # "i":I
    :cond_2
    if-le v0, v4, :cond_3

    .line 148
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setHideForNoSpace()V

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->forceLayout()V

    .line 151
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    .line 152
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 154
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 151
    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 156
    .end local v0    # "totalHeight":I
    .end local v2    # "count":I
    .end local v4    # "baseViewHeight":I
    goto/16 :goto_3

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_8

    .line 158
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEmptyImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "totalHeight":I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 162
    .local v0, "count":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 163
    .local v4, "baseViewWidth":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    .line 164
    .local v5, "baseViewHeight":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    .line 165
    .local v6, "contentViewHeight":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->forceLayout()V

    .line 166
    iget-object v7, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    .line 167
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    .line 169
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 166
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->measure(II)V

    .line 171
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v0, :cond_6

    .line 172
    iget-object v8, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 173
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v1, :cond_5

    .line 174
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    move v2, v10

    .line 171
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 178
    .end local v7    # "i":I
    :cond_6
    if-le v2, v6, :cond_7

    .line 179
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setHideForNoSpace()V

    .line 180
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 182
    iget-object v7, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v7, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->forceLayout()V

    .line 184
    iget-object v7, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBaseView:Landroid/widget/LinearLayout;

    .line 185
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 187
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 184
    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 189
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_2

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->forceLayout()V

    .line 191
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mContentView:Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 194
    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 191
    invoke-virtual {v1, v7, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 197
    .end local v0    # "count":I
    .end local v2    # "totalHeight":I
    .end local v4    # "baseViewWidth":I
    .end local v5    # "baseViewHeight":I
    .end local v6    # "contentViewHeight":I
    :goto_2
    goto :goto_3

    .line 199
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 201
    :cond_9
    :goto_3
    return-void
.end method

.method public setActionClickedListener(Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;

    .line 404
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->onActionButtonClickedListener:Lcom/oneplus/lib/widget/OPEmptyPageView$OnEmptyViewActionButtonClickedListener;

    .line 405
    return-void
.end method

.method public setActionLabel(II)V
    .locals 2
    .param p1, "resourceId"    # I
    .param p2, "actionButtonName"    # I

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "actionText":Landroid/widget/TextView;
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    .line 459
    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    .line 456
    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    .line 453
    nop

    .line 463
    :goto_0
    if-nez v0, :cond_3

    .line 464
    return-void

    .line 466
    :cond_3
    if-nez p1, :cond_4

    .line 467
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 470
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 472
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    :goto_1
    return-void
.end method

.method public setBottomActionColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 392
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    :cond_0
    return-void
.end method

.method public setBottomActionColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 398
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 401
    :cond_0
    return-void
.end method

.method public setBottomActionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 375
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    :cond_0
    return-void
.end method

.method public setBottomActionText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 381
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mBottomActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_1
    return-void
.end method

.method public setDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .line 419
    if-nez p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 424
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    :goto_0
    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_0
    return-void
.end method

.method public setEmptyImageVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 280
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setVisibility(I)V

    .line 281
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTempView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTempView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :goto_0
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 299
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    return-void
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setImageResource(I)V

    .line 410
    if-nez p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setVisibility(I)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mImageView:Lcom/oneplus/lib/widget/OPEmptyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPEmptyImageView;->setVisibility(I)V

    .line 416
    :cond_1
    :goto_0
    return-void
.end method

.method public setMiddleActionColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 353
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public setMiddleActionColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 359
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 362
    :cond_0
    return-void
.end method

.method public setMiddleActionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 365
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :cond_0
    return-void
.end method

.method public setMiddleActionText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 342
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mMiddleActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_1
    return-void
.end method

.method public setTopActionColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 320
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    :cond_0
    return-void
.end method

.method public setTopActionColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 326
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 329
    :cond_0
    return-void
.end method

.method public setTopActionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_0
    return-void
.end method

.method public setTopActionText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 309
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEmptyPageView;->mTopActionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1
    return-void
.end method
