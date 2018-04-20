.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PersistentAnalyticsStore.java"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnalyticsDatabaseHelper"
.end annotation


# instance fields
.field private mBadDatabase:Z

.field private mLastDatabaseCheckTime:J

.field final synthetic this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    .line 594
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 582
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mLastDatabaseCheckTime:J

    .line 595
    return-void
.end method

.method private tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 16
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 609
    const/4 v11, 0x0

    .line 611
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string/jumbo v1, "SQLITE_MASTER"

    const-string/jumbo v3, "name=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 618
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_21} :catch_29
    .catchall {:try_start_2 .. :try_end_21} :catchall_4a

    move-result v8

    .line 623
    .local v8, "-l_4_I":I
    if-nez v11, :cond_25

    .line 624
    :goto_24
    return v8

    :cond_25
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 619
    .end local v8    # "-l_4_I":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catch_29
    move-exception v12

    .line 620
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error querying for table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_4a

    .line 621
    const/4 v9, 0x0

    .line 623
    .local v9, "-l_5_I":I
    if-nez v11, :cond_46

    .line 624
    :goto_44
    const/4 v0, 0x0

    return v0

    :cond_46
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_44

    .line 623
    .end local v9    # "-l_5_I":I
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_4a
    move-exception v10

    .local v10, "-l_6_R":Ljava/lang/Object;
    if-nez v11, :cond_4e

    .line 624
    :goto_4d
    throw v10

    :cond_4e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4d
.end method

.method private validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 692
    const-string/jumbo v6, "SELECT * FROM hits2 WHERE 0"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 694
    .local v1, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 696
    .local v3, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "columnNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    array-length v6, v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_33

    if-lt v4, v6, :cond_2b

    .line 701
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 704
    const-string/jumbo v6, "hit_id"

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 708
    :cond_22
    new-instance v6, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v7, "Database column missing"

    invoke-direct {v6, v7}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 698
    :cond_2b
    :try_start_2b
    aget-object v6, v2, v4

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_33

    .line 697
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 701
    .end local v2    # "columnNames":[Ljava/lang/String;
    .end local v4    # "i":I
    :catchall_33
    move-exception v0

    .local v0, "-l_6_R":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 704
    .end local v0    # "-l_6_R":Ljava/lang/Object;
    .restart local v2    # "columnNames":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_38
    const-string/jumbo v6, "hit_url"

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string/jumbo v6, "hit_string"

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string/jumbo v6, "hit_time"

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 711
    const-string/jumbo v6, "hit_app_id"

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 713
    .local v5, "needsAppId":Z
    :goto_5c
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 716
    if-nez v5, :cond_70

    .line 720
    :goto_64
    return-void

    .line 711
    .end local v5    # "needsAppId":Z
    :cond_65
    const/4 v5, 0x1

    goto :goto_5c

    .line 714
    .restart local v5    # "needsAppId":Z
    :cond_67
    new-instance v6, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v7, "Database has extra columns"

    invoke-direct {v6, v7}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 717
    :cond_70
    const-string/jumbo v6, "ALTER TABLE hits2 ADD COLUMN hit_app_id"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_64
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 638
    iget-boolean v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    if-nez v2, :cond_1e

    .line 647
    :cond_6
    const/4 v0, 0x0

    .line 648
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    .line 649
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    # getter for: Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mLastDatabaseCheckTime:J

    .line 651
    :try_start_15
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_18} :catch_40

    move-result-object v0

    .line 656
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_19
    if-eqz v0, :cond_55

    .line 659
    :goto_1b
    iput-boolean v4, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    .line 660
    return-object v0

    .line 642
    :cond_1e
    iget-wide v6, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mLastDatabaseCheckTime:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    # getter for: Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mClock:Lcom/google/analytics/tracking/android/Clock;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$000(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Lcom/google/analytics/tracking/android/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_3e

    move v2, v3

    :goto_33
    if-nez v2, :cond_6

    .line 644
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string/jumbo v3, "Database creation failed"

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    move v2, v4

    .line 642
    goto :goto_33

    .line 652
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_40
    move-exception v1

    .line 654
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    # getter for: Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$200(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    # getter for: Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->mDatabaseName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$100(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_19

    .line 657
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_55
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1b
.end method

.method isBadDatabase()Z
    .registers 2

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/FutureApis;->setOwnerOnlyReadWrite(Ljava/lang/String;)Z

    .line 725
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 667
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_13

    .line 676
    :goto_6
    const-string/jumbo v2, "hits2"

    invoke-direct {p0, v2, p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->tablePresent(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 679
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->validateColumnsPresent(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 681
    :goto_12
    return-void

    .line 668
    :cond_13
    const-string/jumbo v2, "PRAGMA journal_mode=memory"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 671
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    .line 673
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_22
    move-exception v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 677
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_27
    # getter for: Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->CREATE_HITS_TABLE:Ljava/lang/String;
    invoke-static {}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 733
    return-void
.end method

.method setBadDatabase(Z)V
    .registers 2
    .param p1, "badDatabase"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$AnalyticsDatabaseHelper;->mBadDatabase:Z

    .line 590
    return-void
.end method
