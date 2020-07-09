.class public Lcom/oneplus/screenshot/longshot/state/StitchLastState;
.super Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.source "StitchLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastState"


# instance fields
.field private mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 24
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getPreviewController()Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    .line 25
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .locals 14

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getLastMove()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.StitchLastState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getLastMove()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 42
    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v5

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result v6

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getLastMove()I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/screenshot/longshot/task/StitchLastByDistanceTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;III)V

    .line 41
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;

    iget-object v10, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 45
    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v12

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result v13

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    .line 44
    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .locals 1

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStateOnSuccess()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 84
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->WAITTING_PREVIEW:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 63
    .local v0, "pages":I
    const-string v1, ""

    .line 65
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_0
    return-object v1
.end method

.method public onJoinFailed()V
    .locals 2

    .line 99
    const-string v0, "Longshot.StitchLastState"

    const-string v1, "onJoinFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setLastCache(Z)V

    .line 103
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapCache()V

    .line 104
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->onJoinFailed()V

    .line 105
    return-void
.end method

.method public onJoinSuccess()V
    .locals 2

    .line 89
    const-string v0, "Longshot.StitchLastState"

    const-string v1, "onJoinSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setLastCache(Z)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapCache()V

    .line 94
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->onJoinSuccess()V

    .line 95
    return-void
.end method

.method protected updateIndex()V
    .locals 0

    .line 79
    return-void
.end method
