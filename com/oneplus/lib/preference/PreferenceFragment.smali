.class public abstract Lcom/oneplus/lib/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 115
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_preference_list_fragment:I

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    .line 123
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceFragment$1;-><init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceFragment$2;-><init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 408
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceFragment$3;-><init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 105
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/preference/PreferenceFragment;

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    .line 344
    .local v0, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->onBindPreferences()V

    .line 348
    return-void
.end method

.method private ensureList()V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 389
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 392
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, "rawListView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 398
    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 399
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 404
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 405
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void

    .line 400
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not yet created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private postBindPreferences()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 340
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 335
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 286
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 288
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    .line 289
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .line 298
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 300
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v2

    .line 300
    invoke-virtual {v0, v1, p1, v2}, Lcom/oneplus/lib/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/oneplus/lib/preference/PreferenceScreen;)Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    .line 302
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 325
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 360
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->ensureList()V

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 367
    return v1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "root":Landroid/view/View;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 371
    return v2

    .line 373
    :cond_1
    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 374
    .local v3, "rawListView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ListView;

    if-nez v4, :cond_2

    .line 375
    return v2

    .line 377
    :cond_2
    move-object v4, v3

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 378
    iget-object v4, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v4, :cond_3

    .line 379
    return v2

    .line 381
    :cond_3
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 182
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->bindPreferences()V

    .line 188
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mInitDone:Z

    .line 190
    if-eqz p1, :cond_1

    .line 191
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 192
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    .line 194
    .local v1, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 199
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 245
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 158
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    .line 160
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setFragment(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    .line 161
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 167
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceFragment:[I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_preferenceFragmentStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceFragment_android_layout:I

    iget v2, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    iget v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 224
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 226
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 217
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 220
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/oneplus/lib/preference/PreferenceScreen;Lcom/oneplus/lib/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/oneplus/lib/preference/PreferenceScreen;
    .param p2, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 309
    invoke-virtual {p2}, Lcom/oneplus/lib/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/oneplus/lib/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/oneplus/lib/preference/PreferenceFragment;Lcom/oneplus/lib/preference/Preference;)Z

    move-result v0

    return v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 230
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    .line 233
    .local v0, "preferenceScreen":Lcom/oneplus/lib/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 236
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 238
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 204
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 205
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityStop()V

    .line 211
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 212
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 356
    return-void
.end method

.method public setPreferenceScreen(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 261
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->setPreferences(Lcom/oneplus/lib/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mHavePrefs:Z

    .line 264
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceFragment;->postBindPreferences()V

    .line 268
    :cond_0
    return-void
.end method
