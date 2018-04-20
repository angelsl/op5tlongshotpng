.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_HITS_TABLE:Ljava/lang/String;

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "google_analytics_v2.db"

.field static final HITS_TABLE:Ljava/lang/String; = "hits2"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_APP_ID:Ljava/lang/String; = "hit_app_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_ID:Ljava/lang/String; = "hit_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_STRING:Ljava/lang/String; = "hit_string"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_TIME:Ljava/lang/String; = "hit_time"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_URL:Ljava/lang/String; = "hit_url"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mClock:Lcom/google/analytics/tracking/android/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

.field private volatile mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

.field private mLastDeleteStaleHitsTime:J

.field private final mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "hits2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "hit_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "hit_time"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "hit_url"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "hit_string"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "hit_app_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string/jumbo v0, "google_analytics_v2.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "databaseName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    .line 110
    iput-object p3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 112
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$1;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 118
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;-><init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    .line 119
    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private fillVersionParameter(Ljava/util/Map;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/analytics/internal/Command;>;"
    const-string/jumbo v3, "&_v"

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "clientVersionParam":Ljava/lang/String;
    if-nez p2, :cond_b

    .line 197
    :cond_a
    :goto_a
    return-void

    .line 190
    :cond_b
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/internal/Command;

    .line 191
    .local v1, "command":Lcom/google/android/gms/analytics/internal/Command;
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "appendVersion"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 192
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/Command;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method static generateHitString(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v2, "keyAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 261
    const-string/jumbo v3, "&"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 255
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/HitBuilder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/HitBuilder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 565
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 570
    return-object v0

    .line 566
    :catch_8
    move-exception v1

    .line 567
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 568
    const/4 v2, 0x0

    return-object v2
.end method

.method private removeOldHitIfFull()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    add-int/lit8 v0, v2, 0x1

    .line 205
    .local v0, "hitsOverLimit":I
    if-gtz v0, :cond_c

    .line 210
    :goto_b
    return-void

    .line 206
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHitIds(I)Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "hitsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hits to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 208
    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits([Ljava/lang/String;)V

    goto :goto_b
.end method

.method private writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V
    .registers 13
    .param p2, "hitTimeInMilliseconds"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "Error opening database for putHit"

    invoke-direct {p0, v5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 215
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v3, :cond_53

    .line 219
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v2, "content":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->generateHitString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "hit_string"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, "hit_time"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-wide/16 v0, 0x0

    .line 224
    .local v0, "appSystemId":J
    const-string/jumbo v5, "AppUID"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 231
    :goto_2d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, "hit_app_id"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    if-eqz p4, :cond_62

    .line 236
    :goto_39
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_66

    .line 242
    const-string/jumbo v5, "hit_url"

    invoke-virtual {v2, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :try_start_45
    const-string/jumbo v5, "hits2"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 247
    iget-object v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_52} :catch_6d

    .line 251
    :goto_52
    return-void

    .line 216
    .end local v0    # "appSystemId":J
    .end local v2    # "content":Landroid/content/ContentValues;
    :cond_53
    return-void

    .line 226
    .restart local v0    # "appSystemId":J
    .restart local v2    # "content":Landroid/content/ContentValues;
    :cond_54
    :try_start_54
    const-string/jumbo v5, "AppUID"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_60} :catch_75

    move-result-wide v0

    goto :goto_2d

    .line 233
    :cond_62
    const-string/jumbo p4, "http://www.google-analytics.com/collect"

    goto :goto_39

    .line 239
    :cond_66
    const-string/jumbo v5, "Empty path: not sending hit"

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 240
    return-void

    .line 248
    :catch_6d
    move-exception v4

    .line 249
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v5, "Error storing hit"

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_52

    .line 227
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_75
    move-exception v5

    goto :goto_2d
.end method


# virtual methods
.method public clearHits(J)V
    .registers 10
    .param p1, "appId"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 149
    const-string/jumbo v4, "Error opening database for clearHits"

    invoke-direct {p0, v4}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_d

    .line 160
    :goto_c
    return-void

    .line 151
    :cond_d
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_25

    .line 152
    const-string/jumbo v4, "hits2"

    invoke-virtual {v0, v4, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    :goto_19
    iget-object v4, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v5

    if-eqz v5, :cond_3b

    :goto_21
    invoke-interface {v4, v2}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    goto :goto_c

    .line 154
    :cond_25
    new-array v1, v3, [Ljava/lang/String;

    .line 155
    .local v1, "params":[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 156
    const-string/jumbo v4, "hits2"

    const-string/jumbo v5, "hit_app_id = ?"

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_19

    .end local v1    # "params":[Ljava/lang/String;
    :cond_3b
    move v2, v3

    .line 158
    goto :goto_21
.end method

.method public close()V
    .registers 3

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 543
    iget-object v1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/Dispatcher;->close()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 548
    return-void

    .line 544
    :catch_f
    move-exception v0

    .line 545
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Error opening database for close"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method deleteHits(Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    .local p1, "hits":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/analytics/tracking/android/Hit;>;"
    if-nez p1, :cond_9

    .line 447
    :cond_2
    const-string/jumbo v5, "Empty/Null collection passed to deleteHits."

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 448
    return-void

    .line 446
    :cond_9
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 450
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 451
    .local v1, "hitIds":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 452
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_24

    .line 455
    invoke-virtual {p0, v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits([Ljava/lang/String;)V

    .line 456
    return-void

    .line 452
    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Hit;

    .line 453
    .local v0, "h":Lcom/google/analytics/tracking/android/Hit;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    move v2, v3

    .line 454
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1a
.end method

.method deleteHits([Ljava/lang/String;)V
    .registers 10
    .param p1, "hitIds"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    if-nez p1, :cond_b

    .line 465
    :cond_4
    const-string/jumbo v3, "Empty hitIds passed to deleteHits."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 466
    return-void

    .line 464
    :cond_b
    array-length v5, p1

    if-eqz v5, :cond_4

    .line 468
    const-string/jumbo v5, "Error opening database for deleteHits."

    invoke-direct {p0, v5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 469
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_43

    .line 472
    new-array v5, v4, [Ljava/lang/Object;

    array-length v6, p1

    const-string/jumbo v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string/jumbo v6, "HIT_ID in (%s)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "whereClause":Ljava/lang/String;
    :try_start_31
    const-string/jumbo v5, "hits2"

    invoke-virtual {v0, v5, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    iget-object v5, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v6

    if-eqz v6, :cond_44

    :goto_3f
    invoke-interface {v5, v3}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_42} :catch_46

    .line 480
    :goto_42
    return-void

    .line 470
    .end local v2    # "whereClause":Ljava/lang/String;
    :cond_43
    return-void

    .restart local v2    # "whereClause":Ljava/lang/String;
    :cond_44
    move v3, v4

    .line 476
    goto :goto_3f

    .line 477
    :catch_46
    move-exception v1

    .line 478
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error deleting hits "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    goto :goto_42
.end method

.method deleteStaleHits()I
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 422
    iget-object v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v8}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 425
    .local v4, "now":J
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-lez v8, :cond_16

    move v8, v7

    :goto_13
    if-nez v8, :cond_18

    .line 426
    return v6

    :cond_16
    move v8, v6

    .line 425
    goto :goto_13

    .line 428
    :cond_18
    iput-wide v4, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 429
    const-string/jumbo v8, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v8}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 430
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_4e

    .line 433
    iget-object v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v8}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    sub-long v2, v8, v10

    .line 434
    .local v2, "lastGoodTime":J
    new-array v8, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string/jumbo v9, "hits2"

    const-string/jumbo v10, "HIT_TIME < ?"

    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 435
    .local v1, "rslt":I
    iget-object v8, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v9

    if-eqz v9, :cond_4f

    :goto_4a
    invoke-interface {v8, v6}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 436
    return v1

    .line 431
    .end local v1    # "rslt":I
    .end local v2    # "lastGoodTime":J
    :cond_4e
    return v6

    .restart local v1    # "rslt":I
    .restart local v2    # "lastGoodTime":J
    :cond_4f
    move v6, v7

    .line 435
    goto :goto_4a
.end method

.method public dispatch()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 507
    const-string/jumbo v2, "Dispatch running..."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Dispatcher;->okToDispatch()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 513
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 514
    .local v0, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_65

    .line 519
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/Dispatcher;->dispatchHits(Ljava/util/List;)I

    move-result v1

    .line 520
    .local v1, "hitsDispatched":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 525
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteHits(Ljava/util/Collection;)V

    .line 529
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_72

    .line 532
    :cond_63
    :goto_63
    return-void

    .line 510
    .end local v0    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .end local v1    # "hitsDispatched":I
    :cond_64
    return-void

    .line 515
    .restart local v0    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_65
    const-string/jumbo v2, "...nothing to dispatch"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mListener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 517
    return-void

    .line 529
    .restart local v1    # "hitsDispatched":I
    :cond_72
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getNumStoredHits()I

    move-result v2

    if-lez v2, :cond_63

    .line 530
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    goto :goto_63
.end method

.method public getDbHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object v0
.end method

.method public getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    return-object v0
.end method

.method getHelper()Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDbHelper:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 483
    const/4 v4, 0x0

    .line 484
    .local v4, "numStoredHits":I
    const-string/jumbo v5, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 485
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_1d

    .line 488
    const/4 v1, 0x0

    .line 490
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_c
    const-string/jumbo v5, "SELECT COUNT(*) from hits2"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 491
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 497
    :goto_1a
    if-nez v1, :cond_25

    .line 501
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1c
    :goto_1c
    return v4

    .line 486
    :cond_1d
    return v6

    .line 492
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_1e
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_22} :catch_29
    .catchall {:try_start_c .. :try_end_22} :catchall_36

    move-result-wide v6

    long-to-int v4, v6

    goto :goto_1a

    .line 498
    :cond_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 494
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_29
    move-exception v3

    .line 495
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2a
    const-string/jumbo v5, "Error getting numStoredHits"

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_36

    .line 497
    if-eqz v1, :cond_1c

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 497
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_36
    move-exception v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    if-nez v1, :cond_3a

    .line 498
    :goto_39
    throw v0

    :cond_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39
.end method

.method peekHitIds(I)Ljava/util/List;
    .registers 15
    .param p1, "maxHits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v12, "hitIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez p1, :cond_42

    .line 277
    const-string/jumbo v1, "Error opening database for peekHitIds."

    invoke-direct {p0, v1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 278
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_49

    .line 282
    const/4 v10, 0x0

    .line 284
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_12
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "hit_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "hit_id"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string/jumbo v3, "%s ASC"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "hits2"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 292
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_3c} :catch_61
    .catchall {:try_start_12 .. :try_end_3c} :catchall_83

    move-result v1

    if-nez v1, :cond_4a

    .line 300
    :cond_3f
    if-nez v10, :cond_5d

    .line 304
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_41
    :goto_41
    return-object v12

    .line 274
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_42
    const-string/jumbo v1, "Invalid maxHits specified. Skipping"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 275
    return-object v12

    .line 279
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_49
    return-object v12

    .line 294
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    :try_start_4b
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_59} :catch_61
    .catchall {:try_start_4b .. :try_end_59} :catchall_83

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_4a

    .line 301
    :cond_5d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 297
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_61
    move-exception v11

    .line 298
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in peekHits fetching hitIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_83

    .line 300
    if-eqz v10, :cond_41

    .line 301
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 300
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_83
    move-exception v9

    .local v9, "-l_6_R":Ljava/lang/Object;
    if-nez v10, :cond_87

    .line 301
    :goto_86
    throw v9

    :cond_87
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_86
.end method

.method public peekHits(I)Ljava/util/List;
    .registers 29
    .param p1, "maxHits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v23, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    const-string/jumbo v3, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 317
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_8f

    .line 321
    const/16 v19, 0x0

    .line 329
    .local v19, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x2

    :try_start_13
    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v3, "hit_id"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string/jumbo v3, "hit_time"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "hit_id"

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "%s ASC"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "hits2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 338
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_45} :catch_b4
    .catchall {:try_start_13 .. :try_end_45} :catchall_d9

    .line 339
    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .local v24, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :try_start_45
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_48} :catch_1ab
    .catchall {:try_start_45 .. :try_end_48} :catchall_1a1

    move-result v3

    if-nez v3, :cond_90

    .line 349
    :cond_4b
    if-nez v19, :cond_b0

    .line 354
    :goto_4d
    const/16 v18, 0x0

    .line 356
    .local v18, "count":I
    const/4 v3, 0x3

    :try_start_50
    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "hit_id"

    const/4 v5, 0x0

    aput-object v3, v7, v5

    const-string/jumbo v3, "hit_string"

    const/4 v5, 0x1

    aput-object v3, v7, v5

    const-string/jumbo v3, "hit_url"

    const/4 v5, 0x2

    aput-object v3, v7, v5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "hit_id"

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string/jumbo v5, "%s ASC"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v6, "hits2"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 365
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_87} :catch_143
    .catchall {:try_start_50 .. :try_end_87} :catchall_190

    move-result v3

    if-nez v3, :cond_111

    .line 381
    :cond_8a
    move-object/from16 v15, v24

    .line 406
    .local v15, "-l_6_R":Ljava/lang/Object;
    if-nez v19, :cond_175

    .line 407
    :goto_8e
    return-object v24

    .line 318
    .end local v15    # "-l_6_R":Ljava/lang/Object;
    .end local v18    # "count":I
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_8f
    return-object v23

    .line 341
    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_90
    :goto_90
    :try_start_90
    new-instance v4, Lcom/google/analytics/tracking/android/Hit;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/analytics/tracking/android/Hit;-><init>(Ljava/lang/String;JJ)V
    :try_end_a4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_a4} :catch_1ab
    .catchall {:try_start_90 .. :try_end_a4} :catchall_1a1

    .line 342
    .local v4, "hit":Lcom/google/analytics/tracking/android/Hit;
    :try_start_a4
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_ac} :catch_1b0
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_1a6

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_90

    .line 350
    .end local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    :cond_b0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    .line 345
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catch_b4
    move-exception v21

    .line 346
    .local v21, "e":Landroid/database/sqlite/SQLiteException;
    :goto_b5
    :try_start_b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in peekHits fetching hitIds: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_b5 .. :try_end_d0} :catchall_d9

    .line 347
    move-object/from16 v15, v23

    .line 349
    .restart local v15    # "-l_6_R":Ljava/lang/Object;
    if-nez v19, :cond_d5

    .line 350
    :goto_d4
    return-object v15

    :cond_d5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_d4

    .line 349
    .end local v15    # "-l_6_R":Ljava/lang/Object;
    .end local v21    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_d9
    move-exception v16

    .local v16, "-l_7_R":Ljava/lang/Object;
    :goto_da
    if-nez v19, :cond_dd

    .line 350
    :goto_dc
    throw v16

    :cond_dd
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_dc

    .line 372
    .end local v16    # "-l_7_R":Ljava/lang/Object;
    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v18    # "count":I
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .local v20, "cw":Landroid/database/CursorWindow;
    .restart local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_e1
    :try_start_e1
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/analytics/tracking/android/Hit;->setHitString(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/analytics/tracking/android/Hit;->setHitUrl(Ljava/lang/String;)V

    .line 378
    :goto_109
    add-int/lit8 v18, v18, 0x1

    .line 379
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 367
    .end local v20    # "cw":Landroid/database/CursorWindow;
    :cond_111
    move-object/from16 v0, v19

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v20

    .line 371
    .restart local v20    # "cw":Landroid/database/CursorWindow;
    invoke-virtual/range {v20 .. v20}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-gtz v3, :cond_e1

    .line 375
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string/jumbo v3, "HitString for hitId %d too large.  Hit will be deleted."

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_142
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e1 .. :try_end_142} :catch_143
    .catchall {:try_start_e1 .. :try_end_142} :catchall_190

    goto :goto_109

    .line 382
    .end local v20    # "cw":Landroid/database/CursorWindow;
    :catch_143
    move-exception v21

    .line 383
    .restart local v21    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in peekHits fetching hitString: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 392
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v26, "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    const/16 v22, 0x0

    .line 394
    .local v22, "foundOneBadHit":Z
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_16a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z
    :try_end_16d
    .catchall {:try_start_144 .. :try_end_16d} :catchall_190

    move-result v3

    if-nez v3, :cond_17a

    .line 404
    :cond_170
    move-object/from16 v17, v26

    .line 406
    .local v17, "-l_9_R":Ljava/lang/Object;
    if-nez v19, :cond_199

    .line 407
    :goto_174
    return-object v26

    .end local v17    # "-l_9_R":Ljava/lang/Object;
    .end local v21    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v22    # "foundOneBadHit":Z
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v15    # "-l_6_R":Ljava/lang/Object;
    :cond_175
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8e

    .line 394
    .end local v15    # "-l_6_R":Ljava/lang/Object;
    .restart local v21    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v22    # "foundOneBadHit":Z
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_17a
    :try_start_17a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/tracking/android/Hit;

    .line 395
    .restart local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_194

    .line 402
    :goto_18a
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18f
    .catchall {:try_start_17a .. :try_end_18f} :catchall_190

    goto :goto_16a

    .line 406
    .end local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .end local v21    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v22    # "foundOneBadHit":Z
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catchall_190
    move-exception v14

    .local v14, "-l_11_R":Ljava/lang/Object;
    if-nez v19, :cond_19d

    .line 407
    :goto_193
    throw v14

    .line 396
    .end local v14    # "-l_11_R":Ljava/lang/Object;
    .restart local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .restart local v21    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v22    # "foundOneBadHit":Z
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :cond_194
    if-nez v22, :cond_170

    .line 399
    const/16 v22, 0x1

    goto :goto_18a

    .line 407
    .end local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .restart local v17    # "-l_9_R":Ljava/lang/Object;
    :cond_199
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_174

    .end local v17    # "-l_9_R":Ljava/lang/Object;
    .end local v21    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v22    # "foundOneBadHit":Z
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v14    # "-l_11_R":Ljava/lang/Object;
    :cond_19d
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_193

    .line 349
    .end local v14    # "-l_11_R":Ljava/lang/Object;
    .end local v18    # "count":I
    :catchall_1a1
    move-exception v16

    move-object/from16 v23, v24

    .end local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_da

    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .restart local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catchall_1a6
    move-exception v16

    move-object/from16 v23, v24

    .end local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_da

    .line 345
    .end local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catch_1ab
    move-exception v21

    move-object/from16 v23, v24

    .end local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_b5

    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v4    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .restart local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    :catch_1b0
    move-exception v21

    move-object/from16 v23, v24

    .end local v24    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    goto/16 :goto_b5
