.class Lcom/google/tagmanager/Container$2;
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
        "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
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
    .line 471
    iput-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iput-object p2, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;
    .registers 4
    .param p1, "failure"    # Lcom/google/tagmanager/LoadCallback$Failure;

    .prologue
    .line 518
    sget-object v0, Lcom/google/tagmanager/Container$4;->$SwitchMap$com$google$tagmanager$LoadCallback$Failure:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/LoadCallback$Failure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 526
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 520
    :pswitch_e
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 522
    :pswitch_11
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 524
    :pswitch_14
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 518
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
    .line 508
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container$2;->failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;

    move-result-object v2

    # invokes: Lcom/google/tagmanager/Container;->callRefreshFailure(Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/Container;->access$600(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    .line 511
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->isDefault()Z

    move-result v0

    if-nez v0, :cond_14

    .line 515
    :goto_13
    return-void

    .line 513
    :cond_14
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    goto :goto_13
.end method

.method public onSuccess(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    .registers 10
    .param p1, "proto"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .prologue
    const-wide/32 v6, 0x2932e00

    const/4 v2, 0x0

    .line 482
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v1}, Lcom/google/tagmanager/Container;->isDefault()Z

    move-result v1

    if-nez v1, :cond_14

    .line 503
    :goto_c
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v2, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    # invokes: Lcom/google/tagmanager/Container;->callRefreshSuccess(Lcom/google/tagmanager/Container$RefreshType;)V
    invoke-static {v1, v2}, Lcom/google/tagmanager/Container;->access$500(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    .line 504
    return-void

    .line 484
    :cond_14
    iget-object v1, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-nez v1, :cond_81

    .line 488
    iget-object v0, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 489
    .local v0, "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v1

    iput-object v0, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 490
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v1

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 491
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v1

    iget-object v2, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    .line 493
    :goto_34
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # invokes: Lcom/google/tagmanager/Container;->initEvaluators(Lcom/google/analytics/containertag/proto/Serving$Resource;)V
    invoke-static {v1, v0}, Lcom/google/tagmanager/Container;->access$200(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$Resource;)V

    .line 494
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v1

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-nez v1, :cond_8d

    .line 497
    :goto_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting refresh time to saved time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iget-wide v2, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    # setter for: Lcom/google/tagmanager/Container;->mLastRefreshTime:J
    invoke-static {v1, v2, v3}, Lcom/google/tagmanager/Container;->access$402(Lcom/google/tagmanager/Container;J)J

    .line 499
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iget-object v2, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastRefreshTime:J
    invoke-static {v2}, Lcom/google/tagmanager/Container;->access$400(Lcom/google/tagmanager/Container;)J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v4, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-interface {v4}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    goto :goto_c

    .line 485
    .end local v0    # "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_81
    iget-object v1, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    iget-object v0, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 486
    .restart local v0    # "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iget-object v2, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    # setter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1, v2}, Lcom/google/tagmanager/Container;->access$102(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    goto :goto_34

    .line 495
    :cond_8d
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iget-object v2, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v2}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v2

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    # invokes: Lcom/google/tagmanager/Container;->setSupplementals([Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    invoke-static {v1, v2}, Lcom/google/tagmanager/Container;->access$300(Lcom/google/tagmanager/Container;[Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V

    goto :goto_43
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 471
    check-cast p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Container$2;->onSuccess(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V

    return-void
.end method

.method public startLoad()V
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    # invokes: Lcom/google/tagmanager/Container;->callRefreshBegin(Lcom/google/tagmanager/Container$RefreshType;)V
    invoke-static {v0, v1}, Lcom/google/tagmanager/Container;->access$000(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    .line 475
    return-void
.end method
