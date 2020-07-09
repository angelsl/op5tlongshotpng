.class Lcom/google/analytics/tracking/android/FlowMonitor;
.super Ljava/lang/Object;
.source "FlowMonitor.java"


# static fields
.field static final HITS_DISPATCHED:Ljava/lang/String; = "hitsDispatched"

.field static final HITS_DISPATCHED_PARAM:Ljava/lang/String; = "_s"

.field static final HITS_GENERATED:Ljava/lang/String; = "hitsGenerated"

.field static final HITS_GENERATED_PARAM:Ljava/lang/String; = "_g"

.field static final HITS_PAST_PROXY:Ljava/lang/String; = "hitsPastProxy"

.field static final HITS_PAST_PROXY_PARAM:Ljava/lang/String; = "_p"

.field static final HITS_STORED_IN_DB:Ljava/lang/String; = "hitsStoredInDb"

.field static final HITS_STORED_IN_DB_PARAM:Ljava/lang/String; = "_d"

.field private static final HIT_INTERVAL:I = 0x32

.field static final LAST_QUERY_TIMESTAMP:Ljava/lang/String; = "lastQueryTimestamp"

.field static final LAST_QUERY_TIMESTAMP_PARAM:Ljava/lang/String; = "_ts"

.field static final MONITOR_TYPE:Ljava/lang/String; = "flow"

.field static final MONITOR_TYPE_PARAM:Ljava/lang/String; = "_t"

.field static final PREFERENCES_LABEL:Ljava/lang/String; = "GoogleAnalytics"

.field private static final TIME_INTERVAL:J = 0xdbba00L

.field private static sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;


# instance fields
.field mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHitsDispatched:I

.field private mHitsGenerated:I

.field private mHitsPastProxy:I

.field private mHitsStoredInDb:I

.field private mLastQueryTimeStamp:J

.field mPersistentStore:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    const-string v1, "GoogleAnalytics"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    .line 68
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v2, "hitsGenerated"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    .line 70
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v2, "hitsPastProxy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    .line 71
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v2, "hitsStoredInDb"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    .line 72
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-string v2, "hitsDispatched"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    .line 73
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mPersistentStore:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "lastQueryTimestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    .line 74
    iget-wide v4, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    .line 76
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-wide v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/FlowMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/google/analytics/tracking/android/FlowMonitor;->sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/analytics/tracking/android/FlowMonitor;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/FlowMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/FlowMonitor;->sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;

    .line 52
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/FlowMonitor;->sInstance:Lcom/google/analytics/tracking/android/FlowMonitor;

    return-object v0
.end method


# virtual methods
.method public buildAndResetHitsDispatched()Ljava/lang/String;
    .locals 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "paramBuilder":Ljava/lang/StringBuilder;
    const-string v1, "_s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    .line 156
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    const-string v3, "hitsDispatched"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public generateHit()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_t"

    const-string v2, "flow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-wide v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    .line 102
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    const-string v4, "lastQueryTimestamp"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/FlowMonitor;->getAndResetHitsGeneratedParameter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object v0
.end method

.method getAndResetHitsGeneratedParameter()Ljava/lang/String;
    .locals 4

    .line 204
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    .line 206
    iget-object v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "hitsGenerated"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-object v0
.end method

.method public getAndResetHitsPastProxy()Ljava/lang/String;
    .locals 4

    .line 179
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    .line 181
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    const-string v3, "hitsPastProxy"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-object v0
.end method

.method public getAndResetHitsStoredInDb()Ljava/lang/String;
    .locals 4

    .line 126
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    .line 128
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    const-string v3, "hitsStoredInDb"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    iget-object v1, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-object v0
.end method

.method public incrementHitsDispatched(I)V
    .locals 2
    .param p1, "value"    # I

    .line 139
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsDispatched:I

    .line 140
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsDispatched"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public incrementHitsGenerated(I)V
    .locals 2
    .param p1, "value"    # I

    .line 192
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    .line 193
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsGenerated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method

.method public incrementHitsPastProxy(I)V
    .locals 2
    .param p1, "value"    # I

    .line 167
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsPastProxy:I

    .line 168
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsPastProxy"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public incrementHitsStoredInDb(I)V
    .locals 2
    .param p1, "value"    # I

    .line 114
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsStoredInDb:I

    .line 115
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hitsStoredInDb"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    iget-object v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method

.method public shouldReport()Z
    .locals 4

    .line 86
    iget v0, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mHitsGenerated:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/FlowMonitor;->mLastQueryTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
