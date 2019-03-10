.class Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PersistentHitStore.java"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/PersistentHitStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UrlDatabaseHelper"
.end annotation


# instance fields
.field private mBadDatabase:Z

.field private mLastDatabaseCheckTime:J

.field final synthetic this$0:Lcom/google/tagmanager/PersistentHitStore;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/PersistentHitStore;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "databaseName"    # Ljava/lang/String;

    .line 558
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    .line 560
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 548
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mLastDatabaseCheckTime:J

    .line 561
    return-void
.end method

.method private tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 575
    const/4 v0, 0x0

    .line 577
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_2
    const-string v3, "SQLITE_MASTER"

    const-string v2, "name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 584
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1e} :catch_26
    .catchall {:try_start_2 .. :try_end_1e} :catchall_24

    .line 589
    if-eqz v0, :cond_23

    .line 590
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_23
    return v2

    .line 589
    :catchall_24
    move-exception v1

    goto :goto_42

    .line 585
    :catch_26
    move-exception v2

    .line 586
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error querying for table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_24

    .line 587
    nop

    .line 589
    if-eqz v0, :cond_41

    .line 590
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_41
    return v1

    .line 589
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_42
    if-eqz v0, :cond_47

    .line 590
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v1
.end method

.method private validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 658
    const-string v0, "SELECT * FROM gtm_hits WHERE 0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 660
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 662
    .local v1, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "columnNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, v2

    if-ge v3, v4, :cond_1c

    .line 664
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_57

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 667
    .end local v2    # "columnNames":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 668
    nop

    .line 670
    const-string v2, "hit_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "hit_url"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "hit_time"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "hit_first_send_time"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 677
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 680
    return-void

    .line 678
    :cond_47
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Database has extra columns"

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    :cond_4f
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Database column missing"

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :catchall_57
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    .line 604
    iget-boolean v0, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    if-eqz v0, :cond_21

    .line 608
    iget-wide v0, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mLastDatabaseCheckTime:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    # getter for: Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;
    invoke-static {v2}, Lcom/google/tagmanager/PersistentHitStore;->access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    goto :goto_21

    .line 610
    :cond_19
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_21
    :goto_21
    const/4 v0, 0x0

    .line 614
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    .line 615
    iget-object v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    # getter for: Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;
    invoke-static {v1}, Lcom/google/tagmanager/PersistentHitStore;->access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mLastDatabaseCheckTime:J

    .line 617
    :try_start_31
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_35} :catch_37

    move-object v0, v1

    .line 621
    goto :goto_4b

    .line 618
    :catch_37
    move-exception v1

    .line 620
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    # getter for: Lcom/google/tagmanager/PersistentHitStore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/tagmanager/PersistentHitStore;->access$400(Lcom/google/tagmanager/PersistentHitStore;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    # getter for: Lcom/google/tagmanager/PersistentHitStore;->mDatabaseName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/tagmanager/PersistentHitStore;->access$300(Lcom/google/tagmanager/PersistentHitStore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 622
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_4b
    if-nez v0, :cond_51

    .line 623
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 625
    :cond_51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    .line 626
    return-object v0
.end method

.method isBadDatabase()Z
    .registers 2

    .line 551
    iget-boolean v0, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 684
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/FutureApis;->setOwnerOnlyReadWrite(Ljava/lang/String;)Z

    .line 685
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_19

    .line 634
    const-string v0, "PRAGMA journal_mode=memory"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 637
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 639
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 640
    goto :goto_19

    .line 639
    :catchall_14
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 642
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_19
    :goto_19
    const-string v0, "gtm_hits"

    invoke-direct {p0, v0, p1}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 643
    # getter for: Lcom/google/tagmanager/PersistentHitStore;->CREATE_HITS_TABLE:Ljava/lang/String;
    invoke-static {}, Lcom/google/tagmanager/PersistentHitStore;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2c

    .line 645
    :cond_29
    invoke-direct {p0, p1}, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 647
    :goto_2c
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 693
    return-void
.end method

.method setBadDatabase(Z)V
    .registers 2
    .param p1, "badDatabase"    # Z

    .line 555
    iput-boolean p1, p0, Lcom/google/tagmanager/PersistentHitStore$UrlDatabaseHelper;->mBadDatabase:Z

    .line 556
    return-void
.end method
