.class Lcom/google/analytics/tracking/android/NoopDispatcher;
.super Ljava/lang/Object;
.source "NoopDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 54
    return-void
.end method

.method public dispatchHits(Ljava/util/List;)I
    .registers 9
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
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 24
    return v0

    .line 26
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 27
    .local v1, "maxHits":I
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isVerbose()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 28
    const-string v2, "Hits not actually being sent as dispatch is false..."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 29
    nop

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_74

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "logMessage":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/tracking/android/Hit;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "hitString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, ""

    goto :goto_3e

    :cond_30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/analytics/tracking/android/Hit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/analytics/tracking/android/HitBuilder;->postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "modifiedHit":Ljava/lang/String;
    :goto_3e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 35
    const-string v2, "Hit couldn\'t be read, wouldn\'t be sent:"

    goto :goto_5f

    .line 36
    :cond_47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f4

    if-gt v5, v6, :cond_52

    .line 37
    const-string v2, "GET would be sent:"

    goto :goto_5f

    .line 38
    :cond_52
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2000

    if-le v5, v6, :cond_5d

    .line 39
    const-string v2, "Would be too big:"

    goto :goto_5f

    .line 41
    :cond_5d
    const-string v2, "POST would be sent:"

    .line 43
    :goto_5f
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
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 46
    .end local v0    # "i":I
    :cond_74
    return v1
.end method

.method public okToDispatch()Z
    .registers 2

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public overrideHostUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostOverride"    # Ljava/lang/String;

    .line 51
    return-void
.end method
