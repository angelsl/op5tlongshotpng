.class Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HitParams"
.end annotation


# instance fields
.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final hitTimeInMilliseconds:J

.field private final path:Ljava/lang/String;

.field private final wireFormatParams:Ljava/util/Map;
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
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p2, "hitTimeInMilliseconds"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "wireFormatParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/analytics/internal/Command;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->wireFormatParams:Ljava/util/Map;

    .line 445
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->hitTimeInMilliseconds:J

    .line 446
    iput-object p4, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->path:Ljava/lang/String;

    .line 447
    iput-object p5, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->commands:Ljava/util/List;

    .line 448
    return-void
.end method


# virtual methods
.method public getCommands()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getHitTimeInMilliseconds()J
    .registers 3

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->hitTimeInMilliseconds:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getWireFormatParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->wireFormatParams:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "PATH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->wireFormatParams:Ljava/util/Map;

    if-nez v3, :cond_19

    .line 480
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 472
    :cond_19
    const-string/jumbo v3, "  PARAMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$HitParams;->wireFormatParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string/jumbo v3, ",  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29
.end method
