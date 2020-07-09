.class public Lcom/oneplus/lib/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/Preference$BaseSavedState;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mImageFrame:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mIsAvatarIcon:Z

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconResId:I

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetFrame:Landroid/view/ViewGroup;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 312
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 123
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 125
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 128
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    .line 129
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    .line 134
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 136
    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_preference:I

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 138
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 225
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    .line 227
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 230
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_opUseAvatarIcon:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAvatarIcon = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Preference"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_icon:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    .line 235
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_key:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    .line 237
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    .line 238
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 240
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_summary:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 242
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_order:I

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    .line 244
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_fragment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    .line 246
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_layout:I

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 248
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_widgetLayout:I

    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    .line 250
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_enabled:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 252
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_selectable:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 254
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_persistent:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 256
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_dependency:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 258
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 262
    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_shouldDisableView:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 264
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .line 1531
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1532
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1537
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1533
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1534
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1539
    :cond_2
    :goto_1
    return-void
.end method

.method private doUpdateImageFrameParams()V
    .locals 5

    .line 784
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 785
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 786
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_3

    .line 787
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_avatar_mini:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 789
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 792
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_left2:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 793
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_right3:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 794
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 796
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 797
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_list_item_height_one_line2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 799
    :cond_0
    const v1, 0x800033

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 800
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_avatar_top3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 804
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 805
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 807
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_top4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 811
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private registerDependency()V
    .locals 4

    .line 1347
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    .line 1352
    .local v0, "preference":Lcom/oneplus/lib/preference/Preference;
    if-eqz v0, :cond_1

    .line 1353
    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/Preference;->registerDependent(Lcom/oneplus/lib/preference/Preference;)V

    .line 1358
    return-void

    .line 1355
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/oneplus/lib/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/oneplus/lib/preference/Preference;

    .line 1397
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1403
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 1404
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 647
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 649
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 650
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 651
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 652
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 651
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 655
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 1562
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    goto :goto_0

    .line 1565
    :catch_0
    move-exception v0

    .line 1569
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1572
    .end local v0    # "unused":Ljava/lang/AbstractMethodError;
    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    .line 1363
    .local v0, "oldDependency":Lcom/oneplus/lib/preference/Preference;
    if-eqz v0, :cond_0

    .line 1364
    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependent(Lcom/oneplus/lib/preference/Preference;)V

    .line 1367
    .end local v0    # "oldDependency":Lcom/oneplus/lib/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/oneplus/lib/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/oneplus/lib/preference/Preference;

    .line 1415
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1416
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1418
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method canRecycleLayout()Z
    .locals 1

    .line 1856
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    return v0
.end method

.method public compareTo(Lcom/oneplus/lib/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Lcom/oneplus/lib/preference/Preference;

    .line 1264
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1266
    sub-int/2addr v0, v1

    return v0

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1269
    const/4 v0, 0x0

    return v0

    .line 1270
    :cond_1
    if-nez v0, :cond_2

    .line 1271
    const/4 v0, 0x1

    return v0

    .line 1272
    :cond_2
    if-nez v1, :cond_3

    .line 1273
    const/4 v0, -0x1

    return v0

    .line 1276
    :cond_3
    invoke-static {v0, v1}, Lcom/oneplus/lib/preference/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 83
    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->compareTo(Lcom/oneplus/lib/preference/Preference;)I

    move-result p1

    return p1
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1968
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1970
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 1971
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1972
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1973
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1974
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1979
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1915
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1917
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1918
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    .line 1922
    if-eqz v0, :cond_1

    .line 1923
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1919
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1926
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1384
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0

    .line 1381
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1233
    const/4 v0, 0x0

    return-object v0

    .line 1236
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1877
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1878
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1881
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1882
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1883
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1885
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1887
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1889
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 984
    iget-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 687
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .line 1848
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    return p1

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .line 1760
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1761
    return p1

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .line 1716
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1717
    return p1

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getPersistedLong(J)J
    .locals 2
    .param p1, "defaultReturnValue"    # J

    .line 1804
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1805
    return-wide p1

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .line 1617
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    return-object p1

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1672
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1673
    return-object p1

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    return-object v0
.end method

.method public getSecondaryIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1206
    const/4 v0, 0x0

    return-object v0

    .line 1209
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .line 725
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 471
    if-nez p1, :cond_0

    .line 472
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 475
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .line 454
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 928
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 949
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public isSummaryEmpty()Z
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1295
    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;)V

    .line 1297
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .line 1428
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    .line 1430
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/Preference;>;"
    if-nez v0, :cond_0

    .line 1431
    return-void

    .line 1434
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1435
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1436
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 1435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1438
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1306
    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/oneplus/lib/preference/Preference;)V

    .line 1308
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .line 1342
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->registerDependency()V

    .line 1343
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/oneplus/lib/preference/PreferenceManager;

    .line 1326
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    .line 1328
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    .line 1330
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->dispatchSetInitialValue()V

    .line 1331
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 531
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 532
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 534
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 535
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 544
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 545
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    .line 546
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 547
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 550
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 555
    .local v4, "imageView":Landroid/widget/ImageView;
    if-eqz v4, :cond_8

    .line 556
    iget v5, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    .line 557
    :cond_4
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    .line 558
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 560
    :cond_5
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    .line 561
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    :cond_6
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    :cond_8
    sget v5, Lcom/oneplus/commonctrl/R$id;->icon_frame:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    .line 568
    iget-object v5, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 569
    iget-object v6, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    move v6, v2

    goto :goto_3

    :cond_9
    move v6, v1

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :cond_a
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->doUpdateImageFrameParams()V

    .line 573
    sget v5, Lcom/oneplus/commonctrl/R$id;->text_layout:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 574
    .local v5, "textLayout":Landroid/view/View;
    if-eqz v5, :cond_f

    .line 575
    sget v6, Lcom/oneplus/commonctrl/R$id;->top_space:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 576
    .local v6, "topSpace":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 577
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v7, :cond_f

    .line 579
    iget-object v8, p0, Lcom/oneplus/lib/preference/Preference;->mImageFrame:Landroid/view/View;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v1, :cond_b

    .line 580
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 581
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    .line 583
    :cond_b
    iget-boolean v8, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    if-nez v8, :cond_c

    .line 584
    iget-object v8, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_left2:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 585
    iget-object v8, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_left2:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    .line 587
    :cond_c
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 591
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 592
    if-eqz v6, :cond_f

    .line 593
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 613
    :cond_d
    const/16 v8, 0x10

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 614
    const/4 v8, -0x2

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 615
    if-eqz v6, :cond_e

    .line 616
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :cond_e
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    .end local v6    # "topSpace":Landroid/view/View;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    :goto_5
    sget v6, Lcom/oneplus/commonctrl/R$id;->secondary_icon:I

    .line 625
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 626
    .local v6, "secondaryImageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_14

    .line 627
    iget v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_12

    .line 628
    :cond_10
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_11

    .line 629
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 631
    :cond_11
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_12

    .line 632
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    :cond_12
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_13

    move v1, v2

    :cond_13
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    :cond_14
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_15

    .line 639
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 641
    :cond_15
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 994
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 492
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    .line 493
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 495
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 497
    .local v1, "layout":Landroid/view/View;
    nop

    .line 498
    const v3, 0x1020018

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    .line 499
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 500
    iget v4, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    .line 501
    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isSummaryEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 507
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 508
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 509
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 510
    const/16 v2, 0x10

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 511
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-object v1
.end method

