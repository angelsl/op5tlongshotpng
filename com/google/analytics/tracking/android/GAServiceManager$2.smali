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
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$100()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 111
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    .line 112
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 113
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$300(Lcom/google/analytics/tracking/android/GAServiceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$100()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAServiceManager$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    :cond_0
    return v1
.end method
