.class Lcom/google/tagmanager/Container$3;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Lcom/google/tagmanager/LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Container;->load(Lcom/google/tagmanager/Container$Callback;Lcom/google/tagmanager/Container$ResourceLoaderScheduler;Lcom/google/tagmanager/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/LoadCallback",
        "<",
        "Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Container;

.field final synthetic val$clock:Lcom/google/tagmanager/Clock;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Clock;)V
    .registers 3

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    iput-object p2, p0, Lcom/google/tagmanager/Container$3;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;
    .registers 4
    .param p1, "failure"    # Lcom/google/tagmanager/LoadCallback$Failure;

    .prologue
    .line 598
    sget-object v0, Lcom/google/tagmanager/Container$4;->$SwitchMap$com$google$tagmanager$LoadCallback$Failure:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/LoadCallback$Failure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 606
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 600
    :pswitch_e
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NO_NETWORK:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 602
    :pswitch_11
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NETWORK_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 604
    :pswitch_14
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 598
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    .registers 6
    .param p1, "failure"    # Lcom/google/tagmanager/LoadCallback$Failure;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    .line 594
    iget-object v0, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container$3;->failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;

    move-result-object v2

    # invokes: Lcom/google/tagmanager/Container;->callRefreshFailure(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/Container;->access$600(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    .line 595
    return-void
.end method

.method public onSuccess(Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V
    .registers 8
    .param p1, "supplementedResource"    # Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 552
    :try_start_3
    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 553
    .local v2, "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    if-nez v2, :cond_6f

    .line 559
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v3}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v3

    iget-object v3, v3, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-eqz v3, :cond_80

    .line 566
    :goto_11
    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    array-length v3, v3

    if-gtz v3, :cond_87

    .line 571
    :goto_16
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    iget-object v4, p0, Lcom/google/tagmanager/Container$3;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-interface {v4}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/google/tagmanager/Container;->mLastRefreshTime:J
    invoke-static {v3, v4, v5}, Lcom/google/tagmanager/Container;->access$402(Lcom/google/tagmanager/Container;J)J

    .line 572
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v3}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v3

    iget-object v4, p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    .line 573
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v3}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v3

    iget-object v3, v3, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9a

    .line 578
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting refresh time to current time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastRefreshTime:J
    invoke-static {v4}, Lcom/google/tagmanager/Container;->access$400(Lcom/google/tagmanager/Container;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # invokes: Lcom/google/tagmanager/Container;->isContainerPreview()Z
    invoke-static {v3}, Lcom/google/tagmanager/Container;->access$700(Lcom/google/tagmanager/Container;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 586
    :goto_5e
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    const-wide/32 v4, 0x2932e00

    invoke-virtual {v3, v4, v5}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    .line 587
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_7d

    .line 588
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    sget-object v4, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    # invokes: Lcom/google/tagmanager/Container;->callRefreshSuccess(Lcom/google/tagmanager/Container$RefreshType;)V
    invoke-static {v3, v4}, Lcom/google/tagmanager/Container;->access$500(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    .line 589
    return-void

    .line 555
    :cond_6f
    :try_start_6f
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # invokes: Lcom/google/tagmanager/Container;->initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V
    invoke-static {v3, v2}, Lcom/google/tagmanager/Container;->access$200(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$Resource;)V

    .line 556
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v3}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v3

    iput-object v2, v3, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    goto :goto_11

    .line 587
    .end local v2    # "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :catchall_7d
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_7d

    throw v1

    .line 562
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v2    # "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_80
    :try_start_80
    sget-object v3, Lcom/google/tagmanager/LoadCallback$Failure;->SERVER_ERROR:Lcom/google/tagmanager/LoadCallback$Failure;

    invoke-virtual {p0, v3}, Lcom/google/tagmanager/Container$3;->onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V

    .line 563
    monitor-exit v0

    return-void

    .line 567
    :cond_87
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    iget-object v4, p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    # invokes: Lcom/google/tagmanager/Container;->setSupplementals([Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    invoke-static {v3, v4}, Lcom/google/tagmanager/Container;->access$300(Lcom/google/tagmanager/Container;[Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V

    .line 568
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v3}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v3

    iget-object v4, p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    iput-object v4, v3, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    goto/16 :goto_16

    .line 575
    :cond_9a
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v3}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v3

    iget-object v4, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v4}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v4

    iget-object v4, v4, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v4, v4, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    goto :goto_39

    .line 584
    :cond_ad
    iget-object v3, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    iget-object v4, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v4}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v4

    # invokes: Lcom/google/tagmanager/Container;->saveResourceToDisk(Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V
    invoke-static {v3, v4}, Lcom/google/tagmanager/Container;->access$800(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V
    :try_end_b8
    .catchall {:try_start_80 .. :try_end_b8} :catchall_7d

    goto :goto_5e
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 540
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Container$3;->onSuccess(Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)V

    return-void
.end method

.method public startLoad()V
    .registers 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/tagmanager/Container$3;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    # invokes: Lcom/google/tagmanager/Container;->callRefreshBegin(Lcom/google/tagmanager/Container$RefreshType;)V
    invoke-static {v0, v1}, Lcom/google/tagmanager/Container;->access$000(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    .line 544
    return-void
.end method
