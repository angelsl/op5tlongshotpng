.class Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;
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
    name = "WaitForNonDefaultRefresh"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/ContainerOpener;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/ContainerOpener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public containerRefreshBegin(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 0
    .param p1, "container"    # Lcom/google/tagmanager/Container;
    .param p2, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .line 112
    return-void
.end method

.method public containerRefreshFailure(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .locals 1
    .param p1, "container"    # Lcom/google/tagmanager/Container;
    .param p2, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;
    .param p3, "refreshFailure"    # Lcom/google/tagmanager/Container$RefreshFailure;

    .line 122
    sget-object v0, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    if-ne p2, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-static {v0, p1}, Lcom/google/tagmanager/ContainerOpener;->access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V

    .line 125
    :cond_0
    return-void
.end method

.method public containerRefreshSuccess(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 1
    .param p1, "container"    # Lcom/google/tagmanager/Container;
    .param p2, "refreshType"    # Lcom/google/tagmanager/Container$RefreshType;

    .line 116
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$WaitForNonDefaultRefresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-static {v0, p1}, Lcom/google/tagmanager/ContainerOpener;->access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V

    .line 117
    return-void
.end method
