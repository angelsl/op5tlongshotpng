.class public Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.super Lcom/oneplus/lib/app/appcompat/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;,
        Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

.field mContentAnimations:Z

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

.field private mCurWindowVisibility:I

.field mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

.field mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

.field mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHiddenByApp:Z

.field mHiddenBySystem:Z

.field final mHideListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    nop

    .line 75
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .line 165
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 125
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 131
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 148
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 156
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;

    .line 166
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 168
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "decor":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 170
    if-nez p2, :cond_0

    .line 171
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 173
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 175
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 125
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 131
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 148
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 156
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;

    .line 176
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 177
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/View;
    .annotation build Lcom/oneplus/support/annotation/RestrictTo;
        value = {
            .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 125
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 131
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 148
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    .line 156
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;

    .line 186
    nop

    .line 187
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .line 732
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 733
    return v0

    .line 734
    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 737
    :cond_1
    return v0

    .line 735
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private cleanupTabs()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeAllTabs()V

    .line 424
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 425
    return-void
.end method

.method private configureTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V
    .locals 5
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I

    .line 519
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    .line 520
    .local v0, "tabi":Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    .line 522
    .local v1, "callback":Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;
    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 527
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 529
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 530
    .local v2, "count":I
    add-int/lit8 v3, p2, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 531
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 530
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 523
    .end local v2    # "count":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Action Bar Tab must have a Callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private ensureTabsExist()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "tabScroller":Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 294
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 296
    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    .line 299
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 301
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 303
    :goto_1
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    .line 304
    return-void
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 233
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 234
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-object v0

    .line 235
    :cond_0
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v0, :cond_1

    .line 236
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "null"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .line 685
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    .line 687
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 690
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 692
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 9
    .param p1, "decor"    # Landroid/view/View;

    .line 191
    sget v0, Lcom/oneplus/commonctrl/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    .line 192
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 195
    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    .line 196
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    .line 198
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 201
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    if-eqz v1, :cond_7

    .line 206
    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 209
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 210
    .local v0, "current":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 211
    .local v1, "homeAsUp":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 212
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 215
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;

    move-result-object v4

    .line 216
    .local v4, "abp":Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;
    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 217
    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 219
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->ActionBar:[I

    sget v8, Lcom/oneplus/commonctrl/R$attr;->actionBarStyle:I

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 222
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 223
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 225
    :cond_5
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 226
    .local v2, "elevation":I
    if-eqz v2, :cond_6

    .line 227
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setElevation(F)V

    .line 229
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    return-void

    .line 202
    .end local v0    # "current":I
    .end local v1    # "homeAsUp":Z
    .end local v2    # "elevation":I
    .end local v4    # "abp":Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .line 258
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 260
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 267
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 268
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    .line 269
    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v1, v3}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 272
    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_2

    .line 275
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 278
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-interface {v1, v4}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCollapsible(Z)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 280
    return-void
.end method

.method private shouldAnimateContextView()Z
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private showForActionMode()V
    .locals 2

    .line 660
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    .line 662
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 665
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 667
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 3
    .param p1, "fromSystem"    # Z

    .line 743
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 746
    .local v0, "shown":Z
    if-eqz v0, :cond_0

    .line 747
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_1

    .line 748
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 749
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->doShow(Z)V

    goto :goto_0

    .line 752
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    .line 753
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 754
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->doHide(Z)V

    .line 757
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    .line 333
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 537
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V

    .line 538
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I

    .line 542
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V

    .line 543
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 557
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ensureTabsExist()V

    .line 558
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->configureTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V

    .line 560
    if-eqz p3, :cond_0

    .line 561
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 563
    :cond_0
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 547
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ensureTabsExist()V

    .line 548
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V

    .line 549
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->configureTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V

    .line 550
    if-eqz p2, :cond_0

    .line 551
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 553
    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 8
    .param p1, "toActionMode"    # Z

    .line 848
    if-eqz p1, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->showForActionMode()V

    goto :goto_0

    .line 851
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->hideForActionMode()V

    .line 854
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->shouldAnimateContextView()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 856
    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    .line 861
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v1, v4, v5}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 863
    .local v0, "fadeOut":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1, v3, v6, v7}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .local v1, "fadeIn":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    goto :goto_1

    .line 866
    .end local v0    # "fadeOut":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .end local v1    # "fadeIn":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v3, v6, v7}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 868
    .restart local v1    # "fadeIn":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, v2, v4, v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 871
    .restart local v0    # "fadeOut":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    :goto_1
    new-instance v2, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 872
    .local v2, "set":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    invoke-virtual {v2, v0, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->playSequentially(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 873
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    .line 874
    .end local v0    # "fadeOut":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .end local v1    # "fadeIn":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .end local v2    # "set":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    goto :goto_2

    .line 875
    :cond_2
    if-eqz p1, :cond_3

    .line 876
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v3}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setVisibility(I)V

    .line 884
    :goto_2
    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->collapseActionView()V

    .line 949
    const/4 v0, 0x1

    return v0

    .line 951
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    .line 310
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    .line 312
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .line 341
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 347
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 348
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public doHide(Z)V
    .locals 5
    .param p1, "fromSystem"    # Z

    .line 810
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 814
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 817
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTransitioning(Z)V

    .line 818
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 819
    .local v0, "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 820
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 821
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 822
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLocationInWindow([I)V

    .line 823
    aget v1, v3, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    .line 825
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v1}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->translationY(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 826
    .local v1, "a":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v1, v3}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 827
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 828
    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 829
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->translationY(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 831
    :cond_3
    sget-object v3, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 832
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 833
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 834
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 835
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    .line 836
    .end local v0    # "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .end local v1    # "a":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .end local v2    # "endingY":F
    goto :goto_0

    .line 837
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 839
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 6
    .param p1, "fromSystem"    # Z

    .line 760
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setVisibility(I)V

    .line 765
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 769
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 770
    .local v0, "startingY":F
    if-eqz p1, :cond_2

    .line 771
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 772
    .local v2, "topLeft":[I
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLocationInWindow([I)V

    .line 773
    const/4 v3, 0x1

    aget v3, v2, v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 775
    .end local v2    # "topLeft":[I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v2, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 776
    new-instance v2, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 777
    .local v2, "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->translationY(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 778
    .local v3, "a":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v3, v4}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorUpdateListener;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 779
    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 780
    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 781
    invoke-static {v4, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 782
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->translationY(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 784
    :cond_3
    sget-object v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 785
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 793
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 794
    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 795
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    .line 796
    .end local v0    # "startingY":F
    .end local v2    # "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .end local v3    # "a":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    goto :goto_0

    .line 797
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 798
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 799
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 800
    invoke-static {v0, v1}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 802
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 804
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v0, :cond_6

    .line 805
    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 807
    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 648
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 649
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1290
    const/4 v0, 0x0

    return v0

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 3

    .line 1272
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 1278
    return v2

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v2

    :cond_1
    return v2

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .line 1331
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .line 893
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 894
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 895
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 896
    .local v1, "currentTheme":Landroid/content/res/Resources$Theme;
    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 897
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 899
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_0

    .line 900
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0

    .line 902
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 905
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "targetThemeRes":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 682
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 1

    .line 695
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 697
    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 699
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 842
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 844
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    .line 567
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 255
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 939
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .line 943
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 315
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 316
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->cleanupTabs()V

    .line 414
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    .line 337
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public removeTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 572
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->removeTabAt(I)V

    .line 573
    return-void
.end method

.method public removeTabAt(I)V
    .locals 6
    .param p1, "position"    # I

    .line 577
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-nez v0, :cond_0

    .line 579
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 584
    .local v0, "selectedTabPosition":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeTabAt(I)V

    .line 585
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    .line 586
    .local v1, "removedTab":Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;
    if-eqz v1, :cond_2

    .line 587
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 590
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 591
    .local v2, "newTabCount":I
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 592
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 591
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 595
    .end local v3    # "i":I
    :cond_3
    if-ne v0, p1, :cond_5

    .line 596
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 598
    :cond_5
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 439
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 441
    const/4 v1, 0x1

    return v1

    .line 443
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 602
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 603
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 604
    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getSupportFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->beginTransaction()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->disallowAddToBackStack()Lcom/oneplus/support/core/fragment/app/FragmentTransaction;

    move-result-object v0

    .local v0, "trans":Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    goto :goto_0

    .line 613
    .end local v0    # "trans":Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    :cond_2
    const/4 v0, 0x0

    .line 616
    .restart local v0    # "trans":Lcom/oneplus/support/core/fragment/app/FragmentTransaction;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-ne v2, p1, :cond_3

    .line 617
    if-eqz v2, :cond_6

    .line 618
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;->onTabReselected(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Lcom/oneplus/support/core/fragment/app/FragmentTransaction;)V

    .line 619
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_1

    .line 622
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setTabSelected(I)V

    .line 623
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_5

    .line 624
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;->onTabUnselected(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Lcom/oneplus/support/core/fragment/app/FragmentTransaction;)V

    .line 626
    :cond_5
    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    .line 627
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_6

    .line 628
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;->onTabSelected(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Lcom/oneplus/support/core/fragment/app/FragmentTransaction;)V

    .line 632
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 633
    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentTransaction;->commit()I

    .line 635
    :cond_7
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 466
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 467
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 354
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    .line 355
    invoke-interface {v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 354
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 356
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1256
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1257
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;

    .line 1261
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1262
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1263
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1364
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1365
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1367
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .line 370
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 371
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .line 451
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDisplayOptions(I)V

    .line 455
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .line 458
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 459
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDisplayOptions(I)V

    .line 463
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .line 380
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 381
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .line 365
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 366
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .line 375
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 376
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1
    .param p1, "useLogo"    # Z

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 361
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 246
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 723
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 728
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .line 703
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 708
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 709
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 930
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationContentDescription(I)V

    .line 931
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 925
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 926
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 920
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationIcon(I)V

    .line 921
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 915
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 916
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 385
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 386
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1337
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(I)V

    .line 1338
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1342
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1343
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    .line 1267
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1268
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1351
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(I)V

    .line 1352
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 1356
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1357
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 1301
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1302
    .local v0, "oldMode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1304
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1305
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 1306
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 1309
    :goto_0
    if-eq v0, p1, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v2, :cond_1

    .line 1310
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v2, :cond_1

    .line 1311
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1314
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationMode(I)V

    .line 1315
    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 1317
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ensureTabsExist()V

    .line 1318
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 1319
    iget v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1320
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1321
    iput v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1325
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    const/4 v4, 0x1

    if-ne p1, v1, :cond_4

    iget-boolean v5, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    invoke-interface {v3, v5}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCollapsible(Z)V

    .line 1326
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-ne p1, v1, :cond_5

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_5

    move v2, v4

    :cond_5
    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1327
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .line 399
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 402
    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 405
    nop

    .line 410
    :goto_0
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 327
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 330
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 475
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 470
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 395
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 447
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 448
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 390
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 428
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 433
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method public show()V
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    .line 655
    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 657
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 672
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 674
    :cond_0
    return-void
.end method

.method public startActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    .line 498
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->killMode()V

    .line 504
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)V

    .line 505
    .local v0, "mode":Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    .line 509
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 510
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->initForMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    .line 511
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->animateToMode(Z)V

    .line 512
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 513
    return-object v0

    .line 515
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
