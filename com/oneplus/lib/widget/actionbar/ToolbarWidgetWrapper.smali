.class public Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/actionbar/DecorToolbar;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Lcom/oneplus/lib/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Z)V
    .locals 2
    .param p1, "toolbar"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .param p2, "style"    # Z

    .line 83
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_ab_back_material:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;ZII)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;ZII)V
    .locals 16
    .param p1, "toolbar"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .line 88
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 79
    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 89
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 92
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/oneplus/commonctrl/R$styleable;->ActionBar:[I

    sget v6, Lcom/oneplus/commonctrl/R$attr;->actionBarStyle:I

    invoke-static {v3, v4, v5, v6, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v3

    .line 96
    .local v3, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    if-eqz p2, :cond_d

    .line 98
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_title:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 99
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v3, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 104
    .local v5, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 105
    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_2
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_logo:I

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 109
    .local v6, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 110
    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_3
    sget v7, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_icon:I

    invoke-virtual {v3, v7}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 114
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 115
    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_4
    iget-object v8, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 118
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_5
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_op_displayOptions:I

    invoke-virtual {v3, v8, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 122
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v3, v8, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 124
    .local v8, "customNavId":I
    if-eqz v8, :cond_6

    .line 125
    iget-object v9, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v9, v8, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 127
    iget v9, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 130
    :cond_6
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v3, v9, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 131
    .local v9, "height":I
    if-lez v9, :cond_7

    .line 132
    iget-object v10, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 133
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget-object v11, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v11, v10}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 139
    .local v10, "contentInsetStart":I
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v3, v12, v11}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 141
    .local v11, "contentInsetEnd":I
    if-gez v10, :cond_8

    if-ltz v11, :cond_9

    .line 142
    :cond_8
    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 143
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 142
    invoke-virtual {v12, v13, v14}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setContentInsetsRelative(II)V

    .line 146
    :cond_9
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v3, v12, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 147
    .local v12, "titleTextStyle":I
    if-eqz v12, :cond_a

    .line 148
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v13}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 151
    :cond_a
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v3, v13, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v13

    .line 153
    .local v13, "subtitleTextStyle":I
    if-eqz v13, :cond_b

    .line 154
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v14}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 157
    :cond_b
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_android_popupTheme:I

    invoke-virtual {v3, v14, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 158
    .local v1, "popupTheme":I
    if-eqz v1, :cond_c

    .line 159
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v14, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setPopupTheme(I)V

    .line 161
    .end local v1    # "popupTheme":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "subtitle":Ljava/lang/CharSequence;
    .end local v6    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "customNavId":I
    .end local v9    # "height":I
    .end local v10    # "contentInsetStart":I
    .end local v11    # "contentInsetEnd":I
    .end local v12    # "titleTextStyle":I
    .end local v13    # "subtitleTextStyle":I
    :cond_c
    goto :goto_1

    .line 162
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 164
    :goto_1
    invoke-virtual {v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 166
    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 167
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 169
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    new-instance v5, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;

    invoke-direct {v5, v0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$1;-><init>(Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method private detectDisplayOptions()I
    .locals 2

    .line 193
    const/16 v0, 0xb

    .line 195
    .local v0, "opts":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    or-int/lit8 v0, v0, 0x4

    .line 197
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 199
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/oneplus/commonctrl/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/lib/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    .line 492
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    const v1, 0x800013

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(III)V

    .line 494
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 247
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 248
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .line 617
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 624
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationIcon()V
    .locals 2

    .line 598
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :goto_1
    return-void
.end method

.method private updateToolbarLogo()V
    .locals 3

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    .line 311
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 317
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 318
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 543
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 545
    .local v0, "anim":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 548
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->collapseActionView()V

    .line 220
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->dismissPopupMenus()V

    .line 363
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 445
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .line 273
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public initProgress()V
    .locals 2

    .line 268
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 633
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 634
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 628
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 629
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 638
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 639
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .line 435
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setCollapsible(Z)V

    .line 436
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 527
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 530
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 531
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;)V

    .line 534
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .line 183
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 190
    :cond_1
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 591
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 592
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 593
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 595
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .line 372
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 373
    .local v0, "oldOpts":I
    xor-int v1, v0, p1

    .line 374
    .local v1, "changed":I
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 375
    if-eqz v1, :cond_6

    .line 376
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 377
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 383
    :cond_1
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_2

    .line 384
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 387
    :cond_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_4

    .line 388
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 389
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 397
    :cond_4
    :goto_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 398
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_5

    .line 399
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 401
    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 405
    :cond_6
    :goto_1
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 501
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 502
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 503
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 504
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 508
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/Spinner;->setSelection(I)V

    .line 513
    return-void

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V
    .locals 3
    .param p1, "tabView"    # Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    .line 409
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-ne v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 413
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 414
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;I)V

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 416
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->width:I

    .line 417
    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->height:I

    .line 418
    const v1, 0x800053

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 419
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 421
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 441
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 288
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 293
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 294
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 295
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 299
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 300
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 304
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 305
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 306
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 352
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 354
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    sget v1, Lcom/oneplus/commonctrl/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setId(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 357
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setMenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    .line 358
    return-void
.end method

.method public setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "actionMenuPresenterCallback"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 659
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 660
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 348
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 613
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 614
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 607
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 608
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 609
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 586
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 587
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 580
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 581
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 582
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 450
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 451
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_5

    .line 452
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-ne v3, v4, :cond_2

    .line 460
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-ne v3, v4, :cond_2

    .line 455
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 465
    :cond_2
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 467
    if-eqz p1, :cond_5

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_3

    .line 475
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 476
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;I)V

    .line 477
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 478
    .local v1, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->width:I

    .line 479
    iput v2, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->height:I

    .line 480
    const v2, 0x800053

    iput v2, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 481
    .end local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    goto :goto_1

    .line 484
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid navigation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 472
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSpinner:Lcom/oneplus/lib/widget/Spinner;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;I)V

    .line 473
    nop

    .line 487
    :cond_5
    :goto_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 260
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 243
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setVisibility(I)V

    .line 649
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 224
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 225
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 230
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 553
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 554
    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->alpha(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 555
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper$2;-><init>(Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;I)V

    .line 556
    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 553
    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
