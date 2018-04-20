.class public Lcom/oneplus/screenshot/longshot/state/ShotLastState;
.super Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.source "ShotLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotLastState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 12
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_54

    .line 26
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 29
    :goto_10
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_DELAY:I

    packed-switch v0, :pswitch_data_60

    .line 38
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    .line 41
    :goto_1d
    return-void

    .line 14
    :pswitch_1e
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    goto :goto_10

    .line 17
    :pswitch_27
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    goto :goto_10

    .line 20
    :pswitch_30
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    goto :goto_10

    .line 23
    :pswitch_39
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mOffset:I

    goto :goto_10

    .line 32
    :pswitch_42
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    goto :goto_1d

    .line 35
    :pswitch_4b
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    goto :goto_1d

    .line 12
    :pswitch_data_54
    .packed-switch 0x2
        :pswitch_39
        :pswitch_30
        :pswitch_27
        :pswitch_1e
    .end packed-switch

    .line 29
    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_4b
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
