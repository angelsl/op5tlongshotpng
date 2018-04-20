.class public Lcom/oneplus/screenshot/longshot/state/MoveNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsMoveState;
.source "MoveNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveNextState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 3
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 17
    return-void
.end method

.method private getShotLastState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .prologue
    .line 59
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_STRICT_LIST:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_6
.end method

.method private getShotNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .prologue
    .line 67
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_BG_LIST:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_6
.end method

.method private getShotOneState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .prologue
    .line 71
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method private getShotOverState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .prologue
    .line 63
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_BG_LIST:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    goto :goto_6
.end method

.method private isList()Z
    .registers 2

    .prologue
    .line 51
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_PAGE_LIST:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private isNonList()Z
    .registers 2

    .prologue
    .line 55
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_NON_LIST:Z

    return v0
.end method

.method private isScroll()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isScroll()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    .line 25
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    const-string/jumbo v1, "Longshot.MoveNextState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNextState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isNonList()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isScroll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isList()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v1

    if-eqz v1, :cond_5f

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5f

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;->getShotLastState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v0

    .line 40
    :cond_5f
    return-object v0
.end method
