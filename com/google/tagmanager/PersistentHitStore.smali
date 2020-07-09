.class Lcom/google/tagmanager/PersistentHitStore;
.super Ljava/lang/Object;
.source "PersistentHitStore.java"

# interfaces
.implements Lcom/google/tagmanager/HitStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;,
        Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;
    }
.end annotation


# static fields
.field private static final CREATE_HITS_TABLE:Ljava/lang/String;

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "gtm_urls.db"

.field static final HITS_TABLE:Ljava/lang/String; = "gtm_hits"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_DISPATCH_RETRY_WINDOW:J = 0xdbba00L

.field static final HIT_FIRST_DISPATCH_TIME:Ljava/lang/String; = "hit_first_send_time"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_ID:Ljava/lang/String; = "hit_id"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static final HIT_ID_WHERE_CLAUSE:Ljava/lang/String; = "hit_id=?"

.field static final HIT_TIME:Ljava/lang/String; = "hit_time"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final HIT_URL:Ljava/lang/String; = "hit_url"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

.field private volatile mDispatcher:Lcom/google/tagmanager/Dispatcher;

.field private mLastDeleteStaleHitsTime:J

.field private final mListener:Lcom/google/tagmanager/HitStoreStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "gtm_hits"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hit_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hit_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hit_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hit_first_send_time"

    aput-object v2, v0, v1

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/tagmanager/HitStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 91
    const-string v0, "gtm_urls.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/tagmanager/PersistentHitStore;-><init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/tagmanager/HitStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "databaseName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    .line 107
    new-instance v0, Lcom/google/tagmanager/PersistentHitStore$1;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/PersistentHitStore$1;-><init>(Lcom/google/tagmanager/PersistentHitStore;)V

    iput-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    .line 113
    new-instance v0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;-><init>(Lcom/google/tagmanager/PersistentHitStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    .line 114
    new-instance v0, Lcom/google/tagmanager/SimpleNetworkDispatcher;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;

    invoke-direct {v3, p0}, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;-><init>(Lcom/google/tagmanager/PersistentHitStore;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/tagmanager/SimpleNetworkDispatcher;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;)V

    iput-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/PersistentHitStore;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;
    .param p1, "x1"    # J

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/PersistentHitStore;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tagmanager/PersistentHitStore;->setHitFirstDispatchTime(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/PersistentHitStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/PersistentHitStore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private deleteHit(J)V
    .locals 3
    .param p1, "hitId"    # J

    .line 380
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->deleteHits([Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 535
    nop

    .line 536
    return-object v0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 534
    const/4 v2, 0x0

    return-object v2
.end method

.method private removeOldHitIfFull()V
    .locals 4

    .line 153
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    add-int/lit8 v0, v0, 0x1

    .line 154
    .local v0, "hitsOverLimit":I
    if-lez v0, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->peekHitIds(I)Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, "hitsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hits to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHits([Ljava/lang/String;)V

    .line 159
    .end local v1    # "hitsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private setHitFirstDispatchTime(JJ)V
    .locals 7
    .param p1, "hitId"    # J
    .param p3, "firstDispatchTime"    # J

    .line 384
    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 385
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "hit_first_send_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 391
    :try_start_0
    const-string v2, "gtm_hits"

    const-string v3, "hit_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V

    .line 400
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method private writeHitToDatabase(JLjava/lang/String;)V
    .locals 5
    .param p1, "hitTimeInMilliseconds"    # J
    .param p3, "path"    # Ljava/lang/String;

    .line 162
    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 163
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v1, "content":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "hit_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v2, "hit_url"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hit_first_send_time"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :try_start_0
    const-string v3, "gtm_hits"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 177
    iget-object v3, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-interface {v3, v2}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "Error storing hit"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 181
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 509
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v0}, Lcom/google/tagmanager/Dispatcher;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    nop

    .line 514
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "Error opening database for close"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method deleteHits([Ljava/lang/String;)V
    .locals 6
    .param p1, "hitIds"    # [Ljava/lang/String;

    .line 362
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 365
    :cond_0
    const-string v0, "Error opening database for deleteHits."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 366
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 367
    return-void

    .line 369
    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    array-length v3, p1

    const-string v4, "?"

    invoke-static {v3, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "HIT_ID in (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "whereClause":Ljava/lang/String;
    :try_start_0
    const-string v3, "gtm_hits"

    invoke-virtual {v0, v3, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-interface {v3, v1}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "Error deleting hits"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 377
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    return-void

    .line 363
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "whereClause":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method

.method deleteStaleHits()I
    .locals 10

    .line 339
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v0}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    .line 343
    return v3

    .line 345
    :cond_0
    iput-wide v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    .line 346
    const-string v2, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v2}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 347
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 348
    return v3

    .line 350
    :cond_1
    iget-object v4, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v4}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    .line 351
    .local v4, "lastGoodTime":J
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "gtm_hits"

    const-string v9, "HIT_TIME < ?"

    invoke-virtual {v2, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 352
    .local v7, "rslt":I
    iget-object v8, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v9

    if-nez v9, :cond_2

    move v3, v6

    :cond_2
    invoke-interface {v8, v3}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 353
    return v7
.end method

.method public dispatch()V
    .locals 3

    .line 452
    const-string v0, "GTM Dispatch running..."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v0}, Lcom/google/tagmanager/Dispatcher;->okToDispatch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    return-void

    .line 458
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    const-string v1, "...nothing to dispatch"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 462
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v1, v0}, Lcom/google/tagmanager/Dispatcher;->dispatchHits(Ljava/util/List;)V

    .line 468
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredUntriedHits()I

    move-result v1

    if-lez v1, :cond_2

    .line 469
    invoke-static {}, Lcom/google/tagmanager/ServiceManagerImpl;->getInstance()Lcom/google/tagmanager/ServiceManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V

    .line 471
    :cond_2
    return-void
.end method

.method public getDbHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method public getDispatcher()Lcom/google/tagmanager/Dispatcher;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    return-object v0
.end method

.method getHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .locals 5

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "numStoredHits":I
    const-string v1, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 405
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 406
    return v0

    .line 408
    :cond_0
    const/4 v2, 0x0

    .line 410
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT COUNT(*) from gtm_hits"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 411
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v3

    .line 417
    :cond_1
    nop

    .line 418
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 417
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 414
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "Error getting numStoredHits"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v2, :cond_2

    .line 418
    goto :goto_0

    .line 421
    :cond_2
    :goto_1
    return v0

    .line 417
    :goto_2
    if-eqz v2, :cond_3

    .line 418
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method getNumStoredUntriedHits()I
    .locals 11

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "numStoredHits":I
    const-string v1, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 427
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 428
    return v0

    .line 430
    :cond_0
    const/4 v10, 0x0

    .line 432
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "gtm_hits"

    const-string v2, "hit_id"

    const-string v4, "hit_first_send_time"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "hit_first_send_time=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v10, v2

    .line 439
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 443
    nop

    .line 444
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 443
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 440
    :catch_0
    move-exception v2

    .line 441
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "Error getting num untried hits"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_1

    .line 444
    goto :goto_0

    .line 447
    :cond_1
    :goto_1
    return v0

    .line 443
    :goto_2
    if-eqz v10, :cond_2

    .line 444
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method peekHitIds(I)Ljava/util/List;
    .locals 14
    .param p1, "maxHits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    const-string v0, "hit_id"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "hitIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-gtz p1, :cond_0

    .line 193
    const-string v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 194
    return-object v1

    .line 196
    :cond_0
    const-string v2, "Error opening database for peekHitIds."

    invoke-direct {p0, v2}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 197
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 198
    return-object v1

    .line 201
    :cond_1
    const/4 v12, 0x0

    .line 203
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "gtm_hits"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v10, v13

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v2

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 211
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    :cond_2
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 219
    :cond_3
    nop

    .line 220
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekHits fetching hitIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v12, :cond_4

    .line 220
    goto :goto_0

    .line 223
    :cond_4
    :goto_1
    return-object v1

    .line 219
    :goto_2
    if-eqz v12, :cond_5

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public peekHits(I)Ljava/util/List;
    .locals 17
    .param p1, "maxHits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/Hit;",
            ">;"
        }
    .end annotation

    .line 234
    const-string v0, "%s ASC"

    const-string v1, "hit_id"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    const-string v3, "Error opening database for peekHits"

    move-object/from16 v4, p0

    invoke-direct {v4, v3}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 236
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_0

    .line 237
    return-object v2

    .line 240
    :cond_0
    const/4 v14, 0x0

    .line 248
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v6, "gtm_hits"

    const-string v5, "hit_time"

    const-string v7, "hit_first_send_time"

    filled-new-array {v1, v5, v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v5, v13

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object v5, v3

    move v15, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v14, v5

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 258
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    :cond_1
    new-instance v5, Lcom/google/tagmanager/Hit;

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v6, 0x2

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/tagmanager/Hit;-><init>(JJJ)V

    .line 261
    .local v5, "hit":Lcom/google/tagmanager/Hit;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    nop

    .end local v5    # "hit":Lcom/google/tagmanager/Hit;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_1

    .line 268
    :cond_2
    nop

    .line 269
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 273
    const/16 v16, 0x0

    .line 275
    .local v16, "count":I
    :try_start_1
    const-string v6, "gtm_hits"

    const-string v5, "hit_url"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v1, v12, v15

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object v5, v3

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v14, v0

    .line 284
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_5

    move/from16 v1, v16

    .line 286
    .end local v16    # "count":I
    .local v1, "count":I
    :cond_3
    :try_start_2
    move-object v0, v14

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 290
    .local v0, "cw":Landroid/database/CursorWindow;
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v5

    if-lez v5, :cond_4

    .line 291
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/Hit;

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/tagmanager/Hit;->setHitUrl(Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_0

    .line 293
    :cond_4
    const-string v5, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/tagmanager/Hit;

    invoke-virtual {v8}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v15

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 296
    :goto_0
    nop

    .end local v0    # "cw":Landroid/database/CursorWindow;
    add-int/lit8 v1, v1, 0x1

    .line 297
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    move/from16 v16, v1

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v0

    move/from16 v16, v1

    goto :goto_5

    .line 300
    :catch_0
    move-exception v0

    move/from16 v16, v1

    goto :goto_2

    .line 299
    .end local v1    # "count":I
    .restart local v16    # "count":I
    :cond_5
    :goto_1
    nop

    .line 323
    nop

    .line 324
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 323
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in peekHits fetching hit url: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    const/4 v5, 0x0

    .line 311
    .local v5, "foundOneBadHit":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/Hit;

    .line 312
    .local v7, "hit":Lcom/google/tagmanager/Hit;
    invoke-virtual {v7}, Lcom/google/tagmanager/Hit;->getHitUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 313
    if-eqz v5, :cond_6

    .line 314
    goto :goto_4

    .line 316
    :cond_6
    const/4 v5, 0x1

    .line 319
    :cond_7
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 320
    nop

    .end local v7    # "hit":Lcom/google/tagmanager/Hit;
    goto :goto_3

    .line 321
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    nop

    .line 323
    if-eqz v14, :cond_9

    .line 324
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v1

    .line 323
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v1    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .end local v5    # "foundOneBadHit":Z
    :goto_5
    if-eqz v14, :cond_a

    .line 324
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 268
    .end local v16    # "count":I
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 264
    :catch_2
    move-exception v0

    .line 265
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in peekHits fetching hitIds: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 266
    nop

    .line 268
    if-eqz v14, :cond_b

    .line 269
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v2

    .line 268
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_6
    if-eqz v14, :cond_c

    .line 269
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method public putHit(JLjava/lang/String;)V
    .locals 0
    .param p1, "hitTimeInMilliseconds"    # J
    .param p3, "path"    # Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->deleteStaleHits()I

    .line 144
    invoke-direct {p0}, Lcom/google/tagmanager/PersistentHitStore;->removeOldHitIfFull()V

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tagmanager/PersistentHitStore;->writeHitToDatabase(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public setClock(Lcom/google/tagmanager/Clock;)V
    .locals 0
    .param p1, "clock"    # Lcom/google/tagmanager/Clock;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    .line 124
    return-void
.end method

.method setDispatcher(Lcom/google/tagmanager/Dispatcher;)V
    .locals 0
    .param p1, "dispatcher"    # Lcom/google/tagmanager/Dispatcher;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    .line 134
    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .locals 0
    .param p1, "timeInMilliseconds"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 331
    iput-wide p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    .line 332
    return-void
.end method
