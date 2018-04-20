.class Lcom/google/tagmanager/PersistentHitStore;
.super Ljava/lang/Object;
.source "PersistentHitStore.java"

# interfaces
.implements Lcom/google/tagmanager/HitStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;,
        Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
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
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "gtm_hits"

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

    const-string/jumbo v1, "hit_first_send_time"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/tagmanager/HitStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string/jumbo v0, "gtm_urls.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/tagmanager/PersistentHitStore;-><init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p1, "listener"    # Lcom/google/tagmanager/HitStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "databaseName"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
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
    .registers 4
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/PersistentHitStore;JJ)V
    .registers 6
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tagmanager/PersistentHitStore;->setHitFirstDispatchTime(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/PersistentHitStore;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/PersistentHitStore;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private deleteHit(J)V
    .registers 6
    .param p1, "hitId"    # J

    .prologue
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
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 536
    return-object v0

    .line 532
    :catch_8
    move-exception v1

    .line 533
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 534
    const/4 v2, 0x0

    return-object v2
.end method

.method private removeOldHitIfFull()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    add-int/lit8 v0, v2, 0x1

    .line 154
    .local v0, "hitsOverLimit":I
    if-gtz v0, :cond_c

    .line 159
    :goto_b
    return-void

    .line 155
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->peekHitIds(I)Ljava/util/List;

    move-result-object v1

    .line 156
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

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 157
    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHits([Ljava/lang/String;)V

    goto :goto_b
.end method

.method private setHitFirstDispatchTime(JJ)V
    .registers 12
    .param p1, "hitId"    # J
    .param p3, "firstDispatchTime"    # J

    .prologue
    .line 384
    const-string/jumbo v3, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v3}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 385
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_2c

    .line 388
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "hit_first_send_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 391
    const/4 v3, 0x1

    :try_start_19
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "gtm_hits"

    const-string/jumbo v5, "hit_id=?"

    invoke-virtual {v1, v4, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_2b} :catch_2d

    .line 400
    :goto_2b
    return-void

    .line 386
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2c
    return-void

    .line 393
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :catch_2d
    move-exception v2

    .line 394
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V

    goto :goto_2b
.end method

.method private writeHitToDatabase(JLjava/lang/String;)V
    .registers 11
    .param p1, "hitTimeInMilliseconds"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 162
    const-string/jumbo v3, "Error opening database for putHit"

    invoke-direct {p0, v3}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 163
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_37

    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v0, "content":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "hit_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string/jumbo v3, "hit_url"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "hit_first_send_time"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :try_start_29
    const-string/jumbo v3, "gtm_hits"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 177
    iget-object v3, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_36} :catch_38

    .line 181
    :goto_36
    return-void

    .line 164
    .end local v0    # "content":Landroid/content/ContentValues;
    :cond_37
    return-void

    .line 178
    .restart local v0    # "content":Landroid/content/ContentValues;
    :catch_38
    move-exception v2

    .line 179
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v3, "Error storing hit"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_36
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 509
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v1}, Lcom/google/tagmanager/Dispatcher;->close()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 514
    return-void

    .line 510
    :catch_f
    move-exception v0

    .line 511
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "Error opening database for close"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method deleteHits([Ljava/lang/String;)V
    .registers 10
    .param p1, "hitIds"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    if-nez p1, :cond_5

    .line 363
    :cond_4
    return-void

    .line 362
    :cond_5
    array-length v5, p1

    if-eqz v5, :cond_4

    .line 365
    const-string/jumbo v5, "Error opening database for deleteHits."

    invoke-direct {p0, v5}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 366
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_3d

    .line 369
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

    .line 372
    .local v2, "whereClause":Ljava/lang/String;
    :try_start_2b
    const-string/jumbo v5, "gtm_hits"

    invoke-virtual {v0, v5, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    iget-object v5, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v6

    if-eqz v6, :cond_3e

    :goto_39
    invoke-interface {v5, v3}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_3c} :catch_40

    .line 377
    :goto_3c
    return-void

    .line 367
    .end local v2    # "whereClause":Ljava/lang/String;
    :cond_3d
    return-void

    .restart local v2    # "whereClause":Ljava/lang/String;
    :cond_3e
    move v3, v4

    .line 373
    goto :goto_39

    .line 374
    :catch_40
    move-exception v1

    .line 375
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v3, "Error deleting hits"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method deleteStaleHits()I
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    iget-object v8, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v8}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 342
    .local v4, "now":J
    iget-wide v8, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-lez v8, :cond_16

    move v8, v7

    :goto_13
    if-nez v8, :cond_18

    .line 343
    return v6

    :cond_16
    move v8, v6

    .line 342
    goto :goto_13

    .line 345
    :cond_18
    iput-wide v4, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    .line 346
    const-string/jumbo v8, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v8}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 347
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_4e

    .line 350
    iget-object v8, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v8}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    sub-long v2, v8, v10

    .line 351
    .local v2, "lastGoodTime":J
    new-array v8, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string/jumbo v9, "gtm_hits"

    const-string/jumbo v10, "HIT_TIME < ?"

    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 352
    .local v1, "rslt":I
    iget-object v8, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v9

    if-eqz v9, :cond_4f

    :goto_4a
    invoke-interface {v8, v6}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 353
    return v1

    .line 348
    .end local v1    # "rslt":I
    .end local v2    # "lastGoodTime":J
    :cond_4e
    return v6

    .restart local v1    # "rslt":I
    .restart local v2    # "lastGoodTime":J
    :cond_4f
    move v6, v7

    .line 352
    goto :goto_4a
