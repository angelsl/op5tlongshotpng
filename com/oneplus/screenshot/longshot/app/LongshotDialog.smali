.class public Lcom/oneplus/screenshot/longshot/app/LongshotDialog;
.super Landroid/app/Dialog;
.source "LongshotDialog.java"

# interfaces
.implements Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;
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
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    const v0, 0x7f0d000d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 29
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 30
    iput v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 31
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 32
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    .line 33
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private initWindow()V
    .registers 5

    .prologue
    .line 147
    const v0, 0x1830500

    .line 153
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 154
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 155
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 157
    const/16 v3, 0x7f4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 147
    const v3, 0x1830500

    .line 158
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 159
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 160
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 103
    const-string/jumbo v0, "Longshot.Dialog"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 106
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_16

    .line 107
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 109
    :cond_16
    return-void
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 97
    const-string/jumbo v0, "Longshot.Dialog"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 99
    return-void
.end method

.method public onCloseSystemDialogs()V
    .registers 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->dismiss()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const-string/jumbo v0, "Longshot.Dialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->initWindow()V

    .line 52
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 54
    new-instance v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 55
    return-void
.end method

.method public onRinging()V
    .registers 3

    .prologue
    .line 119
    const-string/jumbo v0, "Longshot.Dialog"

    const-string/jumbo v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_14

    .line 121
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    .line 123
    :cond_14
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string/jumbo v0, "Longshot.Dialog"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->unregister()V

    .line 63
    :cond_16
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 64
    return-void
.end method

.method public setContent(I)V
    .registers 3
    .param p1, "layoutRes"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    if-eq v0, p1, :cond_9

    .line 131
    iput p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 134
    :cond_9
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    if-eqz v0, :cond_a

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 72
    :cond_a
    return-void
.end method

.method public setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    .line 142
    return-void
.end method

.method public setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 138
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    .line 76
    const-string/jumbo v0, "Longshot.Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_21

    return-void

    .line 79
    :cond_21
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 80
    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_46

    .line 82
    const-string/jumbo v0, "Longshot.Dialog"

    const-string/jumbo v1, "show : GONE=>VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 90
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    if-eqz v0, :cond_4f

    .line 91
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    invoke-interface {v0, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;->onShow(Landroid/app/Dialog;)V

    .line 93
    :cond_4f
    return-void

    .line 86
    :cond_50
    const-string/jumbo v0, "Longshot.Dialog"

    const-string/jumbo v1, "show : CREATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    .line 88
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_46
.end method
