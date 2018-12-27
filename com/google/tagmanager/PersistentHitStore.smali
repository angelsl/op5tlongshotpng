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
    .registers 4

    .line 55
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "gtm_hits"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "hit_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "hit_time"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "hit_url"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "hit_first_send_time"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/HitStoreStateListener;Landroid/content/Context;)V
    .registers 4
    .param p1, "listener"    # Lcom/google/tagmanager/HitStoreStateListener;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 91
    const-string v0, "gtm_urls.db"

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
    .registers 3
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;
    .param p1, "x1"    # J

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/PersistentHitStore;JJ)V
    .registers 5
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/tagmanager/PersistentHitStore;->setHitFirstDispatchTime(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/PersistentHitStore;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/tagmanager/PersistentHitStore;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/PersistentHitStore;

    .line 37
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private deleteHit(J)V
    .registers 6
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
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 529
    const/4 v0, 0x0

    move-object v1, v0

    .line 531
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_8} :catch_b

    move-object v0, v2

    .line 535
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 536
    return-object v0

    .line 532
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_b
    move-exception v2

    .line 533
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 534
    return-object v0
.end method

.method private removeOldHitIfFull()V
    .registers 5

    .line 153
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    add-int/lit8 v0, v0, 0x1

    .line 154
    .local v0, "hitsOverLimit":I
    if-lez v0, :cond_37

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
    :cond_37
    return-void
.end method

.method private setHitFirstDispatchTime(JJ)V
    .registers 12
    .param p1, "hitId"    # J
    .param p3, "firstDispatchTime"    # J

    .line 384
    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 385
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_9

    .line 386
    return-void

    .line 388
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "hit_first_send_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 391
    :try_start_17
    const-string v2, "gtm_hits"

    const-string v3, "hit_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_28} :catch_29

    .line 399
    goto :goto_41

    .line 393
    :catch_29
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
    :goto_41
    return-void
.end method

.method private writeHitToDatabase(JLjava/lang/String;)V
    .registers 9
    .param p1, "hitTimeInMilliseconds"    # J
    .param p3, "path"    # Ljava/lang/String;

    .line 162
    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 163
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_9

    .line 164
    return-void

    .line 167
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v1, "content":Landroid/content/ContentValues;
    const-string v2, "hit_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v2, "hit_url"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "hit_first_send_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :try_start_26
    const-string v2, "gtm_hits"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 177
    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-interface {v2, v3}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_31} :catch_32

    .line 180
    goto :goto_38

    .line 178
    :catch_32
    move-exception v2

    .line 179
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "Error storing hit"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 181
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_38
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 509
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v0}, Lcom/google/tagmanager/Dispatcher;->close()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 513
    nop

    .line 514
    return-void

    .line 510
    :catch_10
    move-exception v0

    .line 511
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "Error opening database for close"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method deleteHits([Ljava/lang/String;)V
    .registers 9
    .param p1, "hitIds"    # [Ljava/lang/String;

    .line 362
    if-eqz p1, :cond_42

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_42

    .line 365
    :cond_6
    const-string v0, "Error opening database for deleteHits."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 366
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_f

    .line 367
    return-void

    .line 369
    :cond_f
    const-string v1, "HIT_ID in (%s)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, ","

    array-length v5, p1

    const-string v6, "?"

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "whereClause":Ljava/lang/String;
    :try_start_28
    const-string v3, "gtm_hits"

    invoke-virtual {v0, v3, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v4

    if-nez v4, :cond_36

    goto :goto_37

    :cond_36
    move v2, v5

    :goto_37
    invoke-interface {v3, v2}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_3a} :catch_3b

    .line 376
    goto :goto_41

    .line 374
    :catch_3b
    move-exception v2

    .line 375
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "Error deleting hits"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 377
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_41
    return-void

    .line 363
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_42
    :goto_42
    return-void
.end method

.method deleteStaleHits()I
    .registers 12

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

    if-gtz v2, :cond_12

    .line 343
    return v3

    .line 345
    :cond_12
    iput-wide v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    .line 346
    const-string v2, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v2}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 347
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1d

    .line 348
    return v3

    .line 350
    :cond_1d
    iget-object v4, p0, Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v4}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    .line 351
    .local v4, "lastGoodTime":J
    const-string v6, "gtm_hits"

    const-string v7, "HIT_TIME < ?"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v2, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 352
    .local v6, "rslt":I
    iget-object v7, p0, Lcom/google/tagmanager/PersistentHitStore;->mListener:Lcom/google/tagmanager/HitStoreStateListener;

    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredHits()I

    move-result v9

    if-nez v9, :cond_44

    move v3, v8

    nop

    :cond_44
    invoke-interface {v7, v3}, Lcom/google/tagmanager/HitStoreStateListener;->reportStoreIsEmpty(Z)V

    .line 353
    return v6
.end method