.end method

.method public dispatch()V
    .registers 4

    .prologue
    .line 452
    const-string/jumbo v1, "GTM Dispatch running..."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v1}, Lcom/google/tagmanager/Dispatcher;->okToDispatch()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 458
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 464
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v1, v0}, Lcom/google/tagmanager/Dispatcher;->dispatchHits(Ljava/util/List;)V

    .line 468
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredUntriedHits()I

    move-result v1

    if-gtz v1, :cond_34

    .line 471
    :goto_25
    return-void

    .line 455
    .end local v0    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :cond_26
    return-void

    .line 460
    .restart local v0    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :cond_27
    const-string/jumbo v1, "...nothing to dispatch"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 462
    return-void

    .line 469
    :cond_34
    invoke-static {}, Lcom/google/tagmanager/ServiceManagerImpl;->getInstance()Lcom/google/tagmanager/ServiceManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V

    goto :goto_25
.end method

.method public getDbHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method public getDispatcher()Lcom/google/tagmanager/Dispatcher;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    return-object v0
.end method

.method getHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 403
    const/4 v4, 0x0

    .line 404
    .local v4, "numStoredHits":I
    const-string/jumbo v5, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v5}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 405
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_1d

    .line 408
    const/4 v1, 0x0

    .line 410
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_c
    const-string/jumbo v5, "SELECT COUNT(*) from gtm_hits"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 417
    :goto_1a
    if-nez v1, :cond_25

    .line 421
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1c
    :goto_1c
    return v4

    .line 406
    :cond_1d
    return v6

    .line 412
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

    .line 418
    :cond_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 414
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_29
    move-exception v3

    .line 415
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2a
    const-string/jumbo v5, "Error getting numStoredHits"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_36

    .line 417
    if-eqz v1, :cond_1c

    .line 418
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 417
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_36
    move-exception v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    if-nez v1, :cond_3a

    .line 418
    :goto_39
    throw v0

    :cond_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39
.end method

.method getNumStoredUntriedHits()I
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 425
    const/4 v11, 0x0

    .line 426
    .local v11, "numStoredHits":I
    const-string/jumbo v1, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 427
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_30

    .line 430
    const/4 v9, 0x0

    .line 432
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_d
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "hit_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "hit_first_send_time"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string/jumbo v1, "gtm_hits"

    const-string/jumbo v3, "hit_first_send_time=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 439
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_2c} :catch_35
    .catchall {:try_start_d .. :try_end_2c} :catchall_42

    move-result v11

    .line 443
    if-nez v9, :cond_31

    .line 447
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2f
    :goto_2f
    return v11

    .line 428
    :cond_30
    return v2

    .line 444
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_31
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    .line 440
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_35
    move-exception v10

    .line 441
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_36
    const-string/jumbo v1, "Error getting num untried hits"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_42

    .line 443
    if-eqz v9, :cond_2f

    .line 444
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    .line 443
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_42
    move-exception v8

    .local v8, "-l_5_R":Ljava/lang/Object;
    if-nez v9, :cond_46

    .line 444
    :goto_45
    throw v8

    :cond_46
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_45
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
    .line 191
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v12, "hitIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez p1, :cond_42

    .line 196
    const-string/jumbo v1, "Error opening database for peekHitIds."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 197
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_49

    .line 201
    const/4 v10, 0x0

    .line 203
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

    const-string/jumbo v1, "gtm_hits"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 211
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_3c} :catch_61
    .catchall {:try_start_12 .. :try_end_3c} :catchall_83

    move-result v1

    if-nez v1, :cond_4a

    .line 219
    :cond_3f
    if-nez v10, :cond_5d

    .line 223
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_41
    :goto_41
    return-object v12

    .line 193
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_42
    const-string/jumbo v1, "Invalid maxHits specified. Skipping"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 194
    return-object v12

    .line 198
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_49
    return-object v12

    .line 213
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

    .line 214
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_59} :catch_61
    .catchall {:try_start_4b .. :try_end_59} :catchall_83

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_4a

    .line 220
    :cond_5d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 216
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_61
    move-exception v11

    .line 217
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

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_83

    .line 219
    if-eqz v10, :cond_41

    .line 220
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 219
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_83
    move-exception v9

    .local v9, "-l_6_R":Ljava/lang/Object;
    if-nez v10, :cond_87

    .line 220
    :goto_86
    throw v9

    :cond_87
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_86
.end method

