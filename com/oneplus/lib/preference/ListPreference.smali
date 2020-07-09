.class public Lcom/oneplus/lib/preference/ListPreference;
.super Lcom/oneplus/lib/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ListPreference_android_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 53
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ListPreference_android_entryValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/preference/ListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/preference/ListPreference;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 230
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 231
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    return v0

    .line 231
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/oneplus/lib/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 220
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 167
    invoke-super {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .line 278
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onDialogClosed(Z)V

    .line 280
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 281
    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 286
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 290
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 246
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/oneplus/lib/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/oneplus/lib/preference/ListPreference$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/preference/ListPreference$1;-><init>(Lcom/oneplus/lib/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 274
    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 313
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/ListPreference$SavedState;

    .line 320
    .local v0, "myState":Lcom/oneplus/lib/preference/ListPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 321
    iget-object v1, v0, Lcom/oneplus/lib/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 322
    return-void

    .line 315
    .end local v0    # "myState":Lcom/oneplus/lib/preference/ListPreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 316
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 300
    invoke-super {p0}, Lcom/oneplus/lib/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 301
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    return-object v0

    .line 306
    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 307
    .local v1, "myState":Lcom/oneplus/lib/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    .line 308
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 295
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .line 88
    iput-object p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 89
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .line 116
    iput-object p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 184
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 190
    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 145
    .local v0, "changed":Z
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 147
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/ListPreference;->mValueSet:Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/ListPreference;->notifyChanged()V

    .line 153
    :cond_1
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 198
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 199
    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method
