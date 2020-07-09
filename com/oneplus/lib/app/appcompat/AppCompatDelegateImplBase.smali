.class abstract Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final SHOULD_INSTALL_EXCEPTION_HANDLER:Z

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

.field final mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field final mContext:Landroid/content/Context;

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mIsStarted:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    .line 46
    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 50
    .local v0, "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$1;

    invoke-direct {v3, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 75
    sput-boolean v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->sInstalledExceptionHandler:Z

    .line 79
    .end local v0    # "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    new-array v0, v2, [I

    const v2, 0x1010054

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    .line 106
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 109
    iput-object p3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    .line 111
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 112
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 118
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 120
    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->sWindowBackgroundStyleable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, "winBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 124
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-void

    .line 113
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "winBg":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 1

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .line 178
    const/4 v0, 0x0

    .line 181
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v1

    .line 182
    .local v1, "ab":Lcom/oneplus/lib/app/appcompat/ActionBar;
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    :cond_0
    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 189
    :cond_1
    return-object v0
.end method

.method public final getDrawerToggleDelegate()Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;
    .locals 1

    .line 174
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 152
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    .line 153
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 140
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 296
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method abstract initWindowDecorActionBar()V
.end method

.method final isDestroyed()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mIsDestroyed:Z

    return v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method final isStarted()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mIsStarted:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mIsDestroyed:Z

    .line 249
    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 289
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mIsStarted:Z

    .line 239
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mIsStarted:Z

    .line 244
    return-void
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    return-object v0
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 254
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 170
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 282
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 283
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method abstract startSupportActionModeFromWindow(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .line 132
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-object v0
.end method
