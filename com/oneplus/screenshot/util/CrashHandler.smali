.class public Lcom/oneplus/screenshot/util/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.CrashHandler"

.field private static sInstance:Lcom/oneplus/screenshot/util/CrashHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mFormatter:Ljava/text/DateFormat;

.field private mInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mFormatter:Ljava/text/DateFormat;

    .line 43
    return-void
.end method

.method private collectDeviceInfo()V
    .locals 9

    .line 95
    const-string v0, "Longshot.CrashHandler"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 97
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 98
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_0

    :cond_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 99
    .local v4, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "versionCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    const-string v7, "versionName"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v6, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    const-string v7, "versionCode"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "versionName":Ljava/lang/String;
    .end local v5    # "versionCode":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ERROR : collect package info"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 108
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 110
    .local v5, "field":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    iget-object v6, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    goto :goto_3

    .line 112
    :catch_1
    move-exception v6

    .line 113
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "ERROR : collect crash info"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 116
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/oneplus/screenshot/util/CrashHandler;
    .locals 1

    .line 46
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/oneplus/screenshot/util/CrashHandler;

    invoke-direct {v0}, Lcom/oneplus/screenshot/util/CrashHandler;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    .line 49
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    return-object v0
.end method

.method private printCrashLog(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/oneplus/screenshot/util/CrashHandler;->collectDeviceInfo()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "log":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "log":Ljava/lang/String;
    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 128
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 129
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 131
    .local v3, "cause":Ljava/lang/Throwable;
    :goto_1
    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 133
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-object v0
.end method

.method public static recycle()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->recycle()V

    .line 55
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Longshot.CrashHandler"

    const-string v1, "CrashHandler recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    iget-object v0, v0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    .line 63
    :cond_0
    return-void
.end method

.method private saveCrashLog(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 145
    .local v0, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Longshot.CrashHandler"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "log":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 149
    :catch_0
    move-exception v5

    .line 150
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v3    # "log":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 155
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 156
    .local v2, "timestamp":J
    iget-object v5, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mFormatter:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "time":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "crash-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    const-string v7, "/mnt/sdcard/crash/"

    .line 160
    .local v7, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v8, "dir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 162
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 164
    :cond_2
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 165
    .local v9, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 166
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .end local v2    # "timestamp":J
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "dir":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    goto :goto_2

    .line 168
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ERROR : write file"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    iput-object p1, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 90
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 91
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 67
    const-string v0, "Longshot.CrashHandler"

    if-eqz p2, :cond_0

    .line 68
    const-string v1, "crash to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 74
    if-eqz p2, :cond_1

    .line 75
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_1
    const-string v1, "uncaughtException e is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 83
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 85
    :goto_0
    return-void
.end method
