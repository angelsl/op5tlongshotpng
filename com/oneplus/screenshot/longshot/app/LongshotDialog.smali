.class public Lcom/oneplus/screenshot/longshot/app/LongshotDialog;
.super Ljava/lang/Object;
.source "LongshotDialog.java"

# interfaces
.implements Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.Dialog"


# instance fields
.field private mContentChanged:Z

.field private mContentLayout:I

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/FrameLayout;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

.field private mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

.field private mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

.field private mShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 27
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 29
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 30
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 35
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    .line 45
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->onCreate()V

    .line 49
    return-void
.end method

.method private initWindow()V
    .locals 9

    .line 196
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7f4

    const v6, 0x18a0510

    const/4 v7, -0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v8, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 209
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 210
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 211
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    .line 212
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 139
    const-string v0, "Longshot.Dialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDecorView()Landroid/widget/FrameLayout;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 130
    const-string v0, "Longshot.Dialog"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 135
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    return v0
.end method

.method public onCloseSystemDialogs()V
    .locals 2

    .line 152
    const-string v0, "Longshot.Dialog"

    const-string v1, "onCloseSystemDialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 155
    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onCreate()V
    .locals 2

    .line 56
    const-string v0, "Longshot.Dialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->initWindow()V

    .line 62
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 64
    new-instance v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 66
    return-void
.end method

.method public onRinging()V
    .locals 2

    .line 164
    const-string v0, "Longshot.Dialog"

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 167
    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    .line 72
    const-string v0, "Longshot.Dialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->unregister()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 80
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 83
    :cond_1
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "layoutRes"    # I

    .line 176
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    if-eq v0, p1, :cond_0

    .line 177
    iput p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 180
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .line 86
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 89
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, "lf":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    .end local v0    # "lf":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 187
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 188
    return-void
.end method

.method public setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 183
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 184
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .line 248
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    if-eqz v0, :cond_1

    .line 103
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const-string v0, "show : GONE=>VISIBLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "show : CREATE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 120
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    .line 123
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    if-eqz v0, :cond_3

    .line 124
    invoke-interface {v0, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;->onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V

    .line 126
    :cond_3
    return-void
.end method
