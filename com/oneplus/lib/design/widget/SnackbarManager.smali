.class Lcom/oneplus/lib/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;,
        Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/SnackbarManager$1;-><init>(Lcom/oneplus/lib/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .locals 2
    .param p1, "record"    # Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;
    .param p2, "event"    # I

    .line 201
    iget-object v0, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 202
    .local v0, "callback":Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    invoke-interface {v0, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;->dismiss(I)V

    .line 206
    const/4 v1, 0x1

    return v1

    .line 208
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/oneplus/lib/design/widget/SnackbarManager;->sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/oneplus/lib/design/widget/SnackbarManager;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/SnackbarManager;->sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/oneplus/lib/design/widget/SnackbarManager;->sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 216
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 220
    iget v0, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    const/16 v0, 0xabe

    .line 226
    .local v0, "durationMs":I
    iget v1, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_1

    .line 227
    iget v0, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_0

    .line 228
    :cond_1
    iget v1, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 229
    const/16 v0, 0x5dc

    .line 231
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 233
    return-void
.end method

.method private showNextSnackbarLocked()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1

    .line 187
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 190
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 191
    .local v1, "callback":Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;
    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v1}, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;->show()V

    goto :goto_0

    .line 195
    :cond_0
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 198
    .end local v1    # "callback":Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;
    .param p2, "event"    # I

    .line 103
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 109
    :cond_1
    :goto_0
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-ne v1, p1, :cond_1

    .line 238
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 240
    :cond_1
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCurrent(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCurrentOrNext(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 165
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDismissed(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 117
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 121
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 125
    :cond_0
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShown(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 137
    :cond_0
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 141
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    .line 144
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    :cond_0
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreTimeoutIfPaused(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 150
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    .line 153
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 155
    :cond_0
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public show(ILcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 3
    .param p1, "duration"    # I
    .param p2, "callback"    # Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    .line 71
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 78
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 80
    monitor-exit v0

    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_0

    .line 86
    :cond_1
    new-instance v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;-><init>(ILcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    monitor-exit v0

    return-void

    .line 95
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    .line 97
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
