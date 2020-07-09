.class public Lcom/oneplus/lib/widget/OPCompletePageView;
.super Landroid/widget/LinearLayout;
.source "OPCompletePageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPCompletePageView$Status;,
        Lcom/oneplus/lib/widget/OPCompletePageView$ActionLabel;
    }
.end annotation


# static fields
.field public static final LABEL_BOTTOM_FIX_ACTION:I = 0x3

.field public static final LABEL_BOTTOM_LEFT_ACTION:I = 0x4

.field public static final LABEL_BOTTOM_MEDIUM_ACTION:I = 0x2

.field public static final LABEL_BOTTOM_RIGHT_ACTION:I = 0x5

.field public static final LABEL_MIDDLE_BOTTOM_ACTION:I = 0x1

.field public static final LABEL_MIDDLE_TOP_ACTION:I = 0x0

.field public static final STATUS_COMPLETE:I = 0x0

.field public static final STATUS_ERROR:I = 0x1


# instance fields
.field private mBottomFixActionButton:Lcom/oneplus/lib/widget/button/OPButton;

.field private mBottomLeftActionButton:Lcom/oneplus/lib/widget/button/OPButton;

.field private mBottomMediumActionButton:Lcom/oneplus/lib/widget/button/OPButton;

.field private mBottomRightActionButton:Lcom/oneplus/lib/widget/button/OPButton;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mContentText:Landroid/widget/TextView;

.field private mIconColor:Landroid/content/res/ColorStateList;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mMiddleBottomActionButton:Lcom/oneplus/lib/widget/button/OPButton;

.field private mMiddleTopActionButton:Lcom/oneplus/lib/widget/button/OPButton;

.field private mStatus:I

