.class public Lcom/oneplus/screenshot/longshot/task/CheckThread;
.super Lcom/oneplus/screenshot/longshot/task/BaseThread;
.source "CheckThread.java"


# static fields
.field private static final CHECK_DELAY:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "Longshot.CheckThread"


# instance fields
.field private mIsStopped:Z

.field private mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;


# direct methods
.method static synthetic -get0(Lcom/oneplus/screenshot/longshot/task/CheckThread;)Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/task/CheckThread;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    return-object v0
.end method

.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 5
    .param p1, "context"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 26
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    .line 32
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mDelay:J

    .line 34
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    .line 35
    return-void
.end method

.method private isActivityChanged(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 63
    .local v2, "prevTop":Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 64
    .local v1, "currTop":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 65
    .local v0, "changed":Z
    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    if-nez v3, :cond_73

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-eqz v3, :cond_73

    if-eqz v1, :cond_73

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    .line 67
    .local v0, "changed":Z
    if-eqz v0, :cond_73

    .line 68
    const-string/jumbo v3, "Longshot.CheckThread"

    const-string/jumbo v4, "CHANGED : different top activity!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string/jumbo v3, "Longshot.CheckThread"

    const-string/jumbo v4, "["

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string/jumbo v3, "Longshot.CheckThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v3, "Longshot.CheckThread"

    const-string/jumbo v4, "   =>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v3, "Longshot.CheckThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string/jumbo v3, "Longshot.CheckThread"

    const-string/jumbo v4, "]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "changed":Z
    :cond_73
    return v0
.end method


# virtual methods
.method protected onRun()V
    .registers 5

    .prologue
    .line 42
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->isActivityChanged(Landroid/content/Context;)Z

    move-result v0

    .line 44
    .local v0, "changed":Z
    if-eqz v0, :cond_1d

    .line 45
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mIsStopped:Z

    .line 47
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/CheckThread;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/screenshot/longshot/task/CheckThread$1;-><init>(Lcom/oneplus/screenshot/longshot/task/CheckThread;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_1d
    return-void
.end method
