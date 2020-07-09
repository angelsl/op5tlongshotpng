.class public abstract Lcom/oneplus/support/executor/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeOnDiskIO(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public executeOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/support/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/support/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 60
    :goto_0
    return-void
.end method

.method public abstract isMainThread()Z
.end method

.method public abstract postToMainThread(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
.end method
