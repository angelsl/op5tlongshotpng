.class Lcom/google/tagmanager/TrackerProvider$LoggerImpl;
.super Ljava/lang/Object;
.source "TrackerProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/TrackerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggerImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toAnalyticsLogLevel(Lcom/google/tagmanager/Logger$LogLevel;)Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .registers 3
    .param p0, "logLevel"    # Lcom/google/tagmanager/Logger$LogLevel;

    .prologue
    .line 88
    sget-object v0, Lcom/google/tagmanager/TrackerProvider$1;->$SwitchMap$com$google$tagmanager$Logger$LogLevel:[I

    invoke-virtual {p0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 100
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0

    .line 91
    :pswitch_e
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0

    .line 93
    :pswitch_11
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0

    .line 96
    :pswitch_14
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0

    .line 98
    :pswitch_17
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0

    .line 88
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 55
    const-string/jumbo v0, ""

    invoke-static {v0, p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Lcom/google/tagmanager/Log;->getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;

    move-result-object v0

    .line 76
    .local v0, "logLevel":Lcom/google/tagmanager/Logger$LogLevel;
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;->toAnalyticsLogLevel(Lcom/google/tagmanager/Logger$LogLevel;)Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    goto :goto_a
.end method

.method public info(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V
    .registers 3
    .param p1, "logLevel"    # Lcom/google/analytics/tracking/android/Logger$LogLevel;

    .prologue
    .line 82
    const-string/jumbo v0, "GA uses GTM logger. Please use TagManager.getLogger().setLogLevel(LogLevel) instead."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 71
    return-void
.end method
