.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsMoveState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "AbsMoveState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsMoveState"


# instance fields
.field protected mMoveKeep:I

.field protected mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field protected mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 21
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    .line 29
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 30
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->getKeep()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V
    .registers 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    .line 13
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->executeMove()V

    return-void
.end method

.method private executeMove()V
    .registers 3

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method private getKeep()I
    .registers 2

    .line 106
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_KEEP_LIST:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_KEEP_LONG:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_6
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_e

    :cond_b
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_KEEP_SHORT:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_6

    :goto_e
    return v0
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 7
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 38
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/BaseState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 39
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setOverScroll(Z)V

    .line 40
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setScroll(Z)V

    .line 42
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->blockWindowTouch(ZLandroid/content/Context;)V

    .line 44
    const-string v0, "Longshot.AbsMoveState"

    const-string v1, "prepare next Move"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v0, v1, p0, v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 47
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->enableMoveTrace()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 48
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkTraceBitmap()V

    .line 51
    :cond_38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    .line 58
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    int-to-long v2, v2

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .registers 4
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 73
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->blockWindowTouch(ZLandroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    if-eqz v0, :cond_16

    .line 76
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->cancel(Z)Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 79
    :cond_16
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 80
    return-void
.end method

.method protected abstract getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
.end method

.method public isOverScroll()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    return v0
.end method

.method public onMoveFinished()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 85
    return-void
.end method

.method public setOverScroll(Z)V
    .registers 3
    .param p1, "overScroll"    # Z

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setOverScroll(Z)V

    .line 95
    return-void
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "movenext"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 110
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 111
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    if-eqz v0, :cond_d

    .line 112
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 114
    :cond_d
    return-void
.end method
