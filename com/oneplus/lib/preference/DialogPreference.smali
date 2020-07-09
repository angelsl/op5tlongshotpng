.class public abstract Lcom/oneplus/lib/preference/DialogPreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mOnlyDarkTheme:Z

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 78
    iget-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 83
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_opOnlyDarkTheme:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mOnlyDarkTheme:Z

    .line 84
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 85
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_positiveButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 87
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_negativeButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 88
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogLayout:I

    iget v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 339
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 341
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0xf5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 346
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 347
    const v1, 0x10100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 441
    return-void

    .line 437
    :cond_1
    :goto_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 398
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 279
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 401
    iput p2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mWhichButtonClicked:I

    .line 402
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .line 364
    iget v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 365
    return-object v1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 369
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .line 420
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 406
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 409
    iget v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->onDialogClosed(Z)V

    .line 410
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 272
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 458
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    .line 465
    .local v0, "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 466
    iget-boolean v1, v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 469
    :cond_1
    return-void

    .line 460
    .end local v0    # "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 461
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 445
    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 446
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 451
    .local v1, "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 452
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 453
    return-object v1

    .line 447
    .end local v1    # "myState":Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 177
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .line 166
    iput-object p1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 167
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .line 251
    iput p1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogLayoutResId:I

    .line 252
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .line 141
    iput-object p1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 142
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .line 111
    iput-object p1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 112
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .line 222
    iput-object p1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 223
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .line 194
    iput-object p1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 195
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x2

    iput v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mWhichButtonClicked:I

    .line 293
    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mOnlyDarkTheme:Z

    .line 294
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 295
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 297
    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 298
    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    .line 301
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 303
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 304
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    goto :goto_0

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V

    .line 311
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->registerOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 314
    iget-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 315
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/DialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    invoke-direct {p0, v2}, Lcom/oneplus/lib/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 321
    :cond_2
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 322
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 323
    return-void
.end method
