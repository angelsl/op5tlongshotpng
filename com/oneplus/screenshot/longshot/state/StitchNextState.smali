.class public Lcom/oneplus/screenshot/longshot/state/StitchNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.source "StitchNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .registers 5

    .line 25
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/task/StitchNextTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .registers 2

    .line 35
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageText()Ljava/lang/String;
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 68
    .local v0, "pages":I
    const-string v1, ""

    .line 70
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 71
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_1b
    return-object v1
.end method

.method protected getStateOnFailed()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 3

    .line 49
    const-string v0, "Longshot.StitchNextState"

    const-string v1, "getStateOnFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->NOT_IGNORE_FAIL:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    if-eqz v0, :cond_18

    goto :goto_1b

    .line 60
    :cond_18
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0

    .line 56
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateIndex()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateIndex(I)V

    .line 44
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
