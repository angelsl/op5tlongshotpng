.class Lcom/google/analytics/tracking/android/SendHitRateLimiter;
.super Ljava/lang/Object;
.source "SendHitRateLimiter.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/RateLimiter;


# instance fields
.field private mLastTrackTime:J

.field private final mMaxTokens:I

.field private final mMillisecondsPerToken:J

.field private final mTokenLock:Ljava/lang/Object;

.field private mTokens:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>(IJ)V

    .line 40
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "maxTokenCount"    # I
    .param p2, "millisecondsPerToken"    # J

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .line 29
    iput p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    .line 30
    iget v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 31
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    .line 32
    return-void
.end method


# virtual methods
.method setLastTrackTime(J)V
    .locals 0
    .param p1, "lastTrackTime"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 44
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 45
    return-void
.end method

.method setTokensAvailable(J)V
    .locals 2
    .param p1, "tokens"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 49
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 50
    return-void
.end method

.method public tokenAvailable()Z
    .locals 11

    .line 62
    iget-object v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 64
    .local v1, "timeNow":J
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    iget v5, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 65
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v3, v1, v3

    .line 66
    .local v3, "timeElapsed":J
    long-to-double v5, v3

    iget-wide v7, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v7, v7

    div-double/2addr v5, v7

    .line 67
    .local v5, "tokensDue":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_0

    .line 68
    iget v7, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v7, v7

    iget-wide v9, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    add-double/2addr v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 71
    .end local v3    # "timeElapsed":J
    .end local v5    # "tokensDue":D
    :cond_0
    iput-wide v1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 72
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 73
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v3, v5

    iput-wide v3, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 74
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 76
    :cond_1
    const-string v3, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 77
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 78
    .end local v1    # "timeNow":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
