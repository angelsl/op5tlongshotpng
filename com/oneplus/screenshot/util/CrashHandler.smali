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
    .registers 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mFormatter:Ljava/text/DateFormat;

    .line 42
    return-void
.end method

.method private collectDeviceInfo()V
    .registers 9

    .line 86
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 87
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 88
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3d

    .line 89
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_1a

    const-string v3, "null"

    goto :goto_1c

    :cond_1a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 90
    .local v3, "versionName":Ljava/lang/String;
    :goto_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "versionCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    const-string v6, "versionName"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v5, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    const-string v6, "versionCode"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_3d} :catch_3e

    .line 96
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "versionName":Ljava/lang/String;
    .end local v4    # "versionCode":Ljava/lang/String;
    :cond_3d
    goto :goto_46

    .line 94
    :catch_3e
    move-exception v1

    .line 95
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Longshot.CrashHandler"

    const-string v3, "ERROR : collect package info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_46
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 99
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_4e
    if-ge v3, v2, :cond_73

    aget-object v4, v1, v3

    .line 101
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_52
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    iget-object v5, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_67} :catch_68

    .line 105
    goto :goto_70

    .line 103
    :catch_68
    move-exception v5

    .line 104
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Longshot.CrashHandler"

    const-string v7, "ERROR : collect crash info"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 107
    :cond_73
    return-void
.end method

.method public static getInstance()Lcom/oneplus/screenshot/util/CrashHandler;
    .registers 1

    .line 45
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/oneplus/screenshot/util/CrashHandler;

    invoke-direct {v0}, Lcom/oneplus/screenshot/util/CrashHandler;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    .line 48
    :cond_b
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    return-object v0
.end method

.method private printCrashLog(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 9
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

    .line 110
    invoke-direct {p0}, Lcom/oneplus/screenshot/util/CrashHandler;->collectDeviceInfo()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "log":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "log":Ljava/lang/String;
    goto :goto_12

    .line 118
    :cond_42
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 119
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 122
    .local v3, "cause":Ljava/lang/Throwable;
    :goto_53
    if-eqz v3, :cond_5d

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 124
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_53

    .line 126
    :cond_5d
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object v0
.end method

.method public static recycle()V
    .registers 2

    .line 52
    invoke-static {}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->recycle()V

    .line 54
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    if-eqz v0, :cond_18

    .line 55
    const-string v0, "Longshot.CrashHandler"

    const-string v1, "CrashHandler recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    iget-object v0, v0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    .line 60
    :cond_18
    return-void
.end method

.method private saveCrashLog(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 133
    return-void

    .line 135
    :cond_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 136
    .local v0, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 137
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "log":Ljava/lang/String;
    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_31} :catch_32

    .line 142
    goto :goto_3c

    .line 140
    :catch_32
    move-exception v4

    .line 141
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "Longshot.CrashHandler"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v3    # "log":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3c
    goto :goto_11

    .line 144
    :cond_3d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 146
    :try_start_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 147
    .local v2, "timestamp":J
    iget-object v4, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mFormatter:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "time":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crash-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 150
    const-string v6, "/mnt/sdcard/crash/"

    .line 151
    .local v6, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_89

    .line 153
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 155
    :cond_89
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 156
    .local v8, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 157
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_ab} :catch_ac

    .line 161
    .end local v2    # "timestamp":J
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_ab
    goto :goto_b4

    .line 159
    :catch_ac
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Longshot.CrashHandler"

    const-string v4, "ERROR : write file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b4
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 81
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 82
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 64
    if-eqz p2, :cond_12

    .line 65
    const-string v0, "Longshot.CrashHandler"

    const-string v1, "crash to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 68
    :cond_12
    iget-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1c

    .line 70
    iget-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 73
    :cond_1c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 74
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 76
    :goto_28
    return-void
.end method
