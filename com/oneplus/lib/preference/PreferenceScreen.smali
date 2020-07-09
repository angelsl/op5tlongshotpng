.class public final Lcom/oneplus/lib/preference/PreferenceScreen;
.super Lcom/oneplus/lib/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 110
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibrator:Landroid/os/Vibrator;

    .line 114
    :cond_0
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    :cond_0
    nop

    .line 178
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 179
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_preference_list_fragment:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, "childPrefScreen":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 182
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 185
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 186
    .local v3, "title":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 187
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 193
    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 201
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 202
    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 156
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 160
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 169
    return-void

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 145
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;-><init>(Lcom/oneplus/lib/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 207
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 220
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 221
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/oneplus/lib/preference/Preference;

    if-nez v1, :cond_1

    return-void

    .line 226
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/preference/Preference;

    .line 227
    .local v1, "preference":Lcom/oneplus/lib/preference/Preference;
    instance-of v2, v0, Lcom/oneplus/lib/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/util/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibrator:Landroid/os/Vibrator;

    const/16 v4, 0x3eb

    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/util/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibratePattern:[J

    .line 231
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibratePattern:[J

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v2, v3}, Lcom/oneplus/lib/util/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    .line 234
    :cond_2
    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    .line 235
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 258
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    .line 265
    .local v0, "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 266
    iget-boolean v1, v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 269
    :cond_1
    return-void

    .line 260
    .end local v0    # "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 261
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 244
    invoke-super {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 245
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 246
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 251
    .local v2, "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 252
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 253
    return-object v2

    .line 247
    .end local v2    # "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    :cond_1
    :goto_0
    return-object v0
.end method