.method public dispatch()V
    .registers 4

    .line 452
    const-string v0, "GTM Dispatch running..."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v0}, Lcom/google/tagmanager/Dispatcher;->okToDispatch()Z

    move-result v0

    if-nez v0, :cond_e

    .line 455
    return-void

    .line 458
    :cond_e
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/PersistentHitStore;->peekHits(I)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

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
    :cond_26
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    invoke-interface {v1, v0}, Lcom/google/tagmanager/Dispatcher;->dispatchHits(Ljava/util/List;)V

    .line 468
    invoke-virtual {p0}, Lcom/google/tagmanager/PersistentHitStore;->getNumStoredUntriedHits()I

    move-result v1

    if-lez v1, :cond_38

    .line 469
    invoke-static {}, Lcom/google/tagmanager/ServiceManagerImpl;->getInstance()Lcom/google/tagmanager/ServiceManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V

    .line 471
    :cond_38
    return-void
.end method

.method public getDbHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method public getDispatcher()Lcom/google/tagmanager/Dispatcher;
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    return-object v0
.end method

.method getHelper()Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore;->mDbHelper:Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;

    return-object v0
.end method

.method getNumStoredHits()I
    .registers 7

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "numStoredHits":I
    const-string v1, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 405
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_a

    .line 406
    return v0

    .line 408
    :cond_a
    const/4 v2, 0x0

    move-object v3, v2

    .line 410
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_c
    const-string v4, "SELECT COUNT(*) from gtm_hits"

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 411
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 412
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1e} :catch_27
    .catchall {:try_start_c .. :try_end_1e} :catchall_25

    long-to-int v0, v4

    .line 417
    :cond_1f
    if-eqz v3, :cond_30

    .line 418
    :goto_21
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 417
    :catchall_25
    move-exception v2

    goto :goto_31

    .line 414
    :catch_27
    move-exception v2

    .line 415
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_28
    const-string v4, "Error getting numStoredHits"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_25

    .line 417
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v3, :cond_30

    goto :goto_21

    .line 421
    :cond_30
    :goto_30
    return v0

    .line 417
    :goto_31
    if-eqz v3, :cond_36

    .line 418
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v2
.end method

.method getNumStoredUntriedHits()I
    .registers 12

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "numStoredHits":I
    const-string v1, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 427
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_a

    .line 428
    return v0

    .line 430
    :cond_a
    const/4 v2, 0x0

    move-object v10, v2

    .line 432
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_c
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
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_26} :catch_2f
    .catchall {:try_start_c .. :try_end_26} :catchall_2d

    move v0, v2

    .line 443
    if-eqz v10, :cond_38

    .line 444
    :goto_29
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 443
    :catchall_2d
    move-exception v2

    goto :goto_39

    .line 440
    :catch_2f
    move-exception v2

    .line 441
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_30
    const-string v3, "Error getting num untried hits"

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d

    .line 443
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_38

    goto :goto_29

    .line 447
    :cond_38
    :goto_38
    return v0

    .line 443
    :goto_39
    if-eqz v10, :cond_3e

    .line 444
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v2
.end method

.method peekHitIds(I)Ljava/util/List;
    .registers 15
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "hitIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-gtz p1, :cond_d

    .line 193
    const-string v1, "Invalid maxHits specified. Skipping"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 194
    return-object v0

    .line 196
    :cond_d
    const-string v1, "Error opening database for peekHitIds."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 197
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_16

    .line 198
    return-object v0

    .line 201
    :cond_16
    const/4 v2, 0x0

    move-object v11, v2

    .line 203
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_18
    const-string v3, "gtm_hits"

    const-string v2, "hit_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "hit_id"

    const/4 v12, 0x0

    aput-object v10, v9, v12

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, v1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v11, v2

    .line 211
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 213
    :cond_42
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_51} :catch_5b
    .catchall {:try_start_18 .. :try_end_51} :catchall_59

    if-nez v2, :cond_42

    .line 219
    :cond_53
    if-eqz v11, :cond_77

    .line 220
    :goto_55
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_77

    .line 219
    :catchall_59
    move-exception v2

    goto :goto_78

    .line 216
    :catch_5b
    move-exception v2

    .line 217
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekHits fetching hitIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_59

    .line 219
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v11, :cond_77

    goto :goto_55

    .line 223
    :cond_77
    :goto_77
    return-object v0

    .line 219
    :goto_78
    if-eqz v11, :cond_7d

    .line 220
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v2
.end method