.method public peekHits(I)Ljava/util/List;
    .registers 28
    .param p1, "maxHits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/Hit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v22, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    const-string/jumbo v4, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 236
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_8f

    .line 240
    const/16 v18, 0x0

    .line 248
    .local v18, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x3

    :try_start_13
    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "hit_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "hit_time"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "hit_first_send_time"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "hit_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "%s ASC"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "gtm_hits"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 257
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_4b} :catch_ba
    .catchall {:try_start_13 .. :try_end_4b} :catchall_df

    .line 258
    .end local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .local v23, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :try_start_4b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_4e} :catch_19d
    .catchall {:try_start_4b .. :try_end_4e} :catchall_193

    move-result v4

    if-nez v4, :cond_90

    .line 268
    :cond_51
    if-nez v18, :cond_b6

    .line 273
    :goto_53
    const/16 v17, 0x0

    .line 275
    .local v17, "count":I
    const/4 v4, 0x2

    :try_start_56
    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v4, "hit_id"

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const-string/jumbo v4, "hit_url"

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "hit_id"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "%s ASC"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v5, "gtm_hits"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 284
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_87} :catch_135
    .catchall {:try_start_56 .. :try_end_87} :catchall_182

    move-result v4

    if-nez v4, :cond_103

    .line 299
    :cond_8a
    move-object/from16 v14, v23

    .line 323
    .local v14, "-l_6_R":Ljava/lang/Object;
    if-nez v18, :cond_167

    .line 324
    :goto_8e
    return-object v23

    .line 237
    .end local v14    # "-l_6_R":Ljava/lang/Object;
    .end local v17    # "count":I
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :cond_8f
    return-object v22

    .line 260
    .end local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :cond_90
    :goto_90
    :try_start_90
    new-instance v3, Lcom/google/tagmanager/Hit;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/google/tagmanager/Hit;-><init>(JJJ)V
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_aa} :catch_19d
    .catchall {:try_start_90 .. :try_end_aa} :catchall_193

    .line 261
    .local v3, "hit":Lcom/google/tagmanager/Hit;
    :try_start_aa
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_aa .. :try_end_b2} :catch_1a2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_198

    move-result v4

    if-eqz v4, :cond_51

    goto :goto_90

    .line 269
    .end local v3    # "hit":Lcom/google/tagmanager/Hit;
    :cond_b6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_53

    .line 264
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :catch_ba
    move-exception v20

    .line 265
    .local v20, "e":Landroid/database/sqlite/SQLiteException;
    :goto_bb
    :try_start_bb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in peekHits fetching hitIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_bb .. :try_end_d6} :catchall_df

    .line 266
    move-object/from16 v14, v22

    .line 268
    .restart local v14    # "-l_6_R":Ljava/lang/Object;
    if-nez v18, :cond_db

    .line 269
    :goto_da
    return-object v14

    :cond_db
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_da

    .line 268
    .end local v14    # "-l_6_R":Ljava/lang/Object;
    .end local v20    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_df
    move-exception v15

    .local v15, "-l_7_R":Ljava/lang/Object;
    :goto_e0
    if-nez v18, :cond_e3

    .line 269
    :goto_e2
    throw v15

    :cond_e3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_e2

    .line 291
    .end local v15    # "-l_7_R":Ljava/lang/Object;
    .end local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v17    # "count":I
    .restart local v18    # "cursor":Landroid/database/Cursor;
    .local v19, "cw":Landroid/database/CursorWindow;
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :cond_e7
    :try_start_e7
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/Hit;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/tagmanager/Hit;->setHitUrl(Ljava/lang/String;)V

    .line 296
    :goto_fb
    add-int/lit8 v17, v17, 0x1

    .line 297
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 286
    .end local v19    # "cw":Landroid/database/CursorWindow;
    :cond_103
    move-object/from16 v0, v18

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v19

    .line 290
    .restart local v19    # "cw":Landroid/database/CursorWindow;
    invoke-virtual/range {v19 .. v19}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    if-gtz v4, :cond_e7

    .line 293
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/Hit;

    invoke-virtual {v4}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-string/jumbo v4, "HitString for hitId %d too large.  Hit will be deleted."

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_134
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e7 .. :try_end_134} :catch_135
    .catchall {:try_start_e7 .. :try_end_134} :catchall_182

    goto :goto_fb

    .line 300
    .end local v19    # "cw":Landroid/database/CursorWindow;
    :catch_135
    move-exception v20

    .line 301
    .restart local v20    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in peekHits fetching hit url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 309
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v25, "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    const/16 v21, 0x0

    .line 311
    .local v21, "foundOneBadHit":Z
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_15c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15f
    .catchall {:try_start_136 .. :try_end_15f} :catchall_182

    move-result v4

    if-nez v4, :cond_16c

    .line 321
    :cond_162
    move-object/from16 v16, v25

    .line 323
    .local v16, "-l_9_R":Ljava/lang/Object;
    if-nez v18, :cond_18b

    .line 324
    :goto_166
    return-object v25

    .end local v16    # "-l_9_R":Ljava/lang/Object;
    .end local v20    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v21    # "foundOneBadHit":Z
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v14    # "-l_6_R":Ljava/lang/Object;
    :cond_167
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8e

    .line 311
    .end local v14    # "-l_6_R":Ljava/lang/Object;
    .restart local v20    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v21    # "foundOneBadHit":Z
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v25    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :cond_16c
    :try_start_16c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/Hit;

    .line 312
    .restart local v3    # "hit":Lcom/google/tagmanager/Hit;
    invoke-virtual {v3}, Lcom/google/tagmanager/Hit;->getHitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_186

    .line 319
    :goto_17c
    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_181
    .catchall {:try_start_16c .. :try_end_181} :catchall_182

    goto :goto_15c

    .line 323
    .end local v3    # "hit":Lcom/google/tagmanager/Hit;
    .end local v20    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v21    # "foundOneBadHit":Z
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :catchall_182
    move-exception v13

    .local v13, "-l_11_R":Ljava/lang/Object;
    if-nez v18, :cond_18f

    .line 324
    :goto_185
    throw v13

    .line 313
    .end local v13    # "-l_11_R":Ljava/lang/Object;
    .restart local v3    # "hit":Lcom/google/tagmanager/Hit;
    .restart local v20    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v21    # "foundOneBadHit":Z
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v25    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :cond_186
    if-nez v21, :cond_162

    .line 316
    const/16 v21, 0x1

    goto :goto_17c

    .line 324
    .end local v3    # "hit":Lcom/google/tagmanager/Hit;
    .restart local v16    # "-l_9_R":Ljava/lang/Object;
    :cond_18b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_166

    .end local v16    # "-l_9_R":Ljava/lang/Object;
    .end local v20    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v21    # "foundOneBadHit":Z
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v13    # "-l_11_R":Ljava/lang/Object;
    :cond_18f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_185

    .line 268
    .end local v13    # "-l_11_R":Ljava/lang/Object;
    .end local v17    # "count":I
    :catchall_193
    move-exception v15

    move-object/from16 v22, v23

    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    goto/16 :goto_e0

    .end local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v3    # "hit":Lcom/google/tagmanager/Hit;
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :catchall_198
    move-exception v15

    move-object/from16 v22, v23

    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    goto/16 :goto_e0

    .line 264
    .end local v3    # "hit":Lcom/google/tagmanager/Hit;
    .end local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :catch_19d
    move-exception v20

    move-object/from16 v22, v23

    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    goto/16 :goto_bb

    .end local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v3    # "hit":Lcom/google/tagmanager/Hit;
    .restart local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    :catch_1a2
    move-exception v20

    move-object/from16 v22, v23

    .end local v23    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .restart local v22    # "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    goto/16 :goto_bb
.end method

.method public putHit(JLjava/lang/String;)V
    .registers 5
    .param p1, "hitTimeInMilliseconds"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
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
    .registers 2
    .param p1, "clock"    # Lcom/google/tagmanager/Clock;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    .line 124
    return-void
.end method

.method setDispatcher(Lcom/google/tagmanager/Dispatcher;)V
    .registers 2
    .param p1, "dispatcher"    # Lcom/google/tagmanager/Dispatcher;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    .line 134
    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .registers 4
    .param p1, "timeInMilliseconds"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 331
    iput-wide p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    .line 332
    return-void
.end method
