.class public Lcom/google/analytics/tracking/android/StandardExceptionParser;
.super Ljava/lang/Object;
.source "StandardExceptionParser.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ExceptionParser;


# instance fields
.field private final includedPackages:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

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
    .locals 9
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 132
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 136
    .local v4, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "className":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 139
    return-object v4

    .line 141
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 135
    .end local v4    # "e":Ljava/lang/StackTraceElement;
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 133
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 116
    move-object v0, p1

    .line 117
    .local v0, "result":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    return-object v0
.end method

.method public getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

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
    .locals 8
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "element"    # Ljava/lang/StackTraceElement;
    .param p3, "threadName"    # Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "descriptionBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 158
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "classNameParts":[Ljava/lang/String;
    const-string v4, "unknown"

    .line 160
    .local v4, "className":Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 161
    array-length v5, v3

    sub-int/2addr v5, v2

    aget-object v4, v3, v5

    .line 163
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, " (@%s:%s:%s)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .end local v3    # "classNameParts":[Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 170
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    const-string v1, " {%s}"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p2, "additionalPackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 60
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    :cond_0
    if-eqz p1, :cond_2

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "appPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 74
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 75
    .local v3, "ai":[Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_1

    .line 76
    move-object v4, v3

    .local v4, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 77
    .local v7, "sx":Landroid/content/pm/ActivityInfo;
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .end local v7    # "sx":Landroid/content/pm/ActivityInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "appPackage":Ljava/lang/String;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "ai":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "No package found"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    .line 89
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    .line 91
    .local v3, "needToAdd":Z
    iget-object v4, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 92
    .local v5, "oldName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 93
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    iget-object v6, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 98
    :cond_3
    const/4 v3, 0x0

    .line 100
    .end local v5    # "oldName":Ljava/lang/String;
    goto :goto_3

    .line 101
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 102
    iget-object v4, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "needToAdd":Z
    :cond_5
    goto :goto_2

    .line 105
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method
