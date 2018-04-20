.class public Lcom/google/analytics/tracking/android/StandardExceptionParser;
.super Ljava/lang/Object;
.source "StandardExceptionParser.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ExceptionParser;


# instance fields
.field private final includedPackages:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "additionalPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
    .registers 13
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 132
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    if-nez v3, :cond_9

    .line 133
    :cond_8
    return-object v10

    .line 132
    :cond_9
    array-length v8, v3

    if-eqz v8, :cond_8

    .line 135
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_f
    if-lt v4, v6, :cond_14

    .line 143
    aget-object v8, v3, v9

    return-object v8

    .line 135
    :cond_14
    aget-object v2, v3, v4

    .line 136
    .local v2, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "className":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_29

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 137
    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 139
    return-object v2
.end method

.method protected getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    move-object v0, p1

    .line 117
    .local v0, "result":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_8

    .line 120
    return-object v0

    .line 118
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1
.end method

.method public getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    invoke-virtual {p0, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "element"    # Ljava/lang/StackTraceElement;
    .param p3, "threadName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v2, "descriptionBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    if-nez p2, :cond_1b

    .line 169
    :goto_14
    if-nez p3, :cond_55

    .line 172
    :goto_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    :cond_1b
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "classNameParts":[Ljava/lang/String;
    const-string/jumbo v0, "unknown"

    .line 160
    .local v0, "className":Ljava/lang/String;
    if-nez v1, :cond_4c

    .line 163
    :cond_2b
    :goto_2b
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, " (@%s:%s:%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 160
    :cond_4c
    array-length v3, v1

    if-lez v3, :cond_2b

    .line 161
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v1, v3

    goto :goto_2b

    .line 170
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classNameParts":[Ljava/lang/String;
    :cond_55
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p3, v3, v6

    const-string/jumbo v4, " {%s}"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method

.method public setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "additionalPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v15}, Ljava/util/TreeSet;->clear()V

    .line 58
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v12, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_1b

    .line 62
    :goto_e
    if-nez p1, :cond_21

    .line 89
    :cond_10
    :goto_10
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_5b

    .line 105
    return-void

    .line 60
    :cond_1b
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    .line 66
    :cond_21
    :try_start_21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "appPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v15, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 74
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v13, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 75
    .local v1, "ai":[Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_10

    .line 76
    move-object v3, v1

    .local v3, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_47
    if-ge v5, v8, :cond_10

    aget-object v14, v1, v5

    .line 77
    .local v14, "sx":Landroid/content/pm/ActivityInfo;
    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_50} :catch_53

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 80
    .end local v1    # "ai":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "appPackage":Ljava/lang/String;
    .end local v3    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "sx":Landroid/content/pm/ActivityInfo;
    :catch_53
    move-exception v4

    .line 81
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v15, "No package found"

    invoke-static {v15}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    goto :goto_10

    .line 89
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 90
    .local v11, "packageName":Ljava/lang/String;
    const/4 v9, 0x1

    .line 91
    .local v9, "needToAdd":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v15}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_6a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_7a

    .line 101
    :cond_70
    :goto_70
    if-eqz v9, :cond_14

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v15, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 91
    :cond_7a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 92
    .local v10, "oldName":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_88

    .line 98
    const/4 v9, 0x0

    goto :goto_6a

    .line 93
    :cond_88
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_70

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v15, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_70
.end method
