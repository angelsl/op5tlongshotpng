.class Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailedConnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .registers 2

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/analytics/tracking/android/GAServiceProxy;
    .param p2, "x1"    # Lcom/google/analytics/tracking/android/GAServiceProxy$1;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$400(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-eq v0, v1, :cond_b

    .line 409
    :goto_a
    return-void

    .line 406
    :cond_b
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # invokes: Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$500(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    goto :goto_a
.end method
