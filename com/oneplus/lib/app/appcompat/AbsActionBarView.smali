.class abstract Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisAnimListener:Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

    .line 51
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 52
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 58
    :goto_0
    return-void
.end method

.method static synthetic access$001(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
    .param p1, "x1"    # I

    .line 23
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/app/appcompat/AbsActionBarView;
    .param p1, "x1"    # I

    .line 23
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .line 244
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    goto :goto_0

    :cond_0
    add-int v0, p0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 168
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 169
    .local v0, "anim":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 170
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 230
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisAnimListener:Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .line 234
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 238
    sub-int/2addr p2, p4

    .line 240
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 62
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x10102ce

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->setContentHeight(I)V

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 107
    invoke-static {p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 108
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 109
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingHover:Z

    .line 112
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 113
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 114
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 115
    iput-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingHover:Z

    .line 119
    .end local v3    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 121
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingHover:Z

    .line 124
    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 83
    invoke-static {p1}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 84
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingTouch:Z

    .line 88
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 89
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 90
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 91
    iput-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingTouch:Z

    .line 95
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 96
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mEatingTouch:Z

    .line 99
    :cond_3
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 249
    .local v0, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 250
    .local v1, "childHeight":I
    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 252
    .local v2, "childTop":I
    if-eqz p5, :cond_0

    .line 253
    sub-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, v3, v2, p2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 255
    :cond_0
    add-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 258
    :goto_0
    if-eqz p5, :cond_1

    neg-int v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    return v3
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .line 190
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$1;-><init>(Lcom/oneplus/lib/app/appcompat/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 128
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mContentHeight:I

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->requestLayout()V

    .line 130
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 174
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 178
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 147
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisibilityAnim:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 151
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-static {p0, v0}, Lcom/oneplus/support/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 155
    :cond_1
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->alpha(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 156
    .local v0, "anim":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 157
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisAnimListener:Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;I)Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 158
    return-object v0

    .line 160
    .end local v0    # "anim":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    :cond_2
    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->animate(Landroid/view/View;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->alpha(F)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 161
    .restart local v0    # "anim":Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 162
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mVisAnimListener:Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;I)Lcom/oneplus/lib/app/appcompat/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->setListener(Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;)Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    .line 163
    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AbsActionBarView;->mActionMenuPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
