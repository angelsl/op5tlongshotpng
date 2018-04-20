.class public Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;
.super Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;
.source "StitchBgOverState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgOverState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .registers 5

    .prologue
    .line 24
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchBgOverTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/task/StitchBgOverTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getPageText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->getSuccessText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareSuccess()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 30
    return-void
.end method
