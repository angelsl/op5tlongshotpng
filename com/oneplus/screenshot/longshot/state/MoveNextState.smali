.class public Lcom/oneplus/screenshot/longshot/state/MoveNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsMoveState;
.source "MoveNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveNextState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 17
    return-void
.end method

.method private getShotLastState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 61
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsStrictList:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0
.end method

.method private getShotNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 69
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsBGList:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0
.end method

.method private getShotOneState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 73
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method private getShotOverState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 65
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsBGList:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0
.end method

.method private isList()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsPageList:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsSmallList:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNonList()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsNonList:Z

    return v0
.end method

.method private isScroll()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isScroll()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 4

    .line 24
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    .line 25
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isNonList()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isScroll()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isList()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.MoveNextState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    if-nez v1, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotLastState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    .line 42
    :cond_0
    return-object v0
.end method
