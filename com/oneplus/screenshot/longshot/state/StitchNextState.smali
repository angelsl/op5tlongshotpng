.class public Lcom/oneplus/screenshot/longshot/state/StitchNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.source "StitchNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextState"


# instance fields
.field private mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 24
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 25
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getPreviewController()Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    .line 26
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .locals 7

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getLastMove()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.StitchNextState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getLastMove()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v5

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getLastMove()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/screenshot/longshot/task/StitchNextByDistanceTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    return-object v0

    .line 38
    :cond_0
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
    .locals 1

    .line 49
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageText()Ljava/lang/String;
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 82
    .local v0, "pages":I
    const-string v1, ""

    .line 84
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    return-object v1
.end method

.method protected getStateOnFailed()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 2

    .line 63
    const-string v0, "Longshot.StitchNextState"

    const-string v1, "getStateOnFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->notIgnoreFail:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0

    .line 70
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 71
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getStateOnSuccess()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 110
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->WAITTING_PREVIEW:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0

    .line 113
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onJoinFailed()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->onJoinFailed()V

    .line 104
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapCache()V

    .line 107
    :cond_0
    return-void
.end method

.method public onJoinSuccess()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->onJoinSuccess()V

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapCache()V

    .line 97
    :cond_0
    return-void
.end method

.method protected updateIndex()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateIndex(I)V

    .line 58
    return-void
.end method
