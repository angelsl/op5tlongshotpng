.class public Lcom/oneplus/lib/preference/EditTextPreference;
.super Lcom/oneplus/lib/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_editTextPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 60
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .line 132
    sget v0, Lcom/oneplus/commonctrl/R$id;->edittext_container:I

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 112
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 115
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 118
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 124
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .line 142
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onDialogClosed(Z)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 150
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 154
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 198
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;

    .line 205
    .local v0, "myState":Lcom/oneplus/lib/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 206
    iget-object v1, v0, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 207
    return-void

    .line 200
    .end local v0    # "myState":Lcom/oneplus/lib/preference/EditTextPreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 201
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 185
    invoke-super {p0}, Lcom/oneplus/lib/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 186
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/EditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    return-object v0

    .line 191
    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 192
    .local v1, "myState":Lcom/oneplus/lib/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 193
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 159
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 91
    .local v0, "wasBlocking":Z
    iput-object p1, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 96
    .local v1, "isBlocking":Z
    if-eq v1, v0, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
