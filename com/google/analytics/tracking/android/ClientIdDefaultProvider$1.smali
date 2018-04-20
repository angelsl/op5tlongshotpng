.class Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;
.super Ljava/lang/Thread;
.source "ClientIdDefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->asyncInitializeClientId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    # getter for: Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$000(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 134
    :try_start_7
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->initializeClientId()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$102(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    const/4 v3, 0x1

    # setter for: Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLoaded:Z
    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$202(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;Z)Z

    .line 136
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider$1;->this$0:Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;

    # getter for: Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->mClientIdLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;->access$000(Lcom/google/analytics/tracking/android/ClientIdDefaultProvider;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_23
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
