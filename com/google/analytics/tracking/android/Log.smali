.class public Lcom/google/analytics/tracking/android/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static clearGaInstance()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 105
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 41
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 42
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-nez v0, :cond_7

    .line 45
    :goto_6
    return-void

    .line 43
    :cond_7
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->error(Ljava/lang/Exception;)V

    goto :goto_6
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 30
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-nez v0, :cond_7

    .line 33
    :goto_6
    return-void

    .line 31
    :cond_7
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->error(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static getLogger()Lcom/google/analytics/tracking/android/Logger;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 92
    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-eqz v0, :cond_a

    .line 96
    :goto_5
    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v0, :cond_11

    .line 99
    return-object v1

    .line 93
    :cond_a
    invoke-static {}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance()Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    goto :goto_5

    .line 97
    :cond_11
    sget-object v0, Lcom/google/analytics/tracking/android/Log;->sGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 54
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-nez v0, :cond_7

    .line 57
    :goto_6
    return-void

    .line 55
    :cond_7
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->info(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static isVerbose()Z
    .registers 3

    .prologue
    .line 84
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 85
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-nez v0, :cond_8

    .line 88
    const/4 v1, 0x0

    return v1

    .line 86
    :cond_8
    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Logger;->getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 66
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-nez v0, :cond_7

    .line 69
    :goto_6
    return-void

    .line 67
    :cond_7
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    .line 78
    .local v0, "l":Lcom/google/analytics/tracking/android/Logger;
    if-nez v0, :cond_7

    .line 81
    :goto_6
    return-void

    .line 79
    :cond_7
    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6
.end method
