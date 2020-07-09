.class public Lcom/oneplus/lib/design/widget/BottomNavigationView;
.super Landroid/widget/LinearLayout;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/oneplus/lib/design/widget/Badge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;,
        Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final MENU_PRESENTER_ID:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

.field private final presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

.field private reselectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    const-string v0, "BottomNavigationView"

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 116
    sget v0, Lcom/oneplus/commonctrl/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    .line 123
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 125
    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    .line 126
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->isAfter5T()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->op_bottom_navigation_height_with_bottom_softkey_navigation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 135
    :goto_0
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 136
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    .line 139
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setId(I)V

    .line 140
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V

    .line 141
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 142
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 145
    sget-object v8, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView:[I

    sget v10, Lcom/oneplus/commonctrl/R$style;->Widget_Design_BottomNavigationView:I

    const/4 v2, 0x2

    new-array v11, v2, [I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v4, 0x0

    aput v2, v11, v4

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    aput v2, v11, v3

    .line 146
    move-object v6, p1

    move-object v7, p2

    move v9, p3

    invoke-static/range {v6 .. v11}, Lcom/oneplus/lib/design/widget/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object v2

    .line 155
    .local v2, "a":Lcom/oneplus/lib/app/appcompat/TintTypedArray;
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v2, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    const v6, 0x1010038

    .line 159
    invoke-virtual {v5, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 158
    invoke-virtual {v5, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 162
    :goto_1
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemIconSize:I

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 163
    invoke-virtual {v2, v5, v6}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 162
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemIconSize(I)V

    .line 166
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 168
    invoke-virtual {v2, v5, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v5

    .line 167
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 170
    :cond_2
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    .line 172
    invoke-virtual {v2, v5, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v5

    .line 171
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 175
    :cond_3
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    :cond_4
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v2, v5}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 180
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_elevation:I

    .line 181
    invoke-virtual {v2, v5, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    .line 180
    invoke-static {p0, v5}, Lcom/oneplus/support/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 184
    :cond_5
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    .line 185
    invoke-virtual {v2, v5, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getInteger(II)I

    move-result v1

    .line 184
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 188
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 189
    invoke-virtual {v2, v1, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 188
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 191
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v2, v1, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 192
    .local v1, "itemBackground":I
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 194
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->inflateMenu(I)V

    .line 197
    :cond_6
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    .line 199
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_7

    .line 201
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 204
    :cond_7
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v4, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationView;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationView;

    .line 99
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->reselectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/BottomNavigationView;)Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/BottomNavigationView;

    .line 99
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->selectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 542
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 543
    .local v0, "divider":Landroid/view/View;
    sget v1, Lcom/oneplus/commonctrl/R$color;->design_bottom_navigation_shadow_color:I

    .line 544
    invoke-static {p1, v1}, Lcom/oneplus/support/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 543
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 545
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 548
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 549
    .local v1, "dividerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 551
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method private isAfter5T()Z
    .locals 4

    .line 648
    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "devices":Ljava/lang/String;
    sget-object v1, Lcom/oneplus/lib/design/widget/BottomNavigationView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAfter5T devices = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 651
    return v2

    .line 653
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x4589

    if-le v1, v3, :cond_1

    .line 654
    return v2

    .line 656
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public cancelAllNotification()V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->cancelAllNotification()V

    .line 645
    return-void
.end method

.method public cancelNotification(I)V
    .locals 1
    .param p1, "id"    # I

    .line 639
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->cancelNotification(I)V

    .line 640
    return-void
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/DrawableRes;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Dimension;
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/StyleRes;
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/StyleRes;
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .line 269
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/IdRes;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 261
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 262
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 265
    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 571
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 572
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 573
    return-void

    .line 575
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    .line 576
    .local v0, "savedState":Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 577
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, v0, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 578
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 562
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 563
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 564
    .local v1, "savedState":Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 565
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v3, v1, Lcom/oneplus/lib/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 566
    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 623
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 624
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->gestureButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 625
    .local v0, "isShowSoftNavigationKey":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 627
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->op_bottom_navigation_height_with_bottom_softkey_navigation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 628
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 393
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 394
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 372
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 373
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .line 499
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 503
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1, "iconSize"    # I
        .annotation build Lcom/oneplus/support/annotation/Dimension;
        .end annotation
    .end param

    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemIconSize(I)V

    .line 303
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1
    .param p1, "iconSizeRes"    # I
        .annotation build Lcom/oneplus/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 314
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationView;->setItemIconSize(I)V

    .line 315
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 290
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 291
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 478
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    .line 479
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1
    .param p1, "textAppearanceRes"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 459
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    .line 460
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 349
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 350
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2
    .param p1, "labelVisibilityMode"    # I

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 438
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 440
    :cond_0
    return-void
.end method

.method public setNotification(ILcom/oneplus/lib/design/widget/BottomNavigationNotification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    .line 634
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->setNotification(ILcom/oneplus/lib/design/widget/BottomNavigationNotification;)V

    .line 635
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 244
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->reselectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    .line 245
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 232
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->selectedListener:Lcom/oneplus/lib/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 233
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param

    .line 413
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 414
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationView;->presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 419
    :cond_0
    return-void
.end method
