.class Lcom/oneplus/support/executor/ArchTaskExecutor$2;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/executor/ArchTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 55
    invoke-static {}, Lcom/oneplus/support/executor/ArchTaskExecutor;->getInstance()Lcom/oneplus/support/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/support/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
