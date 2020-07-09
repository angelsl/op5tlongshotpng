.class public Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;
.super Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;
.source "ShotBgOverState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotBgOverState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 15
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;->mOffset:I

    .line 16
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_OVER_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;->mCaptureDelay:I

    .line 17
    return-void
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 24
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
