.class Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;
.super Ljava/lang/Object;
.source "AppFieldsDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/DefaultProvider;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field protected mAppId:Ljava/lang/String;

.field protected mAppInstallerId:Ljava/lang/String;

.field protected mAppName:Ljava/lang/String;

.field protected mAppVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 47
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    .line 48
    iget-object v5, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppInstallerId:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    .line 51
    .local v0, "appName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "appVersion":Ljava/lang/String;
    :try_start_18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_20} :catch_35

    move-result-object v3

    .line 54
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_28

    .line 62
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_23
    iput-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppName:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppVersion:Ljava/lang/String;

    .line 64
    return-void

    .line 55
    .restart local v1    # "appVersion":Ljava/lang/String;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_28
    :try_start_28
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_34} :catch_35

    goto :goto_23

    .line 58
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_35
    move-exception v2

    .line 59
    .local v2, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error retrieving package info: appName set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    goto :goto_23
.end method

.method static dropInstance()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_0_R":Ljava/lang/Object;
    monitor-enter v0

    .line 37
    const/4 v2, 0x0

    :try_start_4
    sput-object v2, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 38
    :catchall_8
    move-exception v1

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static getProvider()Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    return-object v0
.end method

.method public static initializeProvider(Landroid/content/Context;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 28
    :try_start_3
    sget-object v2, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    if-eqz v2, :cond_9

    .line 31
    :goto_7
    monitor-exit v0

    .line 32
    return-void

    .line 29
    :cond_9
    new-instance v2, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    goto :goto_7

    .line 31
    :catchall_11
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 81
    if-eqz p1, :cond_28

    .line 84
    const-string/jumbo v0, "&an"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 86
    const-string/jumbo v0, "&av"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 88
    const-string/jumbo v0, "&aid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 90
    const-string/jumbo v0, "&aiid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 93
    return-object v1

    .line 82
    :cond_28
    return-object v1

    .line 85
    :cond_29
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppName:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_2c
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppVersion:Ljava/lang/String;

    return-object v0

    .line 89
    :cond_2f
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    return-object v0

    .line 91
    :cond_32
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppInstallerId:Ljava/lang/String;

    return-object v0
.end method

.method public providesField(Ljava/lang/String;)Z
    .registers 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    const-string/jumbo v1, "&an"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const-string/jumbo v1, "&av"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "&aid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "&aiid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_b
.end method
