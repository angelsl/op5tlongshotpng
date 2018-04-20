.class Lcom/google/analytics/tracking/android/GAServiceManager$2;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAServiceManager;->initializeHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceManager;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v4, v0, :cond_7

    .line 119
    :cond_6
    :goto_6
    return v4

    .line 109
    :cond_7
    # getter for: Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$100()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 111
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    .line 112
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 113
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$300(Lcom/google/analytics/tracking/android/GAServiceManager;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$100()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    # getter for: Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6
.end method