.method public peekHits(I)Ljava/util/List;
    .registers 19
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 235
    .local v1, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    const-string v0, "Error opening database for peekHits"

    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Lcom/google/tagmanager/PersistentHitStore;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 236
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v12, :cond_11

    .line 237
    return-object v1

    .line 240
    :cond_11
    const/4 v0, 0x0

    move-object v13, v0

    .line 248
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_13
    const-string v4, "gtm_hits"

    const-string v0, "hit_id"

    const-string v3, "hit_time"

    const-string v5, "hit_first_send_time"

    filled-new-array {v0, v3, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v0, "%s ASC"

    const/4 v14, 0x1

    new-array v3, v14, [Ljava/lang/Object;

    const-string v10, "hit_id"

    const/4 v15, 0x0

    aput-object v10, v3, v15

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v12

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v13, v0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 258
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 260
    :cond_47
    new-instance v0, Lcom/google/tagmanager/Hit;

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/tagmanager/Hit;-><init>(JJJ)V

    .line 261
    .local v0, "hit":Lcom/google/tagmanager/Hit;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v0    # "hit":Lcom/google/tagmanager/Hit;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_61} :catch_138
    .catchall {:try_start_13 .. :try_end_61} :catchall_136

    if-nez v0, :cond_47

    .line 268
    :cond_63
    if-eqz v13, :cond_68

    .line 269
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_68
    move/from16 v16, v15

    .line 275
    .local v16, "count":I
    :try_start_6a
    const-string v4, "gtm_hits"

    const-string v0, "hit_id"

    const-string v3, "hit_url"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v0, "%s ASC"

    new-array v3, v14, [Ljava/lang/Object;

    const-string v10, "hit_id"

    aput-object v10, v3, v15

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v12

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v13, v0

    .line 284
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_92
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_92} :catch_e8
    .catchall {:try_start_6a .. :try_end_92} :catchall_e6

    if-eqz v0, :cond_df

    .line 286
    move/from16 v3, v16

    .end local v16    # "count":I
    .local v3, "count":I
    :cond_96
    :try_start_96
    move-object v0, v13

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 290
    .local v0, "cw":Landroid/database/CursorWindow;
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    if-lez v4, :cond_b1

    .line 291
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/Hit;

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/tagmanager/Hit;->setHitUrl(Ljava/lang/String;)V

    goto :goto_cc

    .line 293
    :cond_b1
    const-string v4, "HitString for hitId %d too large.  Hit will be deleted."

    new-array v5, v14, [Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/Hit;

    invoke-virtual {v6}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v15

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 296
    :goto_cc
    add-int/lit8 v3, v3, 0x1

    .line 297
    .end local v0    # "cw":Landroid/database/CursorWindow;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_96 .. :try_end_d2} :catch_db
    .catchall {:try_start_96 .. :try_end_d2} :catchall_d7

    if-nez v0, :cond_96

    .line 299
    move/from16 v16, v3

    goto :goto_df

    .line 323
    :catchall_d7
    move-exception v0

    move/from16 v16, v3

    goto :goto_130

    .line 300
    :catch_db
    move-exception v0

    move/from16 v16, v3

    goto :goto_e9

    .line 299
    .end local v3    # "count":I
    .restart local v16    # "count":I
    :cond_df
    :goto_df
    nop

    .line 323
    if-eqz v13, :cond_e5

    .line 324
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e5
    return-object v1

    .line 323
    :catchall_e6
    move-exception v0

    goto :goto_130

    .line 300
    :catch_e8
    move-exception v0

    .line 301
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_e9
    :try_start_e9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekHits fetching hit url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 309
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v3, "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    const/4 v4, 0x0

    .line 311
    .local v4, "foundOneBadHit":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_10b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_129

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/Hit;

    .line 312
    .local v6, "hit":Lcom/google/tagmanager/Hit;
    invoke-virtual {v6}, Lcom/google/tagmanager/Hit;->getHitUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_125

    .line 313
    if-eqz v4, :cond_124

    .line 314
    goto :goto_129

    .line 316
    :cond_124
    const/4 v4, 0x1

    .line 319
    :cond_125
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_128
    .catchall {:try_start_e9 .. :try_end_128} :catchall_e6

    .line 320
    .end local v6    # "hit":Lcom/google/tagmanager/Hit;
    goto :goto_10b

    .line 321
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_129
    :goto_129
    nop

    .line 323
    if-eqz v13, :cond_12f

    .line 324
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_12f
    return-object v3

    .line 323
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v3    # "partialHits":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/Hit;>;"
    .end local v4    # "foundOneBadHit":Z
    :goto_130
    if-eqz v13, :cond_135

    .line 324
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_135
    throw v0

    .line 268
    .end local v16    # "count":I
    :catchall_136
    move-exception v0

    goto :goto_158

    .line 264
    :catch_138
    move-exception v0

    .line 265
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_139
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
    :try_end_151
    .catchall {:try_start_139 .. :try_end_151} :catchall_136

    .line 266
    nop

    .line 268
    if-eqz v13, :cond_157

    .line 269
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_157
    return-object v1

    .line 268
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_158
    if-eqz v13, :cond_15d

    .line 269
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_15d
    throw v0
.end method

.method public putHit(JLjava/lang/String;)V
    .registers 4
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
    .registers 2
    .param p1, "clock"    # Lcom/google/tagmanager/Clock;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

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

    .line 133
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mDispatcher:Lcom/google/tagmanager/Dispatcher;

    .line 134
    return-void
.end method

.method setLastDeleteStaleHitsTime(J)V
    .registers 3
    .param p1, "timeInMilliseconds"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 331
    iput-wide p1, p0, Lcom/google/tagmanager/PersistentHitStore;->mLastDeleteStaleHitsTime:J

    .line 332
    return-void
.end method
