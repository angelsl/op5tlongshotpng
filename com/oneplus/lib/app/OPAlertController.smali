.class public Lcom/oneplus/lib/app/OPAlertController;
.super Ljava/lang/Object;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;,
        Lcom/oneplus/lib/app/OPAlertController$AlertParams;,
        Lcom/oneplus/lib/app/OPAlertController$RecycleListView;,
        Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mOnlyDarkTheme:Z

.field private mOnlyLightTheme:Z

.field private mProgressStyle:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mSpaceView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTemplate:Landroid/widget/LinearLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 103
    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    .line 129
    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/OPAlertController$1;-><init>(Lcom/oneplus/lib/app/OPAlertController;)V

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 258
    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mProgressStyle:I

    .line 188
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 190
    const-string v1, "OPAlertController"

    const-string v2, "OPAlertController start !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-object p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    .line 192
    new-instance v1, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    .line 200
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->OPAlertDialogStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v1, v1, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v1, :cond_0

    .line 206
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_alert_progress_dialog_material:I

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    goto :goto_0

    .line 208
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_android_layout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_alert_dialog_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    .line 212
    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_listLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    .line 215
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_multiChoiceItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_multichoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    .line 218
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_singleChoiceItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_singlechoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    .line 221
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_listItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_item_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .line 69
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oneplus/lib/app/OPAlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .line 69
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertController;

    .line 69
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 230
    return v1

    .line 233
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 234
    return v2

    .line 237
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 239
    .local v3, "i":I
    :cond_2
    if-lez v3, :cond_3

    .line 240
    add-int/lit8 v3, v3, -0x1

    .line 241
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    return v1

    .line 247
    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .line 877
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 878
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 879
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 880
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 890
    return-void
.end method

