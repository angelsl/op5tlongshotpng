.class public Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.source "StitchBgNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextState"


# instance fields
.field private mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 20
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 21
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getPreviewController()Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    .line 22
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .locals 4

    .line 29
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageText()Ljava/lang/String;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 55
    .local v0, "pages":I
    const-string v1, ""

    .line 57
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_0
    return-object v1
.end method

.method protected getStateOnSuccess()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 83
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->WAITTING_PREVIEW:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onJoinFailed()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->onJoinFailed()V

    .line 77
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapCache()V

    .line 80
    :cond_0
    return-void
.end method

.method public onJoinSuccess()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->onJoinSuccess()V

    .line 67
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapCache()V

    .line 70
    :cond_0
    return-void
.end method

.method protected updateIndex()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateIndex(I)V

    .line 48
    return-void
.end method
