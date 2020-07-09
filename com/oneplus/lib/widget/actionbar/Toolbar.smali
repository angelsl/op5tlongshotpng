.class public Lcom/oneplus/lib/widget/actionbar/Toolbar;
.super Landroid/widget/Toolbar;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;,
        Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;,
        Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_DIVIDER_ATTR:[I

.field private static final ICON_MIN_WIDTH:I

.field private static final ICON_SIZE_STANDARD:I

.field private static final MAX_ICON_SIZE:I

.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionBarDividerColor:I

.field private mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private mHasActionBarLineColor:Z

.field private mHeightWithGestureBar:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInsetPaddingTopInGestureMode:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMaxIconSize:I

.field private mMeasuredGestureBar:Z

.field private mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

.field private mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

.field private final mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

.field private mMyNavButtonView:Landroid/widget/ImageButton;

.field private mNavButtonStyle:I

.field private mNeedResetPadding:Z

.field private mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mOrientation:I

.field private mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

.field private mPaddingTopOffset:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mRealPaddingBottom:I

.field private mRealTitleMarginBottom:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubTitleMarginBottom:I

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private final mTmpStatesArray:[I

.field private mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    sget v0, Lcom/oneplus/commonctrl/R$dimen;->toolbar_icon_min_width:I

    sput v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ICON_MIN_WIDTH:I

    .line 66
    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_icon_size_button:I

    sput v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ICON_SIZE_STANDARD:I

    .line 87
    sget v0, Lcom/oneplus/commonctrl/R$dimen;->abc_action_menu_icon_size:I

    sput v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->MAX_ICON_SIZE:I

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->onePlusActionbarLineColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ACTION_BAR_DIVIDER_ATTR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 163
    sget v0, Lcom/oneplus/commonctrl/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    .line 111
    const v3, 0x800013

    iput v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 128
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    .line 129
    new-array v3, v3, [I

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTmpStatesArray:[I

    .line 132
    new-instance v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;

    invoke-direct {v3, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    .line 153
    new-instance v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;

    invoke-direct {v3, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iput-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 173
    sget-object v3, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ACTION_BAR_DIVIDER_ATTR:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getDividerColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionBarDividerColor:I

    .line 174
    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 177
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_op_collapsible:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    .line 178
    iget-boolean v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v8, :cond_0

    .line 179
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 182
    sget v8, Lcom/oneplus/commonctrl/R$anim;->op_design_appbar_state_list_animator:I

    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v8

    .line 184
    .local v8, "sla":Landroid/animation/StateListAnimator;
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 185
    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setCollapsedState(Z)Z

    .line 189
    .end local v8    # "sla":Landroid/animation/StateListAnimator;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    .line 190
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    .line 191
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    .line 192
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_opNavigationButtonStyle:I

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    .line 193
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_gravity:I

    iget v9, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    .line 194
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_opButtonGravity:I

    const/16 v9, 0x30

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    .line 195
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMargin:I

    .line 196
    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/oneplus/lib/widget/actionbar/Toolbar;->MAX_ICON_SIZE:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    .line 198
    sget v8, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginStart:I

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 199
    .local v8, "marginStart":I
    if-ltz v8, :cond_1

    .line 200
    iput v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 203
    :cond_1
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {v3, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 204
    .local v10, "marginEnd":I
    if-ltz v10, :cond_2

    .line 205
    iput v10, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    .line 208
    :cond_2
    sget v11, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {v3, v11, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 209
    .local v11, "marginTop":I
    if-ltz v11, :cond_3

    .line 210
    iput v11, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    .line 213
    :cond_3
    sget v12, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {v3, v12, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 215
    .local v12, "marginBottom":I
    if-ltz v12, :cond_4

    .line 216
    iput v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    .line 219
    :cond_4
    sget v13, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subTitleMarginBottom:I

    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 220
    .local v13, "subtitleMarginBottom":I
    if-lez v13, :cond_5

    .line 221
    iput v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubTitleMarginBottom:I

    .line 223
    :cond_5
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_realPaddingBottom:I

    invoke-virtual {v3, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    iput v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    .line 224
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_realTitleMarginBottom:I

    invoke-virtual {v3, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    iput v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealTitleMarginBottom:I

    .line 225
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {v3, v14, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    .line 227
    sget v14, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetStart:I

    .line 228
    const/high16 v15, -0x80000000

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 230
    .local v14, "contentInsetStart":I
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetEnd:I

    .line 231
    invoke-virtual {v3, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 233
    .local v2, "contentInsetEnd":I
    sget v9, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetLeft:I

    .line 234
    invoke-virtual {v3, v9, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 235
    .local v9, "contentInsetLeft":I
    sget v15, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetRight:I

    .line 236
    invoke-virtual {v3, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 237
    .local v15, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 238
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v4, v9, v15}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    .line 240
    const/high16 v4, -0x80000000

    if-ne v14, v4, :cond_6

    if-eq v2, v4, :cond_7

    .line 242
    :cond_6
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setRelative(II)V

    .line 245
    :cond_7
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    .line 247
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    .line 250
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 251
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 253
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_title:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 254
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 255
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    :cond_8
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 259
    .local v4, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 260
    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 264
    :cond_9
    move-object/from16 v16, v1

    .end local v1    # "title":Ljava/lang/CharSequence;
    .local v16, "title":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 265
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_popupTheme:I

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "contentInsetEnd":I
    .local v18, "contentInsetEnd":I
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setPopupTheme(I)V

    .line 267
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 268
    .local v1, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_a

    .line 269
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_a
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 274
    .local v2, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 275
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 278
    :cond_b
    move-object/from16 v17, v1

    .end local v1    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v17, "navIcon":Landroid/graphics/drawable/Drawable;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_logo:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 279
    .local v1, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_c

    .line 280
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :cond_c
    move-object/from16 v19, v1

    .end local v1    # "logo":Landroid/graphics/drawable/Drawable;
    .local v19, "logo":Landroid/graphics/drawable/Drawable;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 284
    .local v1, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 285
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 288
    :cond_d
    move-object/from16 v20, v1

    .end local v1    # "logoDesc":Ljava/lang/CharSequence;
    .local v20, "logoDesc":Ljava/lang/CharSequence;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 289
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextColor:I

    move-object/from16 v21, v2

    const/4 v2, -0x1

    .end local v2    # "navDesc":Ljava/lang/CharSequence;
    .local v21, "navDesc":Ljava/lang/CharSequence;
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitleTextColor(I)V

    goto :goto_0

    .line 288
    .end local v21    # "navDesc":Ljava/lang/CharSequence;
    .restart local v2    # "navDesc":Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v21, v2

    const/4 v2, -0x1

    .line 292
    .end local v2    # "navDesc":Ljava/lang/CharSequence;
    .restart local v21    # "navDesc":Ljava/lang/CharSequence;
    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 293
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitleTextColor(I)V

    .line 298
    :cond_f
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 62
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/actionbar/Toolbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 62
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2159
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2160
    .local v0, "isRtl":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v1

    .line 2161
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v2

    invoke-static {p2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 2163
    .local v2, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2165
    if-eqz v0, :cond_3

    .line 2166
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2167
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2168
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2169
    .local v5, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 2170
    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 2171
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2166
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    .line 2175
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 2176
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2177
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2178
    .restart local v5    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 2179
    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 2180
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2175
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2184
    .end local v3    # "i":I
    :cond_5
    :goto_3
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .line 1441
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1443
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v1

    .local v1, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    goto :goto_0

    .line 1445
    .end local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1446
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v1

    .restart local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    goto :goto_0

    .line 1448
    .end local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1450
    .restart local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 1452
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1453
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1454
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1456
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    :goto_1
    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 5

    .line 1423
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1424
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1425
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1427
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    .line 1428
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 1429
    const/4 v1, 0x2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 1430
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1438
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    .line 2321
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2322
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    .line 2324
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 712
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 1083
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenuView()V

    .line 1084
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuBuilder;

    .line 1087
    .local v0, "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1088
    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Lcom/oneplus/lib/widget/actionbar/Toolbar$1;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1091
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1093
    .end local v0    # "menu":Lcom/oneplus/lib/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-nez v0, :cond_0

    .line 1097
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 1098
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->setToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    .line 1099
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->setPopupTheme(I)V

    .line 1100
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->setOnMenuItemClickListener(Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;)V

    .line 1101
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 1102
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    .line 1104
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 1105
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1108
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    .line 1414
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1415
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    .line 1416
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    .line 1417
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 1418
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 6
    .param p1, "gravity"    # I

    .line 2187
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v0

    .line 2188
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 2189
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2190
    .local v2, "hGrav":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    .line 2196
    if-ne v0, v3, :cond_0

    move v4, v5

    :cond_0
    return v4

    .line 2194
    :cond_1
    return v2
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 2101
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getStatusBarHeight()I

    move-result v0

    .line 2102
    .local v0, "statusbarHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2103
    .local v1, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2104
    .local v2, "childHeight":I
    const/4 v3, 0x0

    if-lez p2, :cond_0

    sub-int v4, v2, p2

    div-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2105
    .local v4, "alignmentOffset":I
    :goto_0
    const/4 v5, 0x0

    .line 2106
    .local v5, "top":I
    iget v6, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildVerticalGravity(I)I

    move-result v6

    const/16 v7, 0x30

    if-eq v6, v7, :cond_5

    const/16 v7, 0x50

    if-eq v6, v7, :cond_4

    .line 2120
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v6, v7

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v7, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    add-int/2addr v6, v7

    .line 2121
    .local v6, "paddingTop":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v7

    .line 2122
    .local v7, "paddingBottom":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v8

    .line 2123
    .local v8, "height":I
    sub-int v9, v8, v6

    sub-int/2addr v9, v7

    .line 2124
    .local v9, "space":I
    sub-int v10, v9, v2

    div-int/lit8 v10, v10, 0x2

    .line 2125
    .local v10, "spaceAbove":I
    iget v11, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    if-ge v10, v11, :cond_2

    .line 2126
    iget v10, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    goto :goto_2

    .line 2128
    :cond_2
    sub-int v11, v8, v7

    sub-int/2addr v11, v2

    sub-int/2addr v11, v10

    sub-int/2addr v11, v6

    .line 2130
    .local v11, "spaceBelow":I
    iget v12, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v11, v12, :cond_3

    .line 2131
    iget v12, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v11

    sub-int v12, v10, v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2134
    .end local v11    # "spaceBelow":I
    :cond_3
    :goto_2
    add-int v3, v6, v10

    .end local v5    # "top":I
    .local v3, "top":I
    goto :goto_3

    .line 2115
    .end local v3    # "top":I
    .end local v6    # "paddingTop":I
    .end local v7    # "paddingBottom":I
    .end local v8    # "height":I
    .end local v9    # "space":I
    .end local v10    # "spaceAbove":I
    .restart local v5    # "top":I
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    iget v6, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v4

    .line 2117
    .end local v5    # "top":I
    .restart local v3    # "top":I
    goto :goto_3

    .line 2108
    .end local v3    # "top":I
    .restart local v5    # "top":I
    :cond_5
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v3, :cond_6

    .line 2109
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v3

    iget v6, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    sub-int/2addr v3, v4

    .end local v5    # "top":I
    .restart local v3    # "top":I
    goto :goto_3

    .line 2111
    .end local v3    # "top":I
    .restart local v5    # "top":I
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v3

    iget v6, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v3, v6

    sub-int/2addr v3, v4

    .line 2113
    .end local v5    # "top":I
    .restart local v3    # "top":I
    nop

    .line 2136
    :goto_3
    return v3
.end method

.method private getChildVerticalGravity(I)I
    .locals 3
    .param p1, "gravity"    # I

    .line 2140
    and-int/lit8 v0, p1, 0x10

    .line 2141
    .local v0, "vgrav":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    .line 2147
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    and-int/2addr v1, v2

    return v1

    .line 2145
    :cond_0
    return v0
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2205
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2206
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1111
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getPaddingTopOffset(I)I
    .locals 4
    .param p1, "spaceBelow"    # I

    .line 1647
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v0

    .line 1648
    .local v0, "paddingTop":I
    move v1, v0

    .line 1649
    .local v1, "finalPaddingTop":I
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    .line 1651
    .local v2, "desginPaddingBottom":I
    if-ge p1, v2, :cond_0

    .line 1652
    sub-int v3, v2, p1

    sub-int/2addr v1, v3

    goto :goto_0

    .line 1654
    :cond_0
    sub-int v3, p1, v2

    add-int/2addr v1, v3

    .line 1657
    :goto_0
    return v1
.end method

.method private getStatusBarHeight()I
    .locals 1

    .line 1673
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2210
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2211
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 2056
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2057
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 2058
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 2059
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2060
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 2061
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2062
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2063
    .local v7, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v8, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v1

    .line 2064
    .local v8, "l":I
    iget v9, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v2

    .line 2065
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2066
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2067
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2068
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2069
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    .line 2060
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2071
    .end local v5    # "i":I
    :cond_0
    return v3
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2271
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2272
    return v1

    .line 2274
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 2243
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2076
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2077
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2078
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 2079
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2080
    invoke-direct {p0, p1, p4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2081
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2082
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2083
    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 2084
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2089
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2090
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2091
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2092
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2093
    invoke-direct {p0, p1, p4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2094
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2095
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2096
    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 2097
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1598
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1600
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1601
    .local v1, "leftDiff":I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1602
    .local v3, "rightDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1603
    .local v5, "leftMargin":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1604
    .local v6, "rightMargin":I
    add-int v7, v5, v6

    .line 1605
    .local v7, "hMargins":I
    neg-int v8, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, p6, v2

    .line 1606
    neg-int v8, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p6, v4

    .line 1608
    nop

    .line 1609
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    add-int/2addr v2, p3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1608
    invoke-static {p2, v2, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1610
    .local v2, "childWidthMeasureSpec":I
    nop

    .line 1611
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v4

    iget v8, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v4, v8

    .line 1612
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v8

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    add-int/2addr v4, p5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1610
    invoke-static {p4, v4, v8}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1615
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1616
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1544
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1546
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1547
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1546
    invoke-static {p2, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1549
    .local v1, "childWidthSpec":I
    nop

    .line 1550
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v2, v3

    .line 1551
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1549
    invoke-static {p4, v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1554
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1555
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1556
    if-eqz v3, :cond_0

    .line 1557
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 1558
    :cond_0
    move v5, p6

    :goto_0
    nop

    .line 1559
    .local v5, "size":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1561
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1562
    return-void
.end method

.method private measureSearchChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1567
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1569
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v3, 0x0

    aget v4, p6, v3

    sub-int/2addr v2, v4

    .line 1570
    .local v2, "leftDiff":I
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v5, 0x1

    aget v6, p6, v5

    sub-int/2addr v4, v6

    .line 1571
    .local v4, "rightDiff":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1572
    .local v6, "leftMargin":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1573
    .local v7, "rightMargin":I
    add-int v8, v6, v7

    .line 1574
    .local v8, "hMargins":I
    neg-int v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v3

    .line 1575
    neg-int v9, v4

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v5

    .line 1576
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v5, v8

    add-int v5, v5, p3

    .line 1577
    .local v5, "totalUsedWidth":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 1578
    .local v9, "childWidth":I
    move/from16 v10, p2

    invoke-static {v10, v5, v9}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v11

    .line 1580
    .local v11, "childWidthMeasureSpec":I
    nop

    .line 1581
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v12

    iget v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v12, v13

    iget-boolean v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v13, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getStatusBarHeight()I

    move-result v3

    :cond_0
    add-int/2addr v12, v3

    .line 1582
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v12, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v3

    add-int v12, v12, p5

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1580
    move/from16 v13, p4

    invoke-static {v13, v12, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildMeasureSpec(III)I

    move-result v3

    .line 1585
    .local v3, "childHeightMeasureSpec":I
    move-object/from16 v12, p1

    invoke-virtual {v12, v11, v3}, Landroid/view/View;->measure(II)V

    .line 1586
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v8

    return v14
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1493
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1494
    return-void
.end method

.method private resetNavgationIconBound(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 997
    if-eqz p1, :cond_2

    .line 998
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 999
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1000
    .local v1, "height":I
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    if-le v0, v2, :cond_0

    .line 1001
    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1002
    .local v2, "scale":F
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    .line 1003
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1005
    .end local v2    # "scale":F
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    if-le v1, v2, :cond_1

    .line 1006
    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 1007
    .restart local v2    # "scale":F
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    .line 1008
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 1010
    .end local v2    # "scale":F
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1012
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_2
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1626
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1627
    return v1

    .line 1630
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v0

    .line 1631
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1632
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1633
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1634
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1635
    return v1

    .line 1631
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1638
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldShowInsetInGestureBarMode()Z
    .locals 5

    .line 1662
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/lib/util/AppUtils;->gestureButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1664
    .local v0, "gestureModeEnabled":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/support/annotation/GestureBarAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/annotation/GestureBarAdapter;

    .line 1665
    .local v1, "adapter":Lcom/oneplus/support/annotation/GestureBarAdapter;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/support/annotation/GestureBarAdapter;->transparentGestureButton()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1666
    .local v4, "transparentGestureButton":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .line 2262
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2264
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2265
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;)V

    .line 2264
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2267
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2268
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2239
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 740
    :cond_0
    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    :goto_0
    nop

    .line 741
    .local v0, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->collapseActionView()Z

    .line 744
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->dismissPopupMenus()V

    .line 613
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2553
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2554
    :catch_0
    move-exception v0

    .line 2555
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 2

    .line 2234
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2216
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2221
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2222
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;)V

    return-object v0

    .line 2223
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2224
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2225
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2226
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2228
    :cond_2
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .line 1321
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1322
    goto :goto_0

    .line 1323
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1321
    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .line 1278
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1279
    goto :goto_0

    .line 1280
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1278
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 4

    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, "hasActions":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1375
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v1

    .line 1376
    .local v1, "mb":Lcom/oneplus/lib/menu/MenuBuilder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 1378
    .end local v1    # "mb":Lcom/oneplus/lib/menu/MenuBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 1379
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v1

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1380
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1378
    :goto_1
    return v1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 1

    .line 1393
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 1395
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1393
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 1

    .line 1408
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 1410
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1408
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .line 1359
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1361
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1359
    :goto_0
    return v0
.end method

.method public getDividerColor(Landroid/content/Context;I)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrRes"    # I

    .line 303
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 304
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 305
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 308
    .local v1, "color":I
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return v1

    .line 310
    .end local v1    # "color":I
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z

    .line 314
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1057
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    .line 1058
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1045
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method getOuterActionMenuPresenter()Lcom/oneplus/lib/menu/ActionMenuPresenter;
    .locals 1

    .line 2330
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 1078
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    .line 1079
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Z)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public getTitieTopWithoutOffset()I
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .line 445
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public getTitleTop()I
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

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

    .line 567
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/MenuRes;
        .end annotation
    .end param

    .line 1123
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1124
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .line 617
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 618
    return v1

    .line 621
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 622
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 623
    return v1

    .line 626
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 627
    .local v2, "lineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 628
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 629
    const/4 v1, 0x1

    return v1

    .line 627
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 632
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 358
    invoke-super {p0}, Landroid/widget/Toolbar;->onAttachedToWindow()V

    .line 359
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 320
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 322
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    .line 323
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 324
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v1

    .line 325
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 333
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->op_toolbar_real_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    .line 335
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 336
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 337
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "height":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .line 343
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTmpStatesArray:[I

    .line 345
    .local v0, "extraStates":[I
    array-length v1, v0

    add-int/2addr v1, p1

    invoke-super {p0, v1}, Landroid/widget/Toolbar;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 346
    .local v1, "states":[I
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    neg-int v3, v3

    :goto_0
    aput v3, v0, v2

    .line 347
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    if-eqz v3, :cond_1

    .line 348
    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    neg-int v3, v3

    goto :goto_1

    :cond_1
    sget v3, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    :goto_1
    aput v3, v0, v2

    .line 350
    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2

    .line 352
    .end local v0    # "extraStates":[I
    .end local v1    # "states":[I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1498
    invoke-super {p0}, Landroid/widget/Toolbar;->onDetachedFromWindow()V

    .line 1499
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1500
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 36
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1829
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1830
    .local v1, "isRtl":Z
    :goto_0
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    .line 1831
    .local v4, "shouldLayoutNavIcon":Z
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v5

    .line 1832
    .local v5, "shouldLayoutCollapseButtonView":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1833
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1834
    .local v7, "paddingRight":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getStatusBarHeight()I

    move-result v8

    .line 1836
    .local v8, "statusbarHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v9

    .line 1837
    .local v9, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getWidth()I

    move-result v10

    .line 1838
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHeight()I

    move-result v11

    .line 1839
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v12

    iget v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v12, v13

    iget-boolean v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v13, :cond_1

    move v13, v8

    goto :goto_1

    :cond_1
    move v13, v3

    :goto_1
    add-int/2addr v12, v13

    .line 1840
    .local v12, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v13

    .line 1841
    .local v13, "left":I
    sub-int v14, v10, v7

    .line 1843
    .local v14, "right":I
    iget-object v15, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    .line 1844
    .local v15, "collapsingMargins":[I
    aput v3, v15, v2

    aput v3, v15, v3

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMinimumHeight()I

    move-result v2

    .line 1848
    .local v2, "minHeight":I
    if-ltz v2, :cond_2

    sub-int v3, p5, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 1850
    .local v3, "alignmentHeight":I
    :goto_2
    if-eqz v4, :cond_4

    .line 1851
    if-eqz v1, :cond_3

    .line 1852
    move/from16 v18, v2

    .end local v2    # "minHeight":I
    .local v18, "minHeight":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v2, v14, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_3

    .line 1855
    .end local v18    # "minHeight":I
    .restart local v2    # "minHeight":I
    :cond_3
    move/from16 v18, v2

    .end local v2    # "minHeight":I
    .restart local v18    # "minHeight":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v2, v13, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_3

    .line 1850
    .end local v18    # "minHeight":I
    .restart local v2    # "minHeight":I
    :cond_4
    move/from16 v18, v2

    .line 1860
    .end local v2    # "minHeight":I
    .restart local v18    # "minHeight":I
    :goto_3
    if-eqz v5, :cond_6

    .line 1861
    if-eqz v1, :cond_5

    .line 1862
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v2, v14, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    .line 1865
    :cond_5
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v2, v13, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 1870
    :cond_6
    :goto_4
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1871
    if-eqz v1, :cond_7

    .line 1872
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v2, v13, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 1875
    :cond_7
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v2, v14, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    .line 1880
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetLeft()I

    move-result v2

    .line 1881
    .local v2, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetRight()I

    move-result v19

    .line 1882
    .local v19, "contentInsetRight":I
    move/from16 v20, v4

    .end local v4    # "shouldLayoutNavIcon":Z
    .local v20, "shouldLayoutNavIcon":Z
    sub-int v4, v2, v13

    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "shouldLayoutCollapseButtonView":Z
    .local v21, "shouldLayoutCollapseButtonView":Z
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v15, v5

    .line 1883
    sub-int v4, v10, v7

    sub-int/2addr v4, v14

    sub-int v4, v19, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v15, v5

    .line 1884
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1885
    .end local v13    # "left":I
    .local v4, "left":I
    sub-int v5, v10, v7

    sub-int v5, v5, v19

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1887
    .end local v14    # "right":I
    .local v5, "right":I
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1888
    if-eqz v1, :cond_9

    .line 1889
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v5, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v5

    goto :goto_6

    .line 1892
    :cond_9
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v13, v4, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1897
    :cond_a
    :goto_6
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1898
    if-eqz v1, :cond_b

    .line 1899
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v5, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v5

    goto :goto_7

    .line 1902
    :cond_b
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v13, v4, v15, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1907
    :cond_c
    :goto_7
    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    .line 1908
    .local v13, "layoutTitle":Z
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    .line 1909
    .local v14, "layoutSubtitle":Z
    const/16 v22, 0x0

    .line 1910
    .local v22, "titleHeight":I
    if-eqz v13, :cond_d

    .line 1911
    move/from16 v23, v2

    .end local v2    # "contentInsetLeft":I
    .local v23, "contentInsetLeft":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1912
    .local v2, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move/from16 v24, v7

    .end local v7    # "paddingRight":I
    .local v24, "paddingRight":I
    iget v7, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    move/from16 v25, v6

    .end local v6    # "paddingLeft":I
    .local v25, "paddingLeft":I
    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v7, v6

    iget v6, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v6

    add-int v22, v22, v7

    goto :goto_8

    .line 1910
    .end local v23    # "contentInsetLeft":I
    .end local v24    # "paddingRight":I
    .end local v25    # "paddingLeft":I
    .local v2, "contentInsetLeft":I
    .restart local v6    # "paddingLeft":I
    .restart local v7    # "paddingRight":I
    :cond_d
    move/from16 v23, v2

    move/from16 v25, v6

    move/from16 v24, v7

    .line 1914
    .end local v2    # "contentInsetLeft":I
    .end local v6    # "paddingLeft":I
    .end local v7    # "paddingRight":I
    .restart local v23    # "contentInsetLeft":I
    .restart local v24    # "paddingRight":I
    .restart local v25    # "paddingLeft":I
    :goto_8
    if-eqz v14, :cond_e

    .line 1915
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1916
    .local v2, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v6, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int v22, v22, v6

    .line 1919
    .end local v2    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_e
    if-nez v13, :cond_10

    if-eqz v14, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v30, v1

    move/from16 v29, v3

    move/from16 v31, v4

    move/from16 v34, v5

    move/from16 v28, v10

    move/from16 v32, v14

    goto/16 :goto_15

    .line 1921
    :cond_10
    :goto_9
    if-eqz v13, :cond_11

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_a

    :cond_11
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1922
    .local v2, "topChild":Landroid/view/View;
    :goto_a
    if-eqz v14, :cond_12

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_b

    :cond_12
    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1923
    .local v6, "bottomChild":Landroid/view/View;
    :goto_b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1924
    .local v7, "toplp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v27, v2

    .end local v2    # "topChild":Landroid/view/View;
    .local v27, "topChild":Landroid/view/View;
    move-object/from16 v2, v26

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1925
    .local v2, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    if-eqz v13, :cond_13

    move-object/from16 v26, v6

    .end local v6    # "bottomChild":Landroid/view/View;
    .local v26, "bottomChild":Landroid/view/View;
    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    if-gtz v6, :cond_14

    goto :goto_c

    .end local v26    # "bottomChild":Landroid/view/View;
    .restart local v6    # "bottomChild":Landroid/view/View;
    :cond_13
    move-object/from16 v26, v6

    .end local v6    # "bottomChild":Landroid/view/View;
    .restart local v26    # "bottomChild":Landroid/view/View;
    :goto_c
    if-eqz v14, :cond_15

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1926
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    if-lez v6, :cond_15

    :cond_14
    const/4 v6, 0x1

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    .line 1928
    .local v6, "titleHasWidth":Z
    :goto_d
    move/from16 v28, v10

    .end local v10    # "width":I
    .local v28, "width":I
    iget v10, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    and-int/lit8 v10, v10, 0x10

    move/from16 v29, v3

    .end local v3    # "alignmentHeight":I
    .local v29, "alignmentHeight":I
    const/16 v3, 0x30

    if-eq v10, v3, :cond_19

    const/16 v3, 0x50

    if-eq v10, v3, :cond_18

    .line 1939
    sub-int v3, v11, v12

    sub-int/2addr v3, v9

    .line 1940
    .local v3, "space":I
    sub-int v10, v3, v22

    div-int/lit8 v10, v10, 0x2

    .line 1941
    .local v10, "spaceAbove":I
    move/from16 v30, v3

    .end local v3    # "space":I
    .local v30, "space":I
    iget v3, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    move/from16 v31, v4

    .end local v4    # "left":I
    .local v31, "left":I
    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int/2addr v3, v4

    if-ge v10, v3, :cond_16

    .line 1942
    iget v3, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int v10, v3, v4

    move/from16 v32, v14

    goto :goto_e

    .line 1944
    :cond_16
    sub-int v3, v11, v9

    sub-int v3, v3, v22

    sub-int/2addr v3, v10

    sub-int/2addr v3, v12

    .line 1946
    .local v3, "spaceBelow":I
    iget v4, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v32, v14

    .end local v14    # "layoutSubtitle":Z
    .local v32, "layoutSubtitle":Z
    iget v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v4, v14

    if-ge v3, v4, :cond_17

    .line 1947
    iget v4, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    iget v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v4, v14

    sub-int/2addr v4, v3

    sub-int v4, v10, v4

    const/4 v14, 0x0

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1951
    .end local v3    # "spaceBelow":I
    :cond_17
    :goto_e
    add-int v3, v12, v10

    .line 1952
    .local v3, "titleTop":I
    goto :goto_f

    .line 1954
    .end local v3    # "titleTop":I
    .end local v10    # "spaceAbove":I
    .end local v30    # "space":I
    .end local v31    # "left":I
    .end local v32    # "layoutSubtitle":Z
    .restart local v4    # "left":I
    .restart local v14    # "layoutSubtitle":Z
    :cond_18
    move/from16 v31, v4

    move/from16 v32, v14

    .end local v4    # "left":I
    .end local v14    # "layoutSubtitle":Z
    .restart local v31    # "left":I
    .restart local v32    # "layoutSubtitle":Z
    sub-int v3, v11, v9

    iget v4, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v22

    .restart local v3    # "titleTop":I
    goto :goto_f

    .line 1930
    .end local v3    # "titleTop":I
    .end local v31    # "left":I
    .end local v32    # "layoutSubtitle":Z
    .restart local v4    # "left":I
    .restart local v14    # "layoutSubtitle":Z
    :cond_19
    move/from16 v31, v4

    move/from16 v32, v14

    .end local v4    # "left":I
    .end local v14    # "layoutSubtitle":Z
    .restart local v31    # "left":I
    .restart local v32    # "layoutSubtitle":Z
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v3, :cond_1a

    .line 1931
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v3

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    iget v4, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int/2addr v3, v4

    .restart local v3    # "titleTop":I
    goto :goto_f

    .line 1934
    .end local v3    # "titleTop":I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v3

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v3, v4

    iget v4, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int/2addr v3, v4

    .line 1936
    .restart local v3    # "titleTop":I
    nop

    .line 1959
    :goto_f
    if-eqz v1, :cond_1f

    .line 1960
    if-eqz v6, :cond_1b

    iget v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    :goto_10
    const/4 v10, 0x1

    aget v14, v15, v10

    sub-int/2addr v4, v14

    .line 1961
    .local v4, "rd":I
    const/4 v14, 0x0

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    sub-int v5, v5, v16

    .line 1962
    move/from16 v30, v1

    .end local v1    # "isRtl":Z
    .local v30, "isRtl":Z
    neg-int v1, v4

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v10

    .line 1963
    move v1, v5

    .line 1964
    .local v1, "titleRight":I
    move v10, v5

    .line 1966
    .local v10, "subtitleRight":I
    if-eqz v13, :cond_1c

    .line 1967
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1968
    .local v14, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move-object/from16 v33, v2

    .end local v2    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v33, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v1, v2

    .line 1969
    .local v2, "titleLeft":I
    move/from16 v17, v4

    .end local v4    # "rd":I
    .local v17, "rd":I
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 1970
    .local v4, "titleBottom":I
    move/from16 v34, v5

    .end local v5    # "right":I
    .local v34, "right":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v3, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1971
    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    sub-int v1, v2, v5

    .line 1972
    iget v5, v14, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v4, v5

    goto :goto_11

    .line 1966
    .end local v14    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v17    # "rd":I
    .end local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v34    # "right":I
    .local v2, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v4, "rd":I
    .restart local v5    # "right":I
    :cond_1c
    move-object/from16 v33, v2

    move/from16 v17, v4

    move/from16 v34, v5

    .line 1974
    .end local v2    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v4    # "rd":I
    .end local v5    # "right":I
    .restart local v17    # "rd":I
    .restart local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .restart local v34    # "right":I
    :goto_11
    if-eqz v32, :cond_1d

    .line 1975
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1976
    .local v2, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v4, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    .line 1977
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v10, v4

    .line 1978
    .local v4, "subtitleLeft":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 1979
    .local v5, "subtitleBottom":I
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v4, v3, v10, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1980
    iget v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v10, v14

    .line 1981
    iget v14, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v5, v14

    .line 1983
    .end local v2    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v4    # "subtitleLeft":I
    .end local v5    # "subtitleBottom":I
    :cond_1d
    if-eqz v6, :cond_1e

    .line 1984
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, v2

    .end local v34    # "right":I
    .local v2, "right":I
    goto :goto_12

    .line 1983
    .end local v2    # "right":I
    .restart local v34    # "right":I
    :cond_1e
    move/from16 v5, v34

    .line 1986
    .end local v1    # "titleRight":I
    .end local v10    # "subtitleRight":I
    .end local v17    # "rd":I
    .end local v34    # "right":I
    .local v5, "right":I
    :goto_12
    move/from16 v34, v5

    goto/16 :goto_15

    .line 1987
    .end local v30    # "isRtl":Z
    .end local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v1, "isRtl":Z
    .local v2, "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_1f
    move/from16 v30, v1

    move-object/from16 v33, v2

    .end local v1    # "isRtl":Z
    .end local v2    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .restart local v30    # "isRtl":Z
    .restart local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    if-eqz v6, :cond_20

    iget v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x0

    aget v4, v15, v2

    sub-int/2addr v1, v4

    .line 1988
    .local v1, "ld":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v4, v31, v4

    .line 1989
    .end local v31    # "left":I
    .local v4, "left":I
    neg-int v10, v1

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v15, v2

    .line 1990
    move v2, v4

    .line 1991
    .local v2, "titleLeft":I
    move v10, v4

    .line 1993
    .local v10, "subtitleLeft":I
    if-eqz v13, :cond_21

    .line 1994
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1995
    .restart local v14    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move/from16 v17, v1

    .end local v1    # "ld":I
    .local v17, "ld":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    .line 1996
    .local v1, "titleRight":I
    move/from16 v31, v4

    .end local v4    # "left":I
    .restart local v31    # "left":I
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 1997
    .local v4, "titleBottom":I
    move/from16 v34, v5

    .end local v5    # "right":I
    .restart local v34    # "right":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v3, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1998
    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int v2, v1, v5

    .line 1999
    iget v5, v14, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v4, v5

    goto :goto_14

    .line 1993
    .end local v14    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v17    # "ld":I
    .end local v31    # "left":I
    .end local v34    # "right":I
    .local v1, "ld":I
    .local v4, "left":I
    .restart local v5    # "right":I
    :cond_21
    move/from16 v17, v1

    move/from16 v31, v4

    move/from16 v34, v5

    .line 2001
    .end local v1    # "ld":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .restart local v17    # "ld":I
    .restart local v31    # "left":I
    .restart local v34    # "right":I
    :goto_14
    if-eqz v32, :cond_22

    .line 2002
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2003
    .local v1, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v4, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    .line 2004
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v10

    .line 2005
    .local v4, "subtitleRight":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 2006
    .local v5, "subtitleBottom":I
    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v10, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 2007
    iget v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int v10, v4, v14

    .line 2008
    iget v14, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v5, v14

    .line 2010
    .end local v1    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v4    # "subtitleRight":I
    .end local v5    # "subtitleBottom":I
    :cond_22
    if-eqz v6, :cond_23

    .line 2011
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v31, v4

    .line 2019
    .end local v2    # "titleLeft":I
    .end local v3    # "titleTop":I
    .end local v6    # "titleHasWidth":Z
    .end local v7    # "toplp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v10    # "subtitleLeft":I
    .end local v17    # "ld":I
    .end local v26    # "bottomChild":Landroid/view/View;
    .end local v27    # "topChild":Landroid/view/View;
    .end local v33    # "bottomlp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_23
    :goto_15
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2020
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2021
    .local v1, "leftViewsCount":I
    const/4 v2, 0x0

    move/from16 v3, v31

    .end local v31    # "left":I
    .local v2, "i":I
    .local v3, "left":I
    :goto_16
    if-ge v2, v1, :cond_24

    .line 2022
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move/from16 v5, v29

    .end local v29    # "alignmentHeight":I
    .local v5, "alignmentHeight":I
    invoke-direct {v0, v4, v3, v15, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 2021
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .end local v5    # "alignmentHeight":I
    .restart local v29    # "alignmentHeight":I
    :cond_24
    move/from16 v5, v29

    .line 2026
    .end local v2    # "i":I
    .end local v29    # "alignmentHeight":I
    .restart local v5    # "alignmentHeight":I
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v0, v2, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2027
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2028
    .local v2, "rightViewsCount":I
    const/4 v4, 0x0

    move/from16 v6, v34

    .end local v34    # "right":I
    .local v4, "i":I
    .local v6, "right":I
    :goto_17
    if-ge v4, v2, :cond_25

    .line 2029
    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {v0, v7, v6, v15, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v6

    .line 2028
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 2035
    .end local v4    # "i":I
    :cond_25
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v0, v4, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2036
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v15}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v4

    .line 2037
    .local v4, "centerViewsWidth":I
    sub-int v10, v28, v25

    sub-int v10, v10, v24

    div-int/lit8 v10, v10, 0x2

    add-int v7, v25, v10

    .line 2038
    .local v7, "parentCenter":I
    div-int/lit8 v10, v4, 0x2

    .line 2039
    .local v10, "halfCenterViewsWidth":I
    sub-int v14, v7, v10

    .line 2040
    .local v14, "centerLeft":I
    move/from16 v16, v1

    .end local v1    # "leftViewsCount":I
    .local v16, "leftViewsCount":I
    add-int v1, v14, v4

    .line 2041
    .local v1, "centerRight":I
    if-ge v14, v3, :cond_26

    .line 2042
    move v14, v3

    goto :goto_18

    .line 2043
    :cond_26
    if-le v1, v6, :cond_27

    .line 2044
    sub-int v17, v1, v6

    sub-int v14, v14, v17

    .line 2047
    :cond_27
    :goto_18
    move/from16 v17, v1

    .end local v1    # "centerRight":I
    .local v17, "centerRight":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2048
    .local v1, "centerViewsCount":I
    const/16 v26, 0x0

    move/from16 v35, v26

    move/from16 v26, v2

    move v2, v14

    move/from16 v14, v35

    .local v2, "centerLeft":I
    .local v14, "i":I
    .local v26, "rightViewsCount":I
    :goto_19
    if-ge v14, v1, :cond_28

    .line 2049
    move/from16 v27, v1

    .end local v1    # "centerViewsCount":I
    .local v27, "centerViewsCount":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v0, v1, v2, v15, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 2048
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v27

    goto :goto_19

    .end local v27    # "centerViewsCount":I
    .restart local v1    # "centerViewsCount":I
    :cond_28
    move/from16 v27, v1

    .line 2052
    .end local v1    # "centerViewsCount":I
    .end local v14    # "i":I
    .restart local v27    # "centerViewsCount":I
    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2053
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1677
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 1678
    .local v8, "width":I
    const/4 v9, 0x0

    .line 1679
    .local v9, "height":I
    const/4 v10, 0x0

    .line 1680
    .local v10, "childState":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    .line 1681
    .local v11, "shouldLayoutNavButtonView":Z
    iget-object v12, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    .line 1684
    .local v12, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    const/4 v0, 0x1

    .line 1686
    .local v0, "marginStartIndex":I
    const/4 v1, 0x0

    move v13, v0

    move v14, v1

    .local v1, "marginEndIndex":I
    goto :goto_0

    .line 1688
    .end local v0    # "marginStartIndex":I
    .end local v1    # "marginEndIndex":I
    :cond_0
    const/4 v0, 0x0

    .line 1689
    .restart local v0    # "marginStartIndex":I
    const/4 v1, 0x1

    move v13, v0

    move v14, v1

    .line 1694
    .end local v0    # "marginStartIndex":I
    .local v13, "marginStartIndex":I
    .local v14, "marginEndIndex":I
    :goto_0
    const/4 v15, 0x0

    .line 1695
    .local v15, "navWidth":I
    if-eqz v11, :cond_1

    .line 1696
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1698
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v15, v0, v1

    .line 1699
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    .line 1700
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1701
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    .line 1704
    :cond_1
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1705
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1707
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1708
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v15, v0, v1

    .line 1709
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1710
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1709
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1711
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    .line 1714
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result v6

    .line 1715
    .local v6, "contentInsetStart":I
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1716
    sub-int v0, v6, v15

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v13

    .line 1718
    const/16 v16, 0x0

    .line 1719
    .local v16, "menuWidth":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1720
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/16 v17, 0x0

    iget v4, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v18, v4

    move/from16 v4, p2

    move/from16 v19, v11

    move v11, v5

    .end local v11    # "shouldLayoutNavButtonView":Z
    .local v19, "shouldLayoutNavButtonView":Z
    move/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "contentInsetStart":I
    .local v17, "contentInsetStart":I
    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1722
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 1723
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 1724
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1723
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1725
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v10

    move v6, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_1

    .line 1719
    .end local v17    # "contentInsetStart":I
    .end local v19    # "shouldLayoutNavButtonView":Z
    .restart local v6    # "contentInsetStart":I
    .restart local v11    # "shouldLayoutNavButtonView":Z
    :cond_3
    move/from16 v17, v6

    move/from16 v19, v11

    move v11, v5

    .end local v6    # "contentInsetStart":I
    .end local v11    # "shouldLayoutNavButtonView":Z
    .restart local v17    # "contentInsetStart":I
    .restart local v19    # "shouldLayoutNavButtonView":Z
    move v6, v10

    move v10, v9

    move/from16 v9, v16

    .line 1728
    .end local v16    # "menuWidth":I
    .local v6, "childState":I
    .local v9, "menuWidth":I
    .local v10, "height":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result v5

    .line 1729
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1730
    sub-int v0, v5, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v12, v14

    .line 1732
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 1733
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    .line 1734
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1735
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move v11, v4

    move/from16 v4, p2

    move/from16 v20, v5

    .end local v5    # "contentInsetEnd":I
    .local v20, "contentInsetEnd":I
    move/from16 v5, v16

    move v11, v6

    .end local v6    # "childState":I
    .local v11, "childState":I
    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureSearchChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_3

    .line 1734
    .end local v11    # "childState":I
    .end local v20    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "childState":I
    :cond_4
    move/from16 v20, v5

    move v11, v6

    .end local v5    # "contentInsetEnd":I
    .end local v6    # "childState":I
    .restart local v11    # "childState":I
    .restart local v20    # "contentInsetEnd":I
    goto :goto_2

    .line 1733
    .end local v11    # "childState":I
    .end local v20    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "childState":I
    :cond_5
    move/from16 v20, v5

    move v11, v6

    .line 1738
    .end local v5    # "contentInsetEnd":I
    .end local v6    # "childState":I
    .restart local v11    # "childState":I
    .restart local v20    # "contentInsetEnd":I
    :goto_2
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1741
    :goto_3
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1742
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1741
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1743
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v11, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v6

    move v11, v6

    .end local v11    # "childState":I
    .restart local v6    # "childState":I
    goto :goto_4

    .line 1732
    .end local v20    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    :cond_6
    move/from16 v20, v5

    move v11, v6

    .line 1746
    .end local v5    # "contentInsetEnd":I
    .end local v6    # "childState":I
    .restart local v11    # "childState":I
    .restart local v20    # "contentInsetEnd":I
    :goto_4
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1747
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1749
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1750
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1749
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1751
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    invoke-static {v11, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v11

    .line 1754
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v6

    .line 1755
    .local v6, "childCount":I
    const/4 v0, 0x0

    move v5, v10

    move v10, v8

    move v8, v0

    .local v5, "height":I
    .local v8, "i":I
    .local v10, "width":I
    :goto_5
    if-ge v8, v6, :cond_a

    .line 1756
    invoke-virtual {v7, v8}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1757
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 1758
    .local v3, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v0, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_9

    invoke-direct {v7, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1760
    move/from16 v21, v6

    move/from16 v24, v9

    move v9, v5

    goto :goto_6

    .line 1763
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v22, v3

    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .local v22, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    move v3, v10

    move-object/from16 v23, v4

    .end local v4    # "child":Landroid/view/View;
    .local v23, "child":Landroid/view/View;
    move/from16 v4, p2

    move/from16 v24, v9

    move v9, v5

    .end local v5    # "height":I
    .local v9, "height":I
    .local v24, "menuWidth":I
    move/from16 v5, v21

    move/from16 v21, v6

    .end local v6    # "childCount":I
    .local v21, "childCount":I
    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    .line 1765
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v23

    .end local v23    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1766
    .end local v9    # "height":I
    .local v0, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v11, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v2

    move v5, v0

    move v11, v2

    .end local v11    # "childState":I
    .local v2, "childState":I
    goto :goto_7

    .line 1758
    .end local v0    # "height":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v21    # "childCount":I
    .end local v22    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v24    # "menuWidth":I
    .restart local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "height":I
    .restart local v6    # "childCount":I
    .local v9, "menuWidth":I
    .restart local v11    # "childState":I
    :cond_9
    move-object/from16 v22, v3

    move-object v1, v4

    move/from16 v21, v6

    move/from16 v24, v9

    move v9, v5

    .line 1755
    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "height":I
    .end local v6    # "childCount":I
    .local v9, "height":I
    .restart local v21    # "childCount":I
    .restart local v24    # "menuWidth":I
    :goto_6
    move v5, v9

    .end local v9    # "height":I
    .restart local v5    # "height":I
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v21

    move/from16 v9, v24

    goto :goto_5

    .end local v21    # "childCount":I
    .end local v24    # "menuWidth":I
    .restart local v6    # "childCount":I
    .local v9, "menuWidth":I
    :cond_a
    move/from16 v21, v6

    move/from16 v24, v9

    move v9, v5

    .line 1769
    .end local v5    # "height":I
    .end local v6    # "childCount":I
    .end local v8    # "i":I
    .local v9, "height":I
    .restart local v21    # "childCount":I
    .restart local v24    # "menuWidth":I
    const/4 v8, 0x0

    .line 1770
    .local v8, "titleWidth":I
    const/16 v22, 0x0

    .line 1771
    .local v22, "titleHeight":I
    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int v23, v0, v1

    .line 1772
    .local v23, "titleVertMargins":I
    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int v25, v0, v1

    .line 1773
    .local v25, "titleHorizMargins":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1774
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v10, v25

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v23

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 1777
    .end local v8    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v8, v1, v2

    .line 1778
    .end local v0    # "titleWidth":I
    .restart local v8    # "titleWidth":I
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v22, v0, v1

    .line 1779
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v11, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v11

    .line 1781
    :cond_b
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1782
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v10, v25

    add-int v5, v22, v23

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1786
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1787
    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v22, v22, v0

    .line 1788
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v11, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->combineMeasuredStates(II)I

    move-result v11

    move/from16 v0, v22

    goto :goto_8

    .line 1781
    :cond_c
    move/from16 v0, v22

    .line 1791
    .end local v22    # "titleHeight":I
    .local v0, "titleHeight":I
    :goto_8
    add-int/2addr v10, v8

    .line 1792
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1796
    .end local v9    # "height":I
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v10, v2

    .line 1797
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1799
    nop

    .line 1800
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v11

    .line 1799
    move/from16 v4, p1

    invoke-static {v2, v4, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->resolveSizeAndState(III)I

    move-result v2

    .line 1802
    .local v2, "measuredWidth":I
    nop

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v11, 0x10

    .line 1802
    move/from16 v6, p2

    invoke-static {v3, v6, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->resolveSizeAndState(III)I

    move-result v3

    .line 1806
    .local v3, "measuredHeight":I
    iget-boolean v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    if-eqz v5, :cond_e

    .line 1807
    iget v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    .line 1808
    iget v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    iget v9, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    if-ge v5, v9, :cond_d

    .line 1809
    sub-int/2addr v9, v5

    add-int/2addr v5, v9

    iput v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    goto :goto_9

    .line 1811
    :cond_d
    sub-int v9, v5, v9

    sub-int/2addr v5, v9

    iput v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    .line 1814
    :cond_e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getFitsSystemWindows()Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v5, v3

    goto :goto_a

    :cond_f
    move v5, v3

    .line 1815
    .local v5, "uncollapsedHeight":I
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldShowInsetInGestureBarMode()Z

    move-result v9

    iput-boolean v9, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    .line 1816
    const/4 v9, 0x0

    .line 1817
    .local v9, "finalHeight":I
    move/from16 v22, v0

    .end local v0    # "titleHeight":I
    .restart local v22    # "titleHeight":I
    iget-boolean v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMeasuredGestureBar:Z

    if-nez v0, :cond_10

    .line 1818
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getStatusBarHeight()I

    move-result v0

    add-int/2addr v0, v5

    iput v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHeightWithGestureBar:I

    .line 1819
    .end local v9    # "finalHeight":I
    .local v0, "finalHeight":I
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMeasuredGestureBar:Z

    move/from16 v16, v1

    goto :goto_c

    .line 1821
    .end local v0    # "finalHeight":I
    .restart local v9    # "finalHeight":I
    :cond_10
    const v0, 0xffffff

    and-int/2addr v0, v5

    move/from16 v16, v1

    .end local v1    # "height":I
    .local v16, "height":I
    iget v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHeightWithGestureBar:I

    if-ge v0, v1, :cond_11

    goto :goto_b

    :cond_11
    move v1, v5

    :goto_b
    move v0, v1

    .line 1823
    .end local v9    # "finalHeight":I
    .restart local v0    # "finalHeight":I
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldCollapse()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1824
    const/4 v1, 0x0

    goto :goto_d

    :cond_12
    move v1, v0

    .line 1823
    :goto_d
    invoke-virtual {v7, v2, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setMeasuredDimension(II)V

    .line 1825
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1475
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;

    .line 1476
    .local v0, "ss":Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1478
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1479
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1480
    iget v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1481
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 1482
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1486
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    iget-boolean v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_2

    .line 1487
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->postShowOverflowMenu()V

    .line 1489
    :cond_2
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 514
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onRtlPropertiesChanged(I)V

    .line 515
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 516
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setDirection(Z)V

    .line 517
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1462
    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;

    invoke-super {p0}, Landroid/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1464
    .local v0, "state":Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1470
    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1537
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1540
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1510
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1511
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    .line 1514
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1515
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1516
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1517
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    .line 1521
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1522
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    .line 1525
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .line 2249
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildCount()I

    move-result v0

    .line 2251
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2252
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2253
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    .line 2254
    .local v3, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    iget v4, v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eq v2, v4, :cond_0

    .line 2255
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeViewAt(I)V

    .line 2256
    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2259
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public resetedPadding()Z
    .locals 1

    .line 1643
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    return v0
.end method

.method public setCollapsedState(Z)Z
    .locals 7
    .param p1, "collapsed"    # Z

    .line 2287
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2288
    return v1

    .line 2290
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    if-eq v0, p1, :cond_3

    .line 2291
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    .line 2292
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2293
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2294
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 2295
    .local v2, "layerBackground":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2296
    .local v4, "dividerLayer":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    sget v6, Lcom/oneplus/commonctrl/R$id;->actionbar_divider:I

    if-ne v5, v6, :cond_2

    .line 2297
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionBarDividerColor:I

    goto :goto_0

    .line 2298
    :cond_1
    nop

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 2297
    invoke-virtual {v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2301
    .end local v2    # "layerBackground":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "dividerLayer":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->refreshDrawableState()V

    .line 2302
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->jumpDrawablesToCurrentState()V

    .line 2303
    return v3

    .line 2305
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    return v1
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .line 2282
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    .line 2283
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 2284
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .line 1339
    if-gez p1, :cond_0

    .line 1340
    const/high16 p1, -0x80000000

    .line 1342
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1343
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    .line 1344
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1345
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 1348
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .line 1297
    if-gez p1, :cond_0

    .line 1298
    const/high16 p1, -0x80000000

    .line 1300
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1301
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1302
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1303
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 1306
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1221
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 1222
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    .line 1223
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1158
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    .line 1159
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setRelative(II)V

    .line 1160
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 529
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 530
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 645
    if-eqz p1, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureLogoView()V

    .line 647
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 654
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 655
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param

    .line 679
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 680
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureLogoView()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 697
    :cond_1
    return-void
.end method

.method public setMenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 572
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-nez v0, :cond_0

    .line 573
    return-void

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenuView()V

    .line 577
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    .line 578
    .local v0, "oldMenu":Lcom/oneplus/lib/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    .line 579
    return-void

    .line 582
    :cond_1
    if-eqz v0, :cond_2

    .line 583
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 584
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 588
    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Lcom/oneplus/lib/widget/actionbar/Toolbar$1;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    .line 591
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 592
    if-eqz p1, :cond_4

    .line 593
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 594
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 596
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v3, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 597
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 598
    invoke-virtual {p2, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 599
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setPopupTheme(I)V

    .line 602
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    .line 603
    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOuterActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 604
    return-void
.end method

.method public setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 2313
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 2314
    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 2315
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2316
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 2318
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param

    .line 927
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 928
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 947
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 964
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 965
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 982
    if-eqz p1, :cond_0

    .line 983
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    .line 984
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 989
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 991
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 992
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1036
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    .line 1037
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1135
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1136
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1137
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1067
    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    .line 1068
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 376
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 377
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    .line 378
    if-nez p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 381
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 384
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param

    .line 819
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 820
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 830
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 832
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 833
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 834
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 835
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 836
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 839
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 840
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 843
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 844
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 847
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 848
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 851
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    :cond_4
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 854
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 872
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    .line 873
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 896
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextColor:I

    .line 897
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 900
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StringRes;
        .end annotation
    .end param

    .line 764
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 765
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 779
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 780
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 781
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 782
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 785
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 786
    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 789
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 794
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 796
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 797
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :cond_4
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 800
    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 409
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 410
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    .line 411
    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    .line 412
    iput p4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    .line 414
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 415
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 508
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    .line 509
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 510
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 486
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    .line 488
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 489
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 434
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    .line 436
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 437
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 464
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    .line 466
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 467
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 861
    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    .line 862
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 865
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 884
    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextColor:I

    .line 885
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
