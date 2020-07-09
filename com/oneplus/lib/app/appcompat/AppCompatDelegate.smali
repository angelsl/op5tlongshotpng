.class public abstract Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegate$ApplyableNightMode;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegate$NightMode;
    }
.end annotation


# static fields
.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_SUPPORT_ACTION_BAR:I = 0x6c

.field public static final FEATURE_SUPPORT_ACTION_BAR_OVERLAY:I = 0x6d

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_FOLLOW_SYSTEM:I = -0x1

.field public static final MODE_NIGHT_NO:I = 0x1

.field static final MODE_NIGHT_UNSPECIFIED:I = -0x64

.field public static final MODE_NIGHT_YES:I = 0x2

.field static final TAG:Ljava/lang/String; = "AppCompatDelegate"

.field private static sCompatVectorFromResourcesEnabled:Z

.field private static sDefaultNightMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    const/4 v0, -0x1

    sput v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sDefaultNightMode:I

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/app/Dialog;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "callback"    # Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    .line 192
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "callback"    # Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 198
    .local v0, "sdk":I
    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    return-object v1

    .line 200
    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 201
    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    return-object v1

    .line 202
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 203
    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    return-object v1

    .line 204
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 205
    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    return-object v1

    .line 207
    :cond_3
    new-instance v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    return-object v1
.end method

.method public static getDefaultNightMode()I
    .locals 1

    .line 489
    sget v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sDefaultNightMode:I

    return v0
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .locals 1

    .line 536
    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return v0
.end method

.method public static setCompatVectorFromResourcesEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 526
    sput-boolean p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    .line 527
    return-void
.end method

.method public static setDefaultNightMode(I)V
    .locals 2
    .param p0, "mode"    # I

    .line 469
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 477
    const-string v0, "AppCompatDelegate"

    const-string v1, "setDefaultNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_0
    sput p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegate;->sDefaultNightMode:I

    .line 475
    nop

    .line 480
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract applyDayNight()Z
.end method

.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p1    # Landroid/view/View;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract findViewById(I)Landroid/view/View;
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDrawerToggleDelegate()Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract hasWindowFeature(I)Z
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract isHandleNativeActionModesEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
    .param p1    # I
        .annotation build Lcom/oneplus/support/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setHandleNativeActionModesEnabled(Z)V
.end method

.method public abstract setLocalNightMode(I)V
.end method

.method public abstract setSupportActionBar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .param p1    # Lcom/oneplus/lib/widget/actionbar/Toolbar;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .param p1    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end method
