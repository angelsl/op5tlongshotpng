.class Lcom/google/tagmanager/TrackerProvider;
.super Ljava/lang/Object;
.source "TrackerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/TrackerProvider$1;,
        Lcom/google/tagmanager/TrackerProvider$LoggerImpl;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/tagmanager/TrackerProvider;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/GoogleAnalytics;)V
    .registers 4
    .param p1, "ga"    # Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 26
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    new-instance v1, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;

    invoke-direct {v1}, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setLogger(Lcom/google/analytics/tracking/android/Logger;)V

    .line 27
    return-void
.end method

.method private declared-synchronized initTrackProviderIfNecessary()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    .line 45
    return-void

    .line 42
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 43
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    new-instance v1, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;

    invoke-direct {v1}, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setLogger(Lcom/google/analytics/tracking/android/Logger;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1a

    goto :goto_5

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close(Lcom/google/analytics/tracking/android/Tracker;)V
    .registers 4
    .param p1, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Tracker;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->closeTracker(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 3
    .param p1, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/tagmanager/TrackerProvider;->initTrackProviderIfNecessary()V

    .line 32
    iget-object v0, p0, Lcom/google/tagmanager/TrackerProvider;->mGoogleAnalytics:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    return-object v0
.end method
