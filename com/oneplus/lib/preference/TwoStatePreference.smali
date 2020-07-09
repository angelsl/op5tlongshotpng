.class public abstract Lcom/oneplus/lib/preference/TwoStatePreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onClick()V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 64
    .local v0, "newValue":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setChecked(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 244
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;

    .line 251
    .local v0, "myState":Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 252
    iget-boolean v1, v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/TwoStatePreference;->setChecked(Z)V

    .line 253
    return-void

    .line 246
    .end local v0    # "myState":Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 247
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 231
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 232
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    return-object v0

    .line 237
    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 238
    .local v1, "myState":Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->checked:Z

    .line 239
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 189
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 189
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setChecked(Z)V

    .line 191
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 76
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_2

    .line 78
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    .line 79
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mCheckedSet:Z

    .line 80
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/TwoStatePreference;->persistBoolean(Z)Z

    .line 81
    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyChanged()V

    .line 86
    :cond_2
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mDisableDependentsState:Z

    .line 180
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 138
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/TwoStatePreference;->setSummaryOffFromTwoState(Ljava/lang/CharSequence;)V

    .line 139
    iput-object p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyChanged()V

    .line 143
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/TwoStatePreference;->setSummaryOnFromTwoState(Ljava/lang/CharSequence;)V

    .line 110
    iput-object p1, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->notifyChanged()V

    .line 114
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .line 99
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mDisableDependentsState:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 100
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 199
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_4

    .line 201
    const/4 v1, 0x1

    .line 202
    .local v1, "useDefaultSummary":Z
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mChecked:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/oneplus/lib/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v1, 0x0

    .line 210
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 212
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v1, 0x0

    .line 218
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const/16 v2, 0x8

    .line 219
    .local v2, "newVisibility":I
    if-nez v1, :cond_3

    .line 221
    const/4 v2, 0x0

    .line 223
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 224
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    .end local v1    # "useDefaultSummary":Z
    .end local v2    # "newVisibility":I
    :cond_4
    return-void
.end method
