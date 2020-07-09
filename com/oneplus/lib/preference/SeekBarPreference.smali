.class public Lcom/oneplus/lib/preference/SeekBarPreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setMax(I)V

    .line 51
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference_android_layout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->preference_widget_seekbar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 56
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .line 128
    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 129
    iget p1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    .line 131
    :cond_0
    if-gez p1, :cond_1

    .line 132
    const/4 p1, 0x0

    .line 134
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 135
    iput p1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    .line 136
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/SeekBarPreference;->persistInt(I)Z

    .line 137
    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->notifyChanged()V

    .line 141
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 75
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    sget v0, Lcom/oneplus/commonctrl/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 78
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 80
    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 82
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 103
    const/16 v0, 0x51

    if-eq p2, v0, :cond_1

    const/16 v0, 0x46

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    const/16 v0, 0x45

    if-ne p2, v0, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->getProgress()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(I)V

    .line 110
    return v1

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->getProgress()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(I)V

    .line 106
    return v1

    .line 113
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 165
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 209
    return-void

    .line 213
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;

    .line 214
    .local v0, "myState":Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 215
    iget v1, v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    .line 216
    iget v1, v0, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->notifyChanged()V

    .line 218
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 191
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 192
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    return-object v0

    .line 198
    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 199
    .local v1, "myState":Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    iput v2, v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->progress:I

    .line 200
    iget v2, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    iput v2, v1, Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;->max:I

    .line 201
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 91
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    .line 92
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(I)V

    .line 93
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 173
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 178
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 181
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 117
    iget v0, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 118
    iput p1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mMax:I

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/SeekBarPreference;->notifyChanged()V

    .line 121
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(IZ)V

    .line 125
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 152
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 153
    .local v0, "progress":I
    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/SeekBarPreference;->setProgress(IZ)V

    goto :goto_0

    .line 157
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    :cond_1
    :goto_0
    return-void
.end method
