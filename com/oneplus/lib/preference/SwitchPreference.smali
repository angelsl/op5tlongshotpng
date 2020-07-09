.class public Lcom/oneplus/lib/preference/SwitchPreference;
.super Lcom/oneplus/lib/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/oneplus/lib/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 109
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance v0, Lcom/oneplus/lib/preference/SwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/preference/SwitchPreference$Listener;-><init>(Lcom/oneplus/lib/preference/SwitchPreference;Lcom/oneplus/lib/preference/SwitchPreference$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mListener:Lcom/oneplus/lib/preference/SwitchPreference$Listener;

    .line 76
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SwitchPreference_android_summaryOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 79
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SwitchPreference_android_summaryOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 80
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SwitchPreference_android_switchTextOn:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 82
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SwitchPreference_android_switchTextOff:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 84
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SwitchPreference_android_disableDependentsState:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 123
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 125
    sget v0, Lcom/oneplus/commonctrl/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 127
    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 128
    move-object v1, v0

    check-cast v1, Landroid/widget/Switch;

    .line 129
    .local v1, "switchView":Landroid/widget/Switch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 134
    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 135
    move-object v1, v0

    check-cast v1, Landroid/widget/Switch;

    .line 136
    .restart local v1    # "switchView":Landroid/widget/Switch;
    iget-object v2, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mListener:Lcom/oneplus/lib/preference/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .line 163
    iput-object p1, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SwitchPreference;->notifyChanged()V

    .line 165
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .line 152
    iput-object p1, p0, Lcom/oneplus/lib/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SwitchPreference;->notifyChanged()V

    .line 154
    return-void
.end method
