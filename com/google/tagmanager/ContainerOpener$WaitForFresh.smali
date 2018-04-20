.class Lcom/google/tagmanager/ContainerOpener$WaitForFresh;
.super Ljava/lang/Object;
.source "ContainerOpener.java"

# interfaces
.implements Lcom/google/tagmanager/Container$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ContainerOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForFresh"
.end annotation


# instance fields
.field private final mOldestTimeToBeFresh:J

.field final synthetic this$0:Lcom/google/tagmanager/ContainerOpener;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/ContainerOpener;J)V
    .registers 4
    .param p2, "oldestTimeToBeFresh"    # J

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide p2, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->mOldestTimeToBeFresh:J

    .line 143
    return-void
.end method

.method private isFresh()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    iget-wide v2, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->mOldestTimeToBeFresh:J

    iget-object v4, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    # getter for: Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;
    invoke-static {v4}, Lcom/google/tagmanager/ContainerOpener;->access$100(Lcom/google/tagmanager/ContainerOpener;)Lcom/google/tagmanager/Container;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_16

    move v2, v0

    :goto_13
    if-nez v2, :cond_18

    :goto_15
    return v0

    :cond_16
    move v2, v1

    goto :goto_13

    :cond_18
    move v0, v1

    goto :goto_15
.end method


# virtual methods
.method public containerRefreshBegin(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 3
    .param p1, "container"    # Lcom/google/tagmanager/Container;
    .param p2, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .prologue
    .line 148
    return-void
.end method

.method public containerRefreshFailure(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .registers 5
    .param p1, "container"    # Lcom/google/tagmanager/Container;
    .param p2, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;
    .param p3, "refreshFailure"    # Lcom/google/tagmanager/Container$RefreshFailure;

    .prologue
    .line 160
    sget-object v0, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    if-eq p2, v0, :cond_5

    .line 163
    :goto_4
    return-void

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    # invokes: Lcom/google/tagmanager/ContainerOpener;->callNotifiers(Lcom/google/tagmanager/Container;)V
    invoke-static {v0, p1}, Lcom/google/tagmanager/ContainerOpener;->access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V

    goto :goto_4
.end method

.method public containerRefreshSuccess(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .registers 4
    .param p1, "container"    # Lcom/google/tagmanager/Container;
    .param p2, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .prologue
    .line 152
    sget-object v0, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    if-ne p2, v0, :cond_a

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    # invokes: Lcom/google/tagmanager/ContainerOpener;->callNotifiers(Lcom/google/tagmanager/Container;)V
    invoke-static {v0, p1}, Lcom/google/tagmanager/ContainerOpener;->access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V

    .line 155
    :goto_9
    return-void

    .line 152
    :cond_a
    invoke-direct {p0}, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->isFresh()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_9
.end method
