.class Lcom/google/analytics/tracking/android/NoopDispatcher;
.super Ljava/lang/Object;
.source "NoopDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 54
    return-void
.end method

.method public dispatchHits(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation

    .line 23
    .local p1, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 27
    .local v0, "maxHits":I
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    const-string v1, "Hits not actually being sent as dispatch is false..."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "logMessage":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "hitString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/tracking/android/Hit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/analytics/tracking/android/HitBuilder;->postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "modifiedHit":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    const-string v2, "Hit couldn\'t be read, wouldn\'t be sent:"

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f4

    if-gt v5, v6, :cond_3

    .line 37
    const-string v2, "GET would be sent:"

    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2000

    if-le v5, v6, :cond_4

    .line 39
    const-string v2, "Would be too big:"

    goto :goto_2

    .line 41
    :cond_4
    const-string v2, "POST would be sent:"

    .line 43
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 29
    .end local v2    # "logMessage":Ljava/lang/String;
    .end local v3    # "hitString":Ljava/lang/String;
    .end local v4    # "modifiedHit":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :cond_5
    return v0
.end method

.method public okToDispatch()Z
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public overrideHostUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostOverride"    # Ljava/lang/String;

    .line 51
    return-void
.end method
