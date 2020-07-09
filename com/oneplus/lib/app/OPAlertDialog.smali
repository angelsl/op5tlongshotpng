.class public Lcom/oneplus/lib/app/OPAlertDialog;
.super Landroid/app/Dialog;
.source "OPAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcom/oneplus/lib/app/OPAlertController;

.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .line 102
    invoke-static {p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 104
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/oneplus/lib/app/OPAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    .line 105
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 109
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 114
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/oneplus/lib/app/OPAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    .line 115
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertDialog;

    .line 63
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .line 119
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 120
    return p1

    .line 122
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 123
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 124
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 139
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 352
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 355
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 327
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertController;->installContent()V

    .line 329
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 333
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 334
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 339
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 340
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 227
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 228
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .line 213
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 269
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 282
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 246
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 295
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 255
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    .line 304
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 307
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 308
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .line 316
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 317
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 318
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    .line 319
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .line 322
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setInverseBackgroundForced(Z)V

    .line 323
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method protected setProgressStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 152
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setProgressStyle(I)V

    .line 153
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 157
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;IIII)V

    .line 192
    return-void
.end method
