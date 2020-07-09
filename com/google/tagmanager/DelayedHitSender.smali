.class Lcom/google/tagmanager/DelayedHitSender;
.super Ljava/lang/Object;
.source "DelayedHitSender.java"

# interfaces
.implements Lcom/google/tagmanager/HitSender;


# static fields
.field private static sInstance:Lcom/google/tagmanager/DelayedHitSender;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mRateLimiter:Lcom/google/tagmanager/RateLimiter;

.field private mSendingThread:Lcom/google/tagmanager/HitSendingThread;

.field private mWrapperQueryParameter:Ljava/lang/String;

.field private mWrapperUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/tagmanager/DelayedHitSender;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/google/tagmanager/HitSendingThreadImpl;->getInstance(Landroid/content/Context;)Lcom/google/tagmanager/HitSendingThreadImpl;

    move-result-object v0

    new-instance v1, Lcom/google/tagmanager/SendHitRateLimiter;

    invoke-direct {v1}, Lcom/google/tagmanager/SendHitRateLimiter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/DelayedHitSender;-><init>(Lcom/google/tagmanager/HitSendingThread;Lcom/google/tagmanager/RateLimiter;)V

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitSendingThread;Lcom/google/tagmanager/RateLimiter;)V
    .locals 0
    .param p1, "thread"    # Lcom/google/tagmanager/HitSendingThread;
    .param p2, "rateLimiter"    # Lcom/google/tagmanager/RateLimiter;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/tagmanager/DelayedHitSender;->mSendingThread:Lcom/google/tagmanager/HitSendingThread;

    .line 38
    iput-object p2, p0, Lcom/google/tagmanager/DelayedHitSender;->mRateLimiter:Lcom/google/tagmanager/RateLimiter;

    .line 39
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/tagmanager/HitSender;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/google/tagmanager/DelayedHitSender;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/google/tagmanager/DelayedHitSender;->sInstance:Lcom/google/tagmanager/DelayedHitSender;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/google/tagmanager/DelayedHitSender;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/DelayedHitSender;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/tagmanager/DelayedHitSender;->sInstance:Lcom/google/tagmanager/DelayedHitSender;

    .line 46
    :cond_0
    sget-object v1, Lcom/google/tagmanager/DelayedHitSender;->sInstance:Lcom/google/tagmanager/DelayedHitSender;

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public sendHit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/google/tagmanager/DelayedHitSender;->mRateLimiter:Lcom/google/tagmanager/RateLimiter;

    invoke-interface {v0}, Lcom/google/tagmanager/RateLimiter;->tokenAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 65
    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/DelayedHitSender;->mWrapperUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/tagmanager/DelayedHitSender;->mWrapperQueryParameter:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/tagmanager/DelayedHitSender;->mWrapperUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/tagmanager/DelayedHitSender;->mWrapperQueryParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending wrapped url hit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Error wrapping URL for testing."

    invoke-static {v2, v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return v1

    .line 78
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/tagmanager/DelayedHitSender;->mSendingThread:Lcom/google/tagmanager/HitSendingThread;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/HitSendingThread;->sendHit(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public setUrlWrapModeForTesting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "queryParameter"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/google/tagmanager/DelayedHitSender;->mWrapperUrl:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/tagmanager/DelayedHitSender;->mWrapperQueryParameter:Ljava/lang/String;

    .line 53
    return-void
.end method
