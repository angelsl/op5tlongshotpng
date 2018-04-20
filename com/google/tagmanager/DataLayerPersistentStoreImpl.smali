.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$PersistentStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;,
        Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
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
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "datalayer"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "ID"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "key"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "expires"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$1;

    invoke-direct {v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$1;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-string/jumbo v3, "google_tagmanager.db"

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;-><init>(Landroid/content/Context;Lcom/google/tagmanager/Clock;Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/Clock;Ljava/lang/String;ILjava/util/concurrent/Executor;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/tagmanager/Clock;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "maxNumStoredItems"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
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
    .registers 4
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->saveSingleThreaded(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->loadSingleThreaded()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->clearKeysWithPrefixSingleThreaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private clearKeysWithPrefixSingleThreaded(Ljava/lang/String;)V
    .registers 9
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v4, "Error opening database for clearKeysWithPrefix."

    invoke-direct {p0, v4}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 234
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_52

    .line 239
    const/4 v4, 0x2

    :try_start_a
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "datalayer"

    const-string/jumbo v6, "key = ? OR key LIKE ?"

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, "deleted":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cleared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_4e} :catch_53
    .catchall {:try_start_a .. :try_end_4e} :catchall_81

    .line 245
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    .line 247
    .end local v2    # "deleted":I
    :goto_51
    return-void

    .line 235
    :cond_52
    return-void

    .line 242
    :catch_53
    move-exception v3

    .line 243
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error deleting entries with key prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_54 .. :try_end_7d} :catchall_81

    .line 245
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    goto :goto_51

    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_81
    move-exception v0

    .local v0, "-l_4_R":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v0
.end method

.method private closeDatabaseConnection()V
    .registers 2

    .prologue
    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 378
    :goto_5
    return-void

    .line 375
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private deleteEntries([Ljava/lang/String;)V
    .registers 8
    .param p1, "entryIds"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 269
    if-nez p1, :cond_4

    .line 270
    :cond_3
    return-void

    .line 269
    :cond_4
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 272
    const-string/jumbo v3, "Error opening database for deleteEntries."

    invoke-direct {p0, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 273
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_38

    .line 276
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ID"

    aput-object v4, v3, v5

    array-length v4, p1

    const-string/jumbo v5, "?"

    invoke-static {v4, v5}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "%s in (%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "whereClause":Ljava/lang/String;
    :try_start_31
    const-string/jumbo v3, "datalayer"

    invoke-virtual {v0, v3, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_37} :catch_39

    .line 283
    :goto_37
    return-void

    .line 274
    .end local v2    # "whereClause":Ljava/lang/String;
    :cond_38
    return-void

    .line 280
    .restart local v2    # "whereClause":Ljava/lang/String;
    :catch_39
    move-exception v1

    .line 281
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error deleting entries "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_37
.end method

.method private deleteEntriesOlderThan(J)V
    .registers 10
    .param p1, "timeInMillis"    # J

    .prologue
    .line 250
    const-string/jumbo v3, "Error opening database for deleteOlderThan."

    invoke-direct {p0, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_3c

    .line 255
    const/4 v3, 0x1

    :try_start_a
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "datalayer"

    const-string/jumbo v5, "expires <= ?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, "deleted":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " expired items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_3b} :catch_3d

    .line 261
    .end local v1    # "deleted":I
    :goto_3b
    return-void

    .line 252
    :cond_3c
    return-void

    .line 258
    :catch_3d
    move-exception v2

    .line 259
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v3, "Error deleting old entries."

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private getNumStoredEntries()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 330
    const/4 v4, 0x0

    .line 331
    .local v4, "numStoredEntries":I
    const-string/jumbo v5, "Error opening database for getNumStoredEntries."

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 332
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_1d

    .line 335
    const/4 v1, 0x0

    .line 337
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_c
    const-string/jumbo v5, "SELECT COUNT(*) from datalayer"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 338
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 344
    :goto_1a
    if-nez v1, :cond_25

    .line 348
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1c
    :goto_1c
    return v4

    .line 333
    :cond_1d
    return v6

    .line 339
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

    .line 345
    :cond_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 341
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_29
    move-exception v3

    .line 342
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2a
    const-string/jumbo v5, "Error getting numStoredEntries"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_36

    .line 344
    if-eqz v1, :cond_1c

    .line 345
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    .line 344
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_36
    move-exception v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    if-nez v1, :cond_3a

    .line 345
    :goto_39
    throw v0

    :cond_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    iget-object v2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 366
    return-object v0

    .line 362
    :catch_8
    move-exception v1

    .line 363
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 364
    const/4 v2, 0x0

    return-object v2
.end method

.method private loadSerialized()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 190
    const-string/jumbo v1, "Error opening database for loadSerialized."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    if-eqz v0, :cond_36

    .line 195
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    aput-object v1, v2, v4

    const-string/jumbo v1, "value"

    aput-object v1, v2, v5

    .line 197
    .local v2, "columns":[Ljava/lang/String;
    const-string/jumbo v1, "datalayer"

    const-string/jumbo v7, "ID"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 199
    .local v11, "results":Landroid/database/Cursor;
    :goto_2c
    :try_start_2c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4a

    move-result v1

    if-nez v1, :cond_37

    .line 203
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 205
    return-object v10

    .line 193
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v11    # "results":Landroid/database/Cursor;
    :cond_36
    return-object v10

    .line 200
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v11    # "results":Landroid/database/Cursor;
    :cond_37
    :try_start_37
    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_4a

    goto :goto_2c

    .line 203
    :catchall_4a
    move-exception v9

    .local v9, "-l_5_R":Ljava/lang/Object;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v9
.end method

.method private loadSingleThreaded()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v2}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntriesOlderThan(J)V

    .line 106
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->loadSerialized()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->unserializeValues(Ljava/util/List;)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    move-result-object v0

    .line 108
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    return-object v0

    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :catchall_15
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v1
.end method

.method private makeRoomForEntries(I)V
    .registers 7
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 224
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getNumStoredEntries()I

    move-result v2

    iget v3, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mMaxNumStoredItems:I

    sub-int/2addr v2, v3

    add-int v0, v2, p1

    .line 225
    .local v0, "entrysOverLimit":I
    if-gtz v0, :cond_d

    .line 230
    :goto_c
    return-void

    .line 226
    :cond_d
    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->peekEntryIds(I)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "entrysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DataLayer store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " entries to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 228
    new-array v2, v4, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntries([Ljava/lang/String;)V

    goto :goto_c
.end method

.method private peekEntryIds(I)Ljava/util/List;
    .registers 15
    .param p1, "maxEntries"    # I
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
    .line 294
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v12, "entryIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez p1, :cond_42

    .line 299
    const-string/jumbo v1, "Error opening database for peekEntryIds."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 300
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_49

    .line 304
    const/4 v10, 0x0

    .line 306
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_12
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "ID"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "ID"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string/jumbo v3, "%s ASC"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "datalayer"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 314
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_3c} :catch_61
    .catchall {:try_start_12 .. :try_end_3c} :catchall_83

    move-result v1

    if-nez v1, :cond_4a

    .line 322
    :cond_3f
    if-nez v10, :cond_5d

    .line 326
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_41
    :goto_41
    return-object v12

    .line 296
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_42
    const-string/jumbo v1, "Invalid maxEntries specified. Skipping."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 297
    return-object v12

    .line 301
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_49
    return-object v12

    .line 316
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

    .line 317
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_59} :catch_61
    .catchall {:try_start_4b .. :try_end_59} :catchall_83

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_4a

    .line 323
    :cond_5d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 319
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_61
    move-exception v11

    .line 320
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in peekEntries fetching entryIds: "

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

    .line 322
    if-eqz v10, :cond_41

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 322
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_83
    move-exception v9

    .local v9, "-l_6_R":Ljava/lang/Object;
    if-nez v10, :cond_87

    .line 323
    :goto_86
    throw v9

    :cond_87
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_86
.end method

.method private declared-synchronized saveSingleThreaded(Ljava/util/List;J)V
    .registers 10
    .param p2, "lifetimeInMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v1}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, "now":J
    invoke-direct {p0, v2, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntriesOlderThan(J)V

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->makeRoomForEntries(I)V

    .line 183
    add-long v4, v2, p2

    invoke-direct {p0, p1, v4, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->writeEntriesToDatabase(Ljava/util/List;J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    .line 185
    :try_start_16
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    monitor-exit p0

    .line 187
    return-void

    .line 185
    .end local v2    # "now":J
    :catchall_1b
    move-exception v0

    .local v0, "-l_6_R":Ljava/lang/Object;
    :try_start_1c
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .end local v0    # "-l_6_R":Ljava/lang/Object;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private serialize(Ljava/lang/Object;)[B
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 157
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 160
    .local v5, "objectOutput":Ljava/io/ObjectOutputStream;
    :try_start_6
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1e
    .catchall {:try_start_6 .. :try_end_b} :catchall_2c

    .line 161
    .end local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    .local v6, "objectOutput":Ljava/io/ObjectOutputStream;
    :try_start_b
    invoke-virtual {v6, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_3c
    .catchall {:try_start_b .. :try_end_11} :catchall_39

    move-result-object v0

    .line 167
    .local v0, "-l_4_R":Ljava/lang/Object;
    if-nez v6, :cond_18

    .line 170
    :goto_14
    :try_start_14
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 173
    :goto_17
    return-object v0

    .line 168
    :cond_18
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_1c

    goto :goto_14

    .line 171
    :catch_1c
    move-exception v7

    goto :goto_17

    .line 163
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v6    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    :catch_1e
    move-exception v4

    .line 164
    .end local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_1f
    const/4 v1, 0x0

    .line 167
    .local v1, "-l_5_R":Ljava/lang/Object;
    if-nez v5, :cond_26

    .line 170
    :goto_22
    :try_start_22
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 173
    :goto_25
    return-object v1

    .line 168
    :cond_26
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_22

    .line 171
    :catch_2a
    move-exception v7

    goto :goto_25

    .line 166
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    :catchall_2c
    move-exception v2

    .line 167
    .end local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    .local v2, "-l_7_R":Ljava/lang/Object;
    :goto_2d
    if-nez v5, :cond_33

    .line 170
    :goto_2f
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_37

    .line 173
    :goto_32
    throw v2

    .line 168
    :cond_33
    :try_start_33
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_2f

    .line 171
    :catch_37
    move-exception v7

    goto :goto_32

    .line 166
    .end local v2    # "-l_7_R":Ljava/lang/Object;
    .restart local v6    # "objectOutput":Ljava/io/ObjectOutputStream;
    :catchall_39
    move-exception v2

    move-object v5, v6

    .end local v6    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    goto :goto_2d

    .line 163
    .end local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v6    # "objectOutput":Ljava/io/ObjectOutputStream;
    :catch_3c
    move-exception v4

    move-object v5, v6

    .end local v6    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutput":Ljava/io/ObjectOutputStream;
    goto :goto_1f
.end method

.method private serializeValues(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    .line 131
    return-object v2

    .line 128
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/DataLayer$KeyValue;

    .line 129
    .local v1, "keyAndValue":Lcom/google/tagmanager/DataLayer$KeyValue;
    new-instance v3, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    iget-object v4, v1, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private unserialize([B)Ljava/lang/Object;
    .registers 11
    .param p1, "bytes"    # [B

    .prologue
    .line 135
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    .local v3, "byteStream":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 138
    .local v6, "objectInput":Ljava/io/ObjectInputStream;
    :try_start_6
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_29
    .catchall {:try_start_6 .. :try_end_b} :catchall_37

    .line 139
    .end local v6    # "objectInput":Ljava/io/ObjectInputStream;
    .local v7, "objectInput":Ljava/io/ObjectInputStream;
    :try_start_b
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_e} :catch_47
    .catchall {:try_start_b .. :try_end_e} :catchall_44

    move-result-object v0

    .line 146
    .local v0, "-l_4_R":Ljava/lang/Object;
    if-nez v7, :cond_15

    .line 149
    :goto_11
    :try_start_11
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 152
    :goto_14
    return-object v0

    .line 147
    :cond_15
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_11

    .line 150
    :catch_19
    move-exception v8

    goto :goto_14

    .line 140
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v7    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v6    # "objectInput":Ljava/io/ObjectInputStream;
    :catch_1b
    move-exception v4

    .line 141
    .end local v6    # "objectInput":Ljava/io/ObjectInputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_1c
    const/4 v1, 0x0

    .line 146
    .local v1, "-l_5_R":Ljava/lang/Object;
    if-nez v6, :cond_23

    .line 149
    :goto_1f
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 152
    :goto_22
    return-object v1

    .line 147
    :cond_23
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_1f

    .line 150
    :catch_27
    move-exception v8

    goto :goto_22

    .line 142
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "objectInput":Ljava/io/ObjectInputStream;
    :catch_29
    move-exception v5

    .line 143
    .end local v6    # "objectInput":Ljava/io/ObjectInputStream;
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    :goto_2a
    const/4 v1, 0x0

    .line 146
    .restart local v1    # "-l_5_R":Ljava/lang/Object;
    if-nez v6, :cond_31

    .line 149
    :goto_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 152
    :goto_30
    return-object v1

    .line 147
    :cond_31
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_2d

    .line 150
    :catch_35
    move-exception v8

    goto :goto_30

    .line 145
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "objectInput":Ljava/io/ObjectInputStream;
    :catchall_37
    move-exception v2

    .line 146
    .end local v6    # "objectInput":Ljava/io/ObjectInputStream;
    .local v2, "-l_7_R":Ljava/lang/Object;
    :goto_38
    if-nez v6, :cond_3e

    .line 149
    :goto_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_42

    .line 152
    :goto_3d
    throw v2

    .line 147
    :cond_3e
    :try_start_3e
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_3a

    .line 150
    :catch_42
    move-exception v8

    goto :goto_3d

    .line 145
    .end local v2    # "-l_7_R":Ljava/lang/Object;
    .restart local v7    # "objectInput":Ljava/io/ObjectInputStream;
    :catchall_44
    move-exception v2

    move-object v6, v7

    .end local v7    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v6    # "objectInput":Ljava/io/ObjectInputStream;
    goto :goto_38

    .line 142
    .end local v6    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v7    # "objectInput":Ljava/io/ObjectInputStream;
    :catch_47
    move-exception v5

    move-object v6, v7

    .end local v7    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v6    # "objectInput":Ljava/io/ObjectInputStream;
    goto :goto_2a

    .line 140
    .end local v6    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v7    # "objectInput":Ljava/io/ObjectInputStream;
    :catch_4a
    move-exception v4

    move-object v6, v7

    .end local v7    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v6    # "objectInput":Ljava/io/ObjectInputStream;
    goto :goto_1c
.end method

.method private unserializeValues(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "serialized":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    .line 120
    return-object v2

    .line 117
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    .line 118
    .local v1, "keyAndSerialized":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    new-instance v3, Lcom/google/tagmanager/DataLayer$KeyValue;

    iget-object v4, v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->unserialize([B)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/tagmanager/DataLayer$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private writeEntriesToDatabase(Ljava/util/List;J)V
    .registers 12
    .param p2, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    const/4 v6, 0x0

    .line 209
    const-string/jumbo v4, "Error opening database for writeEntryToDatabase."

    invoke-direct {p0, v4}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_15

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_16

    .line 220
    return-void

    .line 211
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_15
    return-void

    .line 213
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_16
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

    const-string/jumbo v5, "expires"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    iget-object v4, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    const-string/jumbo v5, "key"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 218
    const-string/jumbo v4, "datalayer"

    invoke-virtual {v0, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_e
.end method


# virtual methods
.method public clearKeysWithPrefix(Ljava/lang/String;)V
    .registers 4
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public saveKeyValues(Ljava/util/List;J)V
    .registers 8
    .param p2, "lifetimeInMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;J)V"
        }
    .end annotation

    .prologue
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
