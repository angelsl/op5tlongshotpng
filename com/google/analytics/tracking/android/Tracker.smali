.class public Lcom/google/analytics/tracking/android/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# instance fields
.field private final mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

.field private final mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

.field private final mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

.field private final mName:Ljava/lang/String;

.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

.field private final mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "trackingId"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/google/analytics/tracking/android/TrackerHandler;

    .line 54
    invoke-static {}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    move-result-object v4

    invoke-static {}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    move-result-object v5

    invoke-static {}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getProvider()Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    move-result-object v6

    new-instance v7, Lcom/google/analytics/tracking/android/SendHitRateLimiter;

    invoke-direct {v7}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;Lcom/google/analytics/tracking/android/RateLimiter;)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;Lcom/google/analytics/tracking/android/RateLimiter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "trackingId"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/google/analytics/tracking/android/TrackerHandler;
    .param p4, "clientIdDefaultProvider"    # Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;
    .param p5, "screenResolutionDefaultProvider"    # Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;
    .param p6, "appFieldsDefaultProvider"    # Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;
    .param p7, "rateLimiter"    # Lcom/google/analytics/tracking/android/RateLimiter;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    .line 69
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iput-object p4, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    .line 75
    iput-object p5, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    .line 76
    iput-object p6, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    .line 78
    iput-object p7, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    .line 79
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tracker name cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    return-object v1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 145
    :cond_1
    const-string v0, "&ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mClientIdDefaultProvider:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mScreenResolutionDefaultProvider:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->providesField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mAppFieldsDefaultProvider:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_5
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER_NAME:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 86
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getRateLimiter()Lcom/google/analytics/tracking/android/RateLimiter;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    return-object v0
.end method

.method public send(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SEND:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "paramsToSend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    :cond_0
    const-string v1, "&tid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 113
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "Missing tracking id (%s) parameter."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 116
    :cond_1
    const-string v1, "&t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "hitType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "Missing hit type (%s) parameter."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 119
    const-string v2, ""

    .line 123
    :cond_2
    const-string v1, "transaction"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mRateLimiter:Lcom/google/analytics/tracking/android/RateLimiter;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/RateLimiter;->tokenAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    const-string v1, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->mHandler:Lcom/google/analytics/tracking/android/TrackerHandler;

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/TrackerHandler;->sendHit(Ljava/util/Map;)V

    .line 130
    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 167
    if-nez p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :goto_0
    return-void
.end method
