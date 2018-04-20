.class Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectCheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;
    .param p2, "x1"    # Lcom/google/analytics/tracking/android/GAServiceProxy$1;

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$400(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTED_SERVICE:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-eq v1, v2, :cond_22

    .line 428
    :cond_b
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectCheckTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$1200(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$900(Lcom/google/analytics/tracking/android/GAServiceProxy;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 430
    :goto_21
    return-void

    .line 422
    :cond_22
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->queue:Ljava/util/Queue;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$700(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->lastRequestTime:J
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$800(Lcom/google/analytics/tracking/android/GAServiceProxy;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->idleTimeout:J
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$900(Lcom/google/analytics/tracking/android/GAServiceProxy;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->clock:Lcom/google/analytics/tracking/android/Clock;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$1000(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4a

    const/4 v0, 0x1

    :cond_4a
    if-nez v0, :cond_b

    .line 425
    const-string/jumbo v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$DisconnectCheckTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # invokes: Lcom/google/analytics/tracking/android/GAServiceProxy;->disconnectFromService()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$1100(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    goto :goto_21
.end method
