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

.field private static TAG:Ljava/lang/String;

.field private static mIsOnlineConfigEnabled:Z

.field private static mTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private static sContext:Landroid/content/Context;

.field private static sGetConfigFail:Z

.field private static sInit:Z

.field private static sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
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

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    .line 39
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 41
    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 32
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/json/JSONArray;)V
    .registers 1
    .param p0, "x0"    # Lorg/json/JSONArray;

    .line 32
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->getOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    return-object v0
.end method

.method private static getOnlineConfig(Lorg/json/JSONArray;)V
    .registers 8
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 130
    const/4 v0, 0x1

    if-eqz p0, :cond_e6

    .line 132
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_af

    .line 133
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 134
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 135
    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    .line 136
    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GA online config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    if-eqz v4, :cond_a8

    .line 138
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_77

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstance sInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isBetaRom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isPrivacyEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    .line 140
    invoke-static {v6}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_77
    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    if-nez v4, :cond_ab

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v4

    if-eqz v4, :cond_ab

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 142
    new-instance v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    invoke-direct {v4}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;-><init>()V

    sput-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    .line 143
    sget-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v4

    .line 144
    .local v4, "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v5

    sget-object v6, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v5, v6}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    .line 145
    const-string v5, "UA-92966593-4"

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    sput-object v5, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 146
    .end local v4    # "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    goto :goto_ab

    .line 148
    :cond_a8
    const/4 v4, 0x0

    sput-object v4, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInstance:Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;

    .line 132
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_ab
    :goto_ab
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 152
    .end local v2    # "index":I
    :cond_af
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b1} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b1} :catch_b2

    goto :goto_e5

    .line 156
    :catch_b2
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get GA online config error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_e5

    .line 153
    :catch_cc
    move-exception v1

    .line 154
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get GA online config error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 159
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_e5
    goto :goto_ef

    .line 161
    :cond_e6
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string v2, "jsonArray is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 164
    :goto_ef
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    if-nez v0, :cond_c

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sInit:Z

    .line 49
    sput-object p0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    .line 50
    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->registerGAOnlineConfigObserver(Landroid/content/Context;)V

    .line 53
    :cond_c
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    if-eqz v0, :cond_1c

    .line 54
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_1c
    return-void
.end method

.method private static isBetaRom()Z
    .registers 3

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "isBeta":Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "isEanbleGA":Ljava/lang/String;
    const-string v2, "ro.build.beta"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "persist.op.ga"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_21

    .line 87
    :cond_1f
    const/4 v2, 0x0

    return v2

    .line 85
    :cond_21
    :goto_21
    const/4 v2, 0x1

    return v2
.end method

.method private static isPrivacyEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 95
    return v0

    .line 98
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_join_user_plan_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "privacy":I
    if-ne v1, v0, :cond_12

    .line 101
    return v3

    .line 103
    :cond_12
    return v0
.end method

.method private static registerGAOnlineConfigObserver(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v0, :cond_43

    .line 108
    new-instance v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;-><init>(Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$1;)V

    .line 109
    .local v0, "updater":Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "OPSystemUIGAConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 112
    :try_start_1b
    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 113
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Register online config observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_2b} :catch_2c

    .line 116
    :cond_2b
    goto :goto_43

    .line 114
    :catch_2c
    move-exception v1

    .line 115
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

    .line 118
    .end local v0    # "updater":Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_12

    .line 73
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 75
    :cond_12
    return-void
.end method
