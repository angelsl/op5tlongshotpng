.class public Lcom/oneplus/screenshot/longshot/state/ShotLastState;
.super Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.source "ShotLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotLastState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 14
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->checkOffset()V

    .line 15
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelDelay:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 24
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    .line 22
    nop

    .line 27
    :goto_0
    return-void
.end method

.method private checkOffset()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isRecognizeScrollView()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 40
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelShotNext:I

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 51
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 52
    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 49
    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 46
    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 43
    goto :goto_0

    .line 56
    :cond_3
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 70
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    goto :goto_0

    .line 58
    :cond_4
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 59
    goto :goto_0

    .line 61
    :cond_5
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 62
    goto :goto_0

    .line 64
    :cond_6
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 65
    goto :goto_0

    .line 67
    :cond_7
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 68
    nop

    .line 74
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShotLastState mOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.ShotLastState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 82
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected onEnter()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->checkOffset()V

    .line 31
    invoke-super {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->onEnter()V

    .line 32
    return-void
.end method