.end method

.method public putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .param p2, "hitTimeInMilliseconds"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/analytics/internal/Command;>;"
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->deleteStaleHits()I

    .line 179
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->removeOldHitIfFull()V

    .line 180
    invoke-direct {p0, p1, p5}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->fillVersionParameter(Ljava/util/Map;Ljava/util/Collection;)V

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->writeHitToDatabase(Ljava/util/Map;JLjava/lang/String;)V

    .line 182
    return-void
.end method

.method public setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .registers 2
    .param p1, "clock"    # Lcom/google/analytics/tracking/android/Clock;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;

    .line 128
    return-void
.end method

.method public setDispatch(Z)V
    .registers 5
    .param p1, "dispatch"    # Z

    .prologue
    .line 137
    if-nez p1, :cond_a

    new-instance v0, Lcom/google/analytics/tracking/android/NoopDispatcher;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/NoopDispatcher;-><init>()V

    :goto_7
    iput-object v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 140
    return-void

    .line 137
    :cond_a
    new-instance v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    goto :goto_7
.end method

.method setDispatcher(Lcom/google/analytics/tracking/android/Dispatcher;)V
    .registers 2
    .param p1, "dispatcher"    # Lcom/google/analytics/tracking/android/Dispatcher;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDispatcher:Lcom/google/analytics/tracking/android/Dispatcher;

    .line 145
    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .registers 4
    .param p1, "timeInMilliseconds"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 414
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mLastDeleteStaleHitsTime:J

    .line 415
    return-void
.end method
