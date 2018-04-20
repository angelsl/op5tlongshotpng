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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mFormatter:Ljava/text/DateFormat;

    .line 42
    return-void
.end method

.method private collectDeviceInfo()V
    .registers 14

    .prologue
    .line 86
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 87
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 88
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_40

    .line 89
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v8, :cond_65

    const-string/jumbo v7, "null"

    .line 90
    .local v7, "versionName":Ljava/lang/String;
    :goto_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "versionCode":Ljava/lang/String;
    iget-object v8, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    const-string/jumbo v9, "versionName"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v8, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    const-string/jumbo v9, "versionCode"

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_40} :catch_68

    .line 98
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "versionCode":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :cond_40
    :goto_40
    const-class v8, Landroid/os/Build;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 99
    .local v3, "fields":[Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    array-length v9, v3

    :goto_48
    if-ge v8, v9, :cond_7e

    aget-object v2, v3, v8

    .line 101
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    :try_start_4d
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    iget-object v10, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_62} :catch_73

    .line 99
    :goto_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 89
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_65
    :try_start_65
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_67} :catch_68

    .restart local v7    # "versionName":Ljava/lang/String;
    goto :goto_1a

    .line 94
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "versionName":Ljava/lang/String;
    :catch_68
    move-exception v0

    .line 95
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "Longshot.CrashHandler"

    const-string/jumbo v9, "ERROR : collect package info"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 103
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    :catch_73
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "Longshot.CrashHandler"

    const-string/jumbo v11, "ERROR : collect crash info"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_7e
    return-void
.end method

.method public static getInstance()Lcom/oneplus/screenshot/util/CrashHandler;
    .registers 1

    .prologue
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
    .registers 13
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/oneplus/screenshot/util/CrashHandler;->collectDeviceInfo()V

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mInfos:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 115
    .local v7, "value":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "log":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 118
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "log":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_46
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 119
    .local v8, "writer":Ljava/io/Writer;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    .local v6, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 122
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_57
    if-eqz v0, :cond_61

    .line 123
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_57

    .line 126
    :cond_61
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 127
    invoke-virtual {v8}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object v5
.end method

.method public static recycle()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->recycle()V

    .line 54
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    if-eqz v0, :cond_1a

    .line 55
    const-string/jumbo v0, "Longshot.CrashHandler"

    const-string/jumbo v1, "CrashHandler recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    iget-object v0, v0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    sput-object v2, Lcom/oneplus/screenshot/util/CrashHandler;->sInstance:Lcom/oneplus/screenshot/util/CrashHandler;

    .line 60
    :cond_1a
    return-void
.end method

.method private saveCrashLog(Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 133
    return-void

    .line 135
    :cond_3
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 136
    .local v12, "writer":Ljava/io/Writer;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 137
    .local v8, "printWriter":Ljava/io/PrintWriter;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "log$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    .local v5, "log":Ljava/lang/String;
    :try_start_1d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_34} :catch_35

    goto :goto_11

    .line 140
    :catch_35
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v13, "Longshot.CrashHandler"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "log":Ljava/lang/String;
    :cond_41
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 146
    :try_start_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 147
    .local v10, "timestamp":J
    iget-object v13, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mFormatter:Ljava/text/DateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "time":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "crash-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".log"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bb

    .line 150
    const-string/jumbo v7, "/mnt/sdcard/crash/"

    .line 151
    .local v7, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_97

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 155
    :cond_97
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 156
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v12}, Ljava/io/Writer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 157
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_bb} :catch_bc

    .line 162
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "time":Ljava/lang/String;
    .end local v10    # "timestamp":J
    :cond_bb
    :goto_bb
    return-void

    .line 159
    :catch_bc
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "Longshot.CrashHandler"

    const-string/jumbo v14, "ERROR : write file"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bb
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
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

    .prologue
    .line 64
    if-eqz p2, :cond_14

    .line 65
    const-string/jumbo v0, "Longshot.CrashHandler"

    const-string/jumbo v1, "crash to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 68
    :cond_14
    iget-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1e

    .line 70
    iget-object v0, p0, Lcom/oneplus/screenshot/util/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 76
    :goto_1d
    return-void

    .line 73
    :cond_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 74
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_1d
.end method
