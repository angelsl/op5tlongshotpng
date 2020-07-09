.class public Lcom/oneplus/lib/app/appcompat/AppCompatActivity;
.super Lcom/oneplus/support/core/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/AppCompatCallback;
.implements Lcom/oneplus/support/core/app/TaskStackBuilder$SupportParentable;
.implements Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

.field private mEatKeyUpEvent:Z

.field private mResources:Landroid/content/res/Resources;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 530
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 534
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v2

    .line 536
    .local v2, "actionBar":Lcom/oneplus/lib/app/appcompat/ActionBar;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBar;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBar;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mEatKeyUpEvent:Z

    .line 538
    return v1

    .line 540
    .end local v2    # "actionBar":Lcom/oneplus/lib/app/appcompat/ActionBar;
    :cond_0
    if-ne v0, v1, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mEatKeyUpEvent:Z

    if-eqz v2, :cond_1

    .line 541
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mEatKeyUpEvent:Z

    .line 542
    return v1

    .line 545
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 523
    invoke-static {p0, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->create(Landroid/app/Activity;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mDelegate:Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->getDrawerToggleDelegate()Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;

    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 434
    invoke-static {p0}, Lcom/oneplus/support/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 249
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 161
    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 167
    .local v0, "newMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 169
    .end local v0    # "newMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 473
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onSupportContentChanged()V

    .line 474
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    .line 73
    .local v0, "delegate":Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->installViewFactory()V

    .line 74
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->applyDayNight()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    if-eqz v1, :cond_1

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_0

    .line 83
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->setTheme(I)V

    .line 86
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Lcom/oneplus/support/core/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/oneplus/support/core/app/TaskStackBuilder;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 351
    invoke-virtual {p1, p0}, Lcom/oneplus/support/core/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Lcom/oneplus/support/core/app/TaskStackBuilder;

    .line 352
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 210
    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onDestroy()V

    .line 211
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onDestroy()V

    .line 212
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 196
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    .line 201
    .local v0, "ab":Lcom/oneplus/lib/app/appcompat/ActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    return v1

    .line 205
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 497
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 508
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 509
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onPostResume()V

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onPostResume()V

    .line 175
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lcom/oneplus/support/core/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/oneplus/support/core/app/TaskStackBuilder;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 370
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 513
    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 514
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 515
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onStart()V

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onStart()V

    .line 181
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onStop()V

    .line 186
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->onStop()V

    .line 187
    return-void
.end method

.method public onSupportActionModeFinished(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 271
    return-void
.end method

.method public onSupportActionModeStarted(Lcom/oneplus/lib/app/appcompat/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/oneplus/lib/app/appcompat/ActionMode;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/CallSuper;
    .end annotation

    .line 260
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 398
    .local v0, "upIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-static {p0}, Lcom/oneplus/support/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Lcom/oneplus/support/core/app/TaskStackBuilder;

    move-result-object v1

    .line 401
    .local v1, "b":Lcom/oneplus/support/core/app/TaskStackBuilder;
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Lcom/oneplus/support/core/app/TaskStackBuilder;)V

    .line 402
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Lcom/oneplus/support/core/app/TaskStackBuilder;)V

    .line 403
    invoke-virtual {v1}, Lcom/oneplus/support/core/app/TaskStackBuilder;->startActivities()V

    .line 406
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/support/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_0

    .line 407
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->finish()V

    .line 412
    .end local v1    # "b":Lcom/oneplus/support/core/app/TaskStackBuilder;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    .line 417
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 419
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 216
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public onWindowStartingSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I
        .annotation build Lcom/oneplus/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setContentView(I)V

    .line 142
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method public setSupportActionBar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->setSupportActionBar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    .line 132
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I
        .annotation build Lcom/oneplus/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 91
    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->setTheme(I)V

    .line 93
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->mThemeId:I

    .line 94
    return-void
.end method

.method public startSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->startSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 241
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "upIntent"    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 467
    invoke-static {p0, p1}, Lcom/oneplus/support/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .line 235
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatActivity;->getDelegate()Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 451
    invoke-static {p0, p1}, Lcom/oneplus/support/core/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
