.class Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;
.super Ljava/lang/Object;
.source "PersistentHitStore.java"

# interfaces
.implements Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/PersistentHitStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreDispatchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/PersistentHitStore;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/PersistentHitStore;)V
    .registers 2

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHitDispatched(Lcom/google/tagmanager/Hit;)V
    .registers 6
    .param p1, "hit"    # Lcom/google/tagmanager/Hit;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v2

    # invokes: Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V
    invoke-static {v0, v2, v3}, Lcom/google/tagmanager/PersistentHitStore;->access$000(Lcom/google/tagmanager/PersistentHitStore;J)V

    .line 478
    return-void
.end method

.method public onHitPermanentDispatchFailure(Lcom/google/tagmanager/Hit;)V
    .registers 6
    .param p1, "hit"    # Lcom/google/tagmanager/Hit;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v2

    # invokes: Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V
    invoke-static {v0, v2, v3}, Lcom/google/tagmanager/PersistentHitStore;->access$000(Lcom/google/tagmanager/PersistentHitStore;J)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permanent failure dispatching hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public onHitTransientDispatchFailure(Lcom/google/tagmanager/Hit;)V
    .registers 10
    .param p1, "hit"    # Lcom/google/tagmanager/Hit;

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitFirstDispatchTime()J

    move-result-wide v0

    .line 489
    .local v0, "firstDispatchTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    .line 491
    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    # getter for: Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;
    invoke-static {v3}, Lcom/google/tagmanager/PersistentHitStore;->access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v6

    # invokes: Lcom/google/tagmanager/PersistentHitStore;->setHitFirstDispatchTime(JJ)V
    invoke-static {v2, v4, v5, v6, v7}, Lcom/google/tagmanager/PersistentHitStore;->access$200(Lcom/google/tagmanager/PersistentHitStore;JJ)V

    .line 497
    :cond_1d
    :goto_1d
    return-void

    .line 492
    :cond_1e
    const-wide/32 v2, 0xdbba00

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    # getter for: Lcom/google/tagmanager/PersistentHitStore;->mClock:Lcom/google/tagmanager/Clock;
    invoke-static {v4}, Lcom/google/tagmanager/PersistentHitStore;->access$100(Lcom/google/tagmanager/PersistentHitStore;)Lcom/google/tagmanager/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_58

    const/4 v2, 0x1

    :goto_31
    if-nez v2, :cond_1d

    .line 494
    iget-object v2, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v4

    # invokes: Lcom/google/tagmanager/PersistentHitStore;->deleteHit(J)V
    invoke-static {v2, v4, v5}, Lcom/google/tagmanager/PersistentHitStore;->access$000(Lcom/google/tagmanager/PersistentHitStore;J)V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Giving up on failed hitId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/tagmanager/Hit;->getHitId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    goto :goto_1d

    .line 492
    :cond_58
    const/4 v2, 0x0

    goto :goto_31
.end method
