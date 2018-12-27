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
        "Lcom/google/tagmanager/LoadCallback<",
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

    .line 471
    iput-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iput-object p2, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;
    .registers 4
    .param p1, "failure"    # Lcom/google/tagmanager/LoadCallback$Failure;

    .line 518
    sget-object v0, Lcom/google/tagmanager/Container$4;->$SwitchMap$com$google$tagmanager$LoadCallback$Failure:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/LoadCallback$Failure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 526
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 524
    :pswitch_e
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 522
    :pswitch_11
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    .line 520
    :pswitch_14
    sget-object v0, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    .registers 5
    .param p1, "failure"    # Lcom/google/tagmanager/LoadCallback$Failure;

    .line 508
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container$2;->failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/Container;->access$600(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    .line 511
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 513
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    .line 515
    :cond_1a
    return-void
.end method

.method public onSuccess(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    .registers 12
    .param p1, "proto"    # Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    .line 482
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 484
    iget-object v0, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    if-eqz v0, :cond_18

    .line 485
    iget-object v0, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    iget-object v0, v0, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 486
    .local v0, "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iget-object v2, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->supplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    # setter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1, v2}, Lcom/google/tagmanager/Container;->access$102(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    goto :goto_35

    .line 488
    .end local v0    # "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_18
    iget-object v0, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->resource:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 489
    .restart local v0    # "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
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

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .line 491
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v1

    iget-object v2, v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->fingerprint:Ljava/lang/String;

    .line 493
    :goto_35
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v1, v0}, Lcom/google/tagmanager/Container;->access$200(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$Resource;)V

    .line 494
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v1}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v1

    iget-object v1, v1, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    if-eqz v1, :cond_51

    .line 495
    iget-object v1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iget-object v2, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastLoadedSupplementedResource:Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;
    invoke-static {v2}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;

    move-result-object v2

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Serving$SupplementedResource;->supplemental:[Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    invoke-static {v1, v2}, Lcom/google/tagmanager/Container;->access$300(Lcom/google/tagmanager/Container;[Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V

    .line 497
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting refresh time to saved time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    # getter for: Lcom/google/tagmanager/Container;->mLastRefreshTime:J
    invoke-static {v4}, Lcom/google/tagmanager/Container;->access$400(Lcom/google/tagmanager/Container;)J

    move-result-wide v4

    const-wide/32 v6, 0x2932e00

    add-long/2addr v4, v6

    iget-object v8, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-interface {v8}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    .line 503
    .end local v0    # "resource":Lcom/google/analytics/containertag/proto/Serving$Resource;
    :cond_8e
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-static {v0, v1}, Lcom/google/tagmanager/Container;->access$500(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    .line 504
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 471
    move-object v0, p1

    check-cast v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/Container$2;->onSuccess(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V

    return-void
.end method

.method public startLoad()V
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-static {v0, v1}, Lcom/google/tagmanager/Container;->access$000(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    .line 475
    return-void
.end method
