.class public Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;
.super Lcom/oneplus/lib/app/appcompat/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->GROUP_ID:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lcom/oneplus/lib/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionBarContextView;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/oneplus/lib/app/appcompat/ActionBarContextView;
    .param p3, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
    .param p4, "isFocusable"    # Z

    .line 49
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionMode;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    .line 52
    iput-object p3, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    .line 54
    new-instance v0, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 56
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 57
    iput-boolean p4, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mFocusable:Z

    .line 58
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mFinished:Z

    .line 109
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    .line 111
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 135
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onPrepareActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z

    .line 100
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 143
    return-void
.end method

.method public onCloseSubMenu(Lcom/oneplus/lib/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 155
    return-void
.end method

.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onActionItemClicked(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 158
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->invalidate()V

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->showOverflowMenu()Z

    .line 160
    return-void
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 146
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 147
    return v1

    .line 150
    :cond_0
    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->show()V

    .line 151
    return v1
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 94
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 77
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 72
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 82
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/ActionMode;->setTitleOptionalHint(Z)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setTitleOptional(Z)V

    .line 84
    return-void
.end method
