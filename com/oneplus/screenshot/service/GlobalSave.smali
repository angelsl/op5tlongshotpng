.class public Lcom/oneplus/screenshot/service/GlobalSave;
.super Ljava/lang/Object;
.source "GlobalSave.java"

# interfaces
.implements Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;


# static fields
.field private static final M_LOCK:Ljava/lang/Object;

.field private static final NOTIFICATION_ID_REPEAT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCachable:Lcom/oneplus/screenshot/util/Cachable;

.field private mContext:Landroid/content/Context;

.field private mNavibar:Landroid/graphics/Bitmap;

.field private mNotificationId:I

.field private mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/service/GlobalSave;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->M_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    .line 28
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 29
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    .line 40
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    .line 42
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/ScreenshotApplication;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 44
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v0}, Lcom/oneplus/screenshot/util/Cachable;->getNaviBar()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNavibar:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method

.method private nextNotificationId()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private onFinished()V
    .locals 3

    .line 85
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    .line 88
    sget-object v1, Lcom/oneplus/screenshot/service/GlobalSave;->M_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v2}, Lcom/oneplus/screenshot/util/Cachable;->clearCache()V

    .line 91
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Lcom/oneplus/screenshot/service/GlobalNotification;->recycle()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onSaveCancelled()V
    .locals 2

    .line 78
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    .line 80
    return-void
.end method

.method public onSaveFinished()V
    .locals 2

    .line 72
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    .line 74
    return-void
.end method

.method public start()V
    .locals 10

    .line 52
    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->nextNotificationId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 55
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    sget-object v2, Lcom/oneplus/screenshot/service/GlobalSave;->M_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v3}, Lcom/oneplus/screenshot/util/Cachable;->getCache()Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local v7, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    new-instance v0, Lcom/oneplus/screenshot/service/SaveTask;

    iget-object v6, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    iget-object v9, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNavibar:Landroid/graphics/Bitmap;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/screenshot/service/SaveTask;-><init>(Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;ILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    .line 64
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/service/SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void

    .line 60
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    .end local v7    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .restart local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :catchall_1
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
