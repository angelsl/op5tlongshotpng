.class public Lcom/oneplus/lib/widget/HintSearchView;
.super Landroid/widget/LinearLayout;
.source "HintSearchView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mHintText:Ljava/lang/String;

.field private mHintView:Landroid/widget/TextView;

.field private mIconSearch:Landroid/widget/ImageView;

.field private mOptionIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mOptionIconView:Landroid/widget/ImageView;

.field private mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSearchIconTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    sget v0, Lcom/oneplus/commonctrl/R$attr;->hintSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/HintSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_persistent_search_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/HintSearchView;->setOrientation(I)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->setFocusable(Z)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->setClickable(Z)V

    .line 38
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->Oneplus_Widget_Desgin_HintSearchView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/HintSearchView;->mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_optionIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/HintSearchView;->mOptionIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/HintSearchView;->mHintText:Ljava/lang/String;

    .line 44
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_iconTintColor:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_icon_color_active_default:I

    .line 45
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/HintSearchView;->mSearchIconTintColor:I

    .line 46
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_android_textColorHint:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_hint_light:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 48
    .local v1, "hintTextColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    sget v2, Lcom/oneplus/commonctrl/R$id;->persistent_search_hint:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mHintView:Landroid/widget/TextView;

    .line 51
    sget v2, Lcom/oneplus/commonctrl/R$id;->persistent_search_icon1:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mIconSearch:Landroid/widget/ImageView;

    .line 52
    sget v2, Lcom/oneplus/commonctrl/R$id;->persistent_search_icon2:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mOptionIconView:Landroid/widget/ImageView;

    .line 53
    iget-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mHintText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->setHintText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 56
    iget v3, p0, Lcom/oneplus/lib/widget/HintSearchView;->mSearchIconTintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v2, p0, Lcom/oneplus/lib/widget/HintSearchView;->mOptionIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/HintSearchView;->setOptionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method


# virtual methods
.method public setHintText(I)V
    .locals 1
    .param p1, "hintTextResId"    # I

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/HintSearchView;->mHintView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/HintSearchView;->setHintText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 63
    iget-object v0, p0, Lcom/oneplus/lib/widget/HintSearchView;->mHintView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setOptionIcon(I)V
    .locals 2
    .param p1, "iconRes"    # I

    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/HintSearchView;->mOptionIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/HintSearchView;->setOptionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setOptionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Lcom/oneplus/lib/widget/HintSearchView;->mOptionIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setSearchIcon(I)V
    .locals 2
    .param p1, "iconRes"    # I

    .line 82
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/HintSearchView;->mIconSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/HintSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/HintSearchView;->setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setSearchIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "searchIcon"    # Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lcom/oneplus/lib/widget/HintSearchView;->mIconSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    return-void
.end method
