.class public Lcom/oneplus/screenshot/longshot/app/LongshotDialog;
.super Landroid/app/Dialog;
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

.field private mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

.field private mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

.field private mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const v0, 0x7f0d000d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 32
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 34
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 35
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    .line 44
    return-void-no-barrier
.end method

.method private initWindow()V
    .registers 5

    .line 155
    const v0, 0x1830500

    .line 161
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 162
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 164
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 166
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 167
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 168
    const/16 v3, 0x7f4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 169
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 171
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    return-void-no-barrier
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 106
    const-string v0, "Longshot.Dialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 109
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_14

    .line 110
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 112
    :cond_14
    return-void-no-barrier
.end method

.method public hide()V
    .registers 3

    .line 100
    const-string v0, "Longshot.Dialog"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 102
    return-void-no-barrier
.end method

.method public onCloseSystemDialogs()V
    .registers 3

    .line 117
    const-string v0, "Longshot.Dialog"

    const-string v1, "onCloseSystemDialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_12

    .line 119
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 122
    :cond_12
    return-void-no-barrier
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    const-string v0, "Longshot.Dialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->initWindow()V

    .line 55
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 57
    new-instance v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 58
    return-void-no-barrier
.end method

.method public onRinging()V
    .registers 3

    .line 127
    const-string v0, "Longshot.Dialog"

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_12

    .line 129
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 131
    :cond_12
    return-void-no-barrier
.end method

.method protected onStop()V
    .registers 3

    .line 62
    const-string v0, "Longshot.Dialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 65
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->unregister()V

    .line 66
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 67
    return-void-no-barrier
.end method

.method public setContent(I)V
    .registers 3
    .param p1, "layoutRes"    # I

    .line 138
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    if-eq v0, p1, :cond_9

    .line 139
    iput p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 142
    :cond_9
    return-void-no-barrier
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 71
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    if-eqz v0, :cond_a

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 75
    :cond_a
    return-void-no-barrier
.end method

.method public setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 149
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 150
    return-void-no-barrier
.end method

.method public setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 145
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 146
    return-void-no-barrier
.end method

.method public show()V
    .registers 4

    .line 79
    const-string v0, "Longshot.Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_1d

    return-void-no-barrier

    .line 82
    :cond_1d
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 83
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4e

    .line 85
    const-string v0, "Longshot.Dialog"

    const-string v1, "show : GONE=>VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_4e

    .line 89
    :cond_41
    const-string v0, "Longshot.Dialog"

    const-string v1, "show : CREATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 91
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 93
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    if-eqz v0, :cond_57

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    invoke-interface {v0, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;->onShow(Landroid/app/Dialog;)V

    .line 96
    :cond_57
    return-void-no-barrier
.end method
