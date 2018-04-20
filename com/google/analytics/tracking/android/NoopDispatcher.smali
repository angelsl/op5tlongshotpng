.class Lcom/google/analytics/tracking/android/NoopDispatcher;
.super Ljava/lang/Object;
.source "NoopDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public dispatchHits(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    const/4 v5, 0x0

    .line 23
    if-eqz p1, :cond_14

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x28

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 27
    .local v3, "maxHits":I
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v5

    if-nez v5, :cond_15

    .line 46
    :cond_13
    return v3

    .line 24
    .end local v3    # "maxHits":I
    :cond_14
    return v5

    .line 28
    .restart local v3    # "maxHits":I
    :cond_15
    const-string/jumbo v5, "Hits not actually being sent as dispatch is false..."

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v3, :cond_13

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "logMessage":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "hitString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/tracking/android/Hit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/analytics/tracking/android/HitBuilder;->postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "modifiedHit":Ljava/lang/String;
    :goto_3d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    .line 36
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f4

    if-le v5, v6, :cond_75

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2000

    if-gt v5, v6, :cond_79

    .line 41
    const-string/jumbo v2, "POST would be sent:"

    .line 43
    :goto_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 32
    .end local v4    # "modifiedHit":Ljava/lang/String;
    :cond_6d
    const-string/jumbo v4, ""

    goto :goto_3d

    .line 35
    .restart local v4    # "modifiedHit":Ljava/lang/String;
    :cond_71
    const-string/jumbo v2, "Hit couldn\'t be read, wouldn\'t be sent:"

    goto :goto_56

    .line 37
    :cond_75
    const-string/jumbo v2, "GET would be sent:"

    goto :goto_56

    .line 39
    :cond_79
    const-string/jumbo v2, "Would be too big:"

    goto :goto_56
.end method

.method public okToDispatch()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public overrideHostUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostOverride"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method
