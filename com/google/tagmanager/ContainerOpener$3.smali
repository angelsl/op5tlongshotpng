.class Lcom/google/tagmanager/ContainerOpener$3;
.super Ljava/util/TimerTask;
.source "ContainerOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/ContainerOpener;->setTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/ContainerOpener;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/ContainerOpener;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener$3;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 390
    const-string v0, "Timer expired."

    invoke-static {v0}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$3;->this$0:Lcom/google/tagmanager/ContainerOpener;

    iget-object v1, p0, Lcom/google/tagmanager/ContainerOpener$3;->this$0:Lcom/google/tagmanager/ContainerOpener;

    # getter for: Lcom/google/tagmanager/ContainerOpener;->mContainer:Lcom/google/tagmanager/Container;
    invoke-static {v1}, Lcom/google/tagmanager/ContainerOpener;->access$100(Lcom/google/tagmanager/ContainerOpener;)Lcom/google/tagmanager/Container;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/tagmanager/ContainerOpener;->access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V

    .line 392
    return-void-no-barrier
.end method
