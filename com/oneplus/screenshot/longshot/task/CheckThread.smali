.class public Lcom/oneplus/screenshot/longshot/task/CheckThread;
.super Lcom/oneplus/screenshot/longshot/task/BaseThread;
.source "CheckThread.java"


# static fields
.field private static final CHECK_DELAY:J = 0x32L

.field public static final TAG:Ljava/lang/String; = "Longshot.CheckThread"


# instance fields
.field private mIsStopped:Z

.field private mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 3
    .param p1, "context"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 30
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    .line 31
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 32
    const-wide/16 v1, 0x32

    iput-wide v1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mDelay:J

    .line 33
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/task/CheckThread;)Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/task/CheckThread;

    .line 12
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    return-object v0
.end method

.method private isActivityChanged(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 62
    .local v0, "prevTop":Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 63
    .local v1, "currTop":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 64
    .local v2, "changed":Z
    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 66
    if-eqz v2, :cond_0

    .line 67
    const-string v3, "Longshot.CheckThread"

    const-string v4, "CHANGED : different top activity!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v4, "["

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v4, "   =>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v4, "]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return v2
.end method


# virtual methods
.method protected onRun()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->isActivityChanged(Landroid/content/Context;)Z

    move-result v1

    .line 43
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    .line 44
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    .line 46
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;-><init>(Lcom/oneplus/screenshot/longshot/task/CheckThread;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_0
    return-void
.end method
