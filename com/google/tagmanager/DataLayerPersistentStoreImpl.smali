.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$PersistentStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;,
        Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_MAPS_TABLE:Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "google_tagmanager.db"

.field private static final EXPIRE_FIELD:Ljava/lang/String; = "expires"

.field private static final ID_FIELD:Ljava/lang/String; = "ID"

.field private static final KEY_FIELD:Ljava/lang/String; = "key"

.field private static final MAPS_TABLE:Ljava/lang/String; = "datalayer"

.field private static final MAX_NUM_STORED_ITEMS:I = 0x7d0

.field private static final VALUE_FIELD:Ljava/lang/String; = "value"


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private final mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mMaxNumStoredItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "datalayer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "expires"

    aput-object v2, v0, v1

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    new-instance v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$1;

    invoke-direct {v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$1;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-string v3, "google_tagmanager.db"

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;-><init>(Landroid/content/Context;Lcom/google/tagmanager/Clock;Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/Clock;Ljava/lang/String;ILjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/tagmanager/Clock;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "maxNumStoredItems"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    .line 70
    iput p4, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mMaxNumStoredItems:I

    .line 71
    iput-object p5, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/util/List;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->saveSingleThreaded(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .line 32
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->loadSingleThreaded()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->clearKeysWithPrefixSingleThreaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .line 32
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private clearKeysWithPrefixSingleThreaded(Ljava/lang/String;)V
    .locals 7
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .line 233
    const-string v0, "Error opening database for clearKeysWithPrefix."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 234
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 235
    return-void

    .line 239
    :cond_0
    :try_start_0
    const-string v1, "datalayer"

    const-string v2, "key = ? OR key LIKE ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "deleted":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "deleted":I
    goto :goto_0

    .line 245
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error deleting entries with key prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    .line 246
    nop

    .line 247
    return-void

    .line 245
    :goto_1
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v1
.end method

.method private closeDatabaseConnection()V
    .locals 1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 378
    :goto_0
    return-void
.end method

.method private deleteEntries([Ljava/lang/String;)V
    .locals 5
    .param p1, "entryIds"    # [Ljava/lang/String;

    .line 269
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    const-string v0, "Error opening database for deleteEntries."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 273
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 274
    return-void

    .line 276
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ID"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, p1

    const-string v4, "?"

    invoke-static {v3, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s in (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "whereClause":Ljava/lang/String;
    :try_start_0
    const-string v2, "datalayer"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting entries "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 283
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void

    .line 270
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method private deleteEntriesOlderThan(J)V
    .locals 6
    .param p1, "timeInMillis"    # J

    .line 250
    const-string v0, "Error opening database for deleteOlderThan."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    :try_start_0
    const-string v1, "datalayer"

    const-string v2, "expires <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, "deleted":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expired items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "deleted":I
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "Error deleting old entries."

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 261
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method private getNumStoredEntries()I
    .locals 5

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "numStoredEntries":I
    const-string v1, "Error opening database for getNumStoredEntries."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 332
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 333
    return v0

    .line 335
    :cond_0
    const/4 v2, 0x0

    .line 337
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SELECT COUNT(*) from datalayer"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 338
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v3

    .line 344
    :cond_1
    nop

    .line 345
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 344
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 341
    :catch_0
    move-exception v3

    .line 342
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "Error getting numStoredEntries"

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v2, :cond_2

    .line 345
    goto :goto_0

    .line 348
    :cond_2
    :goto_1
    return v0

    .line 344
    :goto_2
    if-eqz v2, :cond_3

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 365
    nop

    .line 366
    return-object v0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 364
    const/4 v2, 0x0

    return-object v2
.end method

.method private loadSerialized()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;"
        }
    .end annotation

    .line 190
    const-string v0, "Error opening database for loadSerialized."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 192
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    if-nez v0, :cond_0

    .line 193
    return-object v10

    .line 195
    :cond_0
    const-string v1, "key"

    const-string v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "columns":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v2, "datalayer"

    const-string v8, "ID"

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 199
    .local v1, "results":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    new-instance v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 204
    nop

    .line 205
    return-object v10

    .line 203
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private loadSingleThreaded()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v0}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntriesOlderThan(J)V

    .line 106
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->loadSerialized()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->unserializeValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v0
.end method

.method private makeRoomForEntries(I)V
    .locals 4
    .param p1, "count"    # I

    .line 224
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getNumStoredEntries()I

    move-result v0

    iget v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mMaxNumStoredItems:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 225
    .local v0, "entrysOverLimit":I
    if-lez v0, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->peekEntryIds(I)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "entrysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataLayer store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 228
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntries([Ljava/lang/String;)V

    .line 230
    .end local v1    # "entrysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private peekEntryIds(I)Ljava/util/List;
    .locals 14
    .param p1, "maxEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    const-string v0, "ID"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "entryIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-gtz p1, :cond_0

    .line 296
    const-string v0, "Invalid maxEntries specified. Skipping."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 297
    return-object v1

    .line 299
    :cond_0
    const-string v2, "Error opening database for peekEntryIds."

    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 300
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 301
    return-object v1

    .line 304
    :cond_1
    const/4 v12, 0x0

    .line 306
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "datalayer"

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

    .line 314
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    :cond_2
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 322
    :cond_3
    nop

    .line 323
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekEntries fetching entryIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v12, :cond_4

    .line 323
    goto :goto_0

    .line 326
    :cond_4
    :goto_1
    return-object v1

    .line 322
    :goto_2
    if-eqz v12, :cond_5

    .line 323
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private declared-synchronized saveSingleThreaded(Ljava/util/List;J)V
    .locals 4
    .param p2, "lifetimeInMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;J)V"
        }
    .end annotation

    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v0}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntriesOlderThan(J)V

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->makeRoomForEntries(I)V

    .line 183
    add-long v2, v0, p2

    invoke-direct {p0, p1, v2, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->writeEntriesToDatabase(Ljava/util/List;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0    # "now":J
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    nop

    .line 187
    monitor-exit p0

    return-void

    .line 185
    .end local p0    # "this":Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    .end local p1    # "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    .end local p2    # "lifetimeInMillis":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private serialize(Ljava/lang/Object;)[B
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 160
    .local v1, "objectOutput":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 161
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    nop

    .line 168
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v3

    .line 173
    :goto_0
    return-object v2

    .line 166
    :catchall_0
    move-exception v2

    .line 167
    if-eqz v1, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    goto :goto_1

    .line 171
    :catch_1
    move-exception v3

    .line 173
    :goto_1
    throw v2

    .line 163
    :catch_2
    move-exception v2

    .line 164
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 167
    if-eqz v1, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 173
    goto :goto_2

    .line 171
    :catch_3
    move-exception v4

    .line 173
    :goto_2
    return-object v3
.end method

.method private serializeValues(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;"
        }
    .end annotation

    .line 127
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/DataLayer$KeyValue;

    .line 129
    .local v2, "keyAndValue":Lcom/google/tagmanager/DataLayer$KeyValue;
    new-instance v3, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    iget-object v4, v2, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "keyAndValue":Lcom/google/tagmanager/DataLayer$KeyValue;
    goto :goto_0

    .line 131
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private unserialize([B)Ljava/lang/Object;
    .locals 5
    .param p1, "bytes"    # [B

    .line 135
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    .local v0, "byteStream":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    .line 138
    .local v1, "objectInput":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 139
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    nop

    .line 147
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v3

    .line 152
    :goto_0
    return-object v2

    .line 145
    :catchall_0
    move-exception v2

    .line 146
    if-eqz v1, :cond_0

    .line 147
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    goto :goto_1

    .line 150
    :catch_1
    move-exception v3

    .line 152
    :goto_1
    throw v2

    .line 142
    :catch_2
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 146
    if-eqz v1, :cond_1

    .line 147
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 152
    goto :goto_2

    .line 150
    :catch_3
    move-exception v4

    .line 152
    :goto_2
    return-object v2

    .line 140
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v3

    .line 141
    .local v3, "e":Ljava/io/IOException;
    nop

    .line 146
    if-eqz v1, :cond_2

    .line 147
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 152
    goto :goto_3

    .line 150
    :catch_5
    move-exception v4

    .line 152
    :goto_3
    return-object v2
.end method

.method private unserializeValues(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .line 116
    .local p1, "serialized":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    .line 118
    .local v2, "keyAndSerialized":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    new-instance v3, Lcom/google/tagmanager/DataLayer$KeyValue;

    iget-object v4, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->unserialize([B)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/tagmanager/DataLayer$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v2    # "keyAndSerialized":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    goto :goto_0

    .line 120
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private writeEntriesToDatabase(Ljava/util/List;J)V
    .locals 6
    .param p2, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;J)V"
        }
    .end annotation

    .line 209
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    const-string v0, "Error opening database for writeEntryToDatabase."

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    .line 214
    .local v2, "keyAndValue":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "expires"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    iget-object v4, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    const-string v5, "key"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    const-string v5, "value"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 218
    const/4 v4, 0x0

    const-string v5, "datalayer"

    invoke-virtual {v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 219
    .end local v2    # "keyAndValue":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    .end local v3    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 220
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public clearKeysWithPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;

    .line 87
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public saveKeyValues(Ljava/util/List;J)V
    .locals 3
    .param p2, "lifetimeInMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;J)V"
        }
    .end annotation

    .line 77
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->serializeValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "serializedKeysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/util/List;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
