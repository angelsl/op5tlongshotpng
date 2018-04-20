.class public Lcom/google/analytics/tracking/android/GoogleAnalytics;
.super Lcom/google/analytics/tracking/android/TrackerHandler;
.source "GoogleAnalytics.java"


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# instance fields
.field private volatile mAppOptOut:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mDryRun:Z

.field private mLogger:Lcom/google/analytics/tracking/android/Logger;

.field private mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

.field private final mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GAThread;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GAThread;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/TrackerHandler;-><init>()V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    .line 52
    if-eqz p1, :cond_32

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 58
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->initializeProvider(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->initializeProvider(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->initializeProvider(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mLogger:Lcom/google/analytics/tracking/android/Logger;

    .line 63
    return-void

    .line 53
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static clearDefaultProviders()V
    .registers 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->dropInstance()V

    .line 123
    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->dropInstance()V

    .line 124
    invoke-static {}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->dropInstance()V

    .line 125
    return-void
.end method

.method static clearInstance()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 114
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .local v0, "-l_0_R":Ljava/lang/Object;
    const-class v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v2

    .line 115
    const/4 v2, 0x0

    :try_start_6
    sput-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 116
    invoke-static {}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->clearDefaultProviders()V

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_d
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static getInstance()Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .registers 3

    .prologue
    .line 86
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .local v0, "-l_0_R":Ljava/lang/Object;
    const-class v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v2

    .line 87
    :try_start_5
    sget-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v0

    return-object v2

    .line 88
    :catchall_9
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .local v0, "-l_1_R":Ljava/lang/Object;
    const-class v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v2

    .line 72
    :try_start_5
    sget-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-eqz v2, :cond_d

    .line 75
    :goto_9
    sget-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v0

    return-object v2

    .line 73
    :cond_d
    new-instance v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    goto :goto_9

    .line 76
    :catchall_15
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method static getNewInstance(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thread"    # Lcom/google/analytics/tracking/android/AnalyticsThread;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 100
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .local v0, "-l_2_R":Ljava/lang/Object;
    const-class v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v2

    .line 101
    :try_start_5
    sget-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v2, :cond_14

    .line 104
    :goto_9
    new-instance v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v2, p0, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    sput-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 105
    sget-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v0

    return-object v2

    .line 102
    :cond_14
    sget-object v2, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->close()V

    goto :goto_9

    .line 106
    :catchall_1a
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method close()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public closeTracker(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter p0

    .line 224
    :try_start_2
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/tracking/android/GAUsage$Field;->CLOSE_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 225
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Tracker;

    .line 226
    .local v2, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-eq v2, v3, :cond_19

    .line 229
    :goto_17
    monitor-exit p0

    .line 230
    return-void

    .line 227
    :cond_19
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    goto :goto_17

    .line 229
    .end local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    :catchall_1d
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getAppOptOut()Z
    .registers 3

    .prologue
    .line 274
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_APP_OPT_OUT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 275
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;
    .registers 5

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter p0

    .line 201
    :try_start_2
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_DEFAULT_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 202
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    monitor-exit p0

    return-object v2

    .line 203
    :catchall_f
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getLogger()Lcom/google/analytics/tracking/android/Logger;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mLogger:Lcom/google/analytics/tracking/android/Logger;

    return-object v0
.end method

.method public getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 3
    .param p1, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-virtual {p0, p1, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    return-object v0
.end method

.method public getTracker(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter p0

    .line 163
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 166
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/tracking/android/Tracker;

    .line 168
    .local v2, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    if-eqz v2, :cond_2f

    .line 175
    :cond_12
    :goto_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 178
    :goto_18
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 179
    monitor-exit p0

    return-object v2

    .line 164
    .end local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    :cond_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Tracker name cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :catchall_2c
    move-exception v1

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw v1

    .line 169
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .restart local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    :cond_2f
    :try_start_2f
    new-instance v2, Lcom/google/analytics/tracking/android/Tracker;

    .end local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    invoke-direct {v2, p1, p2, p0}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V

    .line 170
    .restart local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v3, :cond_12

    .line 172
    iput-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    goto :goto_12

    .line 176
    :cond_40
    const-string/jumbo v3, "&tid"

    invoke-virtual {v2, v3, p2}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    goto :goto_18
.end method

.method public isDryRunEnabled()Z
    .registers 3

    .prologue
    .line 143
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_DRY_RUN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 144
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDryRun:Z

    return v0
.end method

.method sendHit(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter p0

    .line 236
    if-eqz p1, :cond_3f

    .line 241
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "&ul"

    invoke-static {p1, v3, v2}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    move-result-object v2

    const-string/jumbo v3, "&sr"

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "&sr"

    invoke-static {p1, v3, v2}, Lcom/google/analytics/tracking/android/Utils;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearSequence()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "&_u"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearUsage()Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v2, p1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->sendHit(Ljava/util/Map;)V

    .line 248
    monitor-exit p0

    .line 249
    return-void

    .line 238
    :cond_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "hit cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :catchall_48
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public setAppOptOut(Z)V
    .registers 4
    .param p1, "optOut"    # Z

    .prologue
    .line 263
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_OPT_OUT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 264
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    .line 265
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    .line 268
    :goto_17
    return-void

    .line 266
    :cond_18
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->clearHits()V

    goto :goto_17
.end method

.method public setDefaultTracker(Lcom/google/analytics/tracking/android/Tracker;)V
    .registers 6
    .param p1, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter p0

    .line 211
    :try_start_2
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DEFAULT_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 212
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 213
    monitor-exit p0

    .line 214
    return-void

    .line 213
    :catchall_f
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setDryRun(Z)V
    .registers 4
    .param p1, "dryRun"    # Z

    .prologue
    .line 135
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DRY_RUN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 136
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDryRun:Z

    .line 137
    return-void
.end method

.method public setLogger(Lcom/google/analytics/tracking/android/Logger;)V
    .registers 4
    .param p1, "logger"    # Lcom/google/analytics/tracking/android/Logger;

    .prologue
    .line 292
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_LOGGER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 293
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mLogger:Lcom/google/analytics/tracking/android/Logger;

    .line 294
    return-void
.end method
