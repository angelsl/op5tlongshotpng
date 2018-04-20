.class Lcom/google/analytics/tracking/android/ParameterLoaderImpl;
.super Ljava/lang/Object;
.source "ParameterLoaderImpl.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ParameterLoader;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOverrideResourcePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_c

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    .line 24
    return-void

    .line 21
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_19

    .line 42
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "resourcePackageName":Ljava/lang/String;
    :goto_e
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 37
    .end local v0    # "resourcePackageName":Ljava/lang/String;
    :cond_19
    const/4 v1, 0x0

    return v1

    .line 42
    :cond_1b
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    goto :goto_e
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string/jumbo v1, "bool"

    invoke-direct {p0, p1, v1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "id":I
    if-eqz v0, :cond_18

    .line 66
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 64
    :cond_18
    return v2
.end method

.method public getDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 97
    :try_start_b
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_12} :catch_15

    move-result-object v2

    return-object v2

    .line 94
    :cond_14
    return-object v4

    .line 98
    :catch_15
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NumberFormatException parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 100
    return-object v4
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 72
    const-string/jumbo v2, "integer"

    invoke-direct {p0, p1, v2}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "id":I
    if-eqz v1, :cond_14

    .line 77
    :try_start_9
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_12} :catch_15

    move-result v2

    return v2

    .line 74
    :cond_14
    return p2

    .line 78
    :catch_15
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NumberFormatException parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 80
    return p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string/jumbo v1, "string"

    invoke-direct {p0, p1, v1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "id":I
    if-eqz v0, :cond_10

    .line 56
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public isBooleanKeyPresent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 87
    const-string/jumbo v1, "bool"

    invoke-direct {p0, p1, v1}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->getResourceIdForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;->mOverrideResourcePackageName:Ljava/lang/String;

    .line 107
    return-void
.end method
