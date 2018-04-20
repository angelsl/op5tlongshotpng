.class Lcom/google/tagmanager/SendHitRateLimiter;
.super Ljava/lang/Object;
.source "SendHitRateLimiter.java"

# interfaces
.implements Lcom/google/tagmanager/RateLimiter;


# instance fields
.field private mLastTrackTime:J

.field private final mMaxTokens:I

.field private final mMillisecondsPerToken:J

.field private final mTokenLock:Ljava/lang/Object;

.field private mTokens:D


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 37
    const/16 v0, 0x3c

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/tagmanager/SendHitRateLimiter;-><init>(IJ)V

    .line 38
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6
    .param p1, "maxTokenCount"    # I
    .param p2, "millisecondsPerToken"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .line 27
    iput p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    .line 28
    iget v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 29
    iput-wide p2, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMillisecondsPerToken:J

    .line 30
    return-void
.end method


# virtual methods
.method setLastTrackTime(J)V
    .registers 4
    .param p1, "lastTrackTime"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    .line 43
    return-void
.end method

.method setTokensAvailable(J)V
    .registers 6
    .param p1, "tokens"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 48
    return-void
.end method

.method public tokenAvailable()Z
    .registers 15

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 60
    iget-object v0, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 61
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 62
    .local v4, "timeNow":J
    iget-wide v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    iget v10, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v10, v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2e

    .line 63
    iget-wide v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v2, v4, v8

    .line 64
    .local v2, "timeElapsed":J
    long-to-double v8, v2

    iget-wide v10, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v10, v10

    div-double v6, v8, v10

    .line 65
    .local v6, "tokensDue":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2e

    .line 66
    iget v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    add-double/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 69
    .end local v2    # "timeElapsed":J
    .end local v6    # "tokensDue":D
    :cond_2e
    iput-wide v4, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mLastTrackTime:J

    .line 70
    iget-wide v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    cmpl-double v8, v8, v12

    if-ltz v8, :cond_3e

    .line 71
    iget-wide v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v8, v12

    iput-wide v8, p0, Lcom/google/tagmanager/SendHitRateLimiter;->mTokens:D

    .line 72
    monitor-exit v0

    const/4 v8, 0x1

    return v8

    .line 74
    :cond_3e
    const-string/jumbo v8, "No more tokens available."

    invoke-static {v8}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 75
    monitor-exit v0

    const/4 v8, 0x0

    return v8

    .line 76
    .end local v4    # "timeNow":J
    :catchall_47
    move-exception v1

    .local v1, "-l_8_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_47

    throw v1
.end method