.method public onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Lcom/oneplus/lib/preference/Preference;
    .param p2, "disableDependent"    # Z

    .line 1447
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1448
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    .line 1451
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 1453
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 1455
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/preference/Preference;
    .param p2, "disableChild"    # Z

    .line 1464
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1465
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    .line 1468
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 1470
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 1472
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .line 1515
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependency()V

    .line 1516
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1993
    sget-object v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->EMPTY_STATE:Lcom/oneplus/support/core/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1994
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1996
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1942
    sget-object v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->EMPTY_STATE:Lcom/oneplus/support/core/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 1559
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "preferenceScreen"    # Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 1138
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1139
    return-void

    .line 1142
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onClick()V

    .line 1144
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    return-void

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    .line 1149
    .local v0, "preferenceManager":Lcom/oneplus/lib/preference/PreferenceManager;
    if-eqz v0, :cond_2

    .line 1150
    nop

    .line 1151
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1152
    .local v1, "listener":Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 1153
    invoke-interface {v1, p1, p0}, Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/oneplus/lib/preference/PreferenceScreen;Lcom/oneplus/lib/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    return-void

    .line 1158
    .end local v1    # "listener":Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1159
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1160
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1162
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3
    .param p1, "value"    # Z

    .line 1822
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1823
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1825
    return v1

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1829
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1830
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1831
    return v1

    .line 1833
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .line 1734
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1737
    return v1

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1741
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1742
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1743
    return v1

    .line 1745
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .line 1690
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1691
    not-int v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1693
    return v1

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1697
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1698
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1699
    return v1

    .line 1701
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistLong(J)Z
    .locals 3
    .param p1, "value"    # J

    .line 1778
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    not-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1781
    return v1

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1785
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1786
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1787
    return v1

    .line 1789
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1588
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1592
    return v1

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1596
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1597
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1598
    return v1

    .line 1600
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1640
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1644
    return v1

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1648
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1649
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1650
    return v1

    .line 1652
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method requireKey()V
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mRequiresKey:Z

    .line 1033
    return-void

    .line 1029
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1954
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1955
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1901
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1902
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 1526
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1527
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .line 1492
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependency()V

    .line 1495
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1496
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->registerDependency()V

    .line 1497
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 912
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 913
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 916
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 918
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 920
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .line 366
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .line 761
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 762
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    .line 763
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 765
    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 747
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 748
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 750
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 752
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 348
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 349
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1003
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    .line 1005
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->requireKey()V

    .line 1008
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 413
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 418
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 419
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1287
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1288
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    .line 1097
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    .line 1098
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    .line 1116
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    .line 1117
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .line 671
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 672
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    .line 675
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyHierarchyChanged()V

    .line 677
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .line 1075
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 1076
    return-void
.end method

.method public setSecondaryIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 843
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    .line 844
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 845
    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 827
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 828
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 830
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 832
    :cond_2
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .line 937
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 938
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 939
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 941
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .line 964
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 965
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 966
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .line 902
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 903
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 875
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 876
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 877
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 879
    :cond_2
    return-void
.end method

.method protected setSummaryOffFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 887
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 888
    return-void
.end method

.method protected setSummaryOnFromTwoState(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 883
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 884
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 713
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 714
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    .line 715
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 699
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 700
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    .line 701
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 702
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 704
    :cond_2
    return-void
.end method

.method public setUseAvatarIcon(Z)V
    .locals 0
    .param p1, "isAvatarIcon"    # Z

    .line 779
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mIsAvatarIcon:Z

    .line 780
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->doUpdateImageFrameParams()V

    .line 781
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .line 441
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 445
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    .line 446
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .line 1248
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1249
    const/4 v0, 0x0

    return v0

    .line 1252
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    return v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 1481
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldPersist()Z
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1861
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
