.class public Lcom/oneplus/screenshot/longshot/state/StitchLastState;
.super Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.source "StitchLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .registers 7

    .prologue
    .line 31
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 32
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v4

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result v5

    move-object v1, p0

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 48
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 49
    .local v0, "pages":I
    const-string/jumbo v1, ""

    .line 51
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 52
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/StitchLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_1c
    return-object v1
.end method

.method protected updateIndex()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method
