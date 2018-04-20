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
    .registers 5

    .prologue
    .line 39
    const/16 v0, 0x3c

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>(IJ)V

    .line 40
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6
    .param p1, "maxTokenCount"    # I
    .param p2, "millisecondsPerToken"    # J

    .prologue
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
    .registers 4
    .param p1, "lastTrackTime"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 45
    return-void
.end method

.method setTokensAvailable(J)V
    .registers 6
    .param p1, "tokens"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 49
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 50
    return-void
.end method

.method public tokenAvailable()Z
    .registers 15

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 62
    iget-object v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 63
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 64
    .local v4, "timeNow":J
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    iget v10, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v10, v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2e

    .line 65
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v2, v4, v8

    .line 66
    .local v2, "timeElapsed":J
    long-to-double v8, v2

    iget-wide v10, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v10, v10

    div-double v6, v8, v10

    .line 67
    .local v6, "tokensDue":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2e

    .line 68
    iget v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    add-double/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 71
    .end local v2    # "timeElapsed":J
    .end local v6    # "tokensDue":D
    :cond_2e
    iput-wide v4, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 72
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    cmpl-double v8, v8, v12

    if-ltz v8, :cond_3e

    .line 73
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v8, v12

    iput-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 74
    monitor-exit v0

    const/4 v8, 0x1

    return v8

    .line 76
    :cond_3e
    const-string/jumbo v8, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v8}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 77
    monitor-exit v0

    const/4 v8, 0x0

    return v8

    .line 78
    .end local v4    # "timeNow":J
    :catchall_47
    move-exception v1

    .local v1, "-l_8_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_47

    throw v1
.end method
