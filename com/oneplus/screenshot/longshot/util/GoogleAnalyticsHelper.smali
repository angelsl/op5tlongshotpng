.class public Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final SYSTEM_PROPERTY_KEY_ENABLE_GA:Ljava/lang/String; = "persist.op.ga"

.field private static final SYSTEM_PROPERTY_KEY_IS_BETA_ROM:Ljava/lang/String; = "ro.build.beta"

.field private static final TAG:Ljava/lang/String;

.field private static mIsOnlineConfigEnabled:Z

.field private static mTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private static sContext:Landroid/content/Context;

.field private static sGetConfigFail:Z

.field private static sInit:Z

.field private static sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPLongshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    .line 30
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 32
    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 23
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONArray;

    .line 23
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->getOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    return-object v0
.end method

.method private static getOnlineConfig(Lorg/json/JSONArray;)V
    .locals 8
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 123
    const-string v0, "get GA online config error. "

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    .line 125
    const/4 v2, 0x0

    move v3, v2

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 126
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 127
    .local v4, "json":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    const-string v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    .line 129
    sget-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GA online config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-boolean v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    if-eqz v5, :cond_1

    .line 131
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    .line 132
    sget-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInstance sInstance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " isBetaRom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isPrivacyEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    .line 134
    invoke-static {v7}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    sget-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    if-nez v5, :cond_2

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    new-instance v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-direct {v5}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;-><init>()V

    sput-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    .line 138
    sget-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v5

    .line 139
    .local v5, "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v6

    sget-object v7, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v6, v7}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    .line 140
    const-string v6, "UA-92966593-4"

    invoke-virtual {v5, v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v6

    sput-object v6, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 141
    .end local v5    # "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    goto :goto_1

    .line 143
    :cond_1
    const/4 v5, 0x0

    sput-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    .line 125
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 147
    .end local v3    # "index":I
    :cond_3
    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 148
    :catch_1
    move-exception v2

    .line 149
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 154
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2
    goto :goto_3

    .line 156
    :cond_4
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string v2, "jsonArray is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 159
    :goto_3
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    .line 40
    sput-object p0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    .line 41
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->registerGAOnlineConfigObserver(Landroid/content/Context;)V

    .line 44
    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_1
    return-void
.end method

.method private static isBetaRom()Z
    .locals 4

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "isBeta":Ljava/lang/String;
    const/4 v1, 0x0

    .line 72
    .local v1, "isEanbleGA":Ljava/lang/String;
    const-string v2, "ro.build.beta"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v2, "persist.op.ga"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 76
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private static isPrivacyEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 86
    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "oem_join_user_plan_settings"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "privacy":I
    if-ne v1, v0, :cond_1

    .line 92
    return v2

    .line 94
    :cond_1
    return v0
.end method

.method private static registerGAOnlineConfigObserver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;-><init>(Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;)V

    .line 100
    .local v0, "updater":Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "OPSystemUIGAConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 103
    :try_start_0
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 104
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Register online config observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register online config fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "updater":Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 66
    :cond_0
    return-void
.end method