.field private mSubHeadingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_completePageStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mStatus:I

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_complete_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPCompletePageView;->initView()V

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPCompletePageView;->initArrayTyped(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method private checkStatus()V
    .locals 2

    .line 153
    iget v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mStatus:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPCompletePageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->ic_success_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPCompletePageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->ic_error_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPCompletePageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->ic_success_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    nop

    .line 164
    :goto_0
    return-void
.end method

.method private initArrayTyped(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 100
    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 101
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeDrawable:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 102
    .local v6, "iconDrawable":Landroid/graphics/drawable/Drawable;
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeStatus:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeStatus:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mStatus:I

    .line 105
    :cond_0
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeTitle:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "completeTitle":Ljava/lang/String;
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeSubHeading:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "completeSubHeading":Ljava/lang/String;
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeMiddleTopActionText:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "middleTopActionText":Ljava/lang/String;
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeMiddleBottomActionText:I

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "middleBottomActionText":Ljava/lang/String;
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeBottomFixActionText:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "bottomFixActionText":Ljava/lang/String;
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeBottomMediumActionText:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, "bottomMediumActionText":Ljava/lang/String;
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeBottomLeftActionText:I

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "bottomLeftActionText":Ljava/lang/String;
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeBottomRightActionText:I

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 114
    .local v14, "bottomRightActionText":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/OPCompletePageView;->setCompleteTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/OPCompletePageView;->setCompleteSubHeading(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v15, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleTopActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {v0, v15, v9}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 117
    iget-object v15, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleBottomActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {v0, v15, v10}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 118
    iget-object v15, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomFixActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {v0, v15, v11}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 119
    iget-object v15, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomMediumActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {v0, v15, v12}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 120
    iget-object v15, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomLeftActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {v0, v15, v13}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 121
    iget-object v15, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomRightActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {v0, v15, v14}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 123
    if-nez v6, :cond_1

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPCompletePageView;->checkStatus()V

    goto :goto_0

    .line 126
    :cond_1
    iput-object v6, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    :goto_0
    iget-object v15, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v15}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 130
    .local v15, "wrapDrawable":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeIconColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPCompletePageView_completeIconColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconColor:Landroid/content/res/ColorStateList;

    .line 132
    iget-object v2, v0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-static {v15, v2}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_2
    invoke-virtual {v0, v15}, Lcom/oneplus/lib/widget/OPCompletePageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    return-void
.end method

.method private initView()V
    .locals 1

    .line 140
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_icon:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconView:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_title:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mContentText:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_subheading_title:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_middle_top_action:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleTopActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    .line 144
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_middle_bottom_action:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleBottomActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    .line 145
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_bottom_single_medium_action:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomMediumActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    .line 146
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_bottom_single_fix_action:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomFixActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    .line 147
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_bottom_left_action:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomLeftActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    .line 148
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_bottom_right_action:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomRightActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    .line 149
    sget v0, Lcom/oneplus/commonctrl/R$id;->complete_button_layout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 150
    return-void
.end method

.method private setActionButtonClickListener(Lcom/oneplus/lib/widget/button/OPButton;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "button"    # Lcom/oneplus/lib/widget/button/OPButton;
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .line 260
    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/button/OPButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setClickable(Z)V

    .line 264
    :cond_0
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_1
    return-void
.end method

.method private setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "button"    # Lcom/oneplus/lib/widget/button/OPButton;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 205
    if-eqz p1, :cond_2

    .line 206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    :cond_1
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/button/OPButton;->setVisibility(I)V

    .line 214
    :goto_0
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/button/OPButton;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_2
    return-void
.end method


# virtual methods
.method public getBottomFixActionButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomFixActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method public getBottomLeftActionButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomLeftActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method public getBottomMediumActionButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomMediumActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method public getBottomRightActionButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomRightActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method public getCompleteSubHeading()Ljava/lang/CharSequence;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCompleteTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mContentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 341
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMiddleBottomActionButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleBottomActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method public getMiddleTopActionButton()Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleTopActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method public getStaus()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mStatus:I

    return v0
.end method

.method public getSubHeadingTextView()Landroid/widget/TextView;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method public setActionClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "label"    # I
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .line 228
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomRightActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionButtonClickListener(Lcom/oneplus/lib/widget/button/OPButton;Landroid/view/View$OnClickListener;)V

    .line 246
    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomLeftActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionButtonClickListener(Lcom/oneplus/lib/widget/button/OPButton;Landroid/view/View$OnClickListener;)V

    .line 243
    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomFixActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionButtonClickListener(Lcom/oneplus/lib/widget/button/OPButton;Landroid/view/View$OnClickListener;)V

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomMediumActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionButtonClickListener(Lcom/oneplus/lib/widget/button/OPButton;Landroid/view/View$OnClickListener;)V

    .line 240
    goto :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleBottomActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionButtonClickListener(Lcom/oneplus/lib/widget/button/OPButton;Landroid/view/View$OnClickListener;)V

    .line 234
    goto :goto_0

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleTopActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionButtonClickListener(Lcom/oneplus/lib/widget/button/OPButton;Landroid/view/View$OnClickListener;)V

    .line 231
    nop

    .line 250
    :goto_0
    return-void
.end method

.method public setActionText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 175
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomRightActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 193
    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomLeftActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 190
    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomFixActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 187
    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mBottomMediumActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 184
    goto :goto_0

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleBottomActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 181
    goto :goto_0

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mMiddleTopActionButton:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/OPCompletePageView;->setActionText(Lcom/oneplus/lib/widget/button/OPButton;Ljava/lang/CharSequence;)V

    .line 178
    nop

    .line 197
    :goto_0
    return-void
.end method

.method public setCompleteSubHeading(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 350
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mSubHeadingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_1
    return-void
.end method

.method public setCompleteTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 327
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mContentText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mContentText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mContentText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_1
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPCompletePageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 292
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    :cond_0
    return-void
.end method

.method public setIconColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 314
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 315
    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 319
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setIconColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorList"    # Landroid/content/res/ColorStateList;

    .line 300
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconColor:Landroid/content/res/ColorStateList;

    .line 301
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 302
    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 306
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 374
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mStatus:I

    .line 377
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mStatus:I

    .line 378
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPCompletePageView;->checkStatus()V

    .line 379
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    .local v0, "wrapDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 382
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 383
    .end local v0    # "wrapDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPCompletePageView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPCompletePageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :goto_0
    return-void
.end method
