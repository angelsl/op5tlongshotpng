.class Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;
.super Ljava/lang/Object;
.source "ScreenResolutionDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/DefaultProvider;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static dropInstance()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 38
    sget-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getProvider()Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;
    .locals 2

    .line 31
    sget-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initializeProvider(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected getScreenResolutionString()Ljava/lang/String;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 68
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    return-object v0

    .line 59
    :cond_0
    const-string v1, "&sr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ScreenResolutionDefaultProvider;->getScreenResolutionString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    return-object v0
.end method

.method public providesField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 50
    const-string v0, "&sr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