.method private getColor(II)I
    .locals 4
    .param p1, "attr"    # I
    .param p2, "color"    # I

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 348
    .local v0, "defaultColor":I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 349
    .local v1, "attrsArray":[I
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 350
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    return v2
.end method

.method private getColorCompat(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 797
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 798
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 800
    :cond_1
    if-eqz p2, :cond_3

    .line 801
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 803
    :cond_3
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .line 582
    if-nez p1, :cond_1

    .line 584
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 585
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 588
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 592
    :cond_1
    if-eqz p2, :cond_2

    .line 593
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 594
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 595
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 600
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 601
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 604
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 19
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .line 894
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 895
    .local v1, "fullDark":I
    const/4 v2, 0x0

    .line 896
    .local v2, "topDark":I
    const/4 v3, 0x0

    .line 897
    .local v3, "centerDark":I
    const/4 v4, 0x0

    .line 898
    .local v4, "bottomDark":I
    const/4 v5, 0x0

    .line 899
    .local v5, "fullBright":I
    const/4 v6, 0x0

    .line 900
    .local v6, "topBright":I
    const/4 v7, 0x0

    .line 901
    .local v7, "centerBright":I
    const/4 v8, 0x0

    .line 902
    .local v8, "bottomBright":I
    const/4 v9, 0x0

    .line 933
    .local v9, "bottomMedium":I
    const/4 v10, 0x4

    new-array v11, v10, [Landroid/view/View;

    .line 934
    .local v11, "views":[Landroid/view/View;
    new-array v10, v10, [Z

    .line 935
    .local v10, "light":[Z
    const/4 v12, 0x0

    .line 936
    .local v12, "lastView":Landroid/view/View;
    const/4 v13, 0x0

    .line 938
    .local v13, "lastLight":Z
    const/4 v14, 0x0

    .line 939
    .local v14, "pos":I
    const/4 v15, 0x0

    if-eqz p6, :cond_0

    .line 940
    aput-object p2, v11, v14

    .line 941
    aput-boolean v15, v10, v14

    .line 942
    add-int/lit8 v14, v14, 0x1

    .line 950
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 v17, v1

    .end local v1    # "fullDark":I
    .local v17, "fullDark":I
    const/16 v1, 0x8

    if-ne v15, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v1, p3

    :goto_0
    aput-object v1, v11, v14

    .line 951
    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    const/4 v15, 0x1

    if-eqz v1, :cond_2

    move/from16 v16, v15

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    aput-boolean v16, v10, v14

    .line 952
    add-int/2addr v14, v15

    .line 954
    if-eqz p7, :cond_3

    .line 955
    aput-object p4, v11, v14

    .line 956
    iget-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    aput-boolean v1, v10, v14

    .line 957
    add-int/lit8 v14, v14, 0x1

    .line 960
    :cond_3
    if-eqz p8, :cond_4

    .line 961
    aput-object p5, v11, v14

    .line 962
    aput-boolean v15, v10, v14

    .line 965
    :cond_4
    const/4 v1, 0x0

    .line 966
    .local v1, "setView":Z
    const/4 v14, 0x0

    :goto_2
    array-length v15, v11

    if-ge v14, v15, :cond_a

    .line 967
    aget-object v15, v11, v14

    .line 968
    .local v15, "v":Landroid/view/View;
    if-nez v15, :cond_5

    .line 969
    move/from16 v18, v2

    goto :goto_6

    .line 972
    :cond_5
    if-eqz v12, :cond_9

    .line 973
    if-nez v1, :cond_7

    .line 974
    move/from16 v18, v2

    if-eqz v13, :cond_6

    move v2, v6

    .end local v2    # "topDark":I
    .local v18, "topDark":I
    :cond_6
    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 976
    .end local v18    # "topDark":I
    .restart local v2    # "topDark":I
    :cond_7
    move/from16 v18, v2

    .end local v2    # "topDark":I
    .restart local v18    # "topDark":I
    if-eqz v13, :cond_8

    move v2, v7

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 978
    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    .line 972
    .end local v18    # "topDark":I
    .restart local v2    # "topDark":I
    :cond_9
    move/from16 v18, v2

    .line 981
    .end local v2    # "topDark":I
    .restart local v18    # "topDark":I
    :goto_5
    move-object v2, v15

    .line 982
    .end local v12    # "lastView":Landroid/view/View;
    .local v2, "lastView":Landroid/view/View;
    aget-boolean v12, v10, v14

    move v13, v12

    move-object v12, v2

    .line 966
    .end local v2    # "lastView":Landroid/view/View;
    .end local v15    # "v":Landroid/view/View;
    .restart local v12    # "lastView":Landroid/view/View;
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v18

    const/4 v15, 0x1

    goto :goto_2

    .line 985
    .end local v18    # "topDark":I
    .local v2, "topDark":I
    :cond_a
    move/from16 v18, v2

    .end local v2    # "topDark":I
    .restart local v18    # "topDark":I
    if-eqz v12, :cond_f

    .line 986
    if-eqz v1, :cond_d

    .line 993
    nop

    .line 994
    if-eqz v13, :cond_c

    if-eqz p8, :cond_b

    move v2, v9

    goto :goto_7

    :cond_b
    move v2, v8

    goto :goto_7

    :cond_c
    move v2, v4

    .line 993
    :goto_7
    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 999
    :cond_d
    if-eqz v13, :cond_e

    move v2, v5

    goto :goto_8

    :cond_e
    move/from16 v2, v17

    :goto_8
    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1003
    :cond_f
    :goto_9
    iget-object v2, v0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    .line 1004
    .local v2, "listView":Landroid/widget/ListView;
    if-eqz v2, :cond_10

    iget-object v15, v0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v15, :cond_10

    .line 1005
    invoke-virtual {v2, v15}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1006
    iget v15, v0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    .line 1007
    .local v15, "checkedItem":I
    const/4 v0, -0x1

    if-le v15, v0, :cond_10

    .line 1008
    const/4 v0, 0x1

    invoke-virtual {v2, v15, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1009
    invoke-virtual {v2, v15}, Landroid/widget/ListView;->setSelection(I)V

    .line 1012
    .end local v15    # "checkedItem":I
    :cond_10
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, "whichButtons":I
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v1, v1, Lcom/oneplus/lib/app/OPProgressDialog;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 811
    const-string v1, "setupButtons mSpaceView set GONE"

    const-string v3, "ProgressDialog"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    sget v4, Lcom/oneplus/commonctrl/R$id;->spacer:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mSpaceView:Landroid/view/View;

    .line 813
    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mProgressStyle:I

    if-nez v4, :cond_0

    .line 814
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mSpaceView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 815
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 816
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    const v1, 0x1020019

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 822
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 829
    or-int/lit8 v0, v0, 0x1

    .line 832
    :goto_0
    const v1, 0x102001a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 833
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 838
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 841
    or-int/lit8 v0, v0, 0x2

    .line 844
    :goto_1
    const v1, 0x102001b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 845
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 848
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 850
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 853
    or-int/lit8 v0, v0, 0x4

    .line 856
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/lib/app/OPAlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 861
    if-ne v0, v4, :cond_4

    .line 862
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 863
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 864
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 865
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 866
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    .line 870
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    move v3, v4

    :cond_7
    move v1, v3

    .line 871
    .local v1, "hasButtons":Z
    if-nez v1, :cond_8

    .line 872
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 874
    :cond_8
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 769
    sget v0, Lcom/oneplus/commonctrl/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 770
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 773
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    .line 774
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 775
    return-void

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 779
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 781
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 784
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 786
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 787
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 788
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 790
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_0

    .line 791
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 794
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 689
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 691
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 693
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 694
    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 695
    .end local v0    # "customView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 698
    .restart local v0    # "customView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 699
    .local v1, "hasCustomView":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 700
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 704
    :cond_4
    if-eqz v1, :cond_7

    .line 705
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 706
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    .line 709
    iget v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 713
    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 714
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 716
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_6
    goto :goto_1

    .line 717
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 719
    :goto_1
    return-void
.end method

.method private setupDecor()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, "decor":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/oneplus/commonctrl/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 554
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 555
    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/lib/app/OPAlertController$2;-><init>(Lcom/oneplus/lib/app/OPAlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 567
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 568
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 570
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 722
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 727
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 731
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 732
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_1

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    .line 734
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleTemplate:Landroid/widget/LinearLayout;

    .line 735
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 736
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_3

    .line 738
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/oneplus/commonctrl/R$id;->alertTitle:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    .line 739
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-eqz v2, :cond_1

    .line 745
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 747
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    .line 752
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    .line 753
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    .line 754
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 751
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 755
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 759
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 760
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 764
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateTitleView()V

    .line 766
    .end local v0    # "hasTextTitle":Z
    :goto_1
    return-void
.end method

.method private setupView()V
    .locals 25

    .line 608
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/oneplus/commonctrl/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 609
    .local v10, "parentPanel":Landroid/view/View;
    sget v0, Lcom/oneplus/commonctrl/R$id;->topPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 610
    .local v11, "defaultTopPanel":Landroid/view/View;
    sget v0, Lcom/oneplus/commonctrl/R$id;->contentPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 611
    .local v12, "defaultContentPanel":Landroid/view/View;
    sget v0, Lcom/oneplus/commonctrl/R$id;->buttonPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 615
    .local v13, "defaultButtonPanel":Landroid/view/View;
    sget v0, Lcom/oneplus/commonctrl/R$id;->customPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/ViewGroup;

    .line 616
    .local v14, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v14}, Lcom/oneplus/lib/app/OPAlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 618
    sget v0, Lcom/oneplus/commonctrl/R$id;->topPanel:I

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 619
    .local v15, "customTopPanel":Landroid/view/View;
    sget v0, Lcom/oneplus/commonctrl/R$id;->contentPanel:I

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 620
    .local v8, "customContentPanel":Landroid/view/View;
    sget v0, Lcom/oneplus/commonctrl/R$id;->buttonPanel:I

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 623
    .local v7, "customButtonPanel":Landroid/view/View;
    invoke-direct {v9, v15, v11}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 624
    .local v6, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v8, v12}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 625
    .local v5, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v7, v13}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 627
    .local v4, "buttonPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v5}, Lcom/oneplus/lib/app/OPAlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 628
    invoke-direct {v9, v4}, Lcom/oneplus/lib/app/OPAlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 629
    invoke-direct {v9, v6}, Lcom/oneplus/lib/app/OPAlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 631
    nop

    .line 632
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move/from16 v16, v0

    .line 633
    .local v16, "hasCustomPanel":Z
    if-eqz v6, :cond_1

    .line 634
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move/from16 v17, v0

    .line 635
    .local v17, "hasTopPanel":Z
    if-eqz v4, :cond_2

    .line 636
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    move/from16 v18, v0

    .line 639
    .local v18, "hasButtonPanel":Z
    if-nez v18, :cond_3

    .line 640
    if-eqz v5, :cond_3

    .line 641
    sget v0, Lcom/oneplus/commonctrl/R$id;->textSpacerNoButtons:I

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 642
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_3

    iget-object v1, v9, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 649
    .end local v0    # "spacer":Landroid/view/View;
    :cond_3
    if-eqz v17, :cond_4

    .line 651
    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 652
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 670
    :cond_4
    if-nez v16, :cond_8

    .line 671
    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 672
    .local v0, "content":Landroid/view/View;
    :goto_3
    if-eqz v0, :cond_8

    .line 673
    if-eqz v17, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    .line 674
    :goto_4
    if-eqz v18, :cond_7

    const/4 v1, 0x2

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    or-int/2addr v1, v2

    .line 675
    .local v1, "indicators":I
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 680
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "indicators":I
    :cond_8
    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    move-object/from16 v19, v4

    .end local v4    # "buttonPanel":Landroid/view/ViewGroup;
    .local v19, "buttonPanel":Landroid/view/ViewGroup;
    const v4, 0x101005d

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 682
    .local v20, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v6

    move-object v3, v5

    move-object v4, v14

    move-object/from16 v21, v5

    .end local v5    # "contentPanel":Landroid/view/ViewGroup;
    .local v21, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v5, v19

    move-object/from16 v22, v6

    .end local v6    # "topPanel":Landroid/view/ViewGroup;
    .local v22, "topPanel":Landroid/view/ViewGroup;
    move/from16 v6, v17

    move-object/from16 v23, v7

    .end local v7    # "customButtonPanel":Landroid/view/View;
    .local v23, "customButtonPanel":Landroid/view/View;
    move/from16 v7, v16

    move-object/from16 v24, v8

    .end local v8    # "customContentPanel":Landroid/view/View;
    .local v24, "customContentPanel":Landroid/view/View;
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/lib/app/OPAlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 684
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 685
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method private updateMessageView()V
    .locals 6

    .line 354
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v0, v0, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v0, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 358
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 362
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_5

    .line 363
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_top1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 364
    .local v1, "top":I
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 365
    .local v2, "bottom":I
    iget v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-nez v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_top2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 368
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->oneplus_contorl_text_style_body1:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 369
    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v3, :cond_3

    .line 370
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_secondary_dark:I

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 371
    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    if-eqz v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_secondary_light:I

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 374
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$attr;->onePlusTextColorSecondary:I

    sget v5, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_secondary_default:I

    invoke-direct {p0, v4, v5}, Lcom/oneplus/lib/app/OPAlertController;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 377
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    :cond_5
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_top3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 378
    .restart local v1    # "top":I
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 379
    .restart local v2    # "bottom":I
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->oneplus_contorl_text_style_subheading:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 380
    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v3, :cond_6

    .line 381
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 382
    :cond_6
    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    if-eqz v3, :cond_7

    .line 383
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_light:I

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 385
    :cond_7
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$attr;->onePlusTextColorPrimary:I

    sget v5, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_default:I

    invoke-direct {p0, v4, v5}, Lcom/oneplus/lib/app/OPAlertController;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 389
    return-void
.end method

.method private updateTitleView()V
    .locals 9

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v0, v0, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    .line 309
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 310
    return-void

    .line 312
    :cond_1
    const/4 v0, 0x0

    .line 313
    .local v0, "isBold":Z
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 314
    .local v1, "hasMessage":Z
    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    .line 315
    :cond_2
    const/4 v0, 0x1

    .line 317
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBold : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPAlertController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-eqz v0, :cond_5

    .line 319
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v2, v2, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v2, :cond_4

    .line 320
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 322
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->oneplus_contorl_text_style_title:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 325
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleTemplate:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    .line 326
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleTemplate:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleTemplate:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 326
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 330
    :cond_6
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v2, :cond_7

    .line 331
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 332
    :cond_7
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    if-eqz v2, :cond_8

    .line 333
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_light:I

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->getColorCompat(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 335
    :cond_8
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTitleView.getTextSize() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 529
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 537
    const/4 v0, 0x0

    return-object v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .line 515
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 516
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 517
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 253
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 254
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->setupView()V

    .line 255
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->setupDecor()V

    .line 256
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 543
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 548
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 445
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 446
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 449
    :cond_0
    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 452
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 453
    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 454
    goto :goto_0

    .line 467
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_2
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 458
    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 459
    goto :goto_0

    .line 462
    :cond_3
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 463
    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 464
    nop

    .line 469
    :goto_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 285
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    .line 286
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 479
    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    .line 481
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 482
    if-eqz p1, :cond_0

    .line 483
    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 485
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 496
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    .line 499
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 500
    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 503
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    :cond_1
    :goto_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .line 521
    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    .line 522
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 289
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 290
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    .line 294
    return-void
.end method

.method public setOnlyDarkTheme(Z)V
    .locals 0
    .param p1, "onlyDarkTheme"    # Z

    .line 297
    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    .line 298
    return-void
.end method

.method public setOnlyLightTheme(Z)V
    .locals 0
    .param p1, "onlyLightTheme"    # Z

    .line 301
    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyLightTheme:Z

    .line 302
    return-void
.end method

.method protected setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 260
    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mProgressStyle:I

    .line 261
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 274
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    .line 279
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .line 396
    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 398
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 404
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    .line 406
    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 407
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 414
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    .line 417
    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    .line 418
    iput p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    .line 419
    iput p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    .line 420
    iput p5, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    .line 421
    return-void
.end method
