.class public Lcom/google/analytics/tracking/android/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static clearGaInstance()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 105
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 41
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 42
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->error(Ljava/lang/Exception;)V

    .line 45
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 30
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->error(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method private static getLogger()Lcom/google/analytics/tracking/android/Logger;
    .locals 1

    .line 92
    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance()Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 96
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 54
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->info(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static isVerbose()Z
    .locals 3

    .line 84
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 85
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-eqz v0, :cond_0

    .line 86
    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Logger;->getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 88
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 66
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->verbose(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 78
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->warn(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
