.class public Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;
.super Lcom/oneplus/lib/widget/preference/OPPreference;
.source "OPSeekBarPreference.java"

# interfaces
.implements Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;
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

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 61
    sget v0, Lcom/oneplus/commonctrl/R$style;->OnePlus_DeviceDefault_Preference_Material_SeekBarPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 42
    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oneplus/lib/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setMax(I)V

    .line 50
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference:[I

    .line 51
    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result v1

    .line 50
    invoke-virtual {p1, p2, v0, v1, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference_android_layout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->preference_widget_seekbar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 55
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setLayoutResource(I)V

    .line 58
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .line 135
    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 136
    iget p1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    .line 138
    :cond_0
    if-gez p1, :cond_1

    .line 139
    const/4 p1, 0x0

    .line 141
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 142
    iput p1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    .line 143
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->persistInt(I)Z

    .line 144
    if-eqz p2, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->notifyChanged()V

    .line 148
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 74
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 76
    sget v0, Lcom/oneplus/commonctrl/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 78
    .local v0, "seekBar":Landroid/widget/SeekBar;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 80
    sget v1, Lcom/oneplus/commonctrl/R$id;->opseekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPSeekBar;

    .line 82
    .local v1, "opSeekBar":Lcom/oneplus/lib/widget/OPSeekBar;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 84
    iget v2, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPSeekBar;->setMax(I)V

    .line 85
    iget v2, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPSeekBar;->setProgress(I)V

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPSeekBar;->setEnabled(Z)V

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPSeekBar;->setVisibility(I)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 104
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

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 110
    const/16 v0, 0x51

    if-eq p2, v0, :cond_1

    const/16 v0, 0x46

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    const/16 v0, 0x45

    if-ne p2, v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->getProgress()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setProgress(I)V

    .line 117
    return v1

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->getProgress()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setProgress(I)V

    .line 113
    return v1

    .line 120
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Lcom/oneplus/lib/widget/OPSeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Lcom/oneplus/lib/widget/OPSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 172
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->syncProgress(Lcom/oneplus/lib/widget/OPSeekBar;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    return-void

    .line 220
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;

    .line 221
    .local v0, "myState":Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    iget v1, v0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    .line 223
    iget v1, v0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    .line 224
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->notifyChanged()V

    .line 225
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 198
    invoke-super {p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 199
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    return-object v0

    .line 205
    :cond_0
    new-instance v1, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 206
    .local v1, "myState":Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;
    iget v2, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    iput v2, v1, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->progress:I

    .line 207
    iget v2, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    iput v2, v1, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference$SavedState;->max:I

    .line 208
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 98
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setProgress(I)V

    .line 100
    return-void
.end method

.method public onStartTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Lcom/oneplus/lib/widget/OPSeekBar;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mTrackingTouch:Z

    .line 180
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Lcom/oneplus/lib/widget/OPSeekBar;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mTrackingTouch:Z

    .line 185
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->syncProgress(Lcom/oneplus/lib/widget/OPSeekBar;)V

    .line 188
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 124
    iget v0, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 125
    iput p1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mMax:I

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->notifyChanged()V

    .line 128
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setProgress(IZ)V

    .line 132
    return-void
.end method

.method syncProgress(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Lcom/oneplus/lib/widget/OPSeekBar;

    .line 159
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPSeekBar;->getProgress()I

    move-result v0

    .line 160
    .local v0, "progress":I
    iget v1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->setProgress(IZ)V

    goto :goto_0

    .line 164
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/preference/OPSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/OPSeekBar;->setProgress(I)V

    .line 167
    :cond_1
    :goto_0
    return-void
.end method
